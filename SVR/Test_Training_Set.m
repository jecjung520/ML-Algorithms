in_dim=2;
out_dim=1;
n_train=30;
n_test=400
n=n_train+n_test;
rand('seed',777);
xx=2*(rand(2,n)-0.5);
trIdx=[1:n_train];
vaIdx=[n_train+1:n];

x=xx(:,trIdx);
t=sign(x(1,:).*x(2,:));
x_test=xx(:,vaIdx);
t_test=sign(x_test(1,:).*x_test(2,:));

figure(1)
hold off
plot(x(1,:),x(2,:),'x');
hold on
plot(x_test(1,:),x_test(2,:),'o');

grid on


