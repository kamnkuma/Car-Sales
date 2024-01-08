Create table CarWorth (
car_id int not null primary key,
priceMileageRatio float not null
);
INSERT CarWorth(car_id, priceMileageRatio) SELECT DISTINCT carId,priceMileageRatio from Cars where priceMileageRatio is not null;
select * from CarWorth;
