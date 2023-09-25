DECLARE
  TYPE customer_type IS TABLE OF VARCHAR2(100);
  customer_table customer_type := customer_type(); -- Initialize the collection
  v_idx NUMBER;
BEGIN

  customer_table.EXTEND(4);  -- Allocate memory for 4 Items
  
  customer_table(1) := 'MIKE';
  customer_table(2) := 'BOB';
  customer_table(3) := 'JEFF';
  --customer_table(6) := 'SUSAN'; -- Throws an error
  customer_table(4) := 'ANN';  -- Order must be sequential
  
  --DELETE the third Item of the collection
  customer_table.DELETE(3);
  
  DBMS_OUTPUT.PUT_LINE('Customer Name : ' || customer_table(customer_table.first));
  DBMS_OUTPUT.PUT_LINE('Customer Name : ' || customer_table(customer_table.last)); 
  
  
  --TRAVERSE THROUGH A COLLECTION
  v_idx := customer_table.FIRST;
  
  --LOOP through a Collection
  WHILE v_idx IS NOT NULL  
   LOOP
    DBMS_OUTPUT.PUT_LINE('Customer Name : ' || customer_table(v_idx));
    v_idx := customer_table.NEXT(v_idx);
   END LOOP;
END;

=====================
OUTPUT
====================

Customer Name : MIKE
Customer Name : ANN
Customer Name : MIKE
Customer Name : BOB
Customer Name : ANN