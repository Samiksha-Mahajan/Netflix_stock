use demo_s;

--  Write a query to select all columns from the NFLX_Stock table
select * from nflx_stock;

-- Select the date, open, close, and volume for all stock entries
select date, open, close, volume from nflx_stock;

-- Retrieve the date with the highest volume.
select max(volume) as Maximum_volume from nflx_stock;

-- Retrieve stock data from January 2020
select * from nflx_stock where year(date) >= 2020;

-- Retrieve the close price for March 1, 2021
select close from nflx_stock where date = '2021-03-01';

-- Find the total number of shares traded
select count(volume) from nflx_stock;

-- Calculate the average close price over the dataset.
select round(avg(close), 2) from nflx_stock;

-- Retrieve the maximum high price of the stock.
select max(high) from nflx_stock;

-- Count the total number of trading days.
SELECT count(date) from nflx_stock;

-- Find the average volume of shares traded per year.
select avg(volume) as avg_volume, year(date) from nflx_stock group by year(date);

-- List all records where volume is greater than 10 million
select * from nflx_stock where volume > '10,00,00,000';

-- Retrieve the top 5 days with the highest close price, in descending order.
select date from nflx_stock order by close desc limit 5;

--  Retrieve all stock records from the year 2021.
select *from nflx_stock where year(date) = '2021';

-- Get stock data where the close price is between $50 and $100.
select * from nflx_stock where close > '50,00,00,000' and close < '100,00,00,000';

-- Find days where the close price was lower than the open price.
select * from nflx_stock where 'close' < 'open';

-- How many trading days were there in 2022?
select count(date) as trading_days from nflx_stock where year(date) = '2022';

-- Retrieve the close prices for all trading days before December 31, 2020.
select close from nflx_stock where date > '2020-12-31';

-- List all stock records where TrueRange is greater than 5.
select * from nflx_stock where TrueRange > 5;

-- Retrieve the top 10 records with the highest macd values.
select * from nflx_stock order by macd desc limit 10;

-- Write a query to calculate the difference between high and low prices for each day
 select high, low, round((high - low), 2) as difference_price from nflx_stock;