close all;
clear;
clc;

% You can this part at each run
C = randi([0 4], 4, 2);   
M = randi([0 4], 4, 2);
N = randi([0 4], 4, 2);

[A] = bonus(C, M, N);

disp(A*M);
disp(N);

disp(C);
disp(A);