drop table employees;
drop table salaries;
drop table titles;
drop table dept_emp;
drop table departments;
drop table dept_manager;


-- Creating tables (ideas/structures in the PNG file)
create table titles(
	title_id VARCHAR(50),
	title VARCHAR(100),
	PRIMARY KEY (title_id)
);
select * from titles;

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

select*from employees;


create table salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

create table departments(
	dept_no VARCHAR(50),
	dept_name VARCHAR(100),
	PRIMARY KEY (dept_no)
);
select * from departments;


create table dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select * from dept_emp;


create table dept_manager(
	dept_no VARCHAR(50),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from dept_manager;








