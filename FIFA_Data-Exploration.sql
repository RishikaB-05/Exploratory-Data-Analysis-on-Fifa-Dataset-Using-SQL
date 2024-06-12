CREATE DATABASE FIFA;
USE FIFA;
SELECT * FROM Fifa_D;

--1.	Retrieve all players' information from the table 
SELECT * FROM Fifa_D;

--2.	Get the names and ages of players with an overall rating above 85 
SELECT Name,Age FROM Fifa_D WHERE Overall_rating >85;

--3.	Find the nationality and potential rating of players with a value over 50 million 
SELECT Name,Nationality,Potential_rating FROM Fifa_D WHERE Value>50000000;

--4.	List the names, clubs, and wages of players who prefer their left foot 
SELECT Name,Club,Wage FROM Fifa_D WHERE Preferred_foot='Left';

--5.	Retrieve players' names, ages, and weights who weigh over 70 kg and have a penalty rating above 70
SELECT Name,Age,Weight FROM Fifa_D WHERE Weight>70 AND Penalties>70;

--6.	Get the average overall rating of players in the table 
SELECT AVG(Overall_rating) AS Average_rating FROM Fifa_D ;

--7.	Find the tallest player's name, height, and jersey number 
SELECT Name,Final_Height,Jersey_no FROM Fifa_D WHERE Height=(SELECT MAX(Height) FROM Fifa_D);

--8.	List The name of the player whose age is between 18 to 25 
SELECT Name,Age FROM Fifa_D WHERE Age BETWEEN 18 AND 25;

--9.	Find the nationality, value, and preferred foot of players with a potential rating above 90 
SELECT Nationality,Value,Preferred_Foot,Potential_rating FROM Fifa_D WHERE Potential_rating>90;

--10.	Retrieve players with a wage greater than 100,000 and a potential rating above 85 
SELECT Name,Wage,Potential_rating FROM Fifa_D WHERE Wage>100000 AND Potential_rating>85;

--11.	List the names and heights of players who are taller than 180 cm and weigh less than 75 kg 
SELECT Name,Final_height FROM Fifa_D WHERE Final_Height>51 AND Weight>75;

--12.	Retrieve players with a potential rating greater than their overall rating 
SELECT Name,Potential_rating,overall_rating FROM Fifa_D WHERE Potential_rating>Overall_rating; 

--13.	Find the average value of players from each nationality, ordered by average value in descending order 
SELECT AVG(Value),Nationality FROM Fifa_D GROUP BY Nationality ORDER BY Value DESC;

--14.	List the names and jersey numbers of players who have joined the club before 2019 and have a wage above 50,000 
SELECT Name,Jersey_No FROM Fifa_D WHERE Wage>50000 AND Joined<'2019-01-01';

--15.	Get the total number of players in the table 
SELECT COUNT(*) FROM Fifa_D;

--16.	Find the average age of players who prefer their right foot 
SELECT AVG(Age) FROM Fifa_D WHERE Preferred_foot='Right';

--17.	Retrieve players with a value greater than 30 million and a wage less than 100,000 
SELECT * FROM Fifa_D WHERE Value>30000000 AND Wage<100000;

--18.	List the names and clubs of players whose jersey number is less than 10 and have a potential rating above 80 
SELECT Name,Jersey_No,Potential_rating FROM Fifa_D WHERE Jersey_No<10 AND Potential_rating>80;

--19.	How many nationalities do these players belong to? 
SELECT COUNT(DISTINCT Nationality) FROM Fifa_D;

--20.	What is the total wage given to all players? What's the average and standard deviation? 
SELECT SUM(Wage) AS Total_Wage,AVG(Wage) AS Average_Wage,STDEV(Wage) AS STD_Wage FROM Fifa_D;

--21.	Which player has the highest wage? Who has the lowest? 
SELECT Name FROM Fifa_D WHERE Wage=(SELECT MAX(Wage) FROM Fifa_D);
SELECT Name FROM Fifa_D WHERE Wage=(SELECT MIN(Wage) FROM Fifa_D);

--22.	The player having the best overall rating? Worst Overall rating? 
SELECT Name FROM Fifa_D WHERE Overall_rating=(SELECT MAX(Overall_rating) FROM Fifa_D);
SELECT Name FROM Fifa_D WHERE Overall_rating=(SELECT MIN(Overall_rating) FROM Fifa_D);

--23. Club having the highest total of overall rating? Highest Average of overall rating?
SELECT Club FROM Fifa_D WHERE Overall_rating=(SELECT MAX(Overall_rating) FROM Fifa_D);
SELECT Club FROM Fifa_D WHERE Overall_rating=(SELECT MIN(Overall_rating) FROM Fifa_D);

--24.	What are the top 5 clubs based on the average ratings of their players? 
SELECT TOP 5 Club FROM Fifa_D GROUP BY Club ORDER BY AVG(Potential_rating) DESC;

--25. What is the distribution of players whose preferred foot is left vs right? 
SELECT Preferred_foot,Count(name) from Fifa_D group by preferred_foot ;

--26.	Which jersey number is the luckiest? 
SELECT TOP 1 SUM(Wage) AS Total_Wage,Jersey_no FROM Fifa_D GROUP BY Jersey_no ORDER BY Total_Wage DESC;

--27.	What is the frequency distribution of nationalities among players whose club name starts with M? 
SELECT COUNT(*) AS FREQUENCY,Nationality,Club FROM Fifa_D WHERE Club LIKE 'M%' GROUP BY Nationality,Club ;

--28.	How many players have joined their respective clubs in the date range 20 May 2018 to 10 April 2019(both inclusive)? 
SELECT Name,Club FROM Fifa_D WHERE Joined BETWEEN '2018-05-20' AND '2019-04-10';

--29.	How many players have joined their respective clubs date wise? 
SELECT COUNT(Name),Club,Joined FROM Fifa_D GROUP BY Club,Joined ;

--30.	How many players have joined their respective clubs yearly? 
SELECT COUNT(Name),Club FROM Fifa_D GROUP BY Club ORDER BY YEAR(Joined) DESC;




