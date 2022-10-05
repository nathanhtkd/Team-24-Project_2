\echo SELECT * FROM saleshistory
SELECT * FROM saleshistory;

\echo SELECT * FROM inventory
SELECT * FROM inventory;

\echo SELECT* FROM itemizedhistory;
SELECT* FROM itemizedhistory;

\echo SELECT item FROM inventory
SELECT item FROM inventory;

\echo SELECT date FROM itemizedhistory
SELECT date FROM itemizedhistory;

\echo SELECT AVG(price) FROM itemizedhistory
SELECT AVG(price) FROM itemizedhistory;

\echo SELECT COUNT(item) FROM inventory
SELECT COUNT(item) FROM inventory;

\echo SELECT * FROM inventory WHERE category='entree' AND quantity=100 LIMIT 5
SELECT * FROM inventory WHERE category='entree' AND quantity=100 LIMIT 5;

\echo SELECT * FROM itemizedhistory WHERE date >= '2022-09-20';
SELECT * FROM itemizedhistory WHERE date >= '2022-09-20';

\echo SELECT netsales, numorders FROM saleshistory WHERE numorders BETWEEN '300' AND '500'
SELECT netsales, numorders FROM saleshistory WHERE numorders BETWEEN '300' AND '500';

\echo SELECT MAX(numorders) FROM saleshistory
SELECT MAX(numorders) FROM saleshistory;

\echo SELECT SUM(price) FROM itemizedhistory
SELECT SUM(netsales) FROM saleshistory;

\echo SELECT item FROM inventory WHERE item like '%sauce%'
SELECT item FROM inventory WHERE item like '%sauce%';

\echo SELECT id FROM inventory
SELECT id FROM inventory;

\echo SELECT MAX(quantity) FROM inventory
SELECT MAX(quantity) FROM inventory;

\echo SELECT * FROM itemizedhistory LIMIT 2
SELECT * FROM saleshistory LIMIT 2;

\echo SELECT * FROM saleshistory WHERE netsales > 4000
SELECT * FROM saleshistory WHERE netsales > 4000;
