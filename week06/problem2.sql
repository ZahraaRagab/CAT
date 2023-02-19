SELECT City.Name 
FROM City, Country 
WHERE City.CountryCode = Country.Code AND Continent = 'Africa' ;