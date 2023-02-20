CREATE TABLE `criminal_complaint` (
  `criminalID` int NOT NULL,
  `complaintID` int NOT NULL,
  `personID` int DEFAULT NULL,
  `personName` char(50) DEFAULT NULL,
  `dateA` date DEFAULT NULL,
  PRIMARY KEY (`criminalID`,`complaintID`),
  KEY `fk_criminal_complaint2` (`complaintID`),
  KEY `fk_criminal_complaint3` (`personID`),
  CONSTRAINT `fk_criminal_complaint1` FOREIGN KEY (`criminalID`) REFERENCES `criminal` (`criminalID`),
  CONSTRAINT `fk_criminal_complaint2` FOREIGN KEY (`complaintID`) REFERENCES `complaint` (`complaintID`),
  CONSTRAINT `fk_criminal_complaint3` FOREIGN KEY (`personID`) REFERENCES `person` (`personID`)
);

INSERT INTO `criminal_complaint` 
VALUES (1,1,1,'FAIZAN','2022-01-01'),
(2,2,2,'ABU BAKR','2022-02-01'),
(3,3,3,'BAKIR','2022-03-01'),
(4,4,4,'SHUJAT','2022-04-01'),
(5,5,5,'AHSAN','2022-05-01'),
(6,6,6,'HASEEB','2022-06-01'),
(7,7,7,'SAIF','2022-07-01'),
(8,8,8,'HAMZA','2022-08-01'),
(9,9,1,'FAIZAN','2022-09-01'),
(10,10,2,'ABU BAKR','2022-10-01'),
(11,11,3,'BAKIR','2022-11-01'),
(12,12,4,'SHUJAT','2022-12-01'),
(13,13,5,'AHSAN','2022-01-01'),
(14,14,6,'HASEEB','2022-02-01'),
(15,15,7,'SAIF','2022-03-01'),
(16,16,8,'HAMZA','2022-04-01'),
(17,17,1,'FAIZAN','2022-05-01'),
(18,18,2,'ABU BAKR','2022-06-01'),
(19,19,3,'BAKIR','2022-07-01');

SELECT * FROM CRIMINAL;
UPDATE CRIMINAL SET criminalName = 'shazaib' WHERE criminalID = 3;
