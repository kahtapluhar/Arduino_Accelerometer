% A Matlab Function that iterates through CSV files and 
% cumulatively generates grpahs amplitude based on the regex. 
% e.g. for the regex 0*.csv if the files are named 0XXXX.csv 
% it will create a scatter graph of all of the files 
% that begin with 0. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Comparing 0cm Slack Magnitude %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Mag0 = figure('visible','on'); 
title('0cm Magnitude Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
xlabel('BOX G')
ylabel('CLOTH G')
files = dir('0*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);

     newX = (csv(:, 1)*1.0365) + 0.248;
     newY = (csv(:, 2)*1.0299) + (-0.3329);
     newZ = (csv(:, 3)*1.0777) + (-0.1462);

     newdata = [newX, newY, newZ];

    MVectorCloth = sqrt(sum((newdata(:, 1:3)').^2,1));
    MVectorBox = sqrt(sum((csv(:, 4:6)').^2,1));
    scatter(MVectorBox,MVectorCloth, '.');
    lsline
end
saveas(Mag0,'Mag0','fig') 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Comparing 2cm Slack Magnitude %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Mag2 = figure('visible','on'); 
title('2cm Magnitude Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
xlabel('BOX G')
ylabel('CLOTH G')
files = dir('2*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);

     newX = (csv(:, 1)*1.0365) + 0.248;
     newY = (csv(:, 2)*1.0299) + (-0.3329);
     newZ = (csv(:, 3)*1.0777) + (-0.1462);
     newdata = [newX, newY, newZ];

    MVectorCloth = sqrt(sum((newdata(:, 1:3)').^2,1));
    MVectorBox = sqrt(sum((csv(:, 4:6)').^2,1));
    scatter(MVectorBox,MVectorCloth, '.');
    lsline
end
saveas(Mag2,'Mag2','fig') 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Comparing 4cm Slack Magnitude %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Mag4 = figure('visible','on'); 
title('4cm Magnitude Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
xlabel('BOX G')
ylabel('CLOTH G')
files = dir('4*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
     newX = (csv(:, 1)*1.0365) + 0.248;
     newY = (csv(:, 2)*1.0299) + (-0.3329);
     newZ = (csv(:, 3)*1.0777) + (-0.1462);
     newdata = [newX, newY, newZ];

    MVectorCloth = sqrt(sum((newdata(:, 1:3)').^2,1));
    MVectorBox = sqrt(sum((csv(:, 4:6)').^2,1));
    scatter(MVectorBox,MVectorCloth, '.');
    lsline
end
saveas(Mag4,'Mag4','fig') 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Comparing all 3 Slack Magnitudes %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
magCompare = figure('visible','on'); 
title('All Magnitude Comparison between Cloth and Non-Cloth',... 
    'FontWeight','bold');
xlabel('BOX G')
ylabel('CLOTH G')
files = dir('*.csv');
for file = files'
    hold all;
    csv = load(file.name);
    disp(file.name);
     newX = (csv(:, 1)*1.0365) + 0.248;
     newY = (csv(:, 2)*1.0299) + (-0.3329);
     newZ = (csv(:, 3)*1.0777) + (-0.1462);
     newdata = [newX, newY, newZ];

    MVectorCloth = sqrt(sum((newdata(:, 1:3)').^2,1));
    MVectorBox = sqrt(sum((csv(:, 4:6)').^2,1));
    scatter(MVectorBox,MVectorCloth, '.');
    lsline
end
saveas(magCompare,'magCompare','fig') 