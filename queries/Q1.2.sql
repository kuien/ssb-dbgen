-- PROMPT Q1.2
SELECT SUM(LO_EXTENDEDPRICE*LO_DISCOUNT) AS REVENUE
FROM  LINEORDER, DATES
WHERE  LO_ORDERDATE = D_DATEKEY
   AND D_YEARMONTH = 'Jan1994'
   AND LO_DISCOUNT BETWEEN 4 AND 6
   AND LO_QUANTITY BETWEEN  26 AND 35;
