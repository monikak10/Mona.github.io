-- -------------------------------------------------------------------------------------
-- -----------Updating  Menu Item in MenuItem table-------------------------------------
-- -------------------------------------------------------------------------------------

UPDATE menu_item 
SET me_name='Vadapav',me_price=100,me_active='No',me_date_of_launch='2020-02-12',me_category='Desserts',me_free_delivery='No'
WHERE me_id=1;

select * from menu_item;

-- -------------------------------------------------------------------------------------
-- -----------Adding User into User table----------------------------------------------
-- -------------------------------------------------------------------------------------

INSERT INTO user(us_name)
VALUES 
('Hunny'),('Sunny');

SELECT * FROM user;


-- -------------------------------------------------------------------------------------
-- -----------MenuItem table----------------------------------------------
-- -------------------------------------------------------------------------------------

SELECT me_name,me_free_delivery,me_price,me_category 
FROM menu_item
WHERE me_active='Yes' AND me_date_of_launch < (SELECT(CURDATE()));






