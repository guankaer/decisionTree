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
% [returnMat,classLabelVector] = file2matric('D:\matlab workspace\MachineLearning\kNN\datingTestSet2');
% [returnMat,range,minVals] = autoNorm(returnMat);
%计算香农熵
% shannonEnt = calcShannonEnt(classLabelVector);
%

group = [1,1;1,1;1,0;0,1;0,1];
labels = [1;1;0;0;0];
ShannonEnt = calcShannonEnt(labels);