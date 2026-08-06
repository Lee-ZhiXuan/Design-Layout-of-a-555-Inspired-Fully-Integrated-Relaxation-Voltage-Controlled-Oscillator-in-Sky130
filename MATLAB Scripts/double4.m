figure;

%% Left plot — NMOS
data = readmatrix('src/compn_tb_out1.txt', 'NumHeaderLines', 1);
time  = data(:,2) * 1e9;
vinn  = data(:,3);
vinp  = data(:,4);
vout2 = data(:,5);

subplot(1,2,1);
plot(time, vinn,  'LineWidth', 1.5, 'DisplayName', 'V_{inn}'); hold on;
plot(time, vinp,  'LineWidth', 1.5, 'DisplayName', 'V_{inp}');
plot(time, vout2, 'LineWidth', 1.5, 'DisplayName', 'V_{out}');
xlabel('Time (ns)');
ylabel('Voltage (V)');
title('NMOS Input Comparator');
lgd1 = legend('Location', 'best');
lgd1.ItemTokenSize = [15 5];
xlim([0 210]);
grid on;

%% Right plot — PMOS
data = readmatrix('src/compp_tb_out1.txt', 'NumHeaderLines', 1);
time  = data(:,2) * 1e9;
vinn  = data(:,3);
vinp  = data(:,4);
vout2 = data(:,5);

subplot(1,2,2);
plot(time, vinn,  'LineWidth', 1.5, 'DisplayName', 'V_{inn}'); hold on;
plot(time, vinp,  'LineWidth', 1.5, 'DisplayName', 'V_{inp}');
plot(time, vout2, 'LineWidth', 1.5, 'DisplayName', 'V_{out}');
xlabel('Time (ns)');
ylabel('Voltage (V)');
title('PMOS Input Comparator');
lgd = legend('Location', 'best');
lgd.ItemTokenSize = [15 5];
xlim([0 210]);
grid on;