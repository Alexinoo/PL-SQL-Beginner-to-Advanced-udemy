DECLARE
  TYPE customer_type IS TABLE OF VARCHAR2(100) INDEX BY BINARY_INTEGER;
  customer_table customer_type;
  v_idx NUMBER;
BEGIN
  customer_table(1) := 'MIKE';
  customer_table(2) := 'BOB';
  customer_table(3) := 'JEFF';
  customer_table(4) := 'SUSAN';
  customer_table(6) := 'ANN';  
  
  --DELETE ANN
  customer_table.DELETE(6);
  
  --TRAVERSE THROUGH A COLLECTION
  v_idx := customer_table.FIRST;
  
  --LOOP through a Collection
  WHILE v_idx IS NOT NULL  
   LOOP
    DBMS_OUTPUT.PUT_LINE('Customer Name : ' || customer_table(v_idx));
    v_idx := customer_table.NEXT(v_idx);
   END LOOP;
END;

=======OUTPUT==================================================================

Customer Name : MIKE
Customer Name : BOB
Customer Name : JEFF
Customer Name : SUSAN