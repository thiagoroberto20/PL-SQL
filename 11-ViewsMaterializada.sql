/*View Materializada
As views materializadas são usadas para armazenar resultados de consultas complexas e melhorar o desempenho.

View Materializada: MV_SALARIO_TOTAL
Calcula o total de salários pagos para cada cargo.*/

CREATE MATERIALIZED VIEW MV_SALARIO_TOTAL 
BUILD IMMEDIATE
REFRESH ON DEMAND
AS 
SELECT 
	F.CARGO,
	SUM(SALARIO_BASE) AS TOTAL_SALARIO
FROM FUNCIONARIOS f 
GROUP BY F.CARGO;