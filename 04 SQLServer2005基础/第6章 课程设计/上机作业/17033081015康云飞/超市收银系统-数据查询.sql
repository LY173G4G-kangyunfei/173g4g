--��Ʒ���ݲ�ѯ

--��ѯ��Ʒ����
select wid ��Ʒ���,wnam ��Ʒ����,salesprice-purchaseprice ���� from ware order by ���� desc

--��ѯԱ��������Ʒ���
select enam Ա������,wnam ��Ʒ����,salesdate ��������,salesamount ��������,(salesprice-purchaseprice)*salesamount ӯ�� 
from salesinfo inner join ware on salesinfo.wid=ware.wid inner join employee on employee.eid=salesinfo.eid order by ӯ�� desc

--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select wnam ��Ʒ����,salesamount �������� from ware inner join salesinfo on salesinfo.wid=ware.wid order by salesamount desc

--ͳ��ÿ����Ʒ��������,��ʾ��Ʒ���������
select tnam ��Ʒ���,salesamount �������� from salesinfo inner join ware on salesinfo.wid=ware.wid inner join category on ware.cid=category.cid

--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select wnam ��Ʒ����,(salesprice-purchaseprice)*salesamount ӯ�� from ware inner join salesinfo on salesinfo.wid=ware.wid order by ӯ�� desc

--��ѯ����������ǰ������Ʒ
select top 3 wnam ��Ʒ����,salesamount �������� from ware inner join salesinfo on salesinfo.wid=ware.wid order by �������� desc

--��ѯ2017�����Ʒ����������ǰ�����Ʒ
select top 5 wnam ��Ʒ����,sum(salesamount) �������� from ware inner join salesinfo on salesinfo.wid=ware.wid 
where salesdate between '2017-01-01' and '2017-12-31' group by wnam order by �������� desc
--��ͬ��
select top 5 w.wnam ��Ʒ����,sum(s.salesamount) �������� from ware w,salesinfo s  
where s.wid=w.wid and s.salesdate between '2017-01-01' and '2017-12-31' group by w.wnam order by �������� desc

--ͳ��ÿ��Ա����2017�������
select e.enam Ա��,sum(s.salesamount) �������� from employee e,salesinfo s
where s.eid=e.eid and s.salesdate between '2017-01-01' and '2017-12-31' group by e.enam order by �������� desc

--ͳ��2017���������
select sum((salesprice-purchaseprice)*salesamount) ������ from ware w,salesinfo s 
where s.wid=w.wid and s.salesdate between '2017-01-01' and '2017-12-31' 

--��ѯ��Ʒ����Ʒ��
select tnam ��Ʒ���,wnam ��Ʒ���� from ware inner join category on ware.cid=category.cid