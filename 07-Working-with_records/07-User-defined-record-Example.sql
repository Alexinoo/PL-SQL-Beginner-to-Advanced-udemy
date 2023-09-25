CREATE OR REPLACE PROCEDURE USER_DEFINED_RECORD
( c_id IN customer.customer_id%type)
IS
  TYPE CUSTOMER_REC IS RECORD
  (
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50)
    );
    
  c_rec CUSTOMER_REC;
  
BEGIN

  SELECT first_name,last_name INTO c_rec
  FROM customer
  WHERE customer_id = c_id;
  
  DBMS_OUTPUT.PUT_LINE('First Name : '||c_rec.FIRST_NAME);
  DBMS_OUTPUT.PUT_LINE('LAst Name : '||c_rec.LAST_NAME);
  
END USER_DEFINED_RECORD;

===========================================================


EXECUTE USER_DEFINED_RECORD(10);

First Name : JOHN
LAst Name : AMIRTHRAJ