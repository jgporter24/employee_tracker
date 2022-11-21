USE employee_db;

INSERT INTO department(name)
VALUES
    ("Sales"),
    ("Engineer"),
    ("Finance"),
    ("Legal");

INSERT INTO role(title, salary, department_id)
VALUES
    ("Sales Lead", 100000, 1),
    ("Salesperson", 80000, 1),
    ("Lead Engineer", 150000, 2),
    ("Software Engineer", 120000, 2),
    ("Accountant", 120000, 3),
    ("Legal Team Lead", 250000, 4),
    ("Lawyer", 190000, 4);

INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES
    ("John", "Doe", 1, NULL),
    ("Mike", "Myers", 2, 1),
    ("Jack", "Black", 3, NULL),
    ("Elishia", "Kim", 4, 3),
    ("Melissa", "Jackson", 5, NULL),
    ("Sarah", "Hanstad", 6, NULL),
    ("John", "Brockopp", 7, 6);