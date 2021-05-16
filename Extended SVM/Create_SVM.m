C=5;
X=x';
Y=t';
svm = fitcsvm(X,Y,'KernelFunction','rbf', 'KernelScale','auto','BoxConstraint',C);