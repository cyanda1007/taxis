insert into region(id,region_name) values (1,'Durban');
insert into region(id,region_name) values (2,'Cape Town');
insert into region(id,region_name) values (3,'Gauteng');


insert into route(route_name, fare) values ('Umlazi - Durban Central', 15.00);
insert into route(route_name, fare) values ('Durban Central - Umhlanga Rocks', 15.00);
insert into route(route_name, fare) values ('Durban Central - Umbilo', 15.00);
insert into route(route_name, fare) values ('Cape Town - Bellville', 16.00);
insert into route(route_name, fare) values ('Cape Town - Gugulethu', 16.00);
insert into route(route_name, fare) values ('Cape Town - Langa', 16.00);  
insert into route(route_name, fare) values ('Sandton - Randburg', 20.00);
insert into route(route_name, fare) values ('Alexandra - Sandton', 20.00);
insert into route(route_name, fare) values ('Sandton - Midrand', 20.00);

insert into taxi(taxi_reg, reg_number) values(1, 'ND 567-123');
insert into taxi(taxi_reg, reg_number) values(1, 'ND 132-121');
insert into taxi(taxi_reg, reg_number) values(1, 'ND 123-111');
insert into taxi(taxi_reg, reg_number) values(2, 'CA 123-123');
insert into taxi(taxi_reg, reg_number) values(2, 'CA 111-123');
insert into taxi(taxi_reg, reg_number) values(2, 'CA 246-111');
insert into taxi(taxi_reg, reg_number) values(3, 'GP 567-333');
insert into taxi(taxi_reg, reg_number) values(3, 'GP 132-121');
insert into taxi(taxi_reg, reg_number) values(3, 'GP 123-441');



insert into trip(route_id, taxi_id) values (1, 3);
insert into trip(route_id, taxi_id) values (2, 2);
insert into trip(route_id, taxi_id) values (3, 1);

insert into trip(route_id, taxi_id) values (3, 2);
insert into trip(route_id, taxi_id) values (2, 2);
insert into trip(route_id, taxi_id) values (1, 2);

insert into trip(route_id, taxi_id) values (3, 1);
insert into trip(route_id, taxi_id) values (3, 3);
insert into trip(route_id, taxi_id) values (3, 3);

insert into trip(route_id, taxi_id) values (4, 4);
insert into trip(route_id, taxi_id) values (5, 4);
insert into trip(route_id, taxi_id) values (6, 5);

insert into trip(route_id, taxi_id) values (5, 4);
insert into trip(route_id, taxi_id) values (6, 5);
insert into trip(route_id, taxi_id) values (4, 6);

insert into trip(route_id, taxi_id) values (4, 6);
insert into trip(route_id, taxi_id) values (6, 6);
insert into trip(route_id, taxi_id) values (5, 5);

insert into trip(route_id, taxi_id) values (7, 7);
insert into trip(route_id, taxi_id) values (8, 8);
insert into trip(route_id, taxi_id) values (9, 9);

insert into trip(route_id, taxi_id) values (8, 7);
insert into trip(route_id, taxi_id) values (7, 9);
insert into trip(route_id, taxi_id) values (9, 8);

insert into trip(route_id, taxi_id) values (9, 9);
insert into trip(route_id, taxi_id) values (8, 7);
insert into trip(route_id, taxi_id) values (7, 7);

