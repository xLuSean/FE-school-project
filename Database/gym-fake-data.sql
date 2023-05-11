INSERT INTO `record_food_type` (`sid`, `food_type`, `food_description`, `calories`, `protein`, `unit`, `food_img`) VALUES 
(NULL, '雞胸肉', '低脂肪低卡路里的蛋白質來源。', '165', '31', '100g', NULL),
(NULL, '希臘優格', '一種豐富的蛋白質和低卡路里的奶製品。', '73', '10', '100g', NULL),
(NULL, '杏仁', '富含健康脂肪，蛋白質和纖維的堅果。', '576', '21', '100g', NULL),
(NULL, '金槍魚', '高蛋白質和低卡路里的魚類。', '116', '25', '100g', NULL),
(NULL, '扁豆', '富含蛋白質和纖維的豆類。', '116', '9', '100g', NULL),
(NULL, '藜麥', '富含蛋白質，纖維和各種維生素和礦物質的穀物。', '120', '4', '100g', NULL),
(NULL, '干酪', '富含蛋白質和鈣的柔軟奶酪。', '98', '11', '100g', NULL),
(NULL, '蝦', '低卡路里高蛋白質的海鮮。', '99', '20', '100g', NULL),
(NULL, '蛋白質', '高蛋白質低卡路里的蛋清。', '52', '11', '100g', NULL),
(NULL, '脫脂奶', '高蛋白質和各種維生素和礦物質的低脂肪奶製品。', '35', '3.5', '100ml', NULL),
(NULL, '牛肉', '富含蛋白質和鐵質的肉類。', '250', '26', '100g', NULL),
(NULL, '燕麥片', '富含蛋白質、纖維和碳水化合物的穀物。', '389', '17', '100g', NULL),
(NULL, '雞蛋', '含有高品質蛋白質、維生素和礦物質的食物。', '155', '13', '100g', NULL),
(NULL, '南瓜子', '富含蛋白質、纖維和健康脂肪的堅果。', '446', '19', '100g', NULL),
(NULL, '鴨肉', '富含蛋白質和鐵質的肉類。', '337', '16', '100g', NULL),
(NULL, '黑豆', '富含蛋白質、纖維和礦物質的豆類。', '341', '21', '100g', NULL),
(NULL, '芝士', '富含蛋白質和鈣質的奶製品。', '402', '25', '100g', NULL),
(NULL, '杏仁奶', '富含蛋白質、健康脂肪和維生素的植物性奶。', '56', '1', '100ml', NULL),
(NULL, '豆漿', '富含蛋白質、纖維和維生素的植物性奶。', '45', '3', '100ml', NULL),
(NULL, '火雞胸肉', '低脂肪低卡路里的蛋白質來源。', '104', '22', '100g', NULL),
(NULL, '白飯', '以米為原料製作的主食。', '130', '2.7', '100g', NULL);


INSERT INTO `record_exercise_type` ( `exercise_name`, `exercise_description`, `exercise_img`, `exercise_vid`) VALUES
( '深蹲', '雙腳與肩同寬，腳尖朝前。彎曲膝蓋，降低身體直到大腿與地面平行，然後站起來。', NULL, NULL),
( '卧推', '躺在平板凳上，抓住槓鈴使手臂與肩同寬，然後將槓鈴降低到胸前，再推回原位。', NULL, NULL),
( '硬舉', '雙腳與肩同寬，握住槓鈴，然後通過膝蓋和臀部的伸展將重量從地面上抬起。', NULL, NULL),
( '弓箭步', '一腳向前邁步，降低身體直到兩腿都彎曲成90度，然後向上推起，換另一隻腳重複練習。', NULL, NULL),
( '引體向上', '以肩同寬握住橫向的懸浮杠，然後拉起身體直到下巴高於橫杆，再降下身體。', NULL, NULL),
( '伏地挺身', '從平板支撐的姿勢開始，以肩同寬的手距降低身體，直到胸部碰到地面，然後推回原位。', NULL, NULL),
( '啞鈴二頭彎舉', '雙腳與肩同寬，握住一支啞鈴，將其向上彎曲到肩膀，然後降低到原位。', NULL, NULL),
( '三頭肌板凳撐體', '坐在長凳邊緣，雙手握住後方邊緣，然後彎曲肘部降低身體，再推回原位。', NULL, NULL),
( '腿推', '坐在機器上，腳踏在平台上，然後用腿推開平台，再降低到原位。', NULL, NULL),
( '纜繩下拉', '坐在設備下面，握住橫槓，然後向下拉到胸部，然後緩慢地讓拉線返回原位。', NULL, NULL);

INSERT INTO record_exercise_type (sid, exercise_name, exercise_description, exercise_img, exercise_vid) VALUES 
(NULL,'仰臥起坐', '這是一種腹肌鍛煉，主要鍛煉腹肌。 你平躺在地上，抬起雙腿，收緊腹部，使上半身離地，然後再慢慢放下。 ', NULL, NULL),
(NULL, '啞鈴飛鳥', '這是一種鍛煉，主要鍛煉胸部肌肉的鍛煉。 你躺在板凳上，用啞鈴做“V”字型，然後慢慢下放，再向上舉起。 ', NULL, NULL), 
(NULL, '側平板支撐', '這是一種腰腹肌鍛煉，主要鍛煉腹橫肌和腰肌。 你側著身子，用手肘和膝蓋支撐地面，然後使身體離地，維持一定的時間。 ', NULL, NULL), 
(NULL, '提踵', '這是一種腿部鍛煉，主要鍛煉小腿肌肉。 你站在踏板上，先讓腳跟下降到低點，然後用小腿力量將身體提起來，再慢慢放下。 ', NULL, NULL), 
(NULL, '平板支撐', '這是一種腹肌鍛煉，主要鍛煉腹部肌肉。 你採取仰臥的姿勢，支撐膝蓋和前臂，使身體保持平衡狀態，直到時間結束。 ', NULL, NULL),
(NULL, '頸后推舉', '這是一種肩部鍛煉，主要鍛煉肩前束和三角肌。 你雙腳併攏站立，將負重啞鈴放在後頸，用雙手向上推舉，直到臂展完全伸直。 ', NULL, NULL),
(NULL, '俯身划船', '這是一種鍛煉，主要鍛煉背部和手臂的鍛煉。 你俯身，抓住啞鈴，手臂伸直，然後將啞鈴拉向胸部，再慢慢放下。 ', NULL, NULL),
(NULL,'直腿硬舉', '如同傳統硬舉一樣，動作起始直接從向心收縮開始，但它臀位更高，且上半身更平行於地面。', NULL, NULL),
(NULL, '羅馬椅','手拿槓片或是徒手的方式，將身體靠在羅馬椅上，確保椅墊約在髖關節的地方。用腿後側與臀部的力量，並注意核心與束脊肌穩定收緊，將上半身往上抬起，讓身體與羅馬椅呈現平行的一直線。', NULL, NULL)


-- ===============================================




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