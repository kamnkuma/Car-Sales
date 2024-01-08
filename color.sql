Create table Color (
id int not null AUTO_INCREMENT primary key,
carColor VARCHAR(100) not null
);


INSERT Color(carColor) SELECT DISTINCT color from Cars where color is not null;
select * from Color;
