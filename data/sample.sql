alter session set current_schema = wksp_external;

delete from transaction;

delete from category;

insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Car maintenance',  'fa-car',         null);
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Car payment',      'fa-car',         null);
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Childcare',        'fa-child',       null);
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Clothing',         'fa-tags',        null);
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Condo fees',       'fa-home',        'HOA, strata fees');
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Debt',             'fa-credit-card', 'Student loans, credit card, line of credit');
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Electronics',      'fa-television',  null);
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Entertainment',    'fa-music',       'Hobbies, concerts, shows');
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Gas',              'fa-car',         null);
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Gifts',            'fa-gift',        null);
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Going-out',        'fa-gift',        'Happy hour, bars');
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Groceries',        'fa-cutlery',     null);
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Gym',              'fa-user',        null);
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Home maintenance', 'fa-home',        null);
insert into category (type, color, name, icon, notes) values ('E', 'u-color-9', 'Insurance',        'fa-home',        'Home, car, life');

insert into category (type, color, name, icon, notes) values ('I', 'u-color-4', 'Job',           'fa-building-o', null);
insert into category (type, color, name, icon, notes) values ('I', 'u-color-4', 'Side project',  'fa-suitcase',   null);
insert into category (type, color, name, icon, notes) values ('I', 'u-color-4', 'Tax refund',    'fa-money',      null);
insert into category (type, color, name, icon, notes) values ('I', 'u-color-4', 'Reimbursement', 'fa-undo-arrow', null);

commit;