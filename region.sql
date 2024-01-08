Create table Region (
id int not null AUTO_INCREMENT primary key,
location VARCHAR(100) not null
);


INSERT region(location) SELECT DISTINCT location from Cars where location is not null;
select * from region;
