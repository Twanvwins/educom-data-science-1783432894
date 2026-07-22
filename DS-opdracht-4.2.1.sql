SELECT mhl_cities.name, mhl_cities.commune_ID
FROM mhl_cities
LEFT JOIN mhl_communes ON mhl_communes.ID=mhl_cities.commune_ID 
WHERE ISNULL(mhl_communes.name)