WITH hotelrevenue as (

SELECT *
FROM dbo.['2018$']
UNION
SELECT *
FROM dbo.['2019$']
UNION
SELECT *
FROM dbo.['2020$'])
SELECT *
FROM hotelrevenue hr JOIN market_segment$ ms ON hr.market_segment=ms.market_segment
LEFT JOIN meal_cost$ ms1 ON hr.meal=ms1.meal


SELECT *
FROM dbo.market_segment$


SELECT arrival_date_year,hotel,
ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue
FROM hotelrevenue
GROUP BY arrival_date_year,hotel
