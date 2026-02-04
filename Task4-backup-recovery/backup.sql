CREATE TABLE employees_backup AS
SELECT * FROM employees;
SELECT COUNT(*) AS backup_count FROM employees_backup;
