CREATE TABLE `casecourt` (
  `caseID` int NOT NULL,
  `dateEnter` date DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `typeOfCrime` char(50) DEFAULT NULL,
  `details` char(255) DEFAULT NULL,
  `caseSolved` tinyint DEFAULT NULL,
  `court` char(50) DEFAULT NULL,
  PRIMARY KEY (`caseID`)
);

alter table caseCourt add column caseTrack INT;
update caseCourt set caseSolved = 1 where caseID = 2;
INSERT INTO `casecourt`
VALUES (1,'2022-01-01','New York','Robbery','Robbery at XYZ store',1,'NYC Supreme Court'),
(2,'2022-02-01','Los Angeles','Drug trafficking','Drug trafficking ring bust',0,'LA Superior Court'),
(3,'2022-03-01','Chicago','Murder','Murder at ABC park',1,'Cook County Circuit Court'),
(4,'2022-04-01','Houston','Armed robbery','Armed robbery at DEF gas station',0,'Harris County District Court'),
(5,'2022-05-01','Phoenix','Human trafficking','Human trafficking ring bust',1,'Maricopa County Superior Court');
