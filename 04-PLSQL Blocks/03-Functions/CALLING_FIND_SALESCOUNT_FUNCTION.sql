
--CALLING A FUNCTION

--Method01
=============

SELECT find_salescount(TO_DATE('01-JAN-2015','DD-MON-YYYY')) FROM DUAL;


--Method02
============
DECLARE
	sales_count NUMBER := 0;
BEGIN

	sales_count := find_salescount(TO_DATE('01-JAN-2015','DD-MON-YYYY'));

	DBMS_OUTPUT.PUT_LINE('Total Sales : ' || sales_count);

END;

