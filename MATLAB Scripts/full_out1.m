%% Read data
data = readmatrix('src/full_out1.txt', 'NumHeaderLines', 1);

% Assign columns
time  = data(:,2) * 1e9;
vout  = data(:,3);
vc  = data(:,4);

%% Plot
figure;
plot(time, vout,  'LineWidth', 1.5, 'DisplayName', 'V_{OUT}'); hold on;
plot(time, vc,  'LineWidth', 1.5, 'DisplayName', 'V_C');
yline(1.2, '--r', 'V_H', 'HandleVisibility', 'off');
yline(0.6, '--r', 'V_L', 'HandleVisibility', 'off');

xlabel('Time (ns)');
ylabel('Voltage (V)');
title('VCO Circuit Output');
legend('Location', 'best');
xlim([0 1000])
ylim([-0.2 2])
grid on;