clear all
close all

% Read data file:
% Here 4 columns correspond to:
% Col 1 - position in x
% Col 2 - position in y
% Col 3 - Image quality
% Col 4 - Misorientation angle
% Only Col 4 is important so we assign data in Col 4 to vector "E"
filepath1 = 'air17.txt';
A = fscanf(fopen(filepath1,'r'),'%f',[4 inf]);
E = A(4,:);

% Define x axis in the final plot to have the range from 0 to 50 degrees
% in 0.5 degree increment
x=0:0.5:50

% Make histogram-like data set, but instead of plotting columns we
% assign the data in histogram to vectors E1 and x1, which will be plotted
% as a line
[E1,x1]=hist(E,x);

% Since in the final plot the y axis is logarithmic it will exclude the points which have "0" 
% value (misorientation angles where no pixels where found), therefore we
% set all these values equal to 1, in order to include these points in the
% graph

E1(E1==0) = 1;


% Create semi logarithmic graph, and define data for the line plot
figure;
semilogy(x, E1,'Linewidth', 5);

% Set x and y axis limits
ylim([0,1000000]);
xlim([0,50]);

% Set annotations
xlabel('Misorientation angle, deg');
ylabel ('Number of scanned points');
legend ('MADPDD')

%Save plot as PNG file
saveas (gcf, 'MADPDD.png')




