
-- AwardTypes
INSERT INTO AwardType (award_name) VALUES ('Gold Medal');
INSERT INTO AwardType (award_name) VALUES ('Silver Medal');
INSERT INTO AwardType (award_name) VALUES ('Bronze Medal');

-- Countries
INSERT INTO Country (country_name) VALUES ('RUS');
INSERT INTO Country (country_name) VALUES ('USA');
INSERT INTO Country (country_name) VALUES ('UKR');
INSERT INTO Country (country_name) VALUES ('CHN');

--         Participants

-- 1992
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (1,'Denis','Dudko','UKR');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (2,'Oleksandr','Korniienko','UKR');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (3,'Aleksej','Teplinskij','UKR');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (4,'Aleksey','Chilikov','RUS');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (5,'Pavel','Kozhevnikov','RUS');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (6,'Ruslan','Ismailov','RUS');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (7,'Kiran','Kidlaya','USA');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (8,'Robert','Kleinberg','USA');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (9,'Lenhard','Ng','USA');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (10,'Wei','Luo','CHN');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (11,'Kai','Shen','CHN');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (12,'Baozhong','Yang','CHN');

--2017
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (13,'Qiuyu','Ren','CHN');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (14,'Lu','Zhang','CHN');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (15,'Jinze','Wu','CHN');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (16,'Anton','Trygub','UKR');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (17,'Oleh','Rudenko','UKR');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (18,'Heorhii','Ivanchyk','UKR');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (19,'Mikhail','Ivanov','RUS');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (20,'Kirill','Tyshchyk','RUS');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (21,'Georgii','Veprev','RUS');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (22,'James','Lin','USA');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (23,'Ankan','Bhattacharya','USA');
INSERT INTO Participant (participant_id, firstname, lastname, country_name)
VALUES (24,'Andrew','Gu','USA');




--           Awards

-- 1922
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (1,22,88,'Bronze Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (2,21,96,'Bronze Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (3,20,104,'Bronze Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (4,32,22,'Gold Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (5,32,22,'Gold Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (6,29,40,'Silver Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (7,36,9,'Gold Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (8,35,11,'Gold Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (9,33,17,'Gold Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (10,42,1,'Gold Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (11,42,1,'Gold Medal',1992);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (12,42,1,'Gold Medal',1992);

-- 2017
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (13,32,4,'Gold Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (14,28,14,'Gold Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (15,26,30,'Gold Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (16,29,7,'Gold Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (17,19,115,'Silver Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (18,18,139,'Bronze Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (19,28,14,'Gold Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (20,24,49,'Silver Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (21,24,49,'Silver Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (22,30,6,'Gold Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (23,26,30,'Gold Medal',2017);
INSERT INTO Award (participant_id, total, rank, award_name, year)
VALUES (24,26,30,'Gold Medal',2017);



-- Olympiad

--1922
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (1,1922,7,1,7,7,0,0);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (2,1922,7,4,7,1,0,2);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (3,1922,6,7,0,7,0,0);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (4,1922,7,7,7,7,0,4);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (5,1922,7,7,7,7,0,4);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (6,1922,7,7,7,2,0,6);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (7,1922,7,7,7,7,1,7);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (8,1922,7,7,7,7,1,6);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (9,1922,7,7,7,7,1,4);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (10,1922,7,7,7,7,7,7);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (11,1922,7,7,7,7,7,7);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (12,1922,7,7,7,7,7,7);

--2017
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (13,2017,7,7,0,7,7,4);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (14,2017,7,7,0,7,2,5);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (15,2017,7,4,0,7,7,1);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (16,2017,7,7,0,7,7,1);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (17,2017,7,3,0,7,2,0);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (18,2017,7,4,0,7,0,0);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (19,2017,7,7,7,7,0,0);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (20,2017,7,7,0,7,3,0);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (21,2017,7,4,0,7,1,5);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (22,2017,7,7,0,7,7,2);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (23,2017,7,5,0,7,7,0);
INSERT INTO Olympiad (participant_id, year, problem_1, problem_2, problem_3, problem_4, problem_5, problem_6)
VALUES (24,2017,7,4,0,7,7,0);

