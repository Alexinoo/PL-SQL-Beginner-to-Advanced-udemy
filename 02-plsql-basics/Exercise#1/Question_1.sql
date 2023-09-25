/*
Write a program to declare 3 variables with datatype as below and display their values.

  - Number
  - Varchar
  - Date

*/
DECLARE

  id_no number(8) := 28483114;
  first_name varchar(20) := 'Alex';
  date_of_birth date := '22-JAN-1991';
  
BEGIN
  dbms_output.put_line('My ID No is : '||id_no);
  dbms_output.put_line('My First Name is : '||first_name);
  dbms_output.put_line('I was born in : '|| TO_CHAR(date_of_birth,'DD-MM-YYYY') );

END;
