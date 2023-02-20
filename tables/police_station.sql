CREATE TABLE `police_station` (
  `policeStationID` int NOT NULL,
  `policeStationName` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `policeOfficerID` int DEFAULT NULL,
  PRIMARY KEY (`policeStationID`),
  UNIQUE KEY `u_station` (`username`),
  KEY `fk_pokice_station` (`policeOfficerID`),
  CONSTRAINT `fk_pokice_station` FOREIGN KEY (`policeOfficerID`) REFERENCES `police_officer` (`policeOfficerID`),
  CONSTRAINT `password_check` CHECK (((length(`password`) >= 8) and (not((`password` like _utf8mb4'%[^a-z]%'))) and (not((`password` like _utf8mb4'%[^A-Z]%')))))
);

alter table police_station add constraint password_check
CHECK(CHAR_LENGTH(password) >= 8 AND password NOT LIKE '%[A-Z]%' AND password NOT LIKE '%[a-z]%'); 


INSERT INTO `police_station`
VALUES (1,'WAH CANTT','wahadmin','Passw0rd',1),
(2,'RAWALPINDI','rawadmin','Passw0rd1',2),
(3,'TAXILA','taxadmin','Passw0rd2',3),
(4,'HASANABDAL','hasadmin','Passw0rd3',4),
(5,'ISLAMABAD','islamabadadmin','Passw0rd4',5);
