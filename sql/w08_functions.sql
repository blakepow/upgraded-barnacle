SELECT magazineName, ROUND(magazinePrice - magazinePrice * .03, 2) AS '3% off' FROM magazine;

SELECT subscriberKey, ROUND(DATEDIFF('2020-12-20', subscriptionStartDate) / 365) AS 'Years since subscription' FROM subscription;

SELECT subscriptionStartDate, subscriptionLength, DATE_FORMAT(DATE_ADD(subscriptionStartDate, INTERVAL subscriptionLength MONTH), '%M %D, %Y') AS 'Subscription End' FROM subscription;

SELECT SUBSTRING_INDEX(product_name, '-', 1) FROM product WHERE product_id <= 14 ORDER BY product_id; -- Work on taking year off

SELECT product_name, CONCAT('$', FORMAT(list_price/3, 2, 'en_US')) FROM product WHERE model_year = 2019;