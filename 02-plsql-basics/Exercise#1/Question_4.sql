/*

Write a program to display values from 200 to 300 using a WHILE loop

*/

DECLARE

  counter number := 200;
BEGIN

  WHILE counter < 300 
    LOOP
      DBMS_OUTPUT.PUT_LINE('The value of the counter is : ' || counter);
      counter := counter + 1;
    END LOOP;

END;