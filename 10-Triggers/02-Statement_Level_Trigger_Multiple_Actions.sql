CREATE OR REPLACE TRIGGER CUSTOMER_AFTER_ACTION
AFTER INSERT OR UPDATE OR DELETE
ON CUSTOMER
DECLARE
  V_USERNAME VARCHAR2(100);
BEGIN
  SELECT user INTO V_USERNAME FROM DUAL; 
  
  IF INSERTING THEN
    INSERT INTO AUDIT_TABLE(TABLE_NAME,USERID,OPERATION_DATE,OPERATION)
    VALUES('CUSTOMER',V_USERNAME,SYSDATE,'Insert Operation');
  
  ELSIF UPDATING THEN
    INSERT INTO AUDIT_TABLE(TABLE_NAME,USERID,OPERATION_DATE,OPERATION)
    VALUES('CUSTOMER',V_USERNAME,SYSDATE,'Update Operation');
  
  ELSIF DELETING THEN
    INSERT INTO AUDIT_TABLE(TABLE_NAME,USERID,OPERATION_DATE,OPERATION)
    VALUES('CUSTOMER',V_USERNAME,SYSDATE,'Delete Operation');
    
  END IF;

END;




===========================================================================

INSERT INTO CUSTOMER VALUES(18,'Bob','SANDERS','MEKLIT','24 Street',NULL,'LA','UK',SYSDATE,'WEST');

UPDATE CUSTOMER SET first_name = 'ANN' WHERE customer_id = 11;

DELETE FROM CUSTOMER WHERE customer_id = 17;

COMMIT;


--SELECT * FROM AUDIT_TABLE;
CUSTOMER	INVENTORY	24-SEP-23	Insert Operation
CUSTOMER	INVENTORY	24-SEP-23	BEFORE UPDATE OPERATION
CUSTOMER	INVENTORY	24-SEP-23	Update Operation
CUSTOMER	INVENTORY	24-SEP-23	Delete Operation









