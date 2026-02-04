SELECT COUNT(*) AS Source_Count FROM source_employees;
SELECT COUNT(*) AS Target_Count FROM target_employees;
SELECT * FROM source_employees
EXCEPT
SELECT * FROM target_employees;
