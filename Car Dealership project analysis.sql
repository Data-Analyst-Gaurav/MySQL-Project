create schema cars;
use cars;
-- READ DATA--
select * from cars;

-- Total Cars : to get a count of total records --
select count(*) from cars;

-- client wants to know how many cars were available in 2023 --
select count(*) from cars where year=2023;

-- client wants to know how many cars were available in 2020,2021,2022 --
select count(*) from cars where year in (2020,2021,2022) group by year; 

-- client asked to print the total of all cars by year. He wants only the count not details--
select year, count(*) from cars group by year;

-- client asked how many diesel cars were there in 2020? --
select count(*) from cars where year = 2020 and fuel="Diesel";

-- client asked to print all fuel cars(petrol,diesel and CNG) come by all year --
select year, count(*) from cars where fuel = "Petrol" group by year;
select year, count(*) from cars where fuel = "Diesel" group by year; 
select year, count(*) from cars where fuel = "CNG" group by year;

-- client asked which year had more than 100 cars? --
select year, count(*) from cars group by year having count(*)>100;

-- client wants the total count of cars between year 2015 and 2023 --
select count(*) from cars where year between 2015 and 2023;

-- client wants all the details of cars between years 2015 to 2023 --
select * from cars where year between 2015 and 2023;  





