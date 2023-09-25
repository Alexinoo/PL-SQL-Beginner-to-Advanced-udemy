create or replace PROCEDURE EXPLICIT_CURSOR_MORE_ROWS
(c_id IN customer.CUSTOMER_ID%TYPE)
IS
  c_fname customer.FIRST_NAME%TYPE;
  c_lname customer.LAST_NAME%TYPE;
  c_mname customer.MIDDLE_NAME%TYPE;
  c_add1  customer.ADDRESS_LINE1%TYPE;
  c_add2 customer.ADDRESS_LINE2%TYPE;
  c_city customer.CITY%TYPE;
  c_country customer.COUNTRY%TYPE;
  c_date_added customer.DATE_ADDED%TYPE;
  c_region customer.REGION%TYPE;  
  
  --DECLARE CURSOR VARIABLE TO POINT TO PRIVATE SQL AREA (SELECT)   
  cursor C IS SELECT first_name,last_name,middle_name,address_line1,address_line2,city,country,date_added,region
              FROM customer 
              WHERE customer_id = c_id;

BEGIN

  --OPEN CURSOR
  OPEN C;
  
  --Use LOOP....END LOOP; For Multiple Rows  
  
  LOOP
  
    --FETCH One Or More Times
    FETCH C INTO c_fname,c_lname,c_mname,c_add1,c_add2,c_city,c_country,c_date_added,c_region;
    
    --Exit when C%NOTFOUND IS false
    EXIT WHEN C%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE('First Name : '||c_fname);
    DBMS_OUTPUT.PUT_LINE('Last Name : '||c_lname);
    DBMS_OUTPUT.PUT_LINE('Middle Name : '||c_mname);
    DBMS_OUTPUT.PUT_LINE('Address Line1 : '||c_add1);
    DBMS_OUTPUT.PUT_LINE('Address Line2 : '||c_add2);
    DBMS_OUTPUT.PUT_LINE('City : '||c_city);
    DBMS_OUTPUT.PUT_LINE('Country : '||c_country);
    DBMS_OUTPUT.PUT_LINE('Date Added : '||c_date_added);
    DBMS_OUTPUT.PUT_LINE('Region : '||c_region);
  
  END LOOP;
  
  --CLOSE The CURSOR
  CLOSE C; 

END EXPLICIT_CURSOR_MORE_ROWS;



=====================================================================

EXECUTE EXPLICIT_CURSOR_MORE_ROWS(16);

First Name : John
Last Name : M
Middle Name : Peters
Address Line1 : 298 Muranga
Address Line2 : 
City : Nairobi
Country : KE
Date Added : 20-SEP-23
Region : EA

First Name : John
Last Name : M
Middle Name : Peters
Address Line1 : 298 Muranga
Address Line2 : 
City : Nairobi
Country : KE
Date Added : 20-SEP-23
Region : EA


