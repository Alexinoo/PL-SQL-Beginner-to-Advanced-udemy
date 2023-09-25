/*
Write a program to perform below steps
? Declare a variable
? If the variable value is 1 then display values from 300 to 400 using a WHILE loop
? If the variable value is 2 then display values from 400 to 800 using a FOR loop
? If the variable value is 3 then just display “wrong choice”
*/

DECLARE

  choice number := 1;
  i number := 300;
  j number;

BEGIN 

  IF choice =1 THEN
    WHILE i <= 400
      LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i+1;
      END LOOP;
  
  ELSIF choice =2 THEN
    FOR j IN 400..800
      LOOP
        DBMS_OUTPUT.PUT_LINE(j);
      END LOOP;
      
  ELSIF choice = 3 THEN
      DBMS_OUTPUT.PUT_LINE('Wrong choice');      
  END IF; 
  

END;