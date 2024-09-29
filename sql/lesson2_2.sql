DROP TABLE if exists hospital;

create table if not exists hospital(
	id serial primary key,
	state varchar(5) not null,
	name varchar(30) not null unique,
	phone varchar(15),
	ext varchar(7),
	contact varchar(7),
	address varchar(50) 
    );


create table if not exists weather(
	id serial primary key,
	city varchar(20)not null,
	startdate timestamp,
	enddate timestamp,
	hight real,
	low real,
	status varchar(7)
	);


create table if not exists station(
	id serial primary key,
	code varchar(20)not null unique,
	name varchar(20)unique,
	e_name varchar(20)unique
	);

	
