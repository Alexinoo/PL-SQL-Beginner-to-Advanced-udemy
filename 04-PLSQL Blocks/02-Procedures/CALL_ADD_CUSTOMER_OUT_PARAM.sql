DECLARE
  total_count NUMBER(10);
BEGIN
  ADD_CUSTOMER(16,'John','M','Peters','298 Muranga',null,'Nairobi','KE',SYSDATE,'EA',total_count);
  
  DBMS_OUTPUT.PUT_LINE('Total Count : '||total_count);
END;

