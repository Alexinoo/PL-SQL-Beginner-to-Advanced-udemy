create or replace PROCEDURE EXCEPTION_USER_DEFINED
(
  c_id IN NUMBER
)
AS
  c_name CUSTOMER.FIRST_NAME%TYPE;
  c_cntry CUSTOMER.COUNTRY%TYPE;
  valid_customer_id EXCEPTION;

BEGIN
  IF  c_id <= 0 THEN RAISE valid_customer_id;
  END IF;

  SELECT first_name,country INTO c_name,c_cntry
  FROM customer
  WHERE customer_id = c_id;

EXCEPTION
  WHEN valid_customer_id THEN
   DBMS_OUTPUT.PUT_LINE('ID must be greater than 0');

  WHEN NO_DATA_FOUND THEN
   DBMS_OUTPUT.PUT_LINE('This customer was not found in the database');

  WHEN TOO_MANY_ROWS THEN
   DBMS_OUTPUT.PUT_LINE('You got more than 1 row');

  WHEN OTHERS THEN
   DBMS_OUTPUT.PUT_LINE('Error');
END EXCEPTION_USER_DEFINED;

-------- Execute EXCEPTION_USER_DEFINED procedure -----------

EXEC EXCEPTION_USER_DEFINED(0); --ID must be greater than 0
EXEC EXCEPTION_USER_DEFINED(-1); --ID must be greater than 0