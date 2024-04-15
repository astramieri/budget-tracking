declare
    c_sample constant pls_integer := 1000; 
    
    c_max_amount constant pls_integer := 500;
begin
    for rec in (
            select level
              from dual
        connect by level <= c_sample
          order by level asc)
    loop
        declare
            v_category_id transaction.category_id%type;
            v_datetime    transaction.datetime%type;
            v_amount      transaction.amount%type;
        begin
              select id
                into v_category_id
                from category
               where type = 'E'
            order by dbms_random.value() asc
                fetch first 1 row only;
        
            v_datetime := trunc(sysdate - dbms_random.value(1, 365));
            v_datetime := v_datetime + numtodsinterval(dbms_random.value(0, 86399), 'SECOND');
            
            v_amount := round(dbms_random.value() * c_max_amount, 2);
            
            insert into transaction (category_id, datetime, amount)
                values (v_category_id, v_datetime, v_amount);
        end;
    end loop;
end;