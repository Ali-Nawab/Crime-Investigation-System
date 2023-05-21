CREATE TABLE `police_officer` (
  `policeOfficerID` int NOT NULL,
  `name` char(50) DEFAULT NULL,
  `post` char(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`policeOfficerID`)
);

INSERT INTO `police_officer` 
VALUES (1,'MALIK','Inspector','XYZ Street'),
(2,'ALI','Inspector','ABC Road'),
(3,'NAWAB','Inspector','DEF Lane'),
(4,'KHAN','Inspector','GHI Avenue'),
(5,'BANGASH','Inspector','JKL Boulevard');
