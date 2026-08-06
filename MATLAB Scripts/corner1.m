%% VCO Process Corner Analysis
clear; clc;

%% Load CSV
T = readtable('src/corner_results.csv');

% Replace DNF strings with NaN
T.freq_Hz = str2double(string(T.freq_Hz));
T.idd_A   = str2double(string(T.idd_A));

% Convert units
T.freq_MHz = T.freq_Hz / 1e6;
T.idd_uA   = T.idd_A  * 1e6;

%% Setup
corners    = {'tt', 'ff', 'ss', 'fs', 'sf'};
ranges     = {'low', 'mid', 'high'};
nCorners   = numel(corners);
nRanges    = numel(ranges);

corner_colors = [
    0.40 0.40 0.40;   % tt - grey
    0.90 0.30 0.25;   % ff - red
    0.20 0.50 0.85;   % ss - blue
    0.20 0.70 0.45;   % fs - green
    0.85 0.55 0.10;   % sf - orange
];

% Build freq and idd matrices [nCorners x nRanges]
freq_mat = NaN(nCorners, nRanges);
idd_mat  = NaN(nCorners, nRanges);

for c = 1:nCorners
    for r = 1:nRanges
        idx = strcmpi(T.corner, corners{c}) & strcmpi(T.range, ranges{r});
        if any(idx)
            freq_mat(c, r) = T.freq_MHz(idx);
            idd_mat(c, r)  = T.idd_uA(idx);
        end
    end
end

%% Print summary table
fprintf('=====================================================\n');
fprintf('Process Corner Frequency Results (MHz)\n');
fprintf('%-6s  %10s  %10s  %10s\n', 'Corner', 'Low', 'Mid', 'High');
fprintf('-----------------------------------------------------\n');
for c = 1:nCorners
    vals = freq_mat(c, :);
    strs = arrayfun(@(v) sprintf('%10.3f', v), vals, 'UniformOutput', false);
    for r = 1:nRanges
        if isnan(vals(r)); strs{r} = '       DNF'; end
    end
    fprintf('%-6s  %s  %s  %s\n', upper(corners{c}), strs{1}, strs{2}, strs{3});
end
fprintf('=====================================================\n\n');

% Corner spread vs tt
fprintf('Corner spread vs TT (%%)\n');
fprintf('%-6s  %10s  %10s  %10s\n', 'Corner', 'Low', 'Mid', 'High');
fprintf('-----------------------------------------------------\n');
tt_row = freq_mat(1, :);
for c = 2:nCorners
    strs = cell(1, nRanges);
    for r = 1:nRanges
        if isnan(freq_mat(c,r)) || isnan(tt_row(r))
            strs{r} = '       DNF';
        else
            pct = (freq_mat(c,r) - tt_row(r)) / tt_row(r) * 100;
            strs{r} = sprintf('%+10.1f%%', pct);
        end
    end
    fprintf('%-6s  %s  %s  %s\n', upper(corners{c}), strs{1}, strs{2}, strs{3});
end
fprintf('=====================================================\n');

%% Figure 1: Grouped bar chart - Frequency
fig1 = figure('Position', [50 100 900 420]);

ax1 = subplot(1, 2, 1);
b = bar(freq_mat', 'grouped');
for c = 1:nCorners
    b(c).FaceColor = corner_colors(c, :);
    b(c).DisplayName = upper(corners{c});
end

% Mark DNF bars with hatching overlay
hold on;
for c = 1:nCorners
    for r = 1:nRanges
        if isnan(freq_mat(c, r))
            % Place a DNF label at the base
            x_pos = r + (c - (nCorners+1)/2) * (0.8/nCorners);
            text(x_pos, 0.3, 'DNF', 'FontSize', 7, 'Color', 'red', ...
                 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
        end
    end
end

xticks(1:nRanges);
xticklabels({'Low (~2 MHz)', 'Mid (~6 MHz)', 'High (~10 MHz)'});
ylabel('Frequency (MHz)');
title('Frequency by Corner');
ylim([0, 11]);
legend('Location', 'northwest', 'FontSize', 8);
grid on; box on;

% --- Subplot 2: Grouped bar - Idd ---
ax2 = subplot(1, 2, 2);
b2 = bar(idd_mat', 'grouped');
for c = 1:nCorners
    b2(c).FaceColor = corner_colors(c, :);
    b2(c).DisplayName = upper(corners{c});
end
hold on;
for c = 1:nCorners
    for r = 1:nRanges
        if isnan(idd_mat(c, r))
            x_pos = r + (c - (nCorners+1)/2) * (0.8/nCorners);
            text(x_pos, 0.3, 'DNF', 'FontSize', 7, 'Color', 'red', ...
                 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
        end
    end
end

xticks(1:nRanges);
xticklabels({'Low (~2 MHz)', 'Mid (~6 MHz)', 'High (~10 MHz)'});
ylabel('I_{DD} (\muA)');
title('Supply Current by Corner');
grid on; box on;

sgtitle('VCO Process Corner Analysis', 'FontWeight', 'bold', 'FontSize', 13);
exportgraphics(fig1, 'corner_bar.png', 'Resolution', 150);

%% Figure 2: % deviation from tt per corner
fig2 = figure('Position', [50 580 600 420]);
hold on;

tt_freq = freq_mat(1, :);   % tt row as reference
x = 1:nRanges;

for c = 2:nCorners          % skip tt itself
    y_pct = ((freq_mat(c, :) - tt_freq) ./ tt_freq) * 100;
    valid = ~isnan(y_pct);

    if any(valid)
        plot(x(valid), y_pct(valid), '-o', ...
             'Color', corner_colors(c,:), 'LineWidth', 2, ...
             'MarkerFaceColor', corner_colors(c,:), 'MarkerSize', 7, ...
             'DisplayName', upper(corners{c}));
    end

    % Mark DNF points
    for r = 1:nRanges
        if isnan(y_pct(r))
            plot(r, 0, 'rx', 'MarkerSize', 10, 'LineWidth', 2, ...
                 'HandleVisibility', 'off');
            text(r, 1, 'DNF', 'FontSize', 8, 'Color', 'red', ...
                 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
        end
    end
end

yline(0, 'k--', 'LineWidth', 1.5, 'DisplayName', 'TT reference');

xticks(1:nRanges);
xticklabels({'Low (~2 MHz)', 'Mid (~6 MHz)', 'High (~10 MHz)'});
ylabel('Frequency Deviation from TT (%)');
title('Corner Deviation vs TT per Tuning Point');
legend('Location', 'best', 'FontSize', 9);
grid on; box on;

exportgraphics(fig2, 'corner_deviation.png', 'Resolution', 150);
fprintf('Plot saved: corner_deviation.png\n');

fprintf('\nPlots saved: corner_bar.png, corner_lines.png\n');