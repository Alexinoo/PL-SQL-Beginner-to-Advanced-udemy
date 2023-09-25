DECLARE

  c_id number:= 10;
  c_name varchar2(50);
  c_address varchar2(50);
  
BEGIN

  SELECT first_name,country INTO c_name,c_address
  FROM customer
  WHERE customer_id = c_id;
  
  
  DBMS_OUTPUT.PUT_LINE('Name : '||c_name);
  DBMS_OUTPUT.PUT_LINE('Country : '||c_address);

END;