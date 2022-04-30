CREATE PROC GetNthRecord
AS

DECLARE @nth INT=0
SET @nth=3
--SELECT  e.first_name,e.last_name,d.department_name,salary,
--        ROW_NUMBER() OVER (
--PARTITION BY d.id ORDER BY salary DESC
--) AS salary_rank
--FROM department d JOIN employee e ON d.id = e.department_id
--ORDER BY department_name,salary DESC;


SELECT * FROM (
SELECT  e.first_name,e.last_name,d.department_name,salary,ROW_NUMBER() OVER (PARTITION BY d.id ORDER BY salary DESC) AS salary_rank
FROM department d JOIN employee e ON d.id = e.department_id
) tblA WHERE salary_rank=@nth