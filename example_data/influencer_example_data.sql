CREATE TABLE starred_influencers (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `influencer_id` INT(11),
    PRIMARY KEY (`id`)
);

CREATE TABLE influencers (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `influencer_full_name` VARCHAR(50) CHARACTER SET utf8,
    `influencer_instagram_username` VARCHAR(50) CHARACTER SET utf8,
    `influencer_instagram_profile_image` VARCHAR(100) CHARACTER SET utf8,
    `statistics_followers` INT(11),
    `statistics_engagement` NUMERIC(3, 2),
    PRIMARY KEY (`id`)
);

INSERT INTO influencers VALUES (987,'Anna Griffin','anna_griffin_123','https://randomuser.me/api/portraits/women/6.jpg',21231,6.84);
INSERT INTO influencers VALUES (876,'Melissa Peterson','melissa_peterson','https://randomuser.me/api/portraits/women/84.jpg',5122,5.23);
INSERT INTO influencers VALUES (765,'Kathryn Smith','kat_smith','https://randomuser.me/api/portraits/women/71.jpg',7161,2.36);
INSERT INTO influencers VALUES (654,'Patricia Rios','patricia_rios_1993','https://randomuser.me/api/portraits/women/49.jpg',91100,1.61);
INSERT INTO influencers VALUES (543,'Joan Robertson','j_robertson_lol','https://randomuser.me/api/portraits/women/26.jpg',16013,6.28);
INSERT INTO influencers VALUES (432,'Sharon Hopkins','sharon_hopkins234','https://randomuser.me/api/portraits/women/44.jpg',37300,4.73);
INSERT INTO influencers VALUES (123,'Hannah Ross','hross64346','https://randomuser.me/api/portraits/women/62.jpg',3300,4.73);
INSERT INTO influencers VALUES (234,'Emily White','emwhite','https://randomuser.me/api/portraits/women/14.jpg',13500,1.05);
INSERT INTO influencers VALUES (345,'Olivia Wagner','olivia_wagner_official','https://randomuser.me/api/portraits/women/29.jpg',1000,2.0);
