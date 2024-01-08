Create table BodyType (
id int not null AUTO_INCREMENT primary key,
body VARCHAR(100) not null
);


INSERT BodyType(body) SELECT DISTINCT bodyType from Cars where bodyType is not null;
select * from BodyType;
