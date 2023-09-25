TYPE customer_info_rt IS RECORD
(
  name VARCHAR2(100),
  total_sales NUMBER,
  delivery_preference VARCHAR2
);

INSTANTIATING/DECLARING variables of Type Record
=================================================

l_customer1 customer_info_rt;
l_customer2 customer_info_rt;



EXAMPLE
===========

DECLARE

TYPE record_table IS RECORD
(
 column1 datatype,
 column2 datatype
);
my_records record_table;
BEGIN
 SELECT column1,column2 INTO my_records FROM table_name
END;