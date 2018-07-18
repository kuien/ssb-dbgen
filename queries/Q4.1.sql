--PROMPT Q4.1
SELECT D_YEAR, C_NATION,
       SUM(LO_REVENUE - LO_SUPPLYCOST) AS PROFIT
FROM DATES, CUSTOMER, SUPPLIER, PART, LINEORDER
WHERE  LO_CUSTKEY = C_CUSTKEY
   AND LO_SUPPKEY = S_SUPPKEY
   AND LO_PARTKEY = P_PARTKEY
   AND LO_ORDERDATE = D_DATEKEY
   AND C_REGION = 'AMERICA'
   AND S_REGION = 'AMERICA'
   AND (P_MFGR = 'MFGR#1' OR P_MFGR = 'MFGR#2')
GROUP BY D_YEAR, C_NATION
ORDER BY D_YEAR, C_NATION;
