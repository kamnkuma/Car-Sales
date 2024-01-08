Create table Engine (
engineId int not null AUTO_INCREMENT primary key,
engineName VARCHAR(100) null,
vehicleConfiguration VARCHAR(100) not null,
);


INSERT Engine(engineName, vehicleConfiguration) SELECT DISTINCT engineName, vehicleConfiguration from Cars where engineName is not null or vehicleConfiguration is not null;
select * from Engine;
