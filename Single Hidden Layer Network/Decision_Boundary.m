x1 = linspace(-1,1);
x2 = linspace(-1,1);
 [X1,X2] = meshgrid(x1,x2);
 XX1=X1(:)';
 XX2=X2(:)';
 XX=[XX1;XX2];
 ZZ=net(XX)';
  Z=reshape(ZZ,100,100);
  figure(2)
  hold off
  contour(X1,X2,Z,[0 0]);
  hold on
  plot(x(1,:),x(2,:),'x');
  grid on
  plot(x_test(1,:),x_test(2,:),'o');
  net_out=net(x);
 no_misclass_train=sum(abs(sign(sign(net_out)-t)))
 net_out=net(x_test);
 no_misclass_test=sum(abs(sign(sign(net_out)-t_test)))