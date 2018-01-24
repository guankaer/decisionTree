%--------------------------------------------------------------------------
%description:ѡ����õ����ݼ����ַ�ʽ
%input:���ݼ�
%output:�������������ֵ
%date:20171118
%author:guankaer
%--------------------------------------------------------------------------
function bestFeature = chooseBestFeature(dataSet,dataLabels)
baseEntropy = calcShannonEnt(dataLabels);  %����ԭʼ���ݵ���Ϣ��
bestInfoGain = 0.0;  %��Ϊÿ�μ�����ж�ֵ
groupEntropy = 0.0;
bestFeature = 0;
for i = 1:size(dataSet,2)  %�м�����������ѭ�����㼸��
    countTable = tabulate(dataSet(:,i));
    for j = 1:size(countTable,1) %���������м���ֵ���ͷ�Ϊ�����������Ϣ�ؼ���
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