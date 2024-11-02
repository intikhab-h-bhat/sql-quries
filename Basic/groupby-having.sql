
-- For each continent show the continent and number of countries.
select continent, count(name) from world
group by continent


-- For each continent show the continent and number of countries with populations of at least 10 million.
select continent, count(name) from world where population >=10000000
group by continent

--  List the continents that have a total population of at least 100 million.
select continent from world 
group by continent
having sum(population) >=100000000 