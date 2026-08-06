%% Read data
data = readmatrix('src/ptat_tb_out2.txt', 'NumHeaderLines', 1);

% Assign columns (col 1 is index, col 2 is temp)
temp   = data(:,2);
ivec2p = data(:,3) * 1e6;
ivec2n = data(:,4) * 1e6;
refvec = data(:,5) * 1e6;

%% Plot
figure;
plot(temp, ivec2p, '-o', 'LineWidth', 1.5, 'DisplayName', 'I_{1p}'); hold on;
plot(temp, ivec2n, '-s', 'LineWidth', 1.5, 'DisplayName', 'I_{1n}');
plot(temp, refvec, '-^', 'LineWidth', 1.5, 'DisplayName', 'I_{ref}');

xlabel('Temperature (°C)');
ylabel('Current (\muA)');
title('Currents vs Temperature');
legend('Location', 'best');
grid on;
xticks([-40 -20 0 27 60 85 125]);
xlim([-40 125])