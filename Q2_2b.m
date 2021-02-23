clc
clear all
format long

n1 = 2;              %Given n values and m
n2 = 3;
m = 1000;

cov_matrix1 = [0.025, 0.0075;           %Given covariance matrices
               0.0075, 0.007];
cov_matrix2 = [0.025, 0.0075, 0.00175;
               0.0075, 0.007, 0.00135;
               0.00175, 0.00135, 0.00043];
                                          % x is uncorrelated vector, y is
                                          % correlated vector
[x1, y1] = corrNRV(m, n1, cov_matrix1);   % For n=2
[x2, y2] = corrNRV(m, n2, cov_matrix2);   % For n=3

x_axis_x1 = x1(1,:);        %2D plot for n=2
y_axis_x1 = x1(2,:);
figure;
plot(x_axis_x1, y_axis_x1, 'o');
title('1000 Uncorrelated random vectors for n=2');

x_axis_y1 = y1(1,:);
y_axis_y1 = y1(2,:);
figure;
plot(x_axis_y1, y_axis_y1, 'o');
title('1000 Correlated random vectors for n=2');

x_axis_x2 = x2(1,:);           %3D plot for n=3
y_axis_x2 = x2(2,:);
z_axis_x2 = x2(3,:);
figure;
plot3(x_axis_x2, y_axis_x2, z_axis_x2, 'o');
title('1000 Uncorrelated random vectors for n=3');

x_axis_y2 = y2(1,:);
y_axis_y2 = y2(2,:);
z_axis_y2 = y2(3,:);
figure;
plot3(x_axis_y2, y_axis_y2, z_axis_y2, 'o');
title('1000 Correlated random vectors for n=3');
           
           

