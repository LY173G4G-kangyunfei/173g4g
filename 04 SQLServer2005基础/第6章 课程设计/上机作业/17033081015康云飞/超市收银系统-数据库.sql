--�������ݿ�
create database supermarket on(
name ='market',
filename='C:\supermarket.mdf',
size =3MB,
filegrowth =2MB
)
--�������ݿ���־
log on(
name ='market_log',
filename='C:\supermarket_log.ldf',
size =3MB,
filegrowth =10%
)
--ɾ�����ݿ�
drop database supermarket