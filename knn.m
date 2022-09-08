clc;
clear;
close all;

%% data

load fisheriris;
%inputs
X=meas;   
%target
Y=species;

%% knn-Analysis

kmax=30;

knnc=cell(kmax,1);
cvm=cell(kmax,1);
ResubLoss=zeros(kmax,1);
KFoldLoss=zeros(kmax,1);

for k=1:kmax
    knnc{k}=ClassificationKNN.fit(X,Y,'NumNeighbors',k);
    cvm{k}=crossval(knnc{k});
    ResubLoss(k)=resubLoss(knnc{k});
    KFoldLoss(k)=kfoldLoss(cvm{k});
end

%% plot

figure;
plot(ResubLoss,'b','LineWidth',2);
hold on;
plot(KFoldLoss,'g','LineWidth',2);
legend('Resub. Loss','k-Fold Loss');
xlabel('Number of Neighbors (k)');
ylabel('Loss');


