%% Read data
data = readmatrix('src/compn_tb_out1.txt', 'NumHeaderLines', 1);

% Assign columns
time  = data(:,2) * 1e9;
vinn  = data(:,3);
vinp  = data(:,4);
vout2 = data(:,5);

%% Plot
figure;
plot(time, vinn,  'LineWidth', 1.5, 'DisplayName', 'V_{inn}'); hold on;
plot(time, vinp,  'LineWidth', 1.5, 'DisplayName', 'V_{inp}');
plot(time, vout2, 'LineWidth', 1.5, 'DisplayName', 'V_{out}');

xlabel('Time (ns)');
ylabel('Voltage (V)');
title('NMOS Input Comparator Output');
legend('Location', 'best');
xlim([0 210])
grid on;