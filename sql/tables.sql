CREATE TABLE region(
    id int primary key  not null, 
    region_name text not null
);

CREATE TABLE route(
    id serial not null primary key,
	route_name text not null,
	fare decimal(10,2)
    );

CREATE TABLE taxi(
      id serial not null primary key,
    reg_number text not null,
    taxi_reg int,
    foreign key (taxi_reg) references region(id)
    );

CREATE TABLE trip(
    id serial not null primary key,
    route_id int,
    taxi_id int,
    foreign key (route_id) references route(id),
	foreign key (taxi_id) references taxi(id) 
);

