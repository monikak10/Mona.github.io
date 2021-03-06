-- Include table data insertion, updation, deletion and select scripts-------

-- -------------------------------------------------------------------------------------
-- Adding Admin MenuItems IN Table
-- -------------------------------------------------------------------------------------

INSERT 
INTO menu_item
VALUES
	(1, 'Sandwich', 99.0, 'Yes','2017-03-15','Main Course', 'Yes'),
	(2, 'Burger', 129.00, 'Yes','2017-12-23','Main Course', 'Yes'),
	(3, 'Pizza', 149.00, 'Yes', '2018-08-21','Main Course', 'No'),
	(4, 'French Fries', 57.00,'No', '2017-07-02','Starters', 'Yes'),
	(5, 'Chocalate Brownie', 32.00,'Yes', '2022-11-02','Desserts','Yes');

-- --------------------------------------------------------------------------------------
-- Update MenuItem
-- --------------------------------------------------------------------------------------
SELECT * FROM  menu_item;

UPDATE menu_item 
SET me_name='Vadapav',me_price=100,me_active='No',me_date_of_launch='2020-02-12',me_category='Desserts',me_free_delivery='No'
WHERE me_id=1;


-- -------------------------------------------------------------------------------
-- Display Admin List
-- --------------------------------------------------------------------------------
SELECT * FROM menu_item;



-- -------------------------------------------------------------------------------
-- -----------User Details of User table------------------------------------------
-- -------------------------------------------------------------------------------

INSERT 
INTO 
user(us_id,us_name)
VALUES 
	(1,'Hunny'),(2,'Sunny');


SELECT * FROM user;

-- -------------------------------------------------------------------------------
-- ------------ Customer Menu Item List-------------------------------------------
-- -------------------------------------------------------------------------------

SELECT me_name,me_free_delivery,me_price,me_category 
FROM menu_item
WHERE me_active='Yes' 
AND me_date_of_launch < CURDATE();


-- ------------------------------------------------------------------------------
-- Adding Cart Items in Cart table-----------------------------------------------
-- ------------------------------------------------------------------------------

INSERT INTO 
cart(ct_id,ct_us_id,ct_pr_id)
VALUES
(11,1,1),(12,1,3),(13,1,2);



-- --------------------------------------------------------------------------------
-- Display Cart -------------------------------------------------------------------
-- --------------------------------------------------------------------------------
SELECT * FROM cart;

-- --------------------------------------------------------------------------------
-- view cart table
-- --------------------------------------------------------------------------------

SELECT me_name,me_free_delivery, me_price
FROM menu_item 
INNER JOIN cart
ON ct_pr_id=me_id
WHERE ct_us_id=1;

-- -----------------------------------------------------------------------------------
-- Total------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------
SELECT 
SUM(menu_item.me_price) AS "Toatal_Price" 
FROM menu_item
INNER JOIN cart 
ON ct_pr_id=me_id
WHERE cart.ct_us_id=1;


-- ------------------------------------------------------------------------------------
--  delete from cart table
-- ------------------------------------------------------------------------------------

DELETE FROM cart WHERE ct_us_id=1 AND ct_pr_id=2;

-- ------------------------------------------------------------------------------------
--  After Deleting from cart table
-- ------------------------------------------------------------------------------------
SELECT * FROM cart;













