DROP TABLE covid_usa;
DROP TABLE covid_india;

CREATE TABLE covid_usa(
	ID INT PRIMARY KEY NOT NULL,
	date VARCHAR,
	positive INT NOT NULL,
	recovered INT NOT NULL,
	death INT NOT NULL
	
	
);

CREATE TABLE covid_india(
	ID INT PRIMARY KEY NOT NULL, 
	date VARCHAR,
	totalconfirmed INT NOT NULL,
	totalrecovered INT NOT NULL,
	totaldeceased INT NOT NULL
	
);

SELECT * FROM covid_usa;
SELECT * FROM covid_india;
