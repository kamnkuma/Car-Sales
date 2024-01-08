Create table EngineEfficiency (
spec_id int not null primary key,
fuelEfficiency float not null
);


INSERT EngineEfficiency(spec_id, fuelEfficiency) Select Distinct id, fuelefficiency FROM (
SELECT b.id, fuelEfficiency
FROM Cars
JOIN (SELECT id,engineDisplacement, mileage
FROM EngineSpecification GROUP BY id,engineDisplacement,mileage) AS b ON Cars.engineDisplacement = b.engineDisplacement AND Cars.mileage = b.mileage) as c;


select * from EngineEfficiency;
