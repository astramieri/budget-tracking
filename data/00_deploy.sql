alter session set current_schema = wksp_external;

delete from transaction;
delete from category;

@10_category.sql

@20_transaction.sql

commit;