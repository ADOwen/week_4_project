create table car(
	vin_num SERIAL primary key,
    c_year VARCHAR(4),
    make VARCHAR(25),
    model VARCHAR(25),
    used BOOLEAN,
    sold BOOLEAN
    );
   
   create table mechanic(
   	mechanic_id SERIAL primary key,
   	first_name VARCHAR(25),
   	last_name VARCHAR(25)
   );
  
  create table customer(
  	customer_id SERIAL primary key,
  	first_name VARCHAR(25),
  	last_name VARCHAR(25)
  );
 
 create table salesperson(
 	sales_id SERIAL primary key,
 	first_name VARCHAR(25),
 	last_name VARCHAR(25)
 );

create table parts(
	part_id SERIAL primary key,
	part_name VARCHAR(25),
	price NUMERIC(8,2)
);

create table invoice(
	po_id SERIAL primary key,
	price NUMERIC(8,2),
	vin_num INTEGER not null,
	foreign key (vin_num) references car(vin_num),
	customer_id INTEGER not null,
	foreign key (customer_id) references customer(customer_id),
	sales_id INTEGER not null,
	foreign key (sales_id) references salesperson(sales_id),
	date_of_purchase TIMESTAMP default CURRENT_TIMESTAMP
);

create table service_ticket(
	st_id SERIAL primary key,
	customer_id INTEGER not null,
	foreign key (customer_id) references customer(customer_id),
	vin_num INTEGER not null,
	foreign key (vin_num) references car(vin_num),
	mechanic_id INTEGER not null,
	foreign key (mechanic_id) references mechanic(mechanic_id),
	part_id INTEGER not null,
	foreign key (part_id) references parts(part_id),
	date_of_purchase TIMESTAMP default CURRENT_TIMESTAMP,
	total_cost NUMERIC(8,2),
	service_type VARCHAR(30)
);

create table service_record(
	record_id SERIAL primary key,
	st_id INTEGER not null,
	foreign key (st_id) references service_ticket(st_id)
)