%--------------------------------------------------------------------------
%description:选择最好的数据集划分方式
%input:数据集
%output:最好特征的索引值
%date:20171118
%author:guankaer
%--------------------------------------------------------------------------
function bestFeature = chooseBestFeature(dataSet)
dataLabels = dataSet(:,size(dataSet,2));
baseEntropy = calcShannonEnt(dataLabels);  %计算原始数据的信息熵
bestInfoGain = 0.0;  %作为每次计算的判断值
groupEntropy = 0.0;
bestFeature = 0;
for i = 1:size(dataSet,2)-1  %有几种特征，就循环计算几次
    countTable = tabulate(dataSet(:,i));  %对第i个特征进行统计
    feature = countTable(:,1);
    for j = 1:size(feature,1) %这种特征有几种值，就分为几个组进行信息熵计算
        retDataSet = splitDataSet(dataSet,i,feature(j));
        retDataLabels = retDataSet(:,size(retDataSet,2));
        groupEntropy = groupEntropy + (length(retDataSet)/length(dataSet)*calcShannonEnt(retDataLabels));
        retDataSet = [];
        retDataLabels = [];
    end
    infoGain = baseEntropy - groupEntropy;
    groupEntropy = 0.0;
    if infoGain > bestInfoGain
        bestInfoGain = infoGain;
        bestFeature = i;
    end
end