DECLARE

counter number(2) := 10;
BEGIN 

  FOR  counter IN 10..20
    LOOP
      dbms_output.put_line('The values of the counter is : '||counter);
    END LOOP;

END;