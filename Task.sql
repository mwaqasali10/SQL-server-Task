create database Company;DB
use companyDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
	foreign key (DepartmentID) references Departments(DepartmentID)
);
select * from Employees;
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES
    (1, 'John', 'Doe', 1, 60000.00),
    (2, 'Jane', 'Smith', 2, 55000.00),
    (3, 'Mike', 'Johnson', 1, 65000.00),
    (4, 'Emily', 'Williams', 3, 70000.00),
    (5, 'David', 'Brown', 2, 50000.00),
    (6, 'Sarah', 'Miller', 1, 62000.00),
    (7, 'Chris', 'Wilson', 3, 75000.00),
    (8, 'Anna', 'Jones', 2, 53000.00),
    (9, 'Brian', 'Taylor', 1, 58000.00),
    (10, 'Laura', 'Anderson', 3, 72000.00);

Alter Table Employees
Add 
HireDate Datetime ;

Update Employees Set HireDate='09-1-2024';



CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY ,
    DepartmentName VARCHAR(50),
	
);
select * from Departments;
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance');

select * from employees as e INNER join departments as d on e.DepartmentID=d.DepartmentID;

Select FirstName,LastName, DepartmentName,Salary from employees as e Join Departments as d on e.departmentID=d.DepartmentID;

select * from employees as e Left join departments as d on e.DepartmentID=d.DepartmentID;

Select FirstName,LastName, Hiredate from employees where hiredate='2023-01-01';

delete from Employees where salary <30000;

SELECT departmentID ,DepartmentName, count(EmployeeID)as e from departments as d left join employees as e on d.departmentID=e.departmentID group by d.departmentID,d.DepartmentName;

UPDATE employees SET salary = salary * 1.1 where departmentID = 1;














