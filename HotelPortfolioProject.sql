/*
Hotel Revenue Project
*/

--Visualizing the data


SELECT *
FROM HotelRevenueProject.dbo.year2018

SELECT *
FROM HotelRevenueProject.dbo.year2019

SELECT *
FROM HotelRevenueProject.dbo.year2020

SELECT *
FROM HotelRevenueProject.dbo.market_segment

SELECT *
FROM HotelRevenueProject.dbo.meal_cost


-- Putting together the data for all years into a table called HotelAllYears

SELECT * INTO HotelAllYears
FROM (
SELECT *
FROM HotelRevenueProject.dbo.year2018
UNION
SELECT *
FROM HotelRevenueProject.dbo.year2019
UNION
SELECT *
FROM HotelRevenueProject.dbo.year2020
) AS HotelsTable


--SELECT *
--FROM HotelAllYears
--ORDER BY arrival_date_year


-- Joing the Market Segment Discounts and Meal Costs to the HotelAllYears Table

SELECT *
FROM HotelAllYears 
LEFT OUTER JOIN HotelRevenueProject.dbo.market_segment 
ON HotelAllYears.market_segment = HotelRevenueProject.dbo.market_segment.market_segment
LEFT OUTER JOIN HotelRevenueProject.dbo.meal_cost
ON HotelAllYears.meal = HotelRevenueProject.dbo.meal_cost.meal
ORDER BY 4

-- Visualizing the table country_code, that brings the ISO code for each country

SELECT *
FROM HotelRevenueProject.dbo.country_code