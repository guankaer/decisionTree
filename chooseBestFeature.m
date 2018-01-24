%--------------------------------------------------------------------------
%description:选择最好的数据集划分方式
%input:数据集
%output:最好特征的索引值
%date:20171118
%author:guankaer
%--------------------------------------------------------------------------
function bestFeature = chooseBestFeature(dataSet,dataLabels)
baseEntropy = calcShannonEnt(dataLabels);  %计算原始数据的信息熵
bestInfoGain = 0.0;  %作为每次计算的判断值
groupEntropy = 0.0;
bestFeature = 0;
for i = 1:size(dataSet,2)  %有几种特征，就循环计算几次
    countTable = tabulate(dataSet(:,i));
    for j = 1:size(countTable,1) %这种特征有几种值，就分为几个组进行信息熵计算
        numVals = 0;
        for k = 1:size(dataSet,1)
            if dataSet(k,i) == countTable(j,1)
                numVals = numVals +1;
                uniqueLabels(numVals) = dataLabels(k);
            end
        end
        groupEntropy = groupEntropy + (length(uniqueLabels)/length(dataSet)*calcShannonEnt(uniqueLabels));
    end
    uniqueLabels = [];
    numVals = 0;
    infoGain = baseEntropy - groupEntropy;
    if infoGain > bestInfoGain
        bestInfoGain = infoGain;
        bestFeature = i;
    end
end