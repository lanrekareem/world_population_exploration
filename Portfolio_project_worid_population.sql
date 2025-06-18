#Basic Overview

#view a sample of the data:
SELECT * 
FROM world_population_data
LIMIT 10;

#Count the total number of records:

SELECT COUNT(*) AS total_countries
FROM world_population_data;


#
SELECT *
FROM world_population_data
WHERE continent = 'Africa' AND country = 'Nigeria'
;

# Global Population Summary
#Total world population:
SELECT 
SUM(2023_population) AS world_population_2023
FROM world_population_data;

#Average population per country:
SELECT
AVG(2023_population) AS average_population 
FROM world_population_data;

#Grouping and Aggregation
#Population by continent:
SELECT continent, SUM(2023_population) AS total_population
FROM world_population_data
GROUP BY continent
ORDER BY total_population DESC;

#Average population by continent:
SELECT continent, AVG(2023_population) AS avg_population
FROM world_population_data
GROUP BY continent;

#Top and Bottom Countries
#Top 10 most populated countries:
SELECT country, 2023_population
FROM world_population_data
ORDER BY 2023_population DESC
LIMIT 10;

#Bottom 10 least populated countries:
SELECT country, 2023_population
FROM world_population_data
ORDER BY 2023_population ASC
LIMIT 10;

#Population Density
SELECT country, 2023_population, area_km², 
       (2023_population / area_km²) AS population_density
FROM world_population_data
ORDER BY population_density DESC
LIMIT 10;

#Data Quality Checks
#Check for missing/null values:
SELECT 
    SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS null_countries,
    SUM(CASE WHEN 2023_population IS NULL THEN 1 ELSE 0 END) AS null_population
FROM world_population_data;

#Check for duplicate entries:
SELECT country, COUNT(*) AS count
FROM world_population_data
GROUP BY country
HAVING COUNT(*) > 1;



SELECT * 
FROM world_population_data
LIMIT 10;

