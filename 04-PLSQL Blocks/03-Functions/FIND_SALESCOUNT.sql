create or replace FUNCTION find_salescount
(
  p_sales_date IN DATE
)RETURN NUMBER
AS
  number_of_sales NUMBER := 0;
BEGIN

  SELECT count(*) INTO number_of_sales FROM sales
  WHERE sales_date = p_sales_date;
  
  RETURN number_of_sales;

END find_salescount;