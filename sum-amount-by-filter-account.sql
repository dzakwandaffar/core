SELECT account.name AS "nama nasabah", 
       SUM(transaction.amount) AS "jumlah transfer"
FROM account
	INNER JOIN transaction ON transaction.account_id = account.account_id
	WHERE date_part('MONTH', transaction.transaction_date) = 5
GROUP BY name;