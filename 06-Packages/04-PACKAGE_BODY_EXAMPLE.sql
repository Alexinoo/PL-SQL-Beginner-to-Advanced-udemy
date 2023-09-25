CREATE OR REPLACE PACKAGE BODY CUSTOMER_PACKAGE
AS

--ADD_CUSTOMER PROCEDURE

PROCEDURE ADD_CUSTOMER
(
  c_id IN OUT NUMBER,
  c_fname IN VARCHAR2,
  c_lname IN VARCHAR2,
  c_mname IN VARCHAR2,
  c_add1 IN VARCHAR2,
  c_add2 IN VARCHAR2,
  c_city IN VARCHAR2,
  c_country IN VARCHAR2,
  c_date_added IN DATE,
  c_region IN VARCHAR2
)

AS
BEGIN
  INSERT INTO customer(customer_id,first_name,last_name,middle_name,address_line1,address_line2,city,country,date_added,region)
  VALUES(c_id,c_fname,c_lname,c_mname,c_add1,c_add2,c_city,c_country,c_date_added,c_region);  
  COMMIT;  
  DBMS_OUTPUT.PUT_LINE('Data Inserted Successfully');  
  SELECT count(1) INTO c_id FROM customer;
END ADD_CUSTOMER;

--GET_CUSTOMER PROCEDURE

PROCEDURE GET_CUSTOMER(c_id IN NUMBER)
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

--FIND SALES COUNT FUNCTION

FUNCTION find_salescount(p_sales_date IN DATE)RETURN NUMBER
AS
  number_of_sales NUMBER := 0;
BEGIN
  SELECT count(*) INTO number_of_sales FROM sales  WHERE sales_date = p_sales_date;  
  RETURN number_of_sales;
END find_salescount;


END CUSTOMER_PACKAGE;