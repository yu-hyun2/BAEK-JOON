-- 비트연산

SELECT COUNT(ID) AS COUNT
FROM ECOLI_DATA
WHERE GENOTYPE & 5 AND NOT GENOTYPE & 2