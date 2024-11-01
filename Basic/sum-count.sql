SELECT SUM(population)
FROM world

-- List all the continents - just once each.
select distinct(continent) from world

-- Give the total GDP of Africa
select sum(GDP) from world where continent = 'Africa'


-- countries have an area of at least 1000000
select count(name) from world where  area>=1000000

-- total population of ('Estonia', 'Latvia', 'Lithuania')
 select sum(population) from world where 
  name in ('Estonia', 'Latvia', 'Lithuania')