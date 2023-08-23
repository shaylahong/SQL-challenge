-- (1) list emp no., last name, first name, sex, salary of each employee
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e 
join salaries s 
		on e.emp_no = s.emp_no;

-- (2) list  first name, last name, hire date for employees hired in 1986
select e.first_name, e.last_name, e.hire_date
from employees e 
where hire_date like '%1986';

-- (3)list manager of each dept along with dept no., dept name, emp no., last name, first name
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager dm
inner join departments d 
on dm.dept_no = d.dept_no
inner join employees e 
on dm.emp_no = e.emp_no;

-- (4) list dept no. for each employee along with that emp's emp no., last name, first name, dept name 
select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e 
inner join dept_emp de 
on e.emp_no = de.emp_no 
inner join departments d 
on d.dept_no = de.dept_no;

-- (5) list first name, last name, sex of each emp whose first name is Hercules and last name begins w 'B'
select first_name, last_name, sex 
from employees
where first_name = 'Hercules' and last_name like '%B';

-- (6) list each emp in sales departments, inc emp no., last name, first name 
select de.emp_no, e.last_name, e.first_name
from dept_emp de 
inner join employees e 
on de.emp_no = e.emp_no 
inner join departments d 
on de.dept_no = d.dept_no
where dept_name = 'Sales';

-- (7) list each emp in the sales and development departments, inc emp no., last name, first name, dept name
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de 
inner join employees e 
on de.emp_no = e.emp_no 
inner join departments d 
on de.dept_no = d.dept_no 
where dept_name = 'Sales' or dept_name = 'Development';

-- (8) list frequency counts, in desc order, of all emp last names (how many emp share each last name)
select last_name, count(last_name) as frequency
from employees 
group by last_name
order by frequency desc;