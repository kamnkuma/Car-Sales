Create table CarAge (
car_id int not null primary key,
age float not null
);
INSERT CarAge(car_id, age) SELECT DISTINCT carId,yearsOfUsage from Cars where yearsOfUsage is not null;
select * from CarAge;
