-- combination primary key
CREATE TABLE `GYM_v1`.`test` (
    `sid` INT NOT NULL AUTO_INCREMENT,
    `first_name` INT NOT NULL,
    `last_name` INT NOT NULL,
    CONSTRAINT pk_ID PRIMARY KEY(`sid`, `first_name`)
) ENGINE = InnoDB CHARSET = armscii8 COLLATE armscii8_general_ci;

-- select for shopping cart
SELECT sc.sid, sc.member_id, sc.quantity, mc.equipment_id, mc.color_id, mc.size_id
FROM shopping_cart AS sc, equipment_detail AS mc
WHERE sc.merchant_id=mc.sid AND sc.merchant_type=1
UNION ALL
SELECT sc.sid, sc.member_id, sc.quantity, mc.cloth_id, mc.color_id, mc.size_id
FROM shopping_cart AS sc, clothing_detail AS mc
WHERE sc.merchant_id=mc.sid AND sc.merchant_type=0

-- select for shooping cart convert back to name color size
SELECT sc.sid, sc.member_id, sc.quantity, mn.cloth_name, mc.color_name, ms.size
FROM shopping_cart AS sc, clothing_detail AS md, cloth_color AS mc, cloth_size AS ms, cloth_name AS mn
WHERE sc.merchant_id=md.sid AND sc.merchant_type=0 AND md.cloth_id=mn.sid AND md.color_id=mc.sid AND md.size_id=ms.sid
UNION ALL
SELECT sc.sid, sc.member_id, sc.quantity, mn.equipment_name, mc.color_name, ms.size
FROM shopping_cart AS sc, equipment_detail AS md, equipment_color AS mc, equipment_size AS ms, equipment_name AS mn
WHERE sc.merchant_id=md.sid AND sc.merchant_type=1 AND md.equipment_id=mn.sid AND md.color_id=mc.sid AND md.size_id=ms.sid

-- add shopping cart
INSERT INTO `shopping_cart`
(`sid`, `member_id`, `merchant_id`, `quantity`, `merchant_type`, `added_date`) VALUES (NULL, '1', '2', '1', '1', '2023-05-01 13:44:05.000000');







-- food type
INSERT INTO `food_type` (`sid`, `food_type`, `calories`, `protein`, `unit`, `food_img`) VALUES 
(NULL, 'Salmon (cooked)', '175', '35', '100g', NULL),
(NULL, 'Black beans (cooked)', '132', '9', '100g', NULL),
(NULL, 'Greek yogurt', '73', '10', '100g', NULL),
(NULL, 'Tuna (canned in water)', '116', '25', '100g', NULL),
(NULL, 'Lentils (cooked)', '116', '9', '100g', NULL),
(NULL, 'Beef sirloin (cooked)', '177', '27', '100g', NULL),
(NULL, 'Quinoa (cooked)', '120', '4', '100g', NULL),
(NULL, 'Cottage cheese', '98', '11', '100g', NULL),
(NULL, 'Almonds', '576', '21', '100g', NULL),
(NULL, 'Turkey breast (cooked)', '158', '32', '100g', NULL),
(NULL, 'Edamame (cooked)', '121', '11', '100g', NULL),
(NULL, 'Peanut butter', '588', '25', '100g', NULL),
(NULL, 'Shrimp (cooked)', '99', '20', '100g', NULL),
(NULL, 'Chickpeas (cooked)', '164', '7', '100g', NULL),
(NULL, 'Eggs (cooked)', '155', '13', '100g', NULL),
(NULL, 'Tilapia (cooked)', '96', '20', '100g', NULL),
(NULL, 'Brown rice (cooked)', '111', '2', '100g', NULL),
(NULL, 'Pork loin (cooked)', '162', '29', '100g', NULL),
(NULL, 'Chia seeds', '486', '17', '100g', NULL),
(NULL, 'Bison (cooked)', '143', '28', '100g', NULL),
(NULL, 'Walnuts', '654', '15', '100g', NULL),
(NULL, 'Cottage cheese (low-fat)', '72', '15', '100g', NULL),
(NULL, 'Pinto beans (cooked)', '143', '7', '100g', NULL),
(NULL, 'Milk (low-fat)', '51', '3.4', '100g', NULL),
(NULL, 'Chicken thigh (cooked)', '209', '24', '100g', NULL),
(NULL, 'Soy milk', '33', '3.3', '100g', NULL),
(NULL, 'Tofu', '62', '6', '100g', NULL),
(NULL, 'Pistachios', '562', '20', '100g', NULL),
(NULL, 'Halibut (cooked)', '119', '23', '100g', NULL),
(NULL, 'Green peas (cooked)', '81', '5', '100g', NULL),
(NULL, 'Beef tenderloin (cooked)', '250', '25', '100g', NULL)

-- exercise type
INSERT INTO `exercise_type` (`sid`, `exercise_type`, `exercise_img`) 
VALUES 
(NULL, 'Bench press', NULL),
(NULL, 'Squat', NULL),
(NULL, 'Deadlift', NULL),
(NULL, 'Shoulder press', NULL),
(NULL, 'Barbell curl', NULL),
(NULL, 'Tricep extension', NULL),
(NULL, 'Leg press', NULL),
(NULL, 'Pull-up', NULL);
