create table titles (
	title_id varchar(5) not null primary key,
	title varchar(30) not null
);

create table departments (
	dept_no varchar(4) not null primary key,
	dept_name varchar(30) not null
);

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date varchar   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date varchar   NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
    PRIMARY KEY (emp_no)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar(4) not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

create table dept_manager (
	dept_no varchar(4) not null,
	emp_no int not null,
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

create table salaries (
	emp_no int not null,
	salary money not null,
	foreign key (emp_no) references employees (emp_no)
);
