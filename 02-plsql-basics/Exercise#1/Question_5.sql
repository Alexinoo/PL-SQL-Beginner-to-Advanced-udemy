/*

Write a program to display values from 200 to 300 using a FOR loop

*/

DECLARE

  counter number;
BEGIN

  FOR counter IN 200..300 
    LOOP
      DBMS_OUTPUT.PUT_LINE('The values of the counter is : ' || counter);
    END LOOP;

END;