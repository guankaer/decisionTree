%--------------------------------------------------------------------------
%description:��ũ�ؼ������
%input:���ݼ�
%output:��ũ��
%date:20171117
%author:guankaer
%--------------------------------------------------------------------------
clc;
clear;
%�������ݲ���һ������
% [returnMat,classLabelVector] = file2matric('D:\matlab workspace\MachineLearning\kNN\datingTestSet2');
% [returnMat,range,minVals] = autoNorm(returnMat);
%������ũ��
% shannonEnt = calcShannonEnt(classLabelVector);
%

group = [1,1;1,1;1,0;0,1;0,1];
labels = [1;1;0;0;0];
ShannonEnt = calcShannonEnt(labels);