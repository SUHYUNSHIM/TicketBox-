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
select * from t;  --t ����
select * from s;  --s�� ��� �����Ͱ� ���󰣴�. primary�� ���� null�� �Ǳ� �����̴�.
select * from r;  --b�� ���� null, pk�� a�� ����ִ�.
----------------------------------------------------


