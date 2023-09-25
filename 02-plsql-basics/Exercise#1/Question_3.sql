/*
Write a program to check for a salary value and display the output based on the salary range (use CASE)
? if salary is greater than 100000 then display the output as 'Grade A' 
? if salary is between 50000 and 100000 then display the output as 'Grade B' 
? if salary is between 25000 and 50000 then display the output as 'Grade C' 
? if salary is between 10000 and 25000 then display the output as 'Grade D' 
? otherwise display the output as 'Grade E'
*/

DECLARE
  salary number := 100000;
  grade varchar2(20) := '';

BEGIN
  CASE 
    WHEN salary >100000 THEN
      grade := 'Grade A';
    WHEN salary >=50000 and salary <=100000 THEN
      grade := 'Grade B';
      
    WHEN salary >=25000 and salary < 50000 THEN
      grade := 'Grade C';
      
    WHEN salary >=10000 and salary < 25000 THEN
      grade := 'Grade D';
      
    ELSE
      grade := 'Grade E';
    
  END CASE;
  
  DBMS_OUTPUT.PUT_LINE('I got a grade of :'||grade);

END;