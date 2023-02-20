CREATE TABLE `criminal_case` (
  `criminalID` int NOT NULL,
  `caseID` int NOT NULL,
  `dateA` date DEFAULT NULL,
  PRIMARY KEY (`criminalID`,`caseID`),
  KEY `fk_criminal_case2` (`caseID`),
  CONSTRAINT `fk_criminal_case1` FOREIGN KEY (`criminalID`) REFERENCES `criminal` (`criminalID`),
  CONSTRAINT `fk_criminal_case2` FOREIGN KEY (`caseID`) REFERENCES `casecourt` (`caseID`)
);

INSERT INTO `criminal_case` 
VALUES (1,1,'2022-01-01'),
(2,2,'2022-01-02'),
(1,3,'2022-01-03'),
(4,5,'2022-01-04'),
(5,5,'2022-01-05'),
(6,1,'2022-01-06'),
(7,2,'2022-01-07'),
(8,3,'2022-01-08'),
(9,4,'2022-01-09'),
(10,5,'2022-01-10');
