%% VCO Jitter Analysis
clear; clc;

%% Load data
files    = {'src/jitter_low.csv', 'src/jitter_mid.csv', 'src/jitter_high.csv'};
labels   = {'Low (~2 MHz)', 'Mid (~6 MHz)', 'High (~10 MHz)'};
nom_freq = [2e6, 6e6, 10e6];
colors   = [
    0.20 0.60 0.86;
    0.25 0.75 0.45;
    0.90 0.40 0.25;
];

datasets = struct();
for k = 1:3
    T = readtable(files{k});
    T = T(~any(ismissing(T), 2), :);

    edges   = T.time_s;
    periods = diff(edges);              % T[n] = t[n+1] - t[n]
    c2c     = diff(periods);            % cycle-to-cycle = T[n+1] - T[n]

    datasets(k).edges      = edges;
    datasets(k).periods    = periods;
    datasets(k).c2c        = c2c;
    datasets(k).nom_period = 1 / nom_freq(k);
    datasets(k).label      = labels{k};
    datasets(k).color      = colors(k, :);
end

%% Print jitter statistics
fprintf('================================================================================\n');
fprintf('Jitter Summary\n');
fprintf('%-16s  %12s  %12s  %12s  %12s\n', ...
        'Tuning Point', 'RMS (ps)', 'C2C (ps)', 'Pk-Pk (ps)', 'RMS (ppm)');
fprintf('--------------------------------------------------------------------------------\n');

for k = 1:3
    d = datasets(k);

    rms_jitter  = std(d.periods)   * 1e12;       % ps
    c2c_jitter  = std(d.c2c)       * 1e12;       % ps
    pp_jitter   = (max(d.periods) - min(d.periods)) * 1e12;   % ps
    rms_ppm     = std(d.periods) / d.nom_period * 1e6;

    fprintf('%-16s  %12.2f  %12.2f  %12.2f  %12.1f\n', ...
            d.label, rms_jitter, c2c_jitter, pp_jitter, rms_ppm);
end
fprintf('================================================================================\n');

%% Figure 1: Period vs cycle number
fig1 = figure('Position', [50 100 1100 380]);
sgtitle('VCO Period vs Cycle Number', 'FontWeight', 'bold', 'FontSize', 13);

for k = 1:3
    d = datasets(k);
    subplot(1, 3, k);
    plot(1:length(d.periods), d.periods * 1e9, '.', ...
         'Color', d.color, 'MarkerSize', 6);
    hold on;
    yline(mean(d.periods) * 1e9, 'k--', 'LineWidth', 1.5, ...
          'Label', sprintf('Mean: %.3f ns', mean(d.periods)*1e9), ...
          'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
    xlabel('Cycle #');
    ylabel('Period (ns)');
    title(d.label);
    grid on; box on;
end

exportgraphics(fig1, 'jitter_period.png', 'Resolution', 150);

%% Figure 2: Period histogram per tuning point
fig2 = figure('Position', [50 550 1100 380]);
sgtitle('VCO Period Distribution', 'FontWeight', 'bold', 'FontSize', 13);

for k = 1:3
    d = datasets(k);
    subplot(1, 3, k);
    histogram(d.periods * 1e9, 20, ...
              'FaceColor', d.color, 'EdgeColor', 'white', 'LineWidth', 0.5);
    hold on;
    xline(mean(d.periods) * 1e9, 'k--', 'LineWidth', 1.5, ...
          'Label', sprintf('Mean: %.3f ns', mean(d.periods)*1e9), ...
          'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
    xlabel('Period (ns)');
    ylabel('Count');
    title(d.label);
    grid on; box on;
end

exportgraphics(fig2, 'jitter_histogram.png', 'Resolution', 150);

fprintf('\nPlots saved: jitter_period.png, jitter_histogram.png\n');