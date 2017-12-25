--�������ݱ�

--��Ʒ����category
create table category(
--��Ʒ�������
cid int primary key identity(1,1),
--�������
tnam nvarchar(20) not null unique,
Description nvarchar(200)
)
--��Ʒ��Ϣ��ware
create table ware(
--��Ʒ��ţ������룩������
wid int primary key identity(1,1),
--������
cid int foreign key references category(cid),
--��Ʒ����
wnam nvarchar(50) not null unique,
--��Ʒ����
purchaseprice decimal(10,2) not null,
--��Ʒ�ۼ�
salesprice decimal(10,2) not null,
--�����
amount int not null
)
--Ա����
create table employee(
--Ա�����,����
eid int primary key identity(1001,1),
--Ա������
enam nvarchar(20) not null,
--Ա����¼����epassword varchar(20) check(len(epassword)>=6),
--��ע
remark nvarchar(20) 
)
--���ۼ�¼��
create table salesinfo(
--���ۼ�¼����
sid int primary key identity(1,1),
--��Ʒ���
wid int foreign key references ware(wid),
--����Ա���
eid int foreign key references employee(eid),
--����ʱ��
salesdate nvarchar(30) not null,
--��������
salesamount int not null default 1
)
--ɾ�����ݱ�
drop table category
drop table ware
drop table employee
drop table salesinfo
