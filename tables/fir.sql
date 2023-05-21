CREATE TABLE `fir` (
  `firID` int NOT NULL,
  `title` char(50) DEFAULT NULL,
  `act` char(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `dateAdded` date DEFAULT NULL,
  `details` char(50) DEFAULT NULL,
  `firSolved` tinyint DEFAULT NULL,
  `victimID` int DEFAULT NULL,
  `caseID` int DEFAULT NULL,
  `policeStationID` int DEFAULT NULL,
  PRIMARY KEY (`firID`),
  KEY `fk_fir_case` (`caseID`),
  KEY `fk_fir_case2` (`victimID`),
  CONSTRAINT `fk_fir_case` FOREIGN KEY (`caseID`) REFERENCES `casecourt` (`caseID`),
  CONSTRAINT `fk_fir_case2` FOREIGN KEY (`victimID`) REFERENCES `person` (`personID`)
);

INSERT INTO `fir` 
VALUES (1,'Robbery at XYZ store','Robbery','New York','2022-01-01','Robbery at XYZ store on Main St',0,1,1,1),
(2,'Drug trafficking ring bust','Drug trafficking','Los Angeles','2022-02-01','Drug trafficking ring bust in LA',0,2,2,2),
(3,'Murder at ABC park','Murder','Chicago','2022-03-01','Murder at ABC park on Elm St',0,3,3,3),
(4,'Armed robbery at DEF gas station','Armed robbery','Houston','2022-04-01','Armed robbery at DEF gas station on Oak St',0,4,4,4),
(5,'Human trafficking ring bust','Human trafficking','Phoenix','2022-05-01','Human trafficking ring bust in Phoenix',0,5,5,5);
