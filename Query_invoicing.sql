#Connect to Database
USE invoicing;

# Exercise 1
SELECT * FROM payment_methods
#WHERE payment_method_id =3;
WHERE name = 'credit card';
#ORDER BY name ;

# Exerxise 2
SELECT name FROM payment_methods;

# Exercise 3
SELECT * FROM clients
WHERE city = 'Waco' OR city = 'Portland';

# Exercise 4
SELECT name, state from clients 
ORDER BY state DESC;

# Exercise 5
SELECT * FROM invoices
#ORDER BY invoice_date DESC;
WHERE invoice_date BETWEEN '2019-03-09' AND '2019-09-04';
#WHERE invoice_total <> 169.36;

# Exercise 6
SELECT SUM(invoice_total), client_id FROM invoices
GROUP BY client_id ORDER BY client_id DESC;

# Exercise 7
#SELECT * FROM invoices
SELECT COUNT(invoice_id) FROM invoices
WHERE invoice_total > 150.00;

# Exercise 8
SELECT MIN(payment_total),  MAX(payment_total) FROM invoices;
SELECT MIN(due_date),  MAX(due_date) FROM invoices;

# Exercise 9
SELECT COUNT(client_id) AS num_clients FROM invoices;
SELECT COUNT(invoice_id) AS num_invoices FROM invoices;
SELECT COUNT(payment_date) AS num_payment FROM invoices;
#SHOW VARIABLES;

# Exercise 10
SELECT * FROM invoices
WHERE invoice_id > 6 and invoice_id <  17;

# Exercise 11
SELECT * FROM payments
WHERE payment_method= 2;

SELECT DISTINCT client_id FROM payments;