% A Matlab function that plots the magnitude of the data 
% For both cloth and box values and compares them. It does
% this for one file. 

data = csvread('data.csv'); %Name of CSV File
     new0X = (data(:, 1)*1.0365) + 0.248;       % Calibration X
     new0Y = (data(:, 2)*1.0299) + (-0.3329);   % Calibration Y
     new0Z = (data(:, 3)*1.0777) + (-0.1462);   % Calibration Z
data_0cm = [new0X, new0Y, new0Z];
    MVectorCloth = sqrt(sum((data_0cm(:, 1:3)').^2,1));
    MVectorBox = sqrt(sum((data(:, 4:6)').^2,1));

% data1 = csvread('2cm/2cmA5.csv');
%      new2X = (data1(:, 1)*1.0365) + 0.248;
%      new2Y = (data1(:, 2)*1.0299) + (-0.3329);
%      new2Z = (data1(:, 3)*1.0777) + (-0.1462);
% data_2cm = [new2X, new2Y, new2Z];
%     MVectorCloth1 = sqrt(sum((data_2cm(:, 1:3)').^2,1));
%     MVectorBox1 = sqrt(sum((data1(:, 4:6)').^2,1));% 

% data2 = csvread('4cm/4cmA5.csv');
%      new4X = (data2(:, 1)*1.0365) + 0.248;
%      new4Y = (data2(:, 2)*1.0299) + (-0.3329);
%      new4Z = (data2(:, 3)*1.0777) + (-0.1462);
% data_4cm = [new4X, new4Y, new4Z];
%     MVectorCloth2 = sqrt(sum((data_4cm(:, 1:3)').^2,1));
%     MVectorBox2 = sqrt(sum((data2(:, 4:6)').^2,1));


%Magnitude Comparison
Magnitude_Comparison_3 = figure('visible','on');  
hold all;
    title('Magnitude Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
    scatter(MVectorCloth,MVectorBox, 'r', '.');
   % scatter(MVectorCloth1,MVectorBox1, 'g', '.');
   % scatter(MVectorCloth2,MVectorBox2, 'b', '.');
    lsline;
hold off
xlabel('G')
ylabel('G')
saveas(Magnitude_Comparison_3,'Magnitude_Comparison_3','fig') % Saves the file

