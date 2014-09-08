% Polyfit: 
% http://www.mathworks.co.uk/help/matlab/data_analysis/linear-regression.html
% Use polyfit to compute a linear regression that predicts y from x:
% p(1) is the slope and p(2) is the intercept of the linear predictor.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Get Data

disp(' ');
CalibrationData = csvread('CalibrationData.csv');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Calibrate X Axis

X1 = CalibrationData(:,1); %ususally Cloth Sensor
Y1= CalibrationData(:,4);
polyfit(X1, Y1, 1) 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Calibrate Y Axis

X2 = CalibrationData(:,2); %ususally Cloth Sensor
Y2 = CalibrationData(:,5);
polyfit(X2, Y2, 1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Calibrate Z Axis

X3 = CalibrationData(:,3); %ususally Cloth Sensor
Y3 = CalibrationData(:,6);
polyfit(X3, Y3, 1)