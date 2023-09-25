/*

  Write a program to update data in SALES table for a given orderid (Change order amount to 100).

*/
DECLARE 

  s_order_id SALES.ORDER_ID%type := 1268;
  s_product_id SALES.PRODUCT_ID%type := 101;
  s_customer_id SALES.CUSTOMER_ID%type := 12;
  s_salesperson_id SALES.SALESPERSON_ID%type := 3000;
  s_quantity SALES.QUANTITY%type := 11;
  s_unit_price SALES.UNIT_PRICE%type := 40;
  s_sales_amount SALES.SALES_AMOUNT%type := 440;
  s_tax_amount SALES.TAX_AMOUNT%type := 25;
  s_total_amount SALES.TOTAL_AMOUNT%type := 465;
  s_sales_date SALES.SALES_DATE%type := SYSDATE;

BEGIN

  UPDATE SALES
  SET
    ORDER_ID = s_order_id,
    PRODUCT_ID = s_product_id,
    CUSTOMER_ID = s_customer_id,
    SALESPERSON_ID = s_salesperson_id,
    QUANTITY = s_quantity,
    UNIT_PRICE = s_unit_price,
    SALES_AMOUNT= s_sales_amount,
    TAX_AMOUNT= s_tax_amount,
    TOTAL_AMOUNT= s_total_amount,
    SALES_DATE = s_sales_date
  WHERE ORDER_ID = s_order_id;
  
  COMMIT;
  
  DBMS_OUTPUT.PUT_LINE('Data updated Successfully');

END;