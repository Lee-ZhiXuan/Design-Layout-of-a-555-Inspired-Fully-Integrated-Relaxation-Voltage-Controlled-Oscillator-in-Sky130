%% VCO Temperature Variation Analysis
clear; clc;

%% Load data
files  = {'src/temp_low.csv', 'src/temp_mid.csv', 'src/temp_high.csv'};
labels = {'Low (~2 MHz)', 'Mid (~6 MHz)', 'High (~10 MHz)'};
colors = [
    0.20 0.60 0.86;   % blue  - low
    0.25 0.75 0.45;   % green - mid
    0.90 0.40 0.25;   % red   - high
];

datasets = struct();
for k = 1:3
    T = readtable(files{k});
    T = T(~any(ismissing(T), 2), :);   % drop empty/failed rows
    datasets(k).temp     = T.temp_C;
    datasets(k).freq_MHz = T.freq_Hz / 1e6;
    datasets(k).idd_uA   = T.idd_A  * 1e6;
    datasets(k).label    = labels{k};
    datasets(k).color    = colors(k, :);
end

%% Print statistics
fprintf('=====================================================\n');
fprintf('Temperature Variation Summary\n');
fprintf('%-16s  %8s  %8s  %8s  %10s\n', ...
        'Tuning Point', 'f@27C', 'f_min', 'f_max', 'TCF(ppm/C)');
fprintf('-----------------------------------------------------\n');

for k = 1:3
    d = datasets(k);

    % Find nominal at 27C
    idx_nom = find(d.temp == 27, 1);
    if isempty(idx_nom)
        [~, idx_nom] = min(abs(d.temp - 27));
    end
    f_nom = d.freq_MHz(idx_nom);
    f_min = min(d.freq_MHz);
    f_max = max(d.freq_MHz);

    % Temperature coefficient of frequency (ppm/C)
    T_range = max(d.temp) - min(d.temp);
    TCF = ((f_max - f_min) / f_nom) / T_range * 1e6;

    fprintf('%-16s  %8.3f  %8.3f  %8.3f  %10.1f\n', ...
            d.label, f_nom, f_min, f_max, TCF);
end
fprintf('=====================================================\n');

%% Figure: Frequency and Idd vs Temperature side by side
fig = figure('Position', [50 100 1000 420]);
sgtitle('VCO Temperature Variation (TT Corner, VDD = 1.8V)', ...
        'FontWeight', 'bold', 'FontSize', 13);

% --- Subplot 1: Frequency vs Temperature ---
subplot(1, 2, 1);
hold on;
for k = 1:3
    d = datasets(k);
    plot(d.temp, d.freq_MHz, '-o', ...
         'Color', d.color, 'LineWidth', 2, ...
         'MarkerFaceColor', d.color, 'MarkerSize', 7, ...
         'DisplayName', d.label);
end
xline(27,  'k--', 'LineWidth', 1.2, 'Label', '27°C nominal', ...
      'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
xline(-40, 'b:',  'LineWidth', 1.0, 'Label', '-40°C', ...
      'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
xline(125, 'r:',  'LineWidth', 1.0, 'Label', '125°C', ...
      'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
xlabel('Temperature (°C)');
ylabel('Frequency (MHz)');
title('Frequency vs Temperature');
legend('Location', 'best', 'FontSize', 9);
grid on; box on;

% --- Subplot 2: Idd vs Temperature ---
subplot(1, 2, 2);
hold on;
for k = 1:3
    d = datasets(k);
    plot(d.temp, d.idd_uA, '-o', ...
         'Color', d.color, 'LineWidth', 2, ...
         'MarkerFaceColor', d.color, 'MarkerSize', 7, ...
         'DisplayName', d.label);
end
xline(27,  'k--', 'LineWidth', 1.2, 'Label', '27°C nominal', ...
      'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
xline(-40, 'b:',  'LineWidth', 1.0, 'Label', '-40°C', ...
      'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
xline(125, 'r:',  'LineWidth', 1.0, 'Label', '125°C', ...
      'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
xlabel('Temperature (°C)');
ylabel('I_{DD} (\muA)');
title('Supply Current vs Temperature');
legend('Location', 'best', 'FontSize', 9);
grid on; box on;

exportgraphics(fig, 'temp_variation.png', 'Resolution', 150);
fprintf('\nPlot saved: temp_variation.png\n');