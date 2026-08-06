%% VCO Monte Carlo - Low and High Tuning Points
clear; clc;

%% Load data
datasets = struct();
datasets(1).file    = 'src/mc_results_low.csv';
datasets(1).label   = 'Low';
datasets(1).nominal = 2;
datasets(1).color   = [0.20 0.60 0.86];

datasets(2).file    = 'src/mc_results_high.csv';
datasets(2).label   = 'High';
datasets(2).nominal = 10;
datasets(2).color   = [0.90 0.40 0.25];

NBINS = 15;

% Pre-load and clean all datasets
for k = 1:2
    T = readtable(datasets(k).file);
    T = T(T.freq_Hz > 0, :);
    datasets(k).freq_MHz = T.freq_Hz / 1e6;
    datasets(k).idd_uA   = T.idd_A  * 1e6;
    datasets(k).N        = height(T);
    datasets(k).mean     = mean(datasets(k).freq_MHz);
    datasets(k).std      = std(datasets(k).freq_MHz);
    datasets(k).sig3     = 3 * std(datasets(k).freq_MHz);
end

%% Print statistics
fprintf('============================================================\n');
fprintf('%-12s %8s %8s %8s %8s %8s\n', ...
        'Tuning', 'N', 'Mean', 'Std', '3-sigma', '3sig %');
fprintf('%-12s %8s %8s %8s %8s %8s\n', ...
        'Point', 'runs', '(MHz)', '(MHz)', '(MHz)', 'of mean');
fprintf('------------------------------------------------------------\n');
for k = 1:2
    d = datasets(k);
    fprintf('%-12s %8d %8.3f %8.3f %8.3f %7.1f%%\n', ...
            d.label, d.N, d.mean, d.std, d.sig3, d.sig3/d.mean*100);
end
fprintf('============================================================\n');

%% Yield within +-10% of nominal
fprintf('\n============================================================\n');
fprintf('Yield within +/-10%% of Nominal Frequency\n');
fprintf('------------------------------------------------------------\n');

for k = 1:2
    d        = datasets(k);
    nom      = d.nominal;
    low_bound  = nom * 0.90;
    high_bound = nom * 1.10;

    in_range = sum(d.freq_MHz >= low_bound & d.freq_MHz <= high_bound);
    pct      = in_range / d.N * 100;

    fprintf('%s  |  Nominal: %.1f MHz  |  Window: %.2f - %.2f MHz\n', ...
            d.label, nom, low_bound, high_bound);
    fprintf('  Dies in range : %d / %d  (%.1f%%)\n\n', in_range, d.N, pct);
end
fprintf('============================================================\n');

%% Figure 1: Histograms side by side
%sgtitle('MC 100 Samples — Frequency Distribution at Tuning Extremes', ...
%        'FontWeight', 'bold', 'FontSize', 13);

for k = 1:2
    d = datasets(k);
    subplot(2, 2, k);
    histogram(d.freq_MHz, NBINS, ...
              'FaceColor', d.color, 'EdgeColor', 'white', 'LineWidth', 0.5);
    hold on;
    xline(d.mean, 'k--', 'LineWidth', 1.5, ...
          'Label', sprintf('Mean: %.2f MHz', d.mean), ...
          'LabelVerticalAlignment', 'bottom', 'LabelHorizontalAlignment', 'center');
    xline(d.mean + d.sig3, 'r:', 'LineWidth', 1.5, 'Label', '+3\sigma');
    xline(d.mean - d.sig3, 'r:', 'LineWidth', 1.5, 'Label', '-3\sigma');
    xlabel('Frequency (MHz)');
    ylabel('Count');
    title(d.label);
    grid on; box on;
end

%% Figure 2: Summary
sgtitle('MC 100 Samples — Distribution at Tuning Extremes', ...
        'FontWeight', 'bold', 'FontSize', 11);

% --- Subplot 1: Mean +/- 3sigma comparison ---
subplot(2, 2, 3);
hold on;
for k = 1:2
    d = datasets(k);
    errorbar(d.mean, k, d.sig3, d.sig3, 'horizontal', ...
             'o', 'Color', d.color, 'MarkerFaceColor', d.color, ...
             'LineWidth', 2, 'MarkerSize', 8, 'CapSize', 10);
end
yticks(1:2);
ylim([0.5, 2.5]);
yticklabels({datasets.label});
xlabel('Frequency (MHz)');
title('Mean \pm 3\sigma per Tuning Point');
grid on; box on;

% --- Subplot 2: Idd boxplot ---
subplot(2, 2, 4);
idd_low  = datasets(1).idd_uA;
idd_high = datasets(2).idd_uA;
n_low    = length(idd_low);
n_high   = length(idd_high);

all_idd    = [idd_low;  idd_high];
group_idd  = [ones(n_low, 1); 2*ones(n_high, 1)];

boxplot(all_idd, group_idd, 'Labels', {datasets(1).label, datasets(2).label}, ...
        'Colors', [datasets(1).color; datasets(2).color], ...
        'Symbol', '+');
ylabel('I_{DD} (\muA)');
title('Supply Current Distribution');
grid on; box on;