CREATE TABLE `person` (
  `personID` int NOT NULL,
  `personName` char(50) DEFAULT NULL,
  `personAddress` varchar(50) DEFAULT NULL,
  `mstatus` char(10) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `relationVictim` char(50) DEFAULT NULL,
  PRIMARY KEY (`personID`)
);

INSERT INTO `person` 
VALUES (1,'FAIZAN','123 main street','Married','Engineer','Bachelors','PARENT'),
(2,'ABU BAKR','456 park avenue','Single','Doctor','Masters','HIMSELF'),
(3,'BAKIR','789 Elm street','Married','Lawyer','Bachelors','BRIDE'),
(4,'SHUJAT','987 Oak street','Single','Teacher','Masters','HIMSELF'),
(5,'AHSAN','654 Pine street','Married','Businessman','Bachelors','PARENT'),
(6,'HASEEB','321 Cedar street','Single','Accountant','Masters','HIMSELF'),
(7,'SAIF','159 Birch street','Married','Police officer','Bachelors','HIMSELF'),
(8,'HAMZA','753 Maple street','Single','IT professional','Masters','PARENT');
