DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;

USE employee_tracker;

CREATE TABLE department (
    id INTEGER NOT NULL AUTOINCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role (
    id INTEGER NOT NULL AUTOINCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(9,2) NOT NULL,
    department_id INTEGER,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INTEGER NOT NULL AUTOINCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INTEGER,
    manager_id INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (manager_id) REFERENCES employee (id),
);

SELECT name
FROM department
LEFT JOIN role
ON department_id = role.department_id;

SELECT title, salary, department_id
FROM role
LEFT JOIN department
ON role.department_id = department_id;

SELECT first_name, last_name, role_id, manager_id
FROM employee
JOIN role
ON employee.role_id = role_department_id;

-- SELECT *
-- FROM department;

-- SELECT *
-- FROM role;

-- SELECT *
-- FROM employee;