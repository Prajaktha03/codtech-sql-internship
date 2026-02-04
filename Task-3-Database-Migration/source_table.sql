CREATE TABLE source_employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO source_employees VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'IT', 70000),
(3, 'Charlie', 'Finance', 65000);
