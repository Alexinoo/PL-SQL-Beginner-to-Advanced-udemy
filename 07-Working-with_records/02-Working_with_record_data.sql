CREATE OR REPLACE PROCEDURE process_customer
( c_id IN NUMBER)
AS
  customer_record customer%rowtype;  
  customer_record_copy customer%rowtype;
BEGIN  
  SELECT * INTO customer_record 
  FROM customer 
  WHERE customer_id = c_id;

  customer_record_1 := customer_record
  
  DBMS_OUTPUT.PUT_LINE('First Name : '|| customer_record.FIRST_NAME );
  DBMS_OUTPUT.PUT_LINE('Last Name : '|| customer_record.LAST_NAME );
  DBMS_OUTPUT.PUT_LINE('Middle Name : '|| customer_record.MIDDLE_NAME );
  DBMS_OUTPUT.PUT_LINE('Address Line1 : '|| customer_record.ADDRESS_LINE1 );
  DBMS_OUTPUT.PUT_LINE('Address Line2 : '|| customer_record.ADDRESS_LINE2 );
  DBMS_OUTPUT.PUT_LINE('City : '|| customer_record.CITY );
  DBMS_OUTPUT.PUT_LINE('Country : '|| customer_record.COUNTRY );
  DBMS_OUTPUT.PUT_LINE('Date Added : '|| customer_record.DATE_ADDED );
  DBMS_OUTPUT.PUT_LINE('Region : '|| customer_record.REGION );




  DBMS_OUTPUT.PUT_LINE('First Name : '|| customer_record_copy.FIRST_NAME );
  DBMS_OUTPUT.PUT_LINE('Last Name : '|| customer_record_copy.LAST_NAME );
  DBMS_OUTPUT.PUT_LINE('Middle Name : '|| customer_record_copy.MIDDLE_NAME );
  DBMS_OUTPUT.PUT_LINE('Address Line1 : '|| customer_record_copy.ADDRESS_LINE1 );
  DBMS_OUTPUT.PUT_LINE('Address Line2 : '|| customer_record_copy.ADDRESS_LINE2 );
  DBMS_OUTPUT.PUT_LINE('City : '|| customer_record_copy.CITY );
  DBMS_OUTPUT.PUT_LINE('Country : '|| customer_record_copy.COUNTRY );
  DBMS_OUTPUT.PUT_LINE('Date Added : '|| customer_record_copy.DATE_ADDED );
  DBMS_OUTPUT.PUT_LINE('Region : '|| customer_record_copy.REGION );
  
END process_customer;


===================================
CALLING PROCESS_CUSTOMER PROCEDURE
===================================


EXECUTE process_customer(10);

====================================
OUTPUT
====================================

First Name : JOHN
Last Name : AMIRTHRAJ
Middle Name : T
Address Line1 : 2345 PETERDRIVE
Address Line2 : 
City : Atlanta
Country : USA
Date Added : 12-JAN-15
Region : SOUTH

First Name : JOHN
Last Name : AMIRTHRAJ
Middle Name : T
Address Line1 : 2345 PETERDRIVE
Address Line2 : 
City : Atlanta
Country : USA
Date Added : 12-JAN-15
Region : SOUTH

