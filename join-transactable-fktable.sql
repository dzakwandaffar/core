select * from transaction
inner join account on
transaction.account_id = account.account_id
inner join bank on
transaction.bank_id = bank_code