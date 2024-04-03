alter session set current_schema = wksp_external;

delete from transaction;
delete from category;

insert into category (type, color, name, icon) values ('E', 'u-color-9', 'Car maintenance', 'fa-car');
insert into category (type, color, name, icon) values ('E', 'u-color-9', 'Car payment',     'fa-car');
insert into category (type, color, name, icon) values ('E', 'u-color-9', 'Childcare',       'fa-child');

insert into category (type, color, name, icon) values ('I', 'u-color-4', 'Job',         'fa-suitcase');
insert into category (type, color, name, icon) values ('I', 'u-color-4', 'Consultancy', 'fa-flask');

insert into transaction (category_id, datetime, amount, vendor, notes)
    values ((select id from category where name = 'Car maintenance'), sysdate, 100.23, null, null);
    
insert into transaction (category_id, datetime, amount, vendor, notes)
    values ((select id from category where name = 'Car payment'), sysdate, 40.22, null, null);

commit;