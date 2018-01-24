%--------------------------------------------------------------------------
%description:划分数据
%input:数据集、划分数据集的特征、需要返回的特征值
%output:划分结果
%date:20171117
%author:guankaer
%--------------------------------------------------------------------------
function retDataSet = splitDataSet(dataSet,axis,value)
retDataLength = 0;
%去掉第axis列特征中特征不等于value的数据项
for i = 1:length(dataSet)
    if dataSet(i,axis) == value
        retDataLength = retDataLength + 1;
        retDataSet(retDataLength,:) = dataSet(i,:); 
    end
end
retDataSet(:,axis) = [];  %把axis列的特征去掉