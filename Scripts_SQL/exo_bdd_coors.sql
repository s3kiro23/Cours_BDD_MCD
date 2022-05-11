SELECT bars.nom_bar, bieres.nom_biere, tarifs.prix, 
	(SELECT round(AVG(prix),2)) Moyenne
FROM bars, bieres, tarifs
WHERE bars.num_bar=tarifs.num_bar
	AND tarifs.num_biere=bieres.num_biere