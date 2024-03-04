create schema cars;
use cars;
show tables;

-- Questions;
-- 1)--Read Data--

alter table cars.`car dekhoccar_dekho` rename car_dekho;
select * from car_dekho;

-- 2)Total Cars:To Get A Count Of Total Records-- 
select count(*) from car_dekho;

-- 3)The Manager Asked The Employee How Many Cras Will Be Available in 2023? --

select count(*) from car_dekho where year=2023;

-- 4) The Manager Asked The employee How many cars were availbale in 2020,2021,2022  --
select count(*) from car_dekho where year between 2020 and 2022;

-- Using group by --

select count(*) from car_dekho where year in (2020,2021,2022)
group by year; -- it will show the count one by one ---

-- Client ask me to print the total no.of cars by year. I dont Want see all the details --
select year,count(*) from car_dekho group by year;

-- Client Asked The Car Dealer That how many diesel cars will be there in 2020? --
select year,count(*) from car_dekho where fuel = "Diesel"and year=2020;

-- Client Requested a car dealer  that how many petrol cras will be there in 2020 --
select year,count(*) from car_dekho where fuel = "Petrol"and year=2020;

-- The Manager Told The Employee to give a print all the fuel cars (petrol, diesel, and CNG) come by all year --

select year,count(*) from car_dekho where fuel="Petrol"  group by year;
select year,count(*) from car_dekho where fuel="Diesel"  group by year;
select year,count(*) from car_dekho where fuel="CNG"  group by year;

-- Manager Told That There Were More Than 100 cars in a given year, which year had more than 100 cars? --
select year,count(*) from car_dekho group by year having count(*)>=100;

-- The Manager Asked To The Employee All Cars Count details between 2015 and 2023, I Need The COmplete list if this --
select count(*) from car_dekho where year between 2015 and 2023;

-- The Manager Asked The Employee ALl Cars details Between 2015 to 2023 need complete list--
select * from car_dekho where year between 2015 and 2023;