select * from service_invoice 

insert into customer(name_id, credit_score)
values ('Jerry', 642);

insert into customer(name_id, credit_score)
values ('Donald', 598);

insert into mechanic(full_name, hourly_rate)
values('Kevin Hart', $17);

insert into mechanic(full_name, hourly_rate)
values('Donald Trump', 75.00);

insert into parts(price, name_id)
values(178, 'Half-Axle');

insert into parts(price, name_id)
values(110, 'Battery');

insert into sales_person(name_id, salary)
values('David', 50);

insert into sales_person(name_id, salary)
values('Nick', 30);

insert into car(the_model, the_make)
values('Honda', 'Civic');

insert into car(the_model, the_make)
values('Toyota', 'Corolla');

insert into service_invoice(labor_cost, work_desc)
values(35, 'Tire Rotation');

insert into service_invoice(labor_cost, work_desc)
values(2000, 'Motor Replacement');

-- If you have a chance, can we go over how to insert a foreign key into the table?