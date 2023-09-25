DECLARE

counter number(2) := 10;
BEGIN 

  FOR  counter IN REVERSE 10..20
    LOOP
      dbms_output.put_line('The values of the counter in reverse is : '||counter);
    END LOOP;

END;