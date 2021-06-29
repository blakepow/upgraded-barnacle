-- Number 1
INSERT INTO artist (fname, mname, lname, dob, dod, country, local)
VALUES('Johannes', null, 'Vermeer', 1632, 1674, 'Netherlands', 'n');

-- Number 2
SELECT * FROM artist
ORDER BY lname;

-- Number 3
UPDATE artist
SET dod = 1674
WHERE artist_id = 10;

-- Number 4
DELETE FROM artist
WHERE artist_id = 10;

-- Number 5
SELECT first_name, last_name, phone FROM customer
WHERE city = 'Houston';

-- Number 6
SELECT product_name, list_price, list_price - 500 AS 'Discount Price' FROM product
WHERE list_price > 5000;

-- Number 7
SELECT first_name, last_name, email FROM staff
WHERE store_id != 1;

-- Number 8 need help with substring
SELECT * from product
WHERE product_name IN 'Spider';

-- Number 9 need help with between
SELECT product_name, list_price FROM product
WHERE price BETWEEN 500 AND 550;

-- Number 10 need help with substring
SELECT first_name, last_name, phone, street, city, state, zip_code FROM customer
WHERE phone != 'null' AND last_name = 'William';