-------------------------------[사용자 가입정보]----------------- 
drop table member;
create table member(
    id varchar2(20) constraint id_pk primary key,
    pw varchar2(20) not null,
    name varchar2(20) not null,
    email varchar2(30) not null
);

commit;

insert into member values('suhyun','1234','수현','aa@naver.com');
insert into member values('junghyun','1234','정현','bb@naver.com');
select * from member;
-----------------------------------[공연 상세정보]----------------------------
drop table performance;
create table performance(
    p_name varchar2(30) constraint p_name_pk primary key,
    cast varchar2(50),
    p_desc varchar2(50)
);
commit;
insert into performance values('마리앙뚜아네트','김주연,이조연,박조연','image/url');
commit;
select * from performance;
----------------------------------------[공연 회차 정보]----------------------
drop table performance_each;
create table performance_each(
    p_id varchar2(10) primary key, 
    p_name varchar2(30) constraint p_name_fk references performance(p_name),
    p_date date,
    p_time varchar2(10),
    vip number(2),
    r number(3),
    s number(3)     
);
commit;

insert into performance_each values('MA08281400','마리앙뚜아네트',TO_DATE('2021-08-28','yyyy-mm-dd'),'14:00',80,150,150);
insert into performance_each values('MA08281800','마리앙뚜아네트',TO_DATE('2021-08-28','yyyy-mm-dd'),'18:00',80,150,150);
select * from performance_each;
---------------------------------[좌석 선택]--------------------------------------
drop table member_seat;
create table member_seat(
    id varchar2(20) constraint id_fk references member(id),
    s1_id varchar2(30),
    s2_id varchar2(30),
    s3_id varchar2(30),
    p_id varchar2(10) constraint p_id_fk references performance_each(p_id),
    p_name varchar2(30) constraint p_name_seat_fk references performance(p_name)
);
commit;
select * from member_seat;
insert into member_seat(id,p_id,p_name) values('suhyun','MA08281400','마리앙뚜아네트');
insert into member_seat(id,p_id,p_name) values ('junghyun','MA08281800','마리앙뚜아네트');
---------------------------------------[예매 완료 정보]-------------------------------------------
create table total_ticket(
    ticket_number varchar2(20) primary key,
    user_id varchar2(10) constraint u_id_fk references member(id),
    payment_number varchar2(20)
);
commit;
select * from total_ticket;
----------------[결제]------------------------------
create table payment(
    id varchar2(20) constraint id_pay_fk references member(id),
    rcv_ticket varchar2(10),
    pay_ticket varchar2(10),
    total number(6)
);
cnullommit;
select * from payment;

------[게시판]-----------------------------
create table board(
    aid number(10) primary key not null,
    rid number(10),
    pwd varchar2(50),
    dbsubject varchar2(50),
    dbname varchar2(50),
    dbdate date default sysdate,
    dbhits number(10),
    dbmemo varchar2(500)
);
commit;
----------------------------------------------------------------------
select * from member_seat where id='suhyun';
select vip, r, s  
from performance_each , member_seat
where id = 'suhyun' and member_seat.p_id = performance_each.p_id;

select s_id from member_seat;
select * from member_seat;
delete from member_seat where s_id = '1층C구역09열10번 VIP';

update member_seat set s_id = '2층A구역01열06번 S' where s_id is null and id is not null;
    
select * from member_seat;

delete from member_seat where id is null;
select * from member_seat where s_id is null;
commit;



