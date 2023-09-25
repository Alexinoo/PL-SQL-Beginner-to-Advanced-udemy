CREATE OR REPLACE FUNCTION GET_NAMES
(cust_id NUMBER)
RETURN SYS_REFCURSOR
IS
  l_return SYS_REFCURSOR;  
BEGIN
  OPEN l_return FOR SELECT first_name,last_name FROM customer WHERE customer_id = cust_id;  
  RETURN l_return;
END GET_NAMES;


=====Another Procedure/Function That Consumes the Result set of the above============================


CREATE OR REPLACE PROCEDURE DISPLAY_NAMES
IS
 customer_record SYS_REFCURSOR;
 fname VARCHAR2(50);
 LNAME VARCHAR2(50);
BEGIN 
  customer_record := GET_NAMES(16);
  LOOP
   FETCH customer_record INTO fname,lname;
   EXIT WHEN customer_record%NOTFOUND;
   DBMS_OUTPUT.PUT_LINE(fname);
   DBMS_OUTPUT.PUT_LINE(lname);
  END LOOP;
 CLOSE customer_record;
END;


==============================
CALLING DISPLAY_NAMES FUNCTION
==============================

EXECUTE DISPLAY_NAMES;

John
M
John
M



 