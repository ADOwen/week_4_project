insert into car(
	c_year,
	make,
	model,
	used,
	sold
)
values(
	'2021',
	'Audi',
	'A6',
	false,
	false
),(
	'2019',
	'Mazda',
	'CX-5',
	true,
	true
);

insert into mechanic(
	first_name,
	last_name
)
values(
	'Frank',
	'Franklin'
),(
	'Tom',
	'Tomson'
);

insert into customer(
	first_name,
	last_name
)
values(
	'Will',
	'Wilson'
),(
	'Dave',
	'Davidson'
);

insert into salesperson(
	first_name,
	last_name
)
values(
	'Ted',
	'Tedders'
);

insert into parts(
	part_name,
	price
)
values(
	'accelerator pedal',
	12.99
),(
	'cold air intake',
	14.99
);

insert into invoice(
	price,
	vin_num,
	customer_id,
	sales_id,
	date_of_purchase
)
values(
	24000.00,
	2,
	2,
	1,
	NOW()::timestamp
);





