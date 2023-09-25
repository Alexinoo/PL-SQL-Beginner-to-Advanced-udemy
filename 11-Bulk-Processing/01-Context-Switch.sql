CREATE OR REPLACE PROCEDURE UPDATE_TAX(TAX_RATE IN NUMBER)
AS
 L_ELIGIBLE BOOLEAN;
BEGIN
 FOR SALE_CURSOR IN (SELECT DISTINCT order_id FROM SALES)

  LOOP
   CHECK_ELIGIBLE(ORDER_ID,L_ELIGIBLE)

    IF L_ELIGIBLE THEN

     UPDATE SALES S
     SET S.TAX_AMOUNT = S.TOTAL_AMOUNT * TAX_RATE
     WHERE S.ORDER_ID = SALE_CURSOR.ORDER_ID;

     COMMIT;
    END IF;	
  END LOOP;
END UPDATE_TAX;



================================================================================


2 ORDERS = 2 CONTEXT SWITCHES

100000 ORDERS  = 10000 CONTEXT SWITCHES