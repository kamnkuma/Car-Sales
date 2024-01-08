create table Transmission (
id int not null AUTO_INCREMENT primary key,
transmissionType VARCHAR(100) not null,
);


INSERT Transmission(transmissionType) SELECT DISTINCT transmission from Cars where transmission is not null;
SELECT * from Transmission;
