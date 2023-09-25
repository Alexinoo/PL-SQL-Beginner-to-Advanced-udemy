/* Write a procedure to fetch data from table SALES for a given parameter orderid and display the data. */


create or replace PROCEDURE FETCH_DATA
(
  nOrder_id IN NUMBER
)
AS
  s_order_id SALES.ORDER_ID%type;
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
  SELECT order_id,product_id ,customer_id,salesperson_id,quantity,unit_price,sales_amount,tax_amount,total_amount,sales_date
  INTO s_order_id,s_product_id ,s_customer_id,s_salesperson_id,s_quantity,s_unit_price,s_sales_amount,s_tax_amount,s_total_amount,s_sales_date 
  FROM SALES
  WHERE order_id = nOrder_id;
  
  DBMS_OUTPUT.PUT_LINE('Order Id : '||s_order_id);
  DBMS_OUTPUT.PUT_LINE('Product Id : '||s_product_id);
  DBMS_OUTPUT.PUT_LINE('Customer Id : '||s_customer_id);
  DBMS_OUTPUT.PUT_LINE('SalesPerson Id : '||s_salesperson_id);
  DBMS_OUTPUT.PUT_LINE('Quantity : '||s_quantity);
  DBMS_OUTPUT.PUT_LINE('Unit Price : '||s_unit_price);
  DBMS_OUTPUT.PUT_LINE('Sales Amount : '||s_sales_amount);
  DBMS_OUTPUT.PUT_LINE('Tax Amount : '||s_tax_Amount);
  DBMS_OUTPUT.PUT_LINE('Total Amount : '||s_total_amount);
  DBMS_OUTPUT.PUT_LINE('Sales Date : '||s_sales_date);

END FETCH_DATA;




===========================
CALLING FETCH_DATA
===========================

DECLARE
	ORDER_ID NUMBER := 1269;
BEGIN
	FETCH_DATA(ORDER_ID);
END;


===========================
CALLING FETCH_DATA
===========================

EXEC FETCH_DATA(1269);


