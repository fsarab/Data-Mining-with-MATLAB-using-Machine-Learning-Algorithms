clc;
clear;
close all;

data=load('data1');
X=data.X;

k=10;
[IDX, C]=kMeansClustering(X,k);

Colors=hsv(k);
for i=1:k
    Xi=X(IDX==i,:);
    plot(Xi(:,1),Xi(:,2),'s','MarkerSize',10,'Color',Colors(i,:));
    hold on;
    plot(C(i,1),C(i,2),'bo','MarkerSize',12,'MarkerFaceColor',Colors(i,:));
end