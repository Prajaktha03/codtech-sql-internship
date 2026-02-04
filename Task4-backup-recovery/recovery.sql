DELETE FROM employees;
INSERT INTO employees
SELECT * FROM employees_backup;
SELECT COUNT(*) AS restored_count FROM employees;
