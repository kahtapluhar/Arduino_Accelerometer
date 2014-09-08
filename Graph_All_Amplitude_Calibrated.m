% A Matlab Function that iterates through CSV files and 
% cumulatively generates grpahs amplitude based on the regex. 
% e.g. for the regex 0*.csv if the files are named 0XXXX.csv 
% it will create a scatter graph of all of the files 
% that begin with 0. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Comparing X axis Amplitudes %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AmpX0 = figure('visible','on'); 
title('Amplitude Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
xlabel('BOX G')
ylabel('CLOTH G')
files = dir('0*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
        x1_Gs = csv(:, 1); %Cloth
        newX1 = x1_Gs*1.0365+0.248;
        x2_Gs = csv(:, 4); %Box
    scatter(x2_Gs,newX1, '.', 'r');
end
files = dir('2*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
        x1_Gs = csv(:, 1); %Cloth
        newX1 = x1_Gs*1.0365+0.248;
        x2_Gs = csv(:, 4); %Box
    scatter(x2_Gs,newX1, '.', 'g');
end
files = dir('4*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
        x1_Gs = csv(:, 1); %Cloth
        newX1 = x1_Gs*1.0365+0.248;
        x2_Gs = csv(:, 4); %Box
    scatter(x2_Gs,newX1, '.', 'b');
end
saveas(AmpX0,'AmpX0','fig')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Comparing Y axis Amplitudes %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AmpY = figure('visible','on'); 
title('Amplitude Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
xlabel('BOX G')
ylabel('CLOTH G')
files = dir('0*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
       y1_Gs = csv(:, 2);
       newY1 = y1_Gs*1.0299 + (-0.3329);
       y2_Gs = csv(:, 5);
    scatter(y2_Gs, newY1, '.', 'r');
end
files = dir('2*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
       y1_Gs = csv(:, 2);
       newY1 = y1_Gs*1.0299 + (-0.3329);
       y2_Gs = csv(:, 5);
    scatter(y2_Gs,newY1, '.', 'g');
end
files = dir('4*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
       y1_Gs = csv(:, 2);
       newY1 = y1_Gs*1.0299 + (-0.3329);
       y2_Gs = csv(:, 5);
    scatter(y2_Gs, newY1, '.', 'b');
end
saveas(AmpY,'AmpY','fig') 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Comparing Z axis Amplitudes %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AmpZ = figure('visible','on'); 
title('Amplitude Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
xlabel('CLOTH G')
ylabel('BOX G')
files = dir('0*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
        z1_Gs = csv(:, 3);
       newZ1 = z1_Gs*1.0777 + (-0.1462);
        z2_Gs = csv(:, 6);
    scatter(z1_Gs, z2_Gs, '.', 'r');
end
lsline

files = dir('2*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
        z1_Gs = csv(:, 3);
       newZ1 = z1_Gs*1.0777 + (-0.1462);
        z2_Gs = csv(:, 6);
    scatter(z1_Gs, z2_Gs, '.', 'g');
end
lsline

files = dir('4*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
        z1_Gs = csv(:, 3);
       newZ1 = z1_Gs*1.0777 + (-0.1462);
        z2_Gs = csv(:, 6);
    scatter(z1_Gs, z2_Gs, '.', 'b');
end
lsline
saveas(AmpZ,'AmpZ','fig') 