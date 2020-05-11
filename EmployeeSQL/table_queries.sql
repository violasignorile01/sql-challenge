CREATE TABLE employees (
    emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date DATE NOT NULL 
);

SELECT * 
from employees; 

CREATE TABLE titles (
    title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL
);

SELECT * 
from titles; 

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL
);

SELECT * 
from salaries; 

CREATE TABLE dept_manager (
    dept_no VARCHAR(30) NOT NULL,
    emp_no INT  NOT NULL
);

SELECT * 
from dept_manager; 

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(30) NOT NULL
);

SELECT * 
from dept_emp; 

CREATE TABLE departments (
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30) NOT NULL 
);

SELECT * 
from departments; 