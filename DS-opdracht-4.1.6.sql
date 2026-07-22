SELECT
    H.hitcount,
    L.name AS leverancier,
    P.name AS stad,
    G.name AS gemeente,
    D.name AS provincie
FROM mhl_suppliers L
INNER JOIN mhl_cities P ON L.city_ID=P.id
INNER JOIN mhl_communes G ON P.commune_ID=G.id
INNER JOIN mhl_districts D ON G.district_ID=D.id
INNER JOIN mhl_hitcount H ON L.id=H.supplier_id AND H.year=2014 AND H.month=1
WHERE D.name="Limburg" OR D.name="Noord-Brabant" OR D.name="Zeeland"