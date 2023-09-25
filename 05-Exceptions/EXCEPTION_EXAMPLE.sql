CREATE OR REPLACE PROCEDURE GET_CUSTOMER
(
  c_id IN NUMBER
)
AS
  c_name CUSTOMER.FIRST_NAME%TYPE;
  c_cntry CUSTOMER.COUNTRY%TYPE;
BEGIN
  SELECT first_name,country INTO c_name,c_cntry
  FROM customer
  WHERE customer_id = c_id;

EXCEPTION

  WHEN NO_DATA_FOUND THEN
   DBMS_OUTPUT.PUT_LINE('This customer was not found in the database');

  WHEN TOO_MANY_ROWS THEN
   DBMS_OUTPUT.PUT_LINE('Duplicate Found');

  WHEN OTHERS THEN
   DBMS_OUTPUT.PUT_LINE('Error');
END;

-------- Execute GET_CUSTOMER procedure -----------

EXEC GET_CUSTOMER(101); --NO DATA FOUND
EXEC GET_CUSTOMER(14);  -- TOO MANY ROWS FETCH
