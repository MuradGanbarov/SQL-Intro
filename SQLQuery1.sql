CREATE DATABASE AB104
USE AB104
CREATE TABLE Students
(
[Name] varchar(25) NOT NULL,
Surname varchar(25) DEFAULT 'XXX',
Age int CHECK(AGE >= 16 and AGE <=100),
AvgPoint decimal CHECK(AvgPoint >= 0.0 and AvgPoint <= 100.0),
)

TRUNCATE TABLE Students
INSERT INTO Students (Name,Surname,Age,AvgPoint) VALUES
('Amin','Rzayev',19,92),
('Murad','Qenberov',19,75),
('Fuad','Ibrahimov',21,44),
('Kamran','Rzayev',20,88),
('Anar','Gozalov',19,42)

SELECT [Name] + ' ' + Surname AS Fullname FROM Students WHERE AvgPoint > 51
SELECT [Name] + ' ' + Surname AS Fullname FROM Students WHERE AvgPoint > 51 and AvgPoint < 90
SELECT [Name] + ' ' + Surname AS Fullname FROM Students WHERE Name like 'a_%n'
SELECT [Name] + ' ' + Surname AS Fullname FROM Students WHERE AvgPoint < 51 and Age > 20
