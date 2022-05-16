create table Mechanic(
	mechanic_id serial primary key,
	name_id varchar(100),
	hourly_rate numeric(6,2)
);


create table customer(
	customer_id serial primary key,
	name_id varchar(50),
	credit_score int
);


create table parts(
	part_id serial primary key,
	price numeric(7,2),
	name_id varchar(50)
);

create table sales_person(
	sales_person_id serial primary key,
	name_id varchar(50),
	hire_date date,
	salary int
);


create table car(
	vin_id serial primary key,
	sales_person_id int,
	foreign key (sales_person_id) references sales_person(sales_person_id),
	the_year int,
	the_model varchar(50),
	the_make varchar(50),
	used Bool
);
	

create table service_invoice(
	service_invoice_id serial primary key,
	vin_id int,
	foreign key (vin_id) references car(vin_id),
	customer_id int,
	foreign key (customer_id) references customer(customer_id),
	labor_cost numeric(7,2),
	parts_cost numeric(7,2),
	work_desc varchar(500)
);

create table service_parts(
	service_parts_id serial primary key,
	part_id serial,
	foreign key (part_id) references parts(part_id),
	quantity int,
	service_invoice_id int,
	foreign key (service_invoice_id) references service_invoice(service_invoice_id)
);


create table mechanic_invoice(
	mechanic_id int,
	foreign key (mechanic_id) references mechanic(mechanic_id),
	service_invoice_id int,
	foreign key (service_invoice_id) references service_invoice(service_invoice_id),
	labor_hours int
);


create table sales_invoice(
	sales_invoice_id serial primary key,
	vin_id int,
	foreign key (vin_id) references car(vin_id),
	customer_id int,
	foreign key (customer_id) references customer(customer_id),
	sale_price numeric(9,2)
);






