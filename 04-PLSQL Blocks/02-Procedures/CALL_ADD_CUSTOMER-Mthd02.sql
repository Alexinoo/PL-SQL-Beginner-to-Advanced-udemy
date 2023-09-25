BEGIN

ADD_CUSTOMER(
  c_id => 15,
  c_fname =>'JEFF',
  c_lname =>'AFSON',
  c_mname =>'A',
  c_add1 =>'23 SUWANEE ROAD',
  c_add2 =>NULL,
  c_city => 'ALPHARETTA',
  c_country =>'USA',
  c_date_added =>SYSDATE,
  c_region =>'SOUTH'
  );

END;

--SELECT * FROM CUSTOMER;