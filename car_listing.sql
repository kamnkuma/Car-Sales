Create table CarListing (
carId int not null primary key,
modelId int not null,
brandId int not null,
bodyTypeId int not null,
colorId int null,
fuelTypeId int null,
year float null,
transmissionId int null,
engineId int null,
priceUSD float null,
specId int null,
date datetime null,
parse_date datetime null,
regionId int null,
listingId int null
);


INSERT CarListing(carId, modelId, brandId, bodyTypeId)
SELECT carId, c.id, b.id, d.id
FROM Cars
JOIN (SELECT id,brandName FROM brand GROUP BY id,brandName) AS b ON Cars.brand = b.brandName
JOIN (select id, modelName from Model group by id, modelName) AS c ON Cars.name = c.modelName
JOIN (select id, body from BodyType group by id, body) AS d ON Cars.bodyType = d.body;


With color_t AS (
SELECT carId, c.id as cid
FROM Cars
LEFT JOIN (SELECT id,carColor FROM color GROUP BY id,carColor) AS c ON Cars.color = c.carColor)
Update CarListing, color_t
SET CarListing.colorId = color_t.cid
WHERE CarListing.carId = color_t.carId;


With temp_t AS (
SELECT carId, c.id as cid
FROM Cars
LEFT JOIN (
SELECT id,type
FROM fuelType
GROUP BY id,type)
AS c ON Cars.fuelType = c.type)
Update CarListing, temp_t
SET CarListing.fuelTypeId = temp_t.cid
WHERE CarListing.carId = temp_t.carId;


With temp_t AS (
SELECT carId, c.id as cid
FROM Cars
LEFT JOIN (
SELECT id,transmissionType
FROM transmission
GROUP BY id,transmissionType)
AS c ON Cars.transmission = c.transmissionType)
Update CarListing, temp_t
SET CarListing.transmissionId = temp_t.cid
WHERE CarListing.carId = temp_t.carId;


With temp_t AS (
SELECT carId, c.id as cid
FROM Cars
LEFT JOIN (
SELECT id,location
FROM region
GROUP BY id,location)
AS c ON Cars.location = c.location)
Update CarListing, temp_t
SET CarListing.regionId = temp_t.cid
WHERE CarListing.carId = temp_t.carId;


Update CarListing
SET CarListing.listingId = Cars.listingId
WHERE CarListing.carId = Cars.carId;


Update CarListing
SET CarListing.parse_date = Cars.parse_date
WHERE CarListing.carId = Cars.carId;


Update CarListing
SET CarListing.date = Cars.date
WHERE CarListing.carId = Cars.carId;


Update CarListing
SET CarListing.year = Cars.year
WHERE CarListing.carId = Cars.carId;


Update CarListing
SET CarListing.priceUSD = Cars.priceUSD
WHERE CarListing.carId = Cars.carId;


With temp_t AS (
SELECT carId, c.engineId as cid
FROM Cars
LEFT JOIN (
SELECT engineId,engineName,vehicleConfiguration
FROM Engine
GROUP BY engineId,engineName,vehicleConfiguration)
AS c ON Cars.engineName = c.engineName AND Cars.vehicleConfiguration=c.vehicleConfiguration)
Update CarListing, temp_t
SET CarListing.engineId = temp_t.cid
WHERE CarListing.carId = temp_t.carId;


With temp_t AS (
SELECT carId, c.id as cid
FROM Cars
LEFT JOIN (
SELECT id,engineDisplacement,mileage
FROM EngineSpecification
GROUP BY id,engineDisplacement,mileage)
AS c ON Cars.engineDisplacement = c.engineDisplacement AND Cars.mileage=c.mileage)
Update CarListing, temp_t
SET CarListing.specId = temp_t.cid
CarListing.carId = temp_t.carId;


select * from CarListing;
