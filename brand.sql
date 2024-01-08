Create table Brand (
id int not null AUTO_INCREMENT primary key,
brandName VARCHAR(100) not null
);


INSERT Brand(brandName) SELECT DISTINCT brand from Cars;
select * from brand;
