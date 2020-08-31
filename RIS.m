close all;
clear all;

global  RIS_FUNCTION;
RIS_FUNCTION = 0;

N = 1024;
RIS_N = 16*16*16;
X = linspace(0, 1, N);
fX = Function(X);
source = SourcePDF(X);

disp('RIS2')
RIS2 = RISpdf(X, 2, RIS_N*16);
disp('RIS4')
RIS4 = RISpdf(X,4, RIS_N*4);
disp('RIS16')
RIS16 = RISpdf(X, 16, RIS_N);

plot(X, fX, 'k--');
hold on;

plot(X, source);
hold on;

 plot(X, RIS2);
 hold on;

 plot(X, RIS4);
 hold on;
 plot(X, RIS16);
 hold on;

legend('integrand / target', 'Source / M = 1', 'M = 2', 'M = 4', 'M = 16');

% plot(X, fX ./ RIS2);
% hold on;