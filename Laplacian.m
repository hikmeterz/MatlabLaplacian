function [m,n,C,A,L,x] = Laplacian(d)
    % Assume d is given correctly
    % d is positive integer
    
    % part A (0 points)
    % Find m,n
    m = 2*d;     % NOT correct
    n = d+2;     % NOT correct
    
    % m,n MUST be correct in order to continue

    % part B (15 points)
    % Find C
    C = eye(m);      % NOT correct
    for i=1:d%yay sabitleri usttekiler 1 alttakiler d kadar d=1 haric
        if d==1
            C(d+i, d+i) = 1;
        else    
           if i<=(m/2)%kucukse 1 yukarikrailer
               C(d+i,d+i)=1;
           else
               C(d+i,d+i)=d;%alttakiler d.

           end
           
        end
    end  
    
    % part C (30 points)
    % Find A
        % NOT correct

    A = zeros(m,n);
    for i=1:2*d
        A(i, i+1) = -d;
        A(i, i) = 1;
    end
    
    
    
    L = A' * C * A;     % no need to change this line
    % L MUST be correct in order to continue
    
    % part D (45 points)
    % Find x
    % NOT correct
    L2 = L(2:end-1, 2:end-1);
    L3 = L(2:end-1, end);
    f = zeros(n-2,1);
    f(d) = d;
    b = f - d * L3;
    x = L2 \ b;
    x = [0; x; d];
    
    
end