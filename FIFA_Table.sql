CREATE DATABASE FIFA;
USE FIFA;


CREATE TABLE Fifa_D(
ID	INT PRIMARY KEY,
Name	VARCHAR(60),
Age	INT,
Nationality	VARCHAR(50),
Overall_rating	INT,
Potential_rating	INT,
Club	VARCHAR(60),
Value	DECIMAL(10,2),
Wage	INT,
Preferred_Foot	VARCHAR(10),
Jersey_No	INT,
Joined	DATE,
Height	INT,
Weight	INT,
Penalties INT
);
desc Fifa_D;

LOAD DATA INFILE "FIFA_Datasets.csv"
INTO TABLE Fifa_D
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

SELECT * FROM Fifa_D;

