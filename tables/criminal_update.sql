CREATE TABLE `criminal_update` (
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
  KEY `fk_criminal_backup` (`policeStationID`),
  CONSTRAINT `fk_criminal_backup` FOREIGN KEY (`policeStationID`) REFERENCES `police_station` (`policeStationID`)
);

select * from criminal_update;
update criminal_update set criminalName = 'rauf' where criminalID = 7;
