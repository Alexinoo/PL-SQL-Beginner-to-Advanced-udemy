-- MULTISET UNION - Combines and Returns data from 2 or more collections
DECLARE
  TYPE t_tab IS TABLE OF NUMBER;
  l_tab1 t_tab := t_tab(1,2,3,4,5);
  l_tab2 t_tab := t_tab(5,6,7,8,9,10);
BEGIN  
  l_tab1 := l_tab1 MULTISET UNION l_tab2;  
  FOR i IN l_tab1.FIRST..l_tab1.LAST  
   LOOP
    DBMS_OUTPUT.PUT_LINE(l_tab1(i));
   END LOOP;
END;

--OUTPUT
1
2
3
4
5
5
6
7
8
9
10

