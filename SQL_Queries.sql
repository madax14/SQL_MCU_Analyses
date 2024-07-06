###Cleaning and validating data with SQL


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

  ##Comparation monthly earning in US and World
SELECT
  FORMAT_DATETIME("%B, %Y",release_date) AS `Month`,
  SUM(gross_us) AS `Gross_US_M`,
  SUM(gross_world) AS `Gross_World_M`,
  (SUM(gross_us)/SUM(gross_world)) * 100 AS `repres_Total`,
FROM
  `learning-diego.Mavel_Movies.MCU_Films`
GROUP BY
  `Month`
ORDER BY
  Gross_US_M DESC ;

## Opening wenkends earnig represantation of the total earning.
  SELECT
  movie,
  (opening_weekend_us/gross_world) * 100 AS `Opening Represent`
FROM
  `learning-diego.Mavel_Movies.MCU_Films`
