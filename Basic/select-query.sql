
# This will select all rows from city table
Select * from world.city

# select all names 
select Name from world.city 

  # select all names 
select Name,CountryCode from world.city 

select ID,Name,CountryCode from world.city 

# To get the name and population of a city
SELECT Name,Population From city WHERE Name in ("Kabul","Qandahar")

# To get the name and population of a city where population is between 25000 and 30000
SELECT name, Population FROM city
  WHERE Population BETWEEN 25000 AND 30000
  
# Show the name and population for France, Germany, Italy
select Name,Population from world.country where name in ("France","Germany","Italy")


# Show the countries which have a name that includes the word 'United'
select Name from world.country where name like '%United%'

# Show the countries that are big by area or big by population. Show name, population and area.
select name,Population,SurfaceArea from world.country 
where 
SurfaceArea >3000000 or Population >250000000

# Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.
select name,Population,SurfaceArea from world.country 
where 
(SurfaceArea) >3000000 xor (Population > 250000000)

# Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.
select name,Round(Population/1000000,2) as poinmil, Round(GDP/100000000,2) as GNPinBil from world.country 
where 
Continent='South America'

# Show the name and capital where the name and the capital have the same number of characters.

select name,Capital from world.country 
where 
length(name)=length(Capital)

# -- Show the name and the capital where the first letters of each match. 
# -- Don't include countries where the name and the capital are the same word.

SELECT name,  capital
FROM world
where  LEFT(name,1) = LEFT(capital,1)
AND name <> capital



-- SQL SELECT Statement with GROUP BY Clause
select count(*),CountryCode from world.city group by CountryCode
select sum(Population),CountryCode  from world.city group by CountryCode;

-- SELECT Statement with HAVING Clause
select sum(Population),CountryCode from world.city group by CountryCode
having SUM(Population) > 10000000

-- SELECT Statement with ORDER BY clause in SQL
SELECT * FROM world.city ORDER BY `Population` DESC;  

-- SQL SELECT TOP Clause Example
select * from world.city limit 4

select * from world.city  order by Population desc limit 4 

-- SQL SELECT TOP Clause with WHERE Clause Example
select * from world.city where Population < 1000000 order by Population desc limit 4 

-- SQL LIMIT With OFFSET Clause Example here offset means to exclude the first two rows
SELECT * FROM world.city
LIMIT 2 OFFSET 2;

--  to select the last row
SELECT  name from world.city order by Name desc limit 1

-- use of random
SELECT  * from world.city order by Rand() -- for enire table
SELECT  * from world.city order by Rand() limit 1 -- to get single row randomly
