a = input('Enter the coeeficient value of a: ');
b = input('Enter the coeeficient value of b: ');
x = -1 : 0.01 : 1;
y = a*x.^2+b;
plot(x,y);
xlabel('x - Values');
ylabel('y - Values');
title('\bf Parablola y=a*x^2');