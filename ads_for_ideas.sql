CREATE SCHEMA initiative;
USE initiative;


CREATE TABLE advertisements (
AdId int NOT NULL,
Title varchar(50) NOT NULL,
MagicCode varchar(9),
PercentOff float NOT NULL,
PRIMARY KEY(AdId)
);


-- 
-- select * from advertisements;
-- 

insert into advertisements values (1, "BIG ideas!", "FREEIDEAS", 30.0);
insert into advertisements values (2, "Free ideas!", "FREEIDEAS", 30.0);
insert into advertisements values (3, "More ideas!", "FREEIDEAS", 30.0);
insert into advertisements values (4, "YOUR ideas!", "FREEIDEAS", 30.0);
insert into advertisements values (5, "MY ideas!", "FREEIDEAS", 30.0);
insert into advertisements values (6, "OUR ideas!", "FREEIDEAS", 30.0);
insert into advertisements values (7, "Expensive ideas!", "FREEIDEAS", 30.0);
insert into advertisements values (8, "Good ideas!", "FREEIDEAS", 30.0);


CREATE TABLE ideas (
idea_id int NOT NULL AUTO_INCREMENT,
idea varchar(100) NOT NULL,
PRIMARY KEY(idea_id) );

insert into ideas (idea)
values ("I have a great money making side hustle!");

select * from ideas;

insert into ideas (idea)
values ("I made 10 million bucks on ChatGPT in one hour!!!!!");

-- don't drop that table!
-- DROP TABLE ideas;

CREATE TABLE ads_for_ideas (
id int NOT NULL AUTO_INCREMENT,
idea_id INT NOT NULL,
AdId INT NOT NULL,
PRIMARY KEY (id)
);

-- 
-- select * from ideas;
--

insert into ads_for_ideas (idea_id, AdId)
values (1,2);
--
-- select * from ads_for_ideas;
--
SELECT 
    i.idea, ads.MagicCode
FROM
    ideas AS i
        JOIN
    ads_for_ideas AS ai
        JOIN
    advertisements AS ads
WHERE
    ai.AdId = ads.AdId
        AND ai.idea_id = i.idea_id;
