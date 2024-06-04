SELECT bank.name AS "nama bank", 
       SUM(transaction.amount) AS "jumlah transfer"
FROM bank
	INNER JOIN transaction ON transaction.bank_id = bank.bank_code
	WHERE date_part('MONTH', transaction.transaction_date) = 5
GROUP BY name;