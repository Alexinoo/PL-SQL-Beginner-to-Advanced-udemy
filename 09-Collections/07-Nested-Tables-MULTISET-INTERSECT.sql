-- MULTISET INTERSECT -RETURNS COMMON VALUES between 1 or more collections
DECLARE
  TYPE t_tab IS TABLE OF NUMBER;
  l_tab1 t_tab := t_tab(1,2,3,4,5,6);
  l_tab2 t_tab := t_tab(5,6,7,8,9,10);
BEGIN  
  l_tab1 := l_tab1 MULTISET INTERSECT l_tab2;  
  FOR i IN l_tab1.FIRST..l_tab1.LAST  
   LOOP
    DBMS_OUTPUT.PUT_LINE(l_tab1(i));
   END LOOP;
END;

--OUTPUT
5
6



