Create table PriceRuble (
car_id int not null primary key,
price float not null
);


INSERT PriceRuble(car_id, price) SELECT DISTINCT carId,price from Cars;
select * from PriceRuble;
