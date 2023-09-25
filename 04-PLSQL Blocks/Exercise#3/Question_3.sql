/*
	Write a function which accepts 2 numbers n1 and n2 and returns the power of n1 to n2.
	(Example: If I pass values 10 and 3, the output should be 1000)

*/

CREATE OR REPLACE FUNCTION CALCULATE_POWER
(
  n1 IN NUMBER,
  n2 IN NUMBER
)
RETURN NUMBER

AS
  nResult NUMBER;
BEGIN

   nResult := POWER(n1,n2);
   
   RETURN nResult;

END CALCULATE_POWER;


============================================
CALLING CALCULATE_POWER FUNCTION
============================================


==OPTION 1
SELECT CALCULATE_POWER(3,2) FROM DUAL;

==OPTION 2

DECLARE

 vResult NUMBER;

BEGIN
 vResult := CALCULATE_POWER(3,2);
 
 DBMS_OUTPUT.PUT_LINE('The power of 3 raised to 2 is : '|| vResult);

END;