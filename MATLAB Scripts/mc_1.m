%% VCO Monte Carlo Results
clear; clc;

%% Load data
T = readtable('src/mc_results1000_fx.csv');

% Drop failed runs (freq = 0)
T = T(T.freq_Hz > 0, :);
N = height(T);

% Convert units
freq_MHz = T.freq_Hz / 1e6;
idd_uA   = T.idd_A  * 1e6;

%% Statistics
f_mean   = mean(freq_MHz);
f_std    = std(freq_MHz);
f_3sig   = 3 * f_std;
f_2sig   = 2* f_std;
f_min    = min(freq_MHz);
f_max    = max(freq_MHz);

i_mean   = mean(idd_uA);
i_std    = std(idd_uA);
i_3sig   = 3 * i_std;

fprintf('========== Frequency ==========\n');
fprintf('N valid runs : %d\n',    N);
fprintf('Mean         : %.3f MHz\n', f_mean);
fprintf('Std          : %.3f MHz\n', f_std);
fprintf('3sigma       : %.3f MHz (%.1f%%)\n', f_3sig, f_3sig/f_mean*100);
fprintf('2sigma       : %.3f MHz (%.1f%%)\n', f_2sig, f_2sig/f_mean*100);
fprintf('Min          : %.3f MHz\n', f_min);
fprintf('Max          : %.3f MHz\n', f_max);
fprintf('Range        : %.3f MHz\n', f_max - f_min);
fprintf('\n========== Supply Current =====\n');
fprintf('Mean         : %.2f uA\n', i_mean);
fprintf('Std          : %.2f uA\n', i_std);
fprintf('3sigma       : %.2f uA (%.1f%%)\n', 3*i_std, 3*i_std/i_mean*100);

%% Tuning Window Analysis
f_window_low  = 5.4;   % MHz - adjust to your tuning range
f_window_high = 6.6;   % MHz - adjust to your tuning range

in_window = sum(freq_MHz >= f_window_low & freq_MHz <= f_window_high);
out_window = N - in_window;

fprintf('\n========== Tuning Window ==========\n');
fprintf('Window       : %.2f - %.2f MHz\n', f_window_low, f_window_high);
fprintf('In window    : %d / %d (%.1f%%)\n', in_window, N, in_window/N*100);
fprintf('Out of window: %d / %d (%.1f%%)\n', out_window, N, out_window/N*100);

%% Plot
NBINS = 15;

% --- Frequency histogram ---
figure;
histogram(freq_MHz, NBINS, 'FaceColor', [0.25 0.47 0.75], ...
          'EdgeColor', 'white', 'LineWidth', 0.5);
hold on;
xline(f_mean,          'r--', 'LineWidth', 1.5, 'Label', ...
      sprintf('Mean: %.2f MHz', f_mean), 'LabelVerticalAlignment', 'bottom');
xline(f_mean + f_3sig, 'm:',  'LineWidth', 1.5, 'Label', '+3\sigma');
xline(f_mean - f_3sig, 'm:',  'LineWidth', 1.5, 'Label', '-3\sigma');
xlabel('Frequency (MHz)');
ylabel('Count');
title('MC 1000 Samples - Frequency Distribution');
grid on; box on;

% --- Frequency per run scatter ---
figure;
scatter(T.run, freq_MHz, 25, [0.25 0.47 0.75], 'filled', 'MarkerFaceAlpha', 0.7);
hold on;
yline(f_mean,          'r--', 'LineWidth', 1.5);
yline(f_mean + f_3sig, 'm:',  'LineWidth', 1.5);
yline(f_mean - f_3sig, 'm:',  'LineWidth', 1.5);
xlabel('Run #');
ylabel('Frequency (MHz)');
title('MC 1000 Samples - Frequency vs Run');
grid on; box on;

% --- Idd histogram ---
figure;
histogram(idd_uA, NBINS, 'FaceColor', [0.85 0.47 0.25], ...
          'EdgeColor', 'white', 'LineWidth', 0.5);
hold on;
xline(i_mean, 'r--', 'LineWidth', 1.5, 'Label', ...
      sprintf('Mean: %.1f uA', i_mean), 'LabelVerticalAlignment', 'bottom');
xlabel('I_{DD} (\muA)');
ylabel('Count');
title('MC 1000 Samples - Supply Current Distribution');
grid on; box on;


%% Correlation Analysis
figure('Position', [100 100 500 400]);

scatter(freq_MHz, idd_uA, 30, [0.25 0.47 0.75], 'filled', 'MarkerFaceAlpha', 0.7);
hold on;

% Linear fit
p = polyfit(freq_MHz, idd_uA, 1);
x_fit = linspace(min(freq_MHz), max(freq_MHz), 100);
y_fit = polyval(p, x_fit);
plot(x_fit, y_fit, 'r--', 'LineWidth', 1.5);

% Pearson correlation coefficient
R = corrcoef(freq_MHz, idd_uA);
r = R(1,2);

xlabel('Frequency (MHz)');
ylabel('I_{DD} (\muA)');
title('Frequency vs Supply Current Correlation');
legend('MC runs', sprintf('Linear fit (r = %.3f)', r), 'Location', 'best');
grid on; box on;

fprintf('\n========== Correlation ==========\n');
fprintf('Pearson r    : %.3f\n', r);
if abs(r) > 0.7
    fprintf('Interpretation: Strong %s correlation\n', string(r > 0, "positive", "negative"));
elseif abs(r) > 0.4
    fprintf('Interpretation: Moderate %s correlation\n', string(r > 0, "positive", "negative"));
else
    fprintf('Interpretation: Weak correlation\n');
end