CREATE OR REPLACE PROCEDURE RECORDS_IN_CURSORS
(c_id IN customer.CUSTOMER_ID%TYPE)
IS
 CURSOR c IS SELECT first_name,last_name FROM customer WHERE customer_id = c_id; 
 customer_rec c%rowtype; 
BEGIN 
  OPEN C;  
    LOOP  
      FETCH C INTO customer_rec;
      EXIT WHEN C%NOTFOUND;      
      DBMS_OUTPUT.PUT_LINE('First name : '||customer_rec.first_name);
      DBMS_OUTPUT.PUT_LINE('Last name : '||customer_rec.last_name);  
    END LOOP;    
  CLOSE C;
END RECORDS_IN_CURSORS;

==================================================================


EXECUTE RECORDS_IN_CURSORS(16);

First name : John
Last name : M
First name : John
Last name : M
