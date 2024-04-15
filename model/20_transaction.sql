drop sequence transaction_seq;

create sequence transaction_seq nocache;

drop table transaction cascade constraints;

create table transaction (
    id              integer             not null,
    category_id     integer             not null,
    datetime        date                not null,
    amount          number(8,2)         not null,
    vendor          varchar2(100 char),
    notes           varchar2(100 char),
    created_at      timestamp           not null,
    updated_at      timestamp           not null
);

alter table transaction 
    modify id default transaction_seq.nextval;

alter table transaction
    add constraint transaction_pk
    primary key (id);

alter table transaction
    add constraint transaction_fk_01
    foreign key (category_id)
    references category (id);
    
create trigger transaction_trg_01
    before insert or update on transaction
    for each row
declare
    v_systimestamp timestamp := systimestamp;
begin
    if inserting then
        :new.created_at := v_systimestamp;
    end if;
    
    :new.updated_at := v_systimestamp;
end transaction_trg_01;
/