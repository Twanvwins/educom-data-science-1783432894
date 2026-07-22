SELECT S.name, S.straat, S.huisnr, S.postcode
FROM mhl_yn_properties AS PS
INNER JOIN mhl_suppliers AS S ON PS.supplier_ID=S.ID
INNER JOIN mhl_propertytypes    AS P ON PS.propertytype_ID=P.ID
WHERE P.name="ook voor particulieren" OR P.name="specialistische leverancier"