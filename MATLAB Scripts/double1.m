VDD = 1.8;
VH  = 1.1;
VL  = 0.7;
RC  = 1;

figure;

% =========================================
% LEFT PLOT - RC Charge and Discharge Curves
% =========================================
subplot(1, 2, 1);
x = linspace(0, 6, 1000);

y_charge = 1.8 - exp(-(x - log(1.8)));
y_charge(y_charge <= 0 | y_charge >= 1.8) = NaN;

y_discharge = 1.8 * exp(-x);
y_discharge(y_discharge <= 0 | y_discharge >= 1.8) = NaN;

hold on;
plot(x, y_charge,    'b', 'LineWidth', 1.5, 'DisplayName', 'Charge');
plot(x, y_discharge, 'r', 'LineWidth', 1.5, 'DisplayName', 'Discharge');
yline(VH,  'k--', 'LineWidth', 1.5, 'Label', 'V_H', 'DisplayName', 'V_H', 'HandleVisibility', 'off');
yline(VL,  'k:',  'LineWidth', 1.5, 'Label', 'V_L', 'DisplayName', 'V_L', 'HandleVisibility', 'off');
yline(VDD, 'm--', 'LineWidth', 0.8, 'Label', 'VDD', 'DisplayName', 'VDD', 'HandleVisibility', 'off');
ylim([0, VDD * 1.2]);
xlabel('Time (RC)');
ylabel('Voltage (V)');
title('Threshold Window with RC Curves');
legend('Location', 'best');
grid on;
hold off;

% =========================================
% RIGHT PLOT - Repeated Oscillation + Output
% =========================================
subplot(1, 2, 2);

t_charge    = RC * log((VDD - VL) / (VDD - VH));
t_discharge = RC * log(VH / VL);

n_cycles = 4;
pts      = 500;

x_cap = [];
y_cap = [];
x_sq  = [];
y_sq  = [];

x_offset = 0;

for i = 1:n_cycles
    % Charge segment: VL -> VH
    t = linspace(0, t_charge, pts);
    v = VDD - (VDD - VL) * exp(-t / RC);
    x_cap = [x_cap, x_offset + t];
    y_cap = [y_cap, v];
    x_sq  = [x_sq,  x_offset + t];
    y_sq  = [y_sq,  VDD * ones(1, pts)];
    x_offset = x_offset + t_charge;

    % Discharge segment: VH -> VL
    t = linspace(0, t_discharge, pts);
    v = VH * exp(-t / RC);
    x_cap = [x_cap, x_offset + t];
    y_cap = [y_cap, v];
    x_sq  = [x_sq,  x_offset + t];
    y_sq  = [y_sq,  zeros(1, pts)];
    x_offset = x_offset + t_discharge;
end

hold on;
plot(x_cap, y_cap, 'b', 'LineWidth', 1.5, 'DisplayName', 'V_C');
plot(x_sq,  y_sq,  'r', 'LineWidth', 1.5, 'DisplayName', 'Output');
yline(VH,  'k--', 'LineWidth', 1.5, 'Label', 'V_H', 'DisplayName', 'V_H', 'HandleVisibility', 'off');
yline(VL,  'k:',  'LineWidth', 1.5, 'Label', 'V_L', 'DisplayName', 'V_L', 'HandleVisibility', 'off');
yline(VDD, 'm--', 'LineWidth', 0.8, 'Label', 'VDD', 'DisplayName', 'VDD', 'HandleVisibility', 'off');
ylim([0, VDD * 1.2]);
xlabel('Time (RC)');
ylabel('Voltage (V)');
title('Capacitor Voltage and Output Waveform');
legend('Location', 'best');
grid on;
hold off;

% Match y-axis limits across both plots
linkaxes(findall(gcf, 'Type', 'axes'), 'y');