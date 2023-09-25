DECLARE
 TYPE records_table IS RECORD(FIRST_NAME VARCHAR2(50),LAST_NAME VARCHAR2(50));

 customer_record records_table;
 total_rows NUMBER:= 0;

BEGIN
 SELECT first_name,last_name INTO customer_record
 FROM customer
 WHERE customer_id = 10;

 --IMPLICIT CURSOR IS AUTOMATICALLY CREATED WHEN SELECT INTO STATEMENT IS EXECUTED

 IF sql%FOUND THEN
 total_rows := sql%ROWCOUNT;
 DBMS_OUTPUT.PUT_LINE(total_rows || ' Customers selected');
 END IF;

 DBMS_OUTPUT.PUT_LINE('First Name : '||customer_record.FIRST_NAME);
 DBMS_OUTPUT.PUT_LINE('Last Name : '||customer_record.LAST_NAME);

END;


==OUTPUT
1 Customers selected
First Name : JOHN
Last Name : AMIRTHRAJ