CREATE TABLE `police_officer_update` (
  `policeOfficerID` int NOT NULL,
  `name` char(50) DEFAULT NULL,
  `post` char(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`policeOfficerID`)
);
