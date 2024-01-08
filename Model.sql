Create table Model (
id int not null AUTO_INCREMENT primary key,
modelName VARCHAR(100) not null
);


INSERT Model(modelName) SELECT DISTINCT name from Cars;
Select * from Model;
