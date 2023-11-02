create database billing;
\c billing
create table employee(
    pk_emp_id serial primary key,
    type varchar(100),
    first_name varchar(200),
    last_name varchar(200),
    email varchar(200),
    phone varchar(200),
    gender varchar(200),
    dob date
);

create table category(
    pk_category_id serial primary key,
    category_name varchar(200),
    description varchar(400)
);

create table product(
    pk_product_id serial primary key,
    product_name varchar(200),
    fk_category_id int,
    description varchar(400),
    price float,
    added_date date,
    foreign key(fk_category_id)references category(pk_category_id)
    on delete cascade on update cascade
);

create table bills(
    pk_bill_id serial primary key,
    customer_name varchar(200),
    customer_phone varchar(50),
    bill_date date
);

-- add column
alter table product add product_brand varchar(100);
alter table employee add city varchar(100);

-- remove column
alter table employee drop column city;

-- change column type
alter table product alter column price type int;

alter table product alter column cost type varchar(10);

alter table product alter column cost type int using cost ::int;

-- rename column name
alter table product rename column price to cost;

-- rename table name
alter table product rename to items;

