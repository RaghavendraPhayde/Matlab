x1=[0,0];
 x2=[5,5];
 x3=[10,0];
 Y=[x1(2);x2(2);x3(2)];
A=[x1(1)^2 x1(1) 1;x2(1)^2 x2(1) 1;x3(1)^2 x3(1) 1];
X=inv(A)*Y;
x=x1(1):0.1:x3(1);
Y=X(1)*x.^2+X(2)*x;
figure, plot(x,Y), grid on, 
hold on
text(x1(1),x1(2), ' POINT X1')
text(x2(1),x2(2), ' POINT X2')
text(x3(1),x3(2), ' POINT X3')
hold off