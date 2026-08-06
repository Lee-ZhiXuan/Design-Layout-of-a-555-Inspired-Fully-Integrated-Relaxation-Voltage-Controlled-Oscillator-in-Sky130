%% Calibrated TCF Analysis
clear; clc;

%% Load data
T = readtable('src/temp_mid_cali.csv');
T = T(~any(ismissing(T(:,1:2)), 2), :);   % keep rows with at least temp and freq

temp     = T.temp_C;
freq_MHz = T.freq_Hz / 1e6;
vctrl    = T.v_ctrl;                       % may contain NaN where not filled

%% Calibrated TCF from v_ctrl rows only
% Only compute TCF from rows where v_ctrl is provided
valid = ~isnan(vctrl);
temp_cal  = temp(valid);
freq_cal  = freq_MHz(valid);

if length(temp_cal) >= 2
    % Find nominal at 27C
    idx_nom = find(temp_cal == 27, 1);
    if isempty(idx_nom)
        [~, idx_nom] = min(abs(temp_cal - 27));
    end
    f_nom   = freq_cal(idx_nom);
    T_range = max(temp_cal) - min(temp_cal);

    f_dev_MHz = max(freq_cal) - min(freq_cal);
    cal_TCF   = (f_dev_MHz / f_nom) / T_range * 1e6;

    fprintf('================================================\n');
    fprintf('Calibrated TCF Summary\n');
    fprintf('------------------------------------------------\n');
    fprintf('Valid calibration points : %d\n',   length(temp_cal));
    fprintf('Nominal freq @ 27C       : %.3f MHz\n', f_nom);
    fprintf('Freq deviation           : %.4f MHz\n', f_dev_MHz);
    fprintf('Temperature range        : %d C\n',  T_range);
    fprintf('Calibrated TCF           : %.1f ppm/C\n', cal_TCF);
    fprintf('================================================\n');
else
    fprintf('Not enough calibration points to compute TCF.\n');
    cal_TCF = NaN;
end

%% Plot
sgtitle('VCO Calibrated Temperature Characterisation', ...
        'FontWeight', 'bold', 'FontSize', 13);

% Left axis - frequency
yyaxis left;
plot(temp, freq_MHz, '-o', ...
     'Color', [0.20 0.60 0.86], 'LineWidth', 2, ...
     'MarkerFaceColor', [0.20 0.60 0.86], 'MarkerSize', 7, ...
     'DisplayName', 'Frequency');
hold on;
% Highlight calibrated points
plot(temp_cal, freq_cal, 'o', ...
     'Color', [0.20 0.60 0.86], 'MarkerFaceColor', 'white', ...
     'MarkerSize', 10, 'LineWidth', 2, ...
     'DisplayName', 'Calibrated points');
ylabel('Frequency (MHz)');
ylim([min(freq_MHz)*0.95, max(freq_MHz)*1.05]);

% Right axis - Vctrl
yyaxis right;
plot(temp(valid), vctrl(valid), '-s', ...
     'Color', [0.90 0.40 0.25], 'LineWidth', 2, ...
     'MarkerFaceColor', [0.90 0.40 0.25], 'MarkerSize', 7, ...
     'DisplayName', 'V_{ctrl}');
ylabel('V_{ctrl} (V)');
ylim([min(vctrl(valid))*0.95, max(vctrl(valid))*1.05]);

% Formatting
xline(27,  'k--', 'LineWidth', 1.2, 'Label', '27°C', ...
      'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
xline(-40, 'b:',  'LineWidth', 1.0, 'Label', '-40°C', ...
      'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
xline(125, 'r:',  'LineWidth', 1.0, 'Label', '125°C', ...
      'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
xlabel('Temperature (°C)');

% Combined legend
yyaxis left;
legend('Frequency', 'Calibrated points', 'Location', 'northwest', 'FontSize', 9);

% Annotate TCF on plot
if ~isnan(cal_TCF)
    text(0.98, 0.05, sprintf('Cal. TCF = %.1f ppm/°C', cal_TCF), ...
         'Units', 'normalized', 'HorizontalAlignment', 'right', ...
         'FontSize', 10, 'FontWeight', 'bold', 'Color', 'black');
end

grid on; box on;