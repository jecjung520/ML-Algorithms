in_dim=2;
out_dim=1;
randn('seed',777);

n1=10;
n_train=4*n1;
a=.7;
x=[[1 1]'+a*randn(2,n1) [-1 -1]'+a*randn(2,n1) [1 -1]'+a*randn(2,n1) ...
    [-1 1]'+a*randn(2,n1)];
t=[ones(1,2*n1)  [-ones(1,2*n1)]];
figure(1)
hold off
plot(x(1,1:2*n1),x(2,1:2*n1),'x');
hold on
plot(x(1,2*n1+1:end),x(2,2*n1+1:end),'o');

n2=100;
n_test=4*n2;
x_test=[[1 1]'+a*randn(2,n2) [-1 -1]'+a*randn(2,n2) [1 -1]'+a*randn(2,n2) ...
    [-1 1]'+a*randn(2,n2)];
t_test=[ones(1,2*n2)  [-ones(1,2*n2)]];
figure(2)
hold off
plot(x_test(1,1:2*n2),x_test(2,1:2*n2),'x');
hold on
plot(x_test(1,2*n2+1:end),x_test(2,2*n2+1:end),'o');