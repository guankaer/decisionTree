%--------------------------------------------------------------------------
%description:����������ݼ�����ũ��
%input:���ݼ���ǩ
%output:��ũ��
%date:20171117
%author:guankaer
%--------------------------------------------------------------------------
function shannonEnt = calcShannonEnt(labelData)
shannonEnt = 0.0;
countTable = tabulate(labelData);
for i = 1:size(countTable,1)
    prob = countTable(i,3)/100;
    shannonEnt = shannonEnt -  prob * log2(prob);
end
