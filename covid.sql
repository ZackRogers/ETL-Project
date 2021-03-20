CREATE TABLE covid_usa(
	ID INT PRIMARY KEY NOT NULL,
	date DATE,
	postive INT NOT NULL,
	recovered INT NOT NULL,
	death INT NOT NULL
	
	
);

CREATE TABLE covid_india(
	ID INT PRIMARY KEY NOT NULL, 
	date DATE,
	totalconfirmed INT NOT NULL,
	totalrecovered INT NOT NULL,
	totaldeceased INT NOT NULL
	
);