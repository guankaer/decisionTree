%--------------------------------------------------------------------------
%description:��������
%input:���ݼ����������ݼ�����������Ҫ���ص�����ֵ
%output:���ֽ��
%date:20171117
%author:guankaer
%--------------------------------------------------------------------------
function retDataSet = splitDataSet(dataSet,axis,value)
retDataLength = 0;
%ȥ����axis������������������value��������
for i = 1:length(dataSet)
    if dataSet(i,axis) == value
        retDataLength = retDataLength + 1;
        retDataSet(retDataLength,:) = dataSet(i,:); 
    end
end
retDataSet(:,axis) = [];  %��axis�е�����ȥ��