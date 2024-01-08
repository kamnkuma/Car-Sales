Create table CarLink (
car_id int not null primary key,
link VARCHAR(100) not null
);
INSERT CarLink(car_id, link) SELECT DISTINCT carId,link from Cars;
select * from CarLink;
