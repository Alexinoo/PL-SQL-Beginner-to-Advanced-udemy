/*

Write a program to fetch data from table SALES for a given orderId and display the data
Use %TYPE when declaring variables

*/

DECLARE 
  s_order_id SALES.ORDER_ID%type :=1269;
  s_product_id SALES.PRODUCT_ID%type;
  s_customer_id SALES.CUSTOMER_ID%type;
  s_salesperson_id SALES.SALESPERSON_ID%type;
  s_quantity SALES.QUANTITY%type;
  s_unit_price SALES.UNIT_PRICE%type;
  s_sales_amount SALES.SALES_AMOUNT%type;
  s_tax_amount SALES.TAX_AMOUNT%type;
  s_total_amount SALES.TOTAL_AMOUNT%type; 
  s_sales_date SALES.SALES_DATE%type;

BEGIN
  SELECT order_id,product_id,customer_id,salesperson_id,quantity,unit_price,sales_amount,tax_amount,total_amount,sales_date
    INTO s_order_id ,s_product_id,s_customer_id ,s_salesperson_id	,s_quantity ,s_unit_price,s_sales_amount,s_tax_amount,s_total_amount,s_sales_date
  FROM SALES
  WHERE order_id = s_order_id;
  
  DBMS_OUTPUT.PUT_LINE('ORDER_ID : '||s_order_id);
  DBMS_OUTPUT.PUT_LINE('PRODUCT_ID : '||  s_product_id);
  DBMS_OUTPUT.PUT_LINE('CUSTOMER_ID : '||  s_customer_id );
  DBMS_OUTPUT.PUT_LINE('SALESPERSON_ID : '||  s_salesperson_id);
  DBMS_OUTPUT.PUT_LINE('QUANTITY : '||  s_quantity);
  DBMS_OUTPUT.PUT_LINE('UNIT_PRICE : '||  s_unit_price);
  DBMS_OUTPUT.PUT_LINE('SALES_AMOUNT : '||  s_sales_amount );
  DBMS_OUTPUT.PUT_LINE('TAX_AMOUNT : '||  s_tax_amount);
  DBMS_OUTPUT.PUT_LINE('TOTAL_AMOUNT : '||  s_total_amount);
  DBMS_OUTPUT.PUT_LINE('SALES_DATE : '||  s_sales_date);

END;
