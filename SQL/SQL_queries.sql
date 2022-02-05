--Creating housing2020 table
CREATE TABLE housing2020 (
	'LAD' VARCHAR,
	'AreaCode' VARCHAR,
	'CTY' VARCHAR,
	'CTY_Code' VARCHAR,
	'Rgn' VARCHAR,
	'Rgn_Code' VARCHAR,
	'lat' INT,
	'long' INT,
	'Date' VARCHAR,
	'RegionName' VARCHAR,
	'SalesVolume' INT,
	'AveragePrice' INT
);
--Checking that the table has been created correctly
SELECT * FROM housing2020;

--Creating housing2008 table
CREATE TABLE housing2008 (
	'LAD' VARCHAR,
	'AreaCode' VARCHAR,
	'CTY' VARCHAR,
	'CTY_Code' VARCHAR,
	'Rgn' VARCHAR,
	'Rgn_Code' VARCHAR,
	'lat' INT,
	'long' INT,
	'Date' VARCHAR,
	'RegionName' VARCHAR,
	'SalesVolume' INT,
	'AveragePrice' INT
);
--Checking that the table has been created correctly
SELECT * FROM housing2008;

--Creating counties table
CREATE TABLE counties (
	"Rgn_Code" Varchar,
	"RegionName" Varchar
);
--Checking that the table has been created correctly
SELECT * FROM counties;

--QUERYING DATSET TO SEE HOW EACH RECESSION AFFECTED HOUSING PRICES AND SALES VOLUME

--Creating view to hold data for the beginning of first recession
CREATE VIEW dat2008 AS
SELECT "LAD", "Date", "SalesVolume", "AveragePrice" FROM housing2008
WHERE "Date"='2008-02-01';
--Creating view to hold data for the end of first recession
CREATE VIEW data2009 AS
SELECT "LAD", "Date", "SalesVolume", "AveragePrice" FROM housing2008
WHERE "Date"='2009-12-01';
--Joining views holding data for 2008 and 2009 to see changes
CREATE VIEW comparison08_09 AS
SELECT b."LAD", b."Date" AS "Date2008", b."SalesVolume" AS "Sales Volume 2008", b."AveragePrice" AS "Avg Price 2008",
	e."Date" AS "Date2009", e."SalesVolume" AS "Sales Volume 2009", e."AveragePrice" AS "Avg Price 2009"
FROM dat2008 AS b
INNER JOIN data2009 AS e ON 
b."LAD"=e."LAD";
--Querying LAD as Birmingham to see example difference in sales volumes and pricing
SELECT * FROM comparison08_09
WHERE "LAD"='Birmingham'

--Creating view to hold data for the beginning of second recession
CREATE VIEW data2020 AS
SELECT "LAD", "Date", "SalesVolume", "AveragePrice" FROM housing2020
WHERE "Date"='2020-02-01';
--Creating view to hold data for the end of second recession
CREATE VIEW data2021 AS
SELECT "LAD", "Date", "SalesVolume", "AveragePrice" FROM housing2020
WHERE "Date"='2021-06-01';
--Joining views holding data for 2020 and 2021 to see changes
CREATE VIEW comparison20_21 AS
SELECT b."LAD", b."Date" AS "Date2020", b."SalesVolume" AS "Sales Volume 2020", b."AveragePrice" AS "Avg Price 2020",
	e."Date" AS "Date2021", e."SalesVolume" AS "Sales Volume 2021", e."AveragePrice" AS "Avg Price 2021"
FROM data2020 AS b
INNER JOIN data2021 AS e ON 
b."LAD"=e."LAD";
--Querying LAD as Birmingham to see example difference in sales volumes and pricing
SELECT * FROM comparison20_21
WHERE "LAD"='Birmingham'



--QUERYING DATSET TO COMPARE OVERALL PRICES AND SALES VOLUMES BETWEEN FIRST AND SECOND RECESSION

--Creating a view to hold counties and average prices in 2020
CREATE VIEW avg_price_2020 AS
SELECT "CTY", ROUND(AVG("AveragePrice"),2) AS "Avg price 2020"
FROM housing2020
GROUP BY "CTY"
ORDER BY "Avg price 2020";
--Opening the view
SELECT * FROM avg_price_2020;

--Creating a view to hold counties and average prices in 2008
CREATE VIEW avg_price_2008 AS
SELECT "CTY", ROUND(AVG("AveragePrice"),2) AS "Avg price 2008"
FROM housing2008
GROUP BY "CTY"
ORDER BY "Avg price 2008";
--Checking the view
SELECT * FROM avg_price_2008;

--Creating a view to hold counties and sales volumes in 2008
CREATE VIEW sales_volume_2008 AS
SELECT "CTY", ROUND(AVG("SalesVolume"),2) AS "Sales volume 2008"
FROM housing2008
GROUP BY "CTY"
ORDER BY "Sales volume 2008";
--Checking the view
SELECT * FROM sales_volume_2008;

--Creating a view to hold counties and sales volumes in 2020
CREATE VIEW sales_volume_2020 AS
SELECT "CTY", ROUND(AVG("SalesVolume"),2) AS "Sales Volume 2020"
FROM housing2020
GROUP BY "CTY"
ORDER BY "Sales Volume 2020";
--Opening the view
SELECT * FROM sales_volume_2020;

--Joining view holding 2008 data and 2020 data to see comparison
CREATE VIEW price_comparison AS
SELECT h8."CTY", h8."Avg price 2008", h20."Avg price 2020"
FROM avg_price_2008 AS h8
INNER JOIN avg_price_2020 AS h20 ON 
h8."CTY"=h20."CTY";

--Comparing avg price data for West Midlands region
SELECT "CTY", "Avg price 2008", "Avg price 2020" FROM price_comparison
WHERE "CTY" = 'West Midlands';

--Joining view holding 2008 data and 2020 data to see sales volume comparison
CREATE VIEW sales_volume_comparison AS
SELECT s8."CTY", s8."Sales volume 2008", s20."Sales Volume 2020"
FROM sales_volume_2008 AS s8
INNER JOIN sales_volume_2020 AS s20 ON 
s8."CTY"=s20."CTY";

--Comparing sales volume data for West Midlands region
SELECT "CTY", "Sales volume 2008", "Sales Volume 2020" FROM sales_volume_comparison
WHERE "CTY" = 'West Midlands';


