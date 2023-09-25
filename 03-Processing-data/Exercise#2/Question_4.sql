/*
Write a program to delete data from SALES table for a given orderid.
*/

DECLARE
  s_order_id SALES.ORDER_ID%type := 1268;

BEGIN

  DELETE FROM SALES
  WHERE order_id = s_order_id;
  
  COMMIT;  
  
  DBMS_OUTPUT.PUT_LINE('Data deleted successfully');

END;