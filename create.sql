CREATE TABLE Country (
	country_name VARCHAR(60) NOT NULL PRIMARY KEY
);


CREATE TABLE AwardType (
	award_name VARCHAR(35) NOT NULL PRIMARY KEY
);

CREATE TABLE Participant (
	participant_id NUMBER(6,0) NOT NULL PRIMARY KEY,
	firstname VARCHAR(120) NOT NULL,
	lastname VARCHAR(120) NOT NULL,
	country_name VARCHAR(60) NOT NULL REFERENCES Country(country_name)
);

CREATE TABLE Award (
	total INT NOT NULL CHECK(total >= 0 AND total <= 42),
	rank INT NOT NULL CHECK(rank > 0),
	award_name VARCHAR(35) NOT NULL REFERENCES AwardType(award_name),
	participant_id NUMBER(6,0) NOT NULL REFERENCES Participant(participant_id),
	year NUMBER(4,0) NOT NULL CHECK(year > 0),
	CONSTRAINT PK_Award PRIMARY KEY (participant_id, year)
);

CREATE TABLE Olympiad (
	problem_1 INT NOT NULL CHECK(problem_1 >= 0 AND problem_1 <= 7),
	problem_2 INT NOT NULL CHECK(problem_2 >= 0 AND problem_2 <= 7),
	problem_3 INT NOT NULL CHECK(problem_3 >= 0 AND problem_3 <= 7),
	problem_4 INT NOT NULL CHECK(problem_4 >= 0 AND problem_4 <= 7),
	problem_5 INT NOT NULL CHECK(problem_5 >= 0 AND problem_5 <= 7),
	problem_6 INT NOT NULL CHECK(problem_6 >= 0 AND problem_6 <= 7),
	participant_id NUMBER(6,0) NOT NULL REFERENCES Participant(participant_id),
	year NUMBER(4,0) NOT NULL CHECK(year > 0),
	CONSTRAINT PK_Olympiad PRIMARY KEY (participant_id, year)
);