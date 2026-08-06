x = linspace(0, 6, 1000);

% RC charge curve: y = 1.8 - e^(-(x - ln(1.8)))
y_charge = 1.8 - exp(-(x - log(1.8)));
y_charge(y_charge <= 0 | y_charge >= 1.8) = NaN;

% RC discharge curve: y = 1.8 * e^(-x)
y_discharge = 1.8 * exp(-x);
y_discharge(y_discharge <= 0 | y_discharge >= 1.8) = NaN;

% Threshold lines
y_high = 1.1;
y_low  = 0.7;

% Plot
figure;
hold on;
plot(x, y_charge,    'b', 'LineWidth', 1.5);
plot(x, y_discharge, 'r', 'LineWidth', 1.5);
yline(y_high,  'k--', 'LineWidth', 1.5, 'Label', 'V_H', 'DisplayName', 'V_H');
yline(y_low,  'k:',  'LineWidth', 1.5, 'Label', 'V_L', 'DisplayName', 'V_L');
hold off;

xlabel('Time (RC)');
ylabel('Voltage');
title('RC Charge and Discharge Curves');
legend('Charge', 'Discharge', 'V_H = 0.8', 'V_L = 0.4');
grid on;