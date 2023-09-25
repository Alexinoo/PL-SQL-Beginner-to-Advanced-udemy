create or replace PACKAGE CUSTOMER_PACKAGE
AS

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
);

PROCEDURE GET_CUSTOMER(c_id IN NUMBER);

FUNCTION find_salescount(  p_sales_date IN DATE)RETURN NUMBER;

END CUSTOMER_PACKAGE;