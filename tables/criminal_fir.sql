CREATE TABLE `criminal_fir` (
  `criminalID` int NOT NULL,
  `firID` int NOT NULL,
  `personID` int DEFAULT NULL,
  `dateA` date DEFAULT NULL,
  PRIMARY KEY (`criminalID`,`firID`),
  KEY `fk_criminal_fir2` (`firID`),
  KEY `fk_criminal_fir3` (`personID`),
  CONSTRAINT `fk_criminal_fir1` FOREIGN KEY (`criminalID`) REFERENCES `criminal` (`criminalID`),
  CONSTRAINT `fk_criminal_fir2` FOREIGN KEY (`firID`) REFERENCES `fir` (`firID`),
  CONSTRAINT `fk_criminal_fir3` FOREIGN KEY (`personID`) REFERENCES `person` (`personID`)
);

INSERT INTO `criminal_fir` 
VALUES (1,1,1,'2022-01-01'),
(1,2,2,'2022-01-02'),
(2,3,3,'2022-01-03'),
(3,4,4,'2022-01-04'),
(4,5,5,'2022-01-05'),
(5,1,6,'2022-01-06'),
(5,2,7,'2022-01-07'),
(7,3,8,'2022-01-08'),
(8,4,1,'2022-01-09'),
(10,5,2,'2022-01-10');
