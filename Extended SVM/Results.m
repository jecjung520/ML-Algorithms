X1 = linspace(-3,3);
X2 = linspace(-3,3);
[X1,X2] = meshgrid(x1,x2);
XX1=X1(:)';
XX2=X2(:)';
XX=[XX1;XX2];
ZZ=predict(svm,XX')';
Z=reshape(ZZ,100,100);
figure(3)
hold off
contour(X1,X2,Z,[0 0]);
hold on
plot(x_test(1,1:2*n2),x_test(2,1:2*n2),'x');
plot(x_test(1,2*n2+1:end),x_test(2,2*n2+1:end),'o');
grid on

X=x';
net_out = predict(svm,X);
no_misclass_train=sum(abs(sign(sign(net_out)-t')))
X=x_test';
net_out = predict(svm,X);
no_misclass_test=sum(abs(sign(sign(net_out)-t_test')))
number_of_SV=length(svm.Alpha)