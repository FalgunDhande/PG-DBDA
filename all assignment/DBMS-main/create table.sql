-- question  1
create table countries (
country_id varchar(2) primary key,
country_name varchar(40),
region_id decimal(10,0)
);

-- question 2
create table if not exists countries (
country_id varchar(2) primary key,
country_name varchar(40),
region_id decimal(10,0)
);


-- question 3
create table dup_countries like countries;

-- question 4
create table dup_countries as select * from countries;

-- question 5
create table countries2 (
country_id varchar(2) not null,
country_name varchar(40) not null,
region_id decimal(10,0)
);
-- question 6
create table jobs (
job_id varchar(10) primary key,
job_title varchar(35),
min_salary decimal(6,0),
max_salary decimal(6,0) check (max_salary <= 25000)
);

-- question 7
create table countries3(
country_id varchar(2) primary key,
country_name varchar(40) check(country_name in ('italy', 'india', 'china')),
region_id decimal(10,0)
);
 -- question 8
create table job_history (
employee_id decimal(6,0) primary key,
start_date date not null,
end_date date not null,
job_id varchar(10) not null,
department_id decimal(4,0) not null,
constraint check_end_date check (end_date like '--/--/----')
);

-- question 9
create table countries4(
country_id varchar(2) unique,
country_name varchar(40),
region_id decimal(10,0)
);

-- question 10
create table jobs2 (
job_id varchar(10) primary key,
job_title varchar(35) default '',
min_salary decimal(6,0) default 8000,
max_salary decimal(6,0) default null
);

-- question 11
create table countries5 (
country_id varchar(2) primary key,
country_name varchar(40),
region_id decimal(10,0)
);

-- question 12

create table countries6 (
country_id int auto_increment primary key,
country_name varchar(40),
region_id decimal(10,0)
);

-- question 13
create table countries7 (
country_id varchar(2),
country_name varchar(40),
region_id decimal(10,0),
constraint pk_countries primary key (country_id, region_id)
);

-- question 14
create table job_history2(
employee_id decimal(6,0) primary key,
start_date date,
end_date date,
job_id varchar(10),
department_id decimal(4,0),
foreign key (job_id) references jobs(job_id)
);

-- question 15
create table departments (
department_id decimal(6,0) primary key,
first_name varchar(20),
last_name varchar(25),
email varchar(25),
phone_number varchar(20),
manager_id int(10)
);

create table employees2 (
employee_id decimal(6,0) primary key,
first_name varchar(20),
last_name varchar(25),
email varchar(25),
phone_number varchar(20),
hire_date date,
job_id varchar(10),
salary decimal(8,2),
commission decimal(2,2),
manager_id decimal(6,0),
department_id decimal(4,0),
foreign key (department_id) references departments(department_id)
);

-- question 16
create table employees3 (
employee_id decimal(6,0) primary key,
phone_number varchar(20),
hire_date date,
job_id varchar(10),
salary decimal(8,2),
commission decimal(2,2),
manager_id decimal(6,0),
department_id decimal(4,0),
foreign key (department_id) references departments(department_id),
foreign key (job_id) references jobs(job_id)
) engine=innodb;

-- question 17
create table employees4(
employee_id decimal(6,0) primary key,
first_name varchar(20),
last_name varchar(25),
job_id integer,
salary decimal(8,2),
foreign key (job_id) references jobs(job_id) on update cascade on delete restrict
) engine=innodb;

-- question 18
create table employees5 (
employee_id decimal(6,0) primary key,
first_name varchar(20),
last_name varchar(25),
job_id integer,
salary decimal(8,2),
foreign key (job_id) references jobs(job_id) on delete cascade on update restrict
) engine=innodb;

 -- question 19
create table employees6(
employee_id decimal(6,0) primary key,
first_name varchar(20),
last_name varchar(25),
job_id integer,
salary decimal(8,2),
foreign key (job_id) references jobs(job_id) on delete set null on update set null
) engine=innodb;

-- question 20
create table employees (
employee_id decimal(6,0) primary key,
first_name varchar(20),
last_name varchar(25),
job_id integer,
salary decimal(8,2),
foreign key (job_id) references jobs(job_id) on delete no action on update no action
) engine=innodb;
