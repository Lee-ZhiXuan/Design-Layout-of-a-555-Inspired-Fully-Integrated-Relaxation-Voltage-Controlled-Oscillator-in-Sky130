VDD = 1.8;
VH  = 0.8;
VL  = 0.4;
RC  = 1;

% --- Find x-duration of each half-cycle ---
t_charge    = RC * log((VDD - VL) / (VDD - VH));
t_discharge = RC * log(VH / VL);

% --- Build repeated charge/discharge segments ---
n_cycles = 4;
pts      = 500;

x_cap  = [];
y_cap  = [];
x_sq   = [];
y_sq   = [];

x_offset = 0;

for i = 1:n_cycles
    % -- Charge segment: VL -> VH --
    t = linspace(0, t_charge, pts);
    v = VDD - (VDD - VL) * exp(-t / RC);

    x_cap = [x_cap, x_offset + t];
    y_cap = [y_cap, v];

    % Square wave HIGH during charge
    x_sq = [x_sq, x_offset + t];
    y_sq = [y_sq, VDD * ones(1, pts)];

    x_offset = x_offset + t_charge;

    % -- Discharge segment: VH -> VL --
    t = linspace(0, t_discharge, pts);
    v = VH * exp(-t / RC);

    x_cap = [x_cap, x_offset + t];
    y_cap = [y_cap, v];

    % Square wave LOW during discharge
    x_sq = [x_sq, x_offset + t];
    y_sq = [y_sq, zeros(1, pts)];

    x_offset = x_offset + t_discharge;
end

% --- Plot superimposed ---
figure;
hold on;
plot(x_cap, y_cap, 'b',  'LineWidth', 1.5, 'DisplayName', 'Cap_V');
plot(x_sq,  y_sq,  'r',  'LineWidth', 1.5, 'DisplayName', 'Output');
yline(VH,  'k--', 'LineWidth', 1.5, 'Label', 'V_H', 'DisplayName', 'V_H');
yline(VL,  'k:',  'LineWidth', 1.5, 'Label', 'V_L', 'DisplayName', 'V_L');
yline(VDD, 'm--', 'LineWidth', 0.8, 'Label', 'VDD', 'DisplayName', 'VDD');
ylim([0, VDD * 1.2]);
xlabel('Time (RC)');
ylabel('Voltage (V)');
title('Capacitor Voltage and Asymmetric Output Waveform');
legend('Location', 'best');
grid on;
hold off;