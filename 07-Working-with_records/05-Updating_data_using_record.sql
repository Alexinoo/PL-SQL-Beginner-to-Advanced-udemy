====UPDATE_CUSTOMER=========================

create or replace PROCEDURE update_customer
( customer_in customer%rowtype)
IS 
BEGIN  
  UPDATE customer SET row = customer_in
  WHERE customer_id = customer_in.customer_id;
  
END update_customer;