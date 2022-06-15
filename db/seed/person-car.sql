create table car (
	id BIGSERIAL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

create table person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	gender VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50),
    car_id BIGINT REFERENCES car (id),
    UNIQUE(car_id)
);

insert into person (id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (1, 'Hamil', 'Dingley', 'hdingley0@t-online.de', 'Male', '1974-08-14', 'Ivory Coast');
insert into person (id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (2, 'Opalina', 'Peregrine', null, 'Female', '1982-11-04', 'Portugal');
insert into person (id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (3, 'Brien', 'Scurlock', 'bscurlock2@over-blog.com', 'Male', '1978-11-24', 'China');

insert into car (id, make, model, price) values (1, 'Toyota', 'FJ Cruiser', '22837.80');
insert into car (id, make, model, price) values (2, 'Chevrolet', 'Tahoe', '73603.47');