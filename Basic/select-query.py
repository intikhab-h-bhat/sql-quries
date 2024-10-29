
# This will select all rows from city table
Select * from world.city

# select all names 
select Name from world.city 

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