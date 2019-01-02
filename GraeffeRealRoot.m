p = [1 -6 11 -6];
fprintf("   m    2^m   a0            a1           a2            a3\n")
fmt = '%4.1d %4.1d %5.0g %13.5g %13.5g %13.5g\n';
m = 0;
fprintf(fmt,m,1,p)
m = m + 1;
while m<6
    m2 = 2.^m;
    p = graffe(p);
    fprintf(fmt,m,m2,p);
    m = m + 1;    
end
alpha1 = nthroot(p(2),m2);      % 1st real root
alpha2 = nthroot(p(3)/p(2),m2); % 2nd real root
alpha3 = nthroot(p(4)/p(3),m2); % 3rd real root
fprintf("Roots are %.4f %.4f %.4f\n",alpha1,alpha2,alpha3); 


function q = graffe(p)
% Graffe root squaring.  q = graffe(p).
% p & q are 4-vectors with coefficients of cubics.
q = zeros(size(p));
q(1) = p(1)^2;                  % B0
q(2) = (p(2)^2 - 2*p(1)*p(3));  % B1
q(3) = p(3)^2 - 2*p(2)*p(4);    % B2
q(4) = p(4)^2;                  % B3
end