DECLARE

counter number(2) := 10;
BEGIN 

  WHILE counter < 20
    LOOP
      dbms_output.put_line('The value of the counter is : '||counter);
      counter := counter +1;
    END LOOP;

END;