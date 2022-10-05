-- What are the total sales for each day?
\echo SELECT * FROM saleshistory
SELECT * FROM saleshistory;

-- What items are available and what is their quantity?
\echo SELECT * FROM inventory
SELECT * FROM inventory;

-- Can I see a list of menu items?
\echo SELECT item FROM inventory
SELECT item FROM inventory;

-- What are the days where a customer ordered a plate with brown rice, beijing beef, and kungpao chicken?
\echo SELECT date FROM saleshistory
SELECT date FROM itemizedhistory WHERE item='plate:kungpaochicken beijingbeef brownrice';

-- What is the average net sale for all purchases?
\echo SELECT AVG(netsales) FROM saleshistory
SELECT AVG(netsales) FROM saleshistory;

-- Can I see all of the customer orders?
\echo SELECT* FROM itemizedhistory
SELECT* FROM itemizedhistory;

-- Can I see the what kind of configurations there are when customers order a plate?
\echo SELECT MIN(price) FROM itemizedhistory
SELECT item FROM itemizedhistory WHERE price='8.2';

-- How many items are we selling in our menu?
\echo SELECT COUNT(item) FROM inventory
SELECT COUNT(item) FROM inventory;

-- What are the first 5 entrees that we have currently with 100 lbs in stock?
\echo SELECT * FROM inventory WHERE category='entree' AND quantity=100 LIMIT 5
SELECT * FROM inventory WHERE category='entree' AND quantity=100 LIMIT 5;

-- What were the orders placed by customers past September 20, 2022?
\echo SELECT * FROM itemizedhistory WHERE date >= '2022-09-20'
SELECT * FROM itemizedhistory WHERE date >= '2022-09-20';

-- What are the netsales for the days where the number of orders was between 300 and 500?
\echo SELECT netsales, numorders FROM saleshistory WHERE numorders BETWEEN '300' AND '500'
SELECT netsales, numorders FROM saleshistory WHERE numorders BETWEEN '300' AND '500';

-- What is the max number of orderes recorded for any day in our sales history?
\echo SELECT MAX(numorders) FROM saleshistory
SELECT MAX(numorders) FROM saleshistory;

-- What is the sum of orders placed on September 20, 2022
\echo SELECT SUM(price) FROM itemizedhistory WHERE date='2022-09-20'
SELECT SUM(price) FROM itemizedhistory WHERE date='2022-09-20';

-- What sauces do we provide in our Panda Express Restaurant
\echo SELECT item FROM inventory WHERE item like '%sauce%'
SELECT item FROM inventory WHERE item like '%sauce%';

-- Can I see all the orders placed on September 4, 2022?
\echo SELECT * FROM itemizedhistory WHERE date='2022-09-04'
SELECT item,price FROM itemizedhistory WHERE date='2022-09-04'; 

-- What item do we have the most of?
\echo SELECT MAX(quantity) FROM inventory
SELECT MAX(quantity) FROM inventory;

-- What sides do we provide in our Panda Express Restaurant?
\echo SELECT quantity FROM inventory WHERE entree='sides' 
SELECT item FROM inventory WHERE category='sides';

-- What are the first two orders listed on our customer orders?
\echo SELECT * FROM itemizedhistory LIMIT 2
SELECT * FROM itemizedhistory LIMIT 2;

-- What are the days where we acheived netsales over $4000?
\echo SELECT * FROM saleshistory WHERE netsales > 4000
SELECT * FROM saleshistory WHERE netsales > 4000;
