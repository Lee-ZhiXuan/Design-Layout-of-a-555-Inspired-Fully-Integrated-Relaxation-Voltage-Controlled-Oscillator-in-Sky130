%% VCO Voltage Variation Analysis
clear; clc;

%% Load data
files  = {'src/voltage_out_low.csv', 'src/voltage_out_mid.csv', 'src/voltage_out_high.csv'};
labels = {'Low (~2 MHz)', 'Mid (~6 MHz)', 'High (~10 MHz)'};
colors = [
    0.20 0.60 0.86;   % blue  - low
    0.25 0.75 0.45;   % green - mid
    0.90 0.40 0.25;   % red   - high
];

datasets = struct();
for k = 1:3
    T = readtable(files{k});
    datasets(k).vdd     = T.vdd_V;
    datasets(k).freq_MHz = T.freq_Hz / 1e6;
    datasets(k).idd_uA   = T.idd_A  * 1e6;
    datasets(k).label    = labels{k};
    datasets(k).color    = colors(k, :);
end

%% Print supply pushing figure
fprintf('=====================================================\n');
fprintf('Supply Pushing Figure\n');
fprintf('%-16s  %12s  %12s\n', 'Tuning Point', 'Push (Hz/V)', 'Dev (%%)');
fprintf('-----------------------------------------------------\n');
for k = 1:3
    d       = datasets(k);
    f_range = (max(d.freq_MHz) - min(d.freq_MHz)) * 1e6;
    v_range = max(d.vdd) - min(d.vdd);
    push    = f_range / v_range;
    nom_idx = find(abs(d.vdd - 1.8) < 1e-6, 1);
    dev_pct = (f_range / (d.freq_MHz(nom_idx) * 1e6)) * 100;
    fprintf('%-16s  %12.1f  %11.2f%%\n', d.label, push, dev_pct);
end
fprintf('=====================================================\n');

%% Figure: Frequency and Idd vs VDD side by side
fig = figure('Position', [50 100 1000 420]);
sgtitle('VCO DC Supply Voltage Variation)', ...
        'FontWeight', 'bold', 'FontSize', 13);

% --- Subplot 1: Frequency vs VDD ---
subplot(1, 2, 1);
hold on;
for k = 1:3
    d = datasets(k);
    plot(d.vdd, d.freq_MHz, '-o', ...
         'Color', d.color, 'LineWidth', 2, ...
         'MarkerFaceColor', d.color, 'MarkerSize', 7, ...
         'DisplayName', d.label);
end
xline(1.8, 'k--', 'LineWidth', 1.2, 'Label', 'Nominal 1.8V', ...
      'LabelVerticalAlignment', 'bottom');
xlabel('V_{DD} (V)');
ylabel('Frequency (MHz)');
title('Frequency vs V_{DD}');
ylim([0, 12]);
legend('Location', 'northwest', 'FontSize', 9);
grid on; box on;

% --- Subplot 2: Idd vs VDD ---
subplot(1, 2, 2);
hold on;
for k = 1:3
    d = datasets(k);
    plot(d.vdd, d.idd_uA, '-o', ...
         'Color', d.color, 'LineWidth', 2, ...
         'MarkerFaceColor', d.color, 'MarkerSize', 7, ...
         'DisplayName', d.label);
end
xline(1.8, 'k--', 'LineWidth', 1.2, 'Label', 'Nominal 1.8V', ...
      'LabelVerticalAlignment', 'bottom');
xlabel('V_{DD} (V)');
ylabel('I_{DD} (\muA)');
title('Supply Current vs V_{DD}');
legend('Location', 'northwest', 'FontSize', 9);
grid on; box on;

exportgraphics(fig, 'voltage_variation.png', 'Resolution', 150);
fprintf('\nPlot saved: voltage_variation.png\n');