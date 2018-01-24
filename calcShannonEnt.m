%--------------------------------------------------------------------------
%description:计算给定数据集的香农熵
%input:数据集标签
%output:香农熵
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
