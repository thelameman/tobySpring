drop table Reply ;
drop table cart ;
drop table property_detail ;
drop table property_map ;
drop table customer ;
drop table broker ;
drop table Board ;
drop table pictures ; 
drop table message;

alter table broker modify address varchar(200)
alter table message add sendIdDel varchar(5) default 'N' not null;
alter table message add receiveIdDel varchar(5) default 'N' not null;
alter table message drop column receiveName
alter table message rename column answer to read

create table customer(
custId varchar2(20)	not null primary key,
name varchar2(20) not null,	
password varchar2(20) not null,	
birthday date not null,	
email varchar2(30)	not null,
phone varchar2(20)	not null
);

create table broker(
brokerId varchar2(20) not null primary key,
password varchar2(20) not null,
name varchar2(20) not null,
officeName	varchar2(20) not null,
address	varchar2(20) not null,
email varchar2(30) not null,
officeTel varchar2(20) not null,
phone varchar2(20)not null
);

create table board(
boardNo	number not null primary key,
category varchar2(20) not null,
title varchar2(200) not null,		
userId varchar2(20)	not null,	
userType varchar2(10) not null,		
boardRegDate date default sysdate not null,
boardText varchar2(4000) not null,
hitCount number default 0 not null,
replyCount number default 0 not null
);

create table message(
 msgNo number not null primary key,
 sendId varchar2(20) not null,
 receiveId varchar2(20) not null,
 msgText varchar2(600) not null,
 msgRegDate date default sysdate not null,
 answer varchar2(5) default 'N' not null
)

alter table broker add(approval varchar(10))
alter table pictures add(brokerId varchar2(20))
alter table board add(replycount number default 0)

create table reply(
replyNo	number  not null primary key,	
replyText varchar2(2000) not null,
userId varchar2(20)	not null,
replyRegDate date default sysdate not null,
boardNo number not null,
foreign key(boardNo) references board(boardNo)
	on delete cascade
);


create table property_total(
propertyNo number 	not null primary key,	
sellerId varchar2(20)	not null,
address varchar2(200) not null,
danji varchar2(50) not null,
propertyType varchar2(10) not null,
builtType varchar2(20) not null,
price number,	
monthfee number,	
area number	,
land_area number,
lati number,
longti number,
floor number,
inputdate date default sysdate not null,
movedate date,
detailaddr varchar2(50) not null,
builtyear number,
maintenance number,
roomoption varchar2(200),
title varchar2(500),
content varchar2(3000),
clickcount number default 0,
approval varchar2(15)
);



create table pictures(
	picNo number primary key,
	category varchar2(20) not null,
	propertyNo number, 
	boardno number,
	brokerid varchar2(20),
	pic varchar2(200),      -- originalfile
	pic_temp varchar2(200)  -- savedfile
);

create table cart(
cartNo	number not null primary key,
custId varchar2(20),	
inputDate date,	
propertyNo number
);

CREATE TABLE temp_con (
	contNo number primary key, 
	propertyNo number not null,
	con_date date not null,
	price_kor varchar2(100) not null,
	con_price number not null, 
	money_date date ,
	extra_condi varchar2(2000),
	s_addr varchar2(200),
	s_id varchar2(30),
	s_jumin varchar2(25),
	s_phone varchar2(15),
	s_name varchar2(20),
	s_status varchar2(20),
	b_addr varchar2(200),
	b_id varchar2(30),
	b_jumin varchar2(25),
	b_phone varchar2(15),
	b_name varchar2(20),
	b_status varchar2(20) );



create sequence msg_seq;
create sequence property_seq start with 1501 increment by 1;
DROP SEQUENCE property_seq;


create sequence seq_boardno start with 1 increment by 1;
create sequence seq_pic start with 1 increment by 1;
create sequence seq_replyno start with 1 increment by 1;
create sequence seq_cartno start with 1 increment by 1;

DROP SEQUENCE seq_pic;
DROP SEQUENCE seq_boardno;
DROP SEQUENCE seq_replyno;
DROP SEQUENCE seq_cartno;

select * from BOARD order by BOARDNO desc
select * from PICTURES order by picno desc
select * from CUSTOMER;
select * from REPLY order by replyno desc
select * from CART order by cartno desc
select * from PROPERTY_DETAIL
select * from PROPERTY_TOTAL 
select * from broker 

DROP TABLE table_name CASCADE CONSTRAINTS; -- unique/primary keys in table referenced by foreign keys 에러시 사용 


select * from PROPERTY_TOTAL where sellerId = 'guroker';
