Create table FuelType (
id int not null AUTO_INCREMENT primary key,
type VARCHAR(100) not null
);


INSERT FuelType(type) SELECT DISTINCT fuelType from Cars where fuelType is not null;
select * from FuelType;
