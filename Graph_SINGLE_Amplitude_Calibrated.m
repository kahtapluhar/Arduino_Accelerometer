% A Matlab Function that compares the amplitude of 3 CSV files. 

%%%%%%%%%%%%%%%%%%%
%%% CSV File 1 %%%%
%%%%%%%%%%%%%%%%%%%
data = csvread('0cmC1.csv');
     new0X = (data(:, 1)*1.0365) + 0.248;
     new0Y = (data(:, 2)*1.0299) + (-0.3329);
     new0Z = (data(:, 3)*1.0777) + (-0.1462);
     
     box0X = data(:, 4);
     box0Y = data(:, 5);
     box0Z = data(:, 6);

%%%%%%%%%%%%%%%%%%%
%%% CSV File 2 %%%%
%%%%%%%%%%%%%%%%%%%
data1 = csvread('2cmC1.csv');
     new2X = (data1(:, 1)*1.0365) + 0.248;
     new2Y = (data1(:, 2)*1.0299) + (-0.3329);
     new2Z = (data1(:, 3)*1.0777) + (-0.1462);

     box2X = data1(:, 4);
     box2Y = data1(:, 5);
     box2Z = data1(:, 6);

%%%%%%%%%%%%%%%%%%%
%%% CSV File 3 %%%%
%%%%%%%%%%%%%%%%%%%
data2 = csvread('4cmC1.csv');
     new4X = (data2(:, 1)*1.0365) + 0.248;
     new4Y = (data2(:, 2)*1.0299) + (-0.3329);
     new4Z = (data2(:, 3)*1.0777) + (-0.1462);

     box4X = data2(:, 4);
     box4Y = data2(:, 5);
     box4Z = data2(:, 6);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Compare X Acceleration Amplitude %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XAMP = figure('visible','on');  
hold all;
    title('X-AXIS Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
    scatter(new0X, box0X, 'b', '.');
    scatter(new2X, box2X, 'g', '.');
    scatter(new4X, box4X, 'r', '.');
    lsline;
hold off
xlabel('CLOTH G')
ylabel('BOX G')
saveas(XAMP,'XAMP','fig') 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Compare Y Acceleration Amplitude %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
YAMP = figure('visible','on');  
hold all;
    title('Y-AXIS Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
    scatter(new0Y, box0Y, 'b', '.');
    scatter(new2Y, box2Y, 'g', '.');
    scatter(new4Y, box4Y, 'r', '.');
    lsline;
hold off
xlabel('CLOTH G')
ylabel('BOX G')
saveas(YAMP,'YAMP','fig') 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Compare Z Acceleration Amplitude %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ZAMP = figure('visible','on');  
hold all;
    title('Z-AXIS Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
    scatter(new0Z, box0Z, 'b', '.');
    scatter(new2Z, box2Z, 'g', '.');
    scatter(new4Z, box4Z, 'r', '.');
    lsline;
hold off
xlabel('CLOTH G')
ylabel('BOX G')
saveas(ZAMP,'ZAMP','fig') 