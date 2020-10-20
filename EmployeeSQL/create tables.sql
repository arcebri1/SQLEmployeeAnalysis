--create and view the tables to be able to import the data for each table.
create table Departments (
	dept_no varchar primary key not null,
	dept_name varchar not null
);

select * from Departments;

create table Titles (
	title_id varchar primary key not null,
	title varchar not null
);

select * from Titles;

create table Employees (
	emp_no int primary key not null,
	emp_title varchar  not null,
	foreign key (emp_title) references Titles(title_id),
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null
);

select * from Employees;

create table Dept_Emp(
	emp_no int not null,
	foreign key (emp_no) references Employees(emp_no),
	dept_no varchar not null,
	foreign key (dept_no) references Departments(dept_no)
);

select * from Dept_Emp;

create table Dept_Manager(
	dept_no varchar not null,
	foreign key (dept_no) references Departments(dept_no),
	emp_no int not null,
	foreign key (emp_no) references Employees(emp_no)
);

select * from Dept_Manager;

create table Salaries(
	emp_no int not null,
	foreign key (emp_no) references Employees (emp_no),
	salary int not null
);

select * from Salaries;

--import the csv files to each table created
--view each table with the imported data

select * from departments;

select * from titles;

select * from employees;

select * from salaries;

select * from dept_manager;

select * from dept_emp;

