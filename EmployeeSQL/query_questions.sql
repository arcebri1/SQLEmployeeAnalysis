--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
inner join salaries s
on e.emp_no=s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select e.first_name, e.last_name, e.hire_date
from employees e
where hire_date > '1985-12-31'
and hire_date < '1987-01-01';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from dept_manager m
inner join departments d
on d.dept_no=m.dept_no
inner join employees e
on e.emp_no=m.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de
on e.emp_no=de.emp_no
inner join departments d 
on d.dept_no=de.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name, e.sex
from employees e
where first_name='Hercules'
and last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de
on de.emp_no=e.emp_no
inner join departments d
on d.dept_no=de.dept_no
where dept_name='Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de
on de.emp_no=e.emp_no
inner join departments d
on d.dept_no=de.dept_no
where dept_name='Sales';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) 
as "Last Name Count"
from employees
group by last_name
order by "Last Name Count" desc;