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
group = [1,1,1;1,1,1;1,0,0;0,1,0;0,1,0];  %���һ����label
labels = group(:,size(group,2));

group1 = [1,1,1;1,1,1;0,1,0;1,0,0;1,0,0];  %���һ����label
labels1 = group1(:,size(group1,2));

ShannonEnt = calcShannonEnt(labels1);
bestFeature = chooseBestFeature(group1);