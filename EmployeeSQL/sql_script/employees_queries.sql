--list the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, last_name, first_name, sex, salary
from employees
inner join salaries
	on employees.emp_no = salaries.emp_no;
	

--list first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date
like '%1986';


--list the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, dept_name, employees.emp_no, last_name, first_name
from dept_manager
inner join employees
	on dept_manager.emp_no = employees.emp_no
inner join departments
	on dept_manager.dept_no = departments.dept_no;


--list the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, last_name, first_name, dept_name
from employees
inner join dept_emp
	on employees.emp_no = dept_emp.emp_no
inner join departments
	on dept_emp.dept_no = departments.dept_no;
		
	
--list first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."	
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name
like 'B%';


--list all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no, last_name, first_name, dept_name
from employees
inner join dept_emp
	on employees.emp_no = dept_emp.emp_no
inner join departments
	on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';


--list all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, last_name, first_name, dept_name
from employees
inner join dept_emp
	on employees.emp_no = dept_emp.emp_no
inner join departments
	on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales'
or dept_name = 'Development';


--in descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*)
from employees
group by last_name
order by count desc;
