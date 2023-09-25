DECLARE

  c_id CUSTOMER.CUSTOMER_ID%type := 13;
  c_fname CUSTOMER.FIRST_NAME%type := 'Alex';
  c_lname CUSTOMER.LAST_NAME%type :='Wakanyi';
  c_mname CUSTOMER.MIDDLE_NAME%type := 'Mwangi';
  c_add1 CUSTOMER.ADDRESS_LINE1%type := '77441-00611';
  c_add2 CUSTOMER.ADDRESS_LINE2%type := NULL;
  c_city CUSTOMER.CITY%type := 'NAIROBI';
  c_country CUSTOMER.COUNTRY%type := 'KENYA';
  c_date_added CUSTOMER.DATE_ADDED%type := SYSDATE;
  c_region CUSTOMER.REGION%type := 'EA';

BEGIN

  INSERT INTO customer(customer_id,first_name,last_name,middle_name,address_line1,address_line2,city,country,date_added,region)
  VALUES(c_id,c_fname,c_lname,c_mname,c_add1,c_add2,c_city,c_country,c_date_added,c_region);
  
  COMMIT;
  
  
  DBMS_OUTPUT.PUT_LINE('Data Inserted Successfully');


END;