#Nivell 1
#Exercici 2
#Utilitzant JOIN realitzaràs les següents consultes:
# Llistat dels països que estan fent compres.
SELECT DISTINCT c.country
FROM transaction AS t
LEFT JOIN company AS c
	ON t.company_id = c.id;

# Des de quants països es realitzen les compres.
SELECT COUNT(distinct c.country) AS total_countries
FROM transaction AS t
LEFT JOIN company AS c
	ON t.company_id = c.id;

# Identifica la companyia amb la mitjana més gran de vendes.
SELECT c.company_name, ROUND(avg(t.amount),2) AS avg_sales
FROM transaction AS t
	JOIN company AS c
	ON t.company_id = c.id
WHERE declined = 'N'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

# Utilitzant només subconsultes (sense utilitzar JOIN):

# Mostra totes les transaccions realitzades per empreses d'Alemanya.
SELECT *
FROM transaction AS t
WHERE t.company_id = ANY (SELECT c.id
						FROM company AS c
						WHERE c.country = 'Germany');

# Llista les empreses que han realitzat transaccions per un amount superior a la mitjana de totes les transaccions.
SELECT c.id, c.company_name
FROM company AS c
WHERE c.id = ANY (SELECT t.company_id
				FROM transaction AS t
				WHERE t.amount > (SELECT avg(t.amount) AS avg_total
									FROM transaction AS t)
						AND declined = 'N');
                        
# Eliminaran del sistema les empreses que no tenen transaccions registrades, entrega el llistat d'aquestes empreses.
SELECT c.id, c.company_name 
FROM company AS c
WHERE NOT EXISTS (SELECT t.company_id
			FROM transaction AS t
			WHERE t.company_id = c.id);
                                
#Nivell 2
#Exercici 1
#Identifica els cinc dies que es va generar la quantitat més gran d'ingressos a l'empresa per vendes. 
#Mostra la data de cada transacció juntament amb el total de les vendes.
SELECT date(t.timestamp) AS Date, SUM(t.amount) total_sales
FROM transaction AS t
WHERE declined = 'N'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;
              
        
# Quina és la mitjana de vendes per país? Presenta els resultats ordenats de major a menor mitjà.
SELECT c.country, ROUND(avg(t.amount),2) AS avg_amountsales
FROM transaction AS t
JOIN company AS c 
	ON t.company_id = c.id
WHERE declined = 'N'
GROUP BY 1
ORDER BY 2 desc;

# llista de totes les transaccions realitzades per empreses que estan situades en el mateix país que "Non Institute"

#Mostra el llistat aplicant solament subconsultes.
SELECT *
FROM transaction AS t
WHERE t.company_id IN (SELECT c.id
		FROM company AS c
		WHERE c.country = (SELECT c.country 
						FROM company AS c
                        WHERE company_name = 'Non Institute')        
AND company_name != 'Non Institute')
AND t.declined = 'N';

#Mostra el llistat aplicant JOIN i subconsultes.
SELECT *
FROM transaction AS t
JOIN company AS c
ON c.id = t.company_id
WHERE c.country IN (SELECT country 
					FROM company 
                    WHERE company_name = 'Non Institute')
	AND company_name != 'Non Institute'
	AND t.declined = 'N';

#NIVELL 3
#Exercici 1
#Presenta el nom, telèfon, país, data i amount, 
#d'aquelles empreses que van realitzar transaccions amb un 
#valor comprès entre 100 i 200 euros i 
#en alguna d'aquestes dates: 29 d'abril del 2021, 20 de juliol del 2021 i 13 de març del 2022. 
#Ordena els resultats de major a menor quantitat.

SELECT c.company_name, c.phone, c.country, intervalTransactions.date, intervalTransactions.amount
FROM company AS c
JOIN (SELECT t.amount, date(t.timestamp) AS date, t.company_id
					FROM transaction AS t
					WHERE t.amount BETWEEN 100 AND 200
                    AND date(t.timestamp) IN ('2021-04-29','2021-07-20','2022-03-13')) AS intervalTransactions
ON  intervalTransactions.company_id = c.id
ORDER BY amount DESC;

#Exercici 2
#quantitat de transaccions que realitzen les empreses, 
#llistat de les empreses on especifiquis si tenen més de 4 transaccions o menys.*/
SELECT c.company_name, total_transactions, total_count
FROM company AS c
JOIN (SELECT t.company_id, count(t.id) AS total_count,
	CASE
		WHEN count(t.id) > 4 THEN 'More than 4 transactions'
		WHEN count(t.id) = 4 THEN '4 transactions'
		ELSE 'Less than 4 transactions'
		END AS total_transactions
	FROM transaction AS t
	GROUP BY t.company_id) AS transactions_count
ON transactions_count.company_id = c.id
ORDER BY 3 DESC;