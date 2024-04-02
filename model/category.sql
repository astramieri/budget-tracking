drop sequence category_seq;

create sequence category_seq nocache;

drop table category cascade constraints;

create table category (
    id          integer             not null,
    type        char(1)             not null,
    name        varchar2(100 char)  not null,
    icon        varchar2(100 char),
    color       varchar2(100 char),
    notes       varchar2(100 char),
    created_at  timestamp           not null,
    updated_at  timestamp           not null
);

comment on column category.type is 'E=expenses, I=incomes';

alter table category 
    modify id default category_seq.nextval;

alter table category
    add constraint category_pk
    primary key (id);

alter table category 
    add constraint category_uk_01 
    unique (name);

alter table category 
    add constraint category_ck_01 
    check (type in ('E', 'I'));
    
create trigger category_trg_01
    before insert or update on category
    for each row
declare
    v_systimestamp timestamp := systimestamp;
begin
    if inserting then
        :new.created_at := v_systimestamp;
    end if;
    
    :new.updated_at := v_systimestamp;
end category_trg_01;
/


    
