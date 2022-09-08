clc;
clear;
close all;

n=600

C01=[0 0];
n1=n;
X1=randn(n1,2);
X1(:,1)=X1(:,1)+C01(1);
X1(:,2)=X1(:,2)+C01(2);

C02=[4 7];
n2=n;
X2=randn(n2,2);
X2(:,1)=X2(:,1)+C02(1);
X2(:,2)=X2(:,2)+C02(2);


C03=[7 3];
n3=n;
X3=randn(n3,2);
X3(:,1)=X3(:,1)+C03(1);
X3(:,2)=X3(:,2)+C03(2);

 figure;
 plot(X1(:,1),X1(:,2),'bo');
 hold on;
 plot(X2(:,1),X2(:,2),'rs');
 plot(X3(:,1),X3(:,2),'kp');
 axis equal;
 grid on;

