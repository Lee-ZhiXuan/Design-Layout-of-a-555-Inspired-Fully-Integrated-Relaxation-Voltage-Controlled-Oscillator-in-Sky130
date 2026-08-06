%% VCO VDD Noise Analysis
clear; clc;

%% Load data
files  = {'src/noise_low.txt', 'src/noise_mid.txt', 'src/noise_high.txt'};
labels = {'Low (~2 MHz)', 'Mid (~6 MHz)', 'High (~10 MHz)'};
colors = [
    0.20 0.60 0.86;   % blue  - low
    0.25 0.75 0.45;   % green - mid
    0.90 0.40 0.25;   % red   - high
];

datasets = struct();
for k = 1:3
    T = readtable(files{k}, 'FileType', 'text', 'Delimiter', '\t', ...
                  'HeaderLines', 1, 'VariableNamingRule', 'preserve');
    T.Properties.VariableNames = {'Index', 'time', 'vdd', 'vout'};

    % Remove rows where any value is NaN (empty lines)
    T = T(~any(ismissing(T), 2), :);

    datasets(k).time  = T.time;
    datasets(k).vdd   = T.vdd;
    datasets(k).vout  = T.vout;
    datasets(k).label = labels{k};
    datasets(k).color = colors(k, :);
end

%% Figure 1: VOUT transient per tuning point
fig = figure('Position', [50 50 600 800]);
sgtitle('VCO VOUT Under VDD Noise Injection (50mV, 1MHz)', ...
        'FontWeight', 'bold', 'FontSize', 13);

for k = 1:3
    d    = datasets(k);
    t_us = d.time * 1e6;

    subplot(3, 1, k);
    plot(t_us, d.vout, 'Color', d.color, 'LineWidth', 1);
    xlabel('Time (\mus)');
    ylabel('V_{OUT} (V)');
    title(datasets(k).label);
    grid on; box on;
end

%% Figure 2: Zoomed dual-axis overlay at mid tuning point
fig2 = figure('Position', [50 50 1000 350]);

d    = datasets(2);
t_us = d.time * 1e6;

% Adjust zoom window to capture 3-5 noise cycles clearly
zoom_start = 2;
zoom_end   = 7;
idx = t_us >= zoom_start & t_us <= zoom_end;

yyaxis left;
plot(t_us(idx), d.vout(idx), 'Color', colors(2,:), 'LineWidth', 1.2);
ylabel('V_{OUT} (V)');

yyaxis right;
plot(t_us(idx), d.vdd(idx), 'Color', [0.5 0.5 0.5], 'LineWidth', 1.5);
ylabel('V_{DD} (V)');

xlabel('Time (\mus)');
title('V_{OUT} modulation vs V_{DD} ripple');
legend({'V_{OUT}', 'V_{DD}'}, 'Location', 'best', 'FontSize', 9);
grid on; box on;