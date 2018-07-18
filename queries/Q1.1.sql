--PROMPT Q1.1
SELECT SUM(LO_EXTENDEDPRICE*LO_DISCOUNT) AS
REVENUE
FROM  LINEORDER, DATES
WHERE  LO_ORDERDATE = D_DATEKEY
AND D_YEAR = 1993
AND LO_DISCOUNT BETWEEN 1 AND 3
AND LO_QUANTITY < 25;
