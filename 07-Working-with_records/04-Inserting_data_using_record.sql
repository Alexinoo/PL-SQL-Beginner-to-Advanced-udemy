create or replace PROCEDURE process_customer
( c_id IN NUMBER)
AS
  customer_record customer%rowtype;  
BEGIN  
  SELECT * INTO customer_record 
  FROM customer 
  WHERE customer_id = c_id;
  
  --Insert Data As Record  
  INSERT_CUSTOMER(customer_record);
  
END process_customer;

====INSERT_CUSTOMER
create or replace PROCEDURE insert_customer
( customer_in customer%rowtype)
IS 
BEGIN  
  INSERT INTO customer VALUES customer_in;
  
END insert_customer;

