create table member_tbl_02(custno number(6) not null primary key, custname varchar2(20), phone varchar2(13), address varchar2(60), joindate date, grade char(1), city char(2))
create sequence custno_seq start with 100001 maxvalue 200000 cycle nocache;
drop sequence custno_seq
insert into MEMBER_TBL_02 values(custno_seq.nextval, '김행복', '010-1111-2222', '서울 동대문구 휘경1동', '20151202', 'A', '01');
insert into MEMBER_TBL_02 values(custno_seq.nextval, '이축복', '010-1111-3333', '서울 동대문구 휘경2동', '20151206', 'B', '01');
insert into MEMBER_TBL_02 values(custno_seq.nextval, '장믿음', '010-1111-4444', '울릉군 울릉읍 독도1리', '20151001', 'B', '30');
insert into MEMBER_TBL_02 values(custno_seq.nextval, '최사랑', '010-1111-5555', '울릉군 울릉읍 독도2리', '20151113', 'A', '30');
insert into MEMBER_TBL_02 values(custno_seq.nextval, '진평화', '010-1111-6666', '제주도 제주시 외나무골', '20151225', 'B', '60');
insert into MEMBER_TBL_02 values(custno_seq.nextval, '차공단', '010-1111-7777', '제주도 제주시 감나무골', '20151211', 'C', '60');
select * from member_tbl_02
delete from member_tbl_02
create table money_tbl_02(custno number(6) not null, salenol number(8) not null, pcost number(8), amount number(4), price number(8), pcode varchar2(4), sdate date, constraint pkgroup primary key(custno, salenol))
select (max(custno)+1) from member_tbl_02
insert into money_tbl_02 values('100001', '20160001', 500, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values('100001', '20160002', 1000, 4, 4000, 'A002', '20160101');
insert into money_tbl_02 values('100001', '20160003', 500, 3, 1500, 'A008', '20160101');
insert into money_tbl_02 values('100002', '20160004', 2000, 1, 2000, 'A004', '20160102');
insert into money_tbl_02 values('100002', '20160005', 500, 1, 500, 'A001', '20160103');
insert into money_tbl_02 values('100003', '20160006', 1500, 2, 3000, 'A003', '20160103');
insert into money_tbl_02 values('100004', '20160007', 500, 2, 1000, 'A001', '20160104');
insert into money_tbl_02 values('100004', '20160008', 300, 1, 300, 'A005', '20160104');
insert into money_tbl_02 values('100004', '20160009', 600, 1, 600, 'A006', '20160104');
insert into money_tbl_02 values('100004', '20160010', 3000, 1, 3000, 'A007', '20160106');

drop table money_tbl_02