%--------------------------------------------------------------------------
%description:香农熵计算测试
%input:数据集
%output:香农熵
%date:20171117
%author:guankaer
%--------------------------------------------------------------------------
clc;
clear;
%导入数据并归一化数据
group = [1,1,1;1,1,1;1,0,0;0,1,0;0,1,0];  %最后一行是label
labels = group(:,size(group,2));

group1 = [1,1,1;1,1,1;0,1,0;1,0,0;1,0,0];  %最后一行是label
labels1 = group1(:,size(group1,2));

ShannonEnt = calcShannonEnt(labels1);
bestFeature = chooseBestFeature(group1);