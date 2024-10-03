
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    employee_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);


INSERT INTO departments (department_id, department_name)
VALUES
(1, 'Human Resources');
INSERT INTO departments (department_id, department_name)
VALUES
(2, 'Engineering');
INSERT INTO departments (department_id, department_name)
VALUES
(3, 'Marketing');


INSERT INTO employees (employee_id, first_name, last_name, department_id, salary)
VALUES
(101, 'Alice', 'Johnson', 2, 75000);
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary)
VALUES
(102, 'Bob', 'Smith', 1, 50000);
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary)
VALUES
(103, 'Charlie', 'Brown', 3, 60000);




INSERT INTO projects (project_id, project_name, employee_id, start_date, end_date)
VALUES
(1001, 'HR Training Program', 102, TO_DATE('2024-01-15', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'));


INSERT INTO projects (project_id, project_name, employee_id, start_date, end_date)
VALUES
(1002, 'Product Development', 101, TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'yyyy-mm-dd'));


UPDATE employees
SET salary = 80000
WHERE employee_id = 101;

DELETE FROM projects
WHERE project_id = 1002;

SELECT e.first_name, e.last_name, d.department_name, e.salary
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;

SELECT d.department_name, e.first_name, e.last_name
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id;

SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT department_name
FROM departments
WHERE department_id IN (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING COUNT(*) > 1
);


BEGIN
  
    UPDATE employees
    SET salary = salary + 5000
    WHERE employee_id = 101;

    
    INSERT INTO projects (project_id, project_name, employee_id, start_date, end_date)
    VALUES 
    (1003, 'New Marketing Campaign', 103, 
     TO_DATE('2024-09-01', 'YYYY-MM-DD'), 
     TO_DATE('2024-12-31', 'YYYY-MM-DD'));

   
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
       
        ROLLBACK;
        RAISE;  
END;

GRANT SELECT, INSERT ON employees TO system;

REVOKE SELECT ON employees FROM "system";
