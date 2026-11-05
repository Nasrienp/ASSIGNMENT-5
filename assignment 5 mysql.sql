-- ============================================================
-- ASSIGNMENT 1 DDL COMMANDS & CONSTAINTS
-- ============================================================
-- PART 1. Table  Creation

DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
show databases;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL UNIQUE
);
show tables;
CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    designation VARCHAR(50),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);
-- Question 2(a): Add email column to Employees table

ALTER TABLE Employees
ADD email VARCHAR(100);

-- Question 2(b): Modify designation column

ALTER TABLE Employees
MODIFY designation VARCHAR(100);

-- Question 2(c): Drop age column

ALTER TABLE Employees
DROP COLUMN age;

-- Question 2(d): Rename hire_date to date_of_joining

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

-- Question 3(a): Rename Departments table to Departments_Info

RENAME TABLE Departments TO Departments_Info;

-- Question 3(b): Rename Location table to Locations

RENAME TABLE Location TO Locations;

-- Question 4: Truncate Employees table

TRUNCATE TABLE Employees;

-- Question 5(a): Drop Employees table

DROP TABLE Employees;

-- Question 5(b): Drop employee database

DROP DATABASE employee;

-- ============================================================
-- PART B
-- ============================================================
-- Question 1: Drop and Recreate Employee Database

DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;

-- Question 2: Departments Table Constraints

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL UNIQUE
);

-- Question 3: Location Table Constraints
-- AUTO_INCREMENT, NOT NULL and UNIQUE

CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE
);

-- PART B
-- Question 4: Employees Table Constraints

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    designation VARCHAR(50),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);