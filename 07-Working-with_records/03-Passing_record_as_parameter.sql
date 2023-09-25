create or replace PROCEDURE process_customer
( c_id IN NUMBER)
AS
  customer_record customer%rowtype;  
BEGIN  
  SELECT * INTO customer_record 
  FROM customer 
  WHERE customer_id = c_id;
  
  --Passing Record as a Parameter  
  SHOW_CUSTOMER(customer_record);
  
END process_customer;

==CALLING PROCESS_CUSTOMER===

EXECUTE PROCESS_CUSTOMER(10);

==OUTPUT=====================
First Name : JOHN
Last Name : AMIRTHRAJ
Middle Name : T
Address Line1 : 2345 PETERDRIVE
Address Line2 : 
City : Atlanta
Country : USA
Date Added : 12-JAN-15
Region : SOUTH