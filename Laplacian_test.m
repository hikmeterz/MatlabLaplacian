close all;
clear;
clc;

d = 10;


[m,n,C,A,L,x] = Laplacian(d);
[m0,n0,C0,A0,L0,x0] = Laplacian_Answer(d);

if m==m0 && n==n0
    fprintf('Part A is CORRECT\n');
    if L==L0
        fprintf('Part B is CORRECT\n');
        fprintf('Part C is CORRECT\n');
        if x==x0
            fprintf('Part D is CORRECT\n');
        else
            fprintf('Part D is WRONG\n');
        end
    else
        if C==C0
            fprintf('Part B is CORRECT\n');
        else
            fprintf('Part B is WRONG\n');
        end
        if A==A0
            fprintf('Part C is CORRECT\n');
        else
            fprintf('Part C is WRONG\n');
        end
    end
else
    fprintf('Part A is WRONG\n');
end