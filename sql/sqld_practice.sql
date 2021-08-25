create table t(
    c integer primary key,
    d integer
);
insert into t values(1,1);
insert into t values(2,1);

create table s(
    b integer primary key,
    c integer references t(c) on delete cascade
);

insert into s values(1,1);
insert into s values(2,1);

create table r(
    a integer primary key,
    b integer references s(b) on delete set null
);

insert into r values(1,1);
insert into r values(2,2);

commit;
delete from t;
select * from t;  --t 삭제
select * from s;  --s의 모든 데이터가 날라간다. primary의 값이 null이 되기 때문이다.
select * from r;  --b의 값이 null, pk인 a는 살아있다.
----------------------------------------------------


