FOR customer_rec IN (SELECT * FROM CUSTOMER WHERE customer_id = 10)
 LOOP
  DBMS_OUTPUT.PUT_LINE(customer_rec.LAST_NAME);	
 END LOOP;