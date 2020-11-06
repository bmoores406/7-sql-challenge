CREATE TABLE departments (
    dept_no VARCHAR(5) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);
SELECT * FROM departments;

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(5) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_emp;

CREATE TABLE dept_manager (
    dept_no VARCHAR(5) NOT NULL,
    emp_no INT NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_manager;

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(2) NOT NULL,
    hire_date VARCHAR(15)  NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);
SELECT * FROM employees;

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary MONEY  NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT * FROM salaries;

CREATE TABLE titles (
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(30)  NOT NULL,
	PRIMARY KEY (title_id)
);
SELECT * FROM titles;
