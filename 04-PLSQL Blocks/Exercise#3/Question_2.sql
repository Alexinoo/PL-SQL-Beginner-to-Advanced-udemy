/* Return the number of rows(using OUT parameter) in the SALES table for that
sales date (get sales date from the above operation). */


create or replace PROCEDURE FETCH_ROWS
(
  dSales_date IN DATE,
  nTotal_count OUT NUMBER
)
AS
 
BEGIN
  SELECT count(1)  INTO nTotal_count
  FROM SALES
  WHERE sales_date = dSales_date;
  
  DBMS_OUTPUT.PUT_LINE('Total No of Records : '||nTotal_count);

END FETCH_ROWS;




============================================
CALLING FETCH_ROWS - To Fetch Number Of Rows
============================================

DECLARE

	dSales_date DATE := TO_DATE('15-SEP-23','DD-MON-YY');
	nTotal_sales NUMBER := 0;
BEGIN
	FETCH_ROWS(dSales_date,nTotal_sales);
END;


============================================
CALLING FETCH_ROWS - To Fetch Number Of Rows
============================================

EXEC FETCH_ROWS(TO_DATE('15-SEP-2023','DD-MON-YYYY'));


