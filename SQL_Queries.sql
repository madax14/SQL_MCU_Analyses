 ##Average OF earnings OF ALL movies
SELECT
  AVG(opening_weekend_us) AS `Average_open`,
  AVG(gross_us) AS `Average_Gros_US`,
  AVG(gross_world) AS `Average_Gros_World`
FROM
  `learning-diego.Mavel_Movies.MCU_Films` ;

 ##Trends in films length OVER time.
SELECT
  movie,
  FORMAT_DATE('%Y-%b-%d', release_date) AS `date`,
  length_hrs,
  gross_us,
FROM
  `learning-diego.Mavel_Movies.MCU_Films`
ORDER BY
  `date` ASC;

SELECT
  movie,
  gross_us
FROM
  `learning-diego.Mavel_Movies.MCU_Films`
ORDER BY
  gross_us DESC;

##Monthly earning in US 
SELECT
  SUM(gross_us) AS `Gross_US_M`,
  FORMAT_DATETIME("%B, %Y",release_date) AS `Month`,
 FROM
  `learning-diego.Mavel_Movies.MCU_Films`
GROUP BY
  `Month`
ORDER BY
  Gross_US_M DESC ;
