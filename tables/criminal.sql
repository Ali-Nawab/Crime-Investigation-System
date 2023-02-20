CREATE TABLE `criminal` (
  `criminalID` int NOT NULL,
  `criminalName` char(50) DEFAULT NULL,
  `criminalAge` int DEFAULT NULL,
  `mstatus` char(50) DEFAULT NULL,
  `gender` char(50) DEFAULT NULL,
  `dateArrest` date DEFAULT NULL,
  `dateRelease` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `act` char(50) DEFAULT NULL,
  `policeStationID` int DEFAULT NULL,
  PRIMARY KEY (`criminalID`),
  KEY `fk_criminal` (`policeStationID`),
  CONSTRAINT `fk_criminal` FOREIGN KEY (`policeStationID`) REFERENCES `police_station` (`policeStationID`)
);

ALTER TABLE CRIMINAL RENAME COLUMN policeStationID TO p_stationID;

INSERT INTO `criminal` 
VALUES (1,'ABU BAKR',25,'Married','Male','2022-01-01','2022-01-30','1997-05-01','Unemployed','Robbery',1),
(2,'FAIZAN AMIR',30,'Single','Male','2022-02-01','2022-02-28','1992-06-01','Businessman','Drug trafficking',2),
(3,'AQEEL DAKU',35,'Married','Male','2022-03-01','2022-03-31','1987-07-01','Laborer','Murder',3),
(4,'BILAL CHOTI DUNIYA',40,'Single','Male','2022-04-01','2022-04-30','1982-08-01','Driver','Armed robbery',4),
(5,'HAMZA GHERI BAZ',45,'Married','Male','2022-05-01','2022-05-31','1977-09-01','Farmer','Human trafficking',5),
(6,'RAUF',50,'Single','Male','2022-06-01','2022-06-30','1972-10-01','Shopkeeper','Theft',1),
(7,'MOIZ KHELA',55,'Married','Male','2022-07-01','2022-07-31','1967-11-01','Retired','Fraud',2),
(8,'GUFRANULLAH',25,'Single','Male','2022-01-01','2022-01-30','1997-05-01','Unemployed','Robbery',1),
(9,'NOMAN',30,'Married','Male','2022-02-01','2022-02-28','1992-06-01','Businessman','Drug trafficking',2),
(10,'HASHAM',35,'Single','Male','2022-03-01','2022-03-31','1987-07-01','Laborer','Murder',3),
(11,'ALI MIAN',40,'Married','Male','2022-04-01','2022-04-30','1982-08-01','Driver','Armed robbery',4),
(12,'ABDULLAH',45,'Single','Male','2022-05-01','2022-05-31','1977-09-01','Farmer','Human trafficking',5),
(13,'MEHDI',50,'Married','Male','2022-06-01','2022-06-30','1972-10-01','Shopkeeper','Theft',1),
(14,'AMMAD',55,'Single','Male','2022-07-01','2022-07-31','1967-11-01','Retired','Fraud',2),
(15,'HAMMAD',25,'Married','Male','2022-08-01','2022-08-31','1997-05-01','Unemployed','Robbery',3),
(16,'HASNAIN',30,'Single','Male','2022-09-01','2022-09-30','1992-06-01','Businessman','Drug trafficking',4),
(17,'AWAIS',35,'Married','Male','2022-10-01','2022-10-31','1987-07-01','Laborer','Murder',5),
(18,'DILAWAR KHAN',40,'Single','Male','2022-11-01','2022-11-30','1982-08-01','Driver','Armed robbery',1),
(19,'RIZWAN',45,'Married','Male','2022-12-01','2022-12-31','1977-09-01','Farmer','Human trafficking',2),
(20,'ALI HAIDER',50,'Single','Male','2023-01-01','2023-01-31','1972-10-01','Shopkeeper','Theft',3);
