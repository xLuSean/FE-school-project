
CREATE VIEW record_diet_Ref AS
(SELECT dr.sid, mb.name, ft.food_type, dr.quantity, dr.diet_time
FROM record_diet_record AS dr, member AS mb, record_food_type AS ft
WHERE dr.member_sid = mb.sid AND dr.food_sid = ft.sid)

CREATE VIEW exe_record_Ref AS
(SELECT er.sid, mb.name, et.exercise_name, er.weight, er.sets, er.reps, er.exe_date
FROM record_exercise_record AS er, member AS mb, record_exercise_type AS et
WHERE er.member_sid = mb.sid AND er.exe_type_sid = et.sid)


(select `ref`.`sid` AS `sid`,`et`.`exercise_name` AS `exercise_name`,`bp`.`bodyPart_name` AS `bodyPart_name` from `gym_v2`.`record_body_part` `bp` join `gym_v2`.`record_exercise_type` `et` join `gym_v2`.`record_exercis_bodypart_ref` `ref` where ((`bp`.`sid` = `ref`.`bodyPart_sid`) and (`et`.`sid` = `ref`.`exerciseType_sid`)))


-- === GYM_v1 ===========================================================

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






