create table hrd_board (idx number(6) not null primary key, writer varchar2(20), subject varchar2(255), content clob, uploaddate date default sysdate)
create sequence hrd_board_idx_seq start with 0001 increment by 1 maxvalue 100000 cycle nocache;
insert into hrd_board values (hrd_board_idx_seq.nextval, '홍길동', '공지', '내용1', sysdate)
select * from HRD_BOARD;

create table hrd_comment_list (idx number(6) not null primary key, bidx number(6), writer varchar2(20), content clob, uploaddate date default sysdate)
create sequence hrd_comment_list_idx_seq start with 0001 increment by 1 maxvalue 100000 cycle nocache;
insert into hrd_comment_list values(hrd_comment_list_idx_seq.nextval, 1, '댓글작성자', '댓글내용1', sysdate)
select * from hrd_comment_list