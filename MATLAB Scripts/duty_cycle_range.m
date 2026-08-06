VDD = 1.8;
RC  = 1;
pts = 1000;

% --- Line 1 ---
V_ctrl1 = linspace(0.2, 1.7, pts);
VH1 = V_ctrl1;
VL1 = 0.5 * V_ctrl1;

t_charge1    = RC * log((VDD - VL1) ./ (VDD - VH1));
t_discharge1 = RC * log(VH1 ./ VL1);
D1 = t_charge1 ./ (t_charge1 + t_discharge1);

window1 = VH1 - VL1;

% --- Line 2 ---
V_ctrl2 = linspace(0.1, 0.85, pts);
VL2 = V_ctrl2;
VH2 = 2 * 0.9 - V_ctrl2;

t_charge2    = RC * log((VDD - VL2) ./ (VDD - VH2));
t_discharge2 = RC * log(VH2 ./ VL2);
D2 = t_charge2 ./ (t_charge2 + t_discharge2);

window2 = VH2 - VL2;

% --- Plot ---
figure;
hold on;
plot(window1, D1 * 100, 'b', 'LineWidth', 1.5, 'DisplayName', 'Resistor Ladder');
plot(window2, D2 * 100, 'r', 'LineWidth', 1.5, 'DisplayName',  'Inverting Op-amp');
xlabel('Threshold Window V_H - V_L (V)');
ylabel('Duty Cycle (%)');
title('VCO Duty Cycle vs Threshold Window');
legend('Location', 'best');
grid on;
hold off;