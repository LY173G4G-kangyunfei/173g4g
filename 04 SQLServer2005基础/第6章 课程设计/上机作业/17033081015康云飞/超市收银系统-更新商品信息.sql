--�����Ʒ��
insert into category(tnam,Description) values ('ʳƷ��','�óԲ���')
insert into category(tnam,Description) values ('������','���ò���')
insert into category(tnam,Description) values ('������Ʒ��','���ò���')
insert into category(tnam,Description) values ('�����','���治��')
insert into category(tnam,Description) values ('��װ��','�ÿ�����')
--�����Ʒ��Ϣ
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('������',1,88.00,110,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('������',1,79.00,97,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('����',1,8.80,81,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('Ѽ��',1,4.50,54,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('ţ��',1,9.90,43,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('���',1,4.5,30,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('�޵��Ʊ���',2,25,4599,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('����ϴ�»�',2,55,3600,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('��������',3,3.5,26,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('�����ڿ�',5,1.5,99,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('С����',1,5.5,36,99)

--���Ա����Ϣ
insert into employee(enam,epassword,remark) values('����',666666,'����Ա��')
insert into employee(enam,epassword,remark) values('����',88888888,'����Ա��')

--������ۼ�¼��Ϣ
update ware set amount=amount-1	 where wnam='������'
insert into salesinfo(wid,eid,salesdate,salesamount) values(1,1001,'2017-12-19',7)
update ware set amount=amount-1	 where wnam='������'
insert into salesinfo(wid,eid,salesdate,salesamount) values(2,1002,'2017-12-19',6)
update ware set amount=amount-1	 where wnam='����'
insert into salesinfo(wid,eid,salesdate,salesamount) values(3,1001,'2017-12-19',4)
update ware set amount=amount-1	 where wnam='Ѽ��'
insert into salesinfo(wid,eid,salesdate,salesamount) values(4,1001,'2017-12-19',5)
update ware set amount=amount-1	 where wnam='���'
insert into salesinfo(wid,eid,salesdate,salesamount) values(6,1002,'2017-12-19',3)
--�޸���Ϣ
update employee set enam='������' where enam='����'  
--ɾ������
delete from  ware where wnam='С����'

--���ݲ�ѯ
select*from category
select*from ware
select*from employee
select*from salesinfo
