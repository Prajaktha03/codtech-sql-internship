INSERT INTO target_employees (emp_id, emp_name, department, salary)
SELECT emp_id, emp_name, department, salary
FROM source_employees;
