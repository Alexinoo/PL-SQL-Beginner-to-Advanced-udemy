create or replace PROCEDURE FOR_LOOP_WITH_CURSOR
(c_id IN customer.CUSTOMER_ID%TYPE)
IS  
BEGIN 
  FOR customer_rec IN (SELECT * FROM customer WHERE customer_id = c_id)
    LOOP  
      DBMS_OUTPUT.PUT_LINE('First name : '||customer_rec.first_name);
      DBMS_OUTPUT.PUT_LINE('Last name : '||customer_rec.last_name);  
    END LOOP;  
END FOR_LOOP_WITH_CURSOR;


========================================================================

EXECUTE FOR_LOOP_WITH_CURSOR(16);

First name : John
Last name : M
First name : John
Last name : M