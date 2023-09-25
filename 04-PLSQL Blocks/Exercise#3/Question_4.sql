/*

Write a function to display the number of rows in the SALES table for a given sales date
*/

create or replace FUNCTION COUNT_SALES
(
  d_sales_date IN DATE
)
RETURN NUMBER
AS
 ntotalCount NUMBER :=0;
BEGIN
  SELECT count(1) INTO ntotalCount 
  FROM sales
  WHERE sales_date = TO_DATE(d_sales_date,'DD-MON-YY');
  
  RETURN ntotalCount;
END COUNT_SALES;



======================================
CALLING COUNT_SALES(DATE) FUNCTION
======================================

==OPTION 1==

SELECT COUNT_SALES('01-JAN-15') FROM DUAL;

==OPTION 2==
DECLARE
  total_count NUMBER;
BEGIN
  total_count := COUNT_SALES('01-JAN-15');
  DBMS_OUTPUT.PUT_LINE('Total no of sales : '||total_count);
END;