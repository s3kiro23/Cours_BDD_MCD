-- employes qui ont un salaire de moins de 2500€
SELECT *
FROM employes
WHERE salaire<2500;

-- nom, prenom des employes
--	qui ont un salaire de moins de 2500€
SELECT nom, prenom
FROM employes,
	personnes
WHERE employes.numpersonne=personnes.numpersonne
	and salaire<2500;

-- nom, prenom, ville, telephone, salaire des serveurs
-- qui un salaire entre 2000€ et 3000€
select nom,
	prenom,
	telephone,
	ville,
	salaire
from serveurs,
	employes,
	personnes,
	coordonnees
where serveurs.numpersonne=employes.numpersonne
	and employes.numpersonne=personnes.numpersonne
	and personnes.numpersonne=coordonnees.numpersonne
	and salaire between 2000 and 3000;

-- nom, prenom, ville, telephone, salaire des employés
-- qui ne sont pas serveurs et qui ont un salaire 
-- entre 2000€ et 3000€
select *
from employes
where
	employes.numpersonne not in(
		select serveurs.numpersonne 
		from serveurs
	)
	and salaire between 2000 and 3000;


