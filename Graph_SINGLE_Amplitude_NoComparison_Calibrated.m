% A Matlab Function that plots 2 graphs one of the cloth, 
% one of the box and simply draws the amplitudes at the 
% Index

%%%%%%%%%%%%%%%%%
%%% Get Data %%%%
%%%%%%%%%%%%%%%%%
data = csvread('data.csv'); %Name Of CSV File
x1_Gs = (data(:, 1)*1.0365) + 0.248;
y1_Gs = (data(:, 2)*1.0299) + (-0.3329);
z1_Gs = (data(:, 3)*1.0777) + (-0.1462);
x2_Gs = data(:, 4);
y2_Gs = data(:, 5);
z2_Gs = data(:, 6);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Amplitude of Cloth (X, Y, Z) %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
acc_data_sensor1 = figure('visible','on');     
hold all
title('Accelerometer Fixed on Cloth',... 
  'FontWeight','bold')
plot(x1_Gs, 'Color', 'r', 'LineStyle', '-')
plot(y1_Gs, 'Color', 'g', 'LineStyle', '-')
plot(z1_Gs, 'Color', 'b', 'LineStyle', '-')
hold off
legend('X','Y','Z');
xlabel('Time')
ylabel('G')
saveas(acc_data_sensor1,'acc_data_sensor1','fig') 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Amplitude of Box (X, Y, Z) %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
acc_data_sensor2 = figure('visible','on');  
hold all
title('Accelerometer Fixed on Box',... 
  'FontWeight','bold')
plot(x2_Gs, 'Color', 'r', 'LineStyle', '-')
plot(y2_Gs, 'Color', 'g', 'LineStyle', '-')
plot(z2_Gs, 'Color', 'b', 'LineStyle', '-')
hold off
legend('X','Y','Z');
xlabel('Time')
ylabel('G')
saveas(acc_data_sensor2,'acc_data_sensor2','fig') 
