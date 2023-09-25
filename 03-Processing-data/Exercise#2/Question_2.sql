/*
  Write a program to insert data into SALES table.
*/

DECLARE
  s_order_id SALES.ORDER_ID%type :=1269;
  s_product_id SALES.PRODUCT_ID%type := 101;
  s_customer_id SALES.CUSTOMER_ID%type := 13;
  s_salesperson_id SALES.SALESPERSON_ID%type := 1000;
  s_quantity SALES.QUANTITY%type := 10;
  s_unit_price SALES.UNIT_PRICE%type := 50;
  s_sales_amount SALES.SALES_AMOUNT%type := 500;
  s_tax_amount SALES.TAX_AMOUNT%type := 125;
  s_total_amount SALES.TOTAL_AMOUNT%type := 625; 
  s_sales_date SALES.SALES_DATE%type := SYSDATE;

BEGIN

  INSERT INTO SALES(ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT,SALES_DATE)
  VALUES(s_order_id,s_product_id,s_customer_id ,s_salesperson_id,s_quantity,s_unit_price,s_sales_amount ,s_tax_amount,s_total_amount,s_sales_date);
  
  COMMIT;
  
  DBMS_OUTPUT.PUT_LINE('Data Inserted Successfully');
END;