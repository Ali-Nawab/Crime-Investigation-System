-- ---------------------------------------------- SHOW COMPLAINTS AGAINST EACH CRIMINAL -----------------------------------
CREATE VIEW `display_complaints_group` 
AS 
select count(`criminal_complaint`.`complaintID`) AS `COUNT(complaintID)`,
`criminal_complaint`.`criminalID` AS `criminalID` from `criminal_complaint` 
group by `criminal_complaint`.`criminalID`;

SELECT * FROM display_complaints_group;


-- ---------------------------------------- display firs -----------------------------------------

CREATE VIEW `display_firs` 
AS select `fir`.`firID` AS `firID`,
`fir`.`title` AS `title`,
`fir`.`act` AS `act`,
`fir`.`city` AS `city`,
`fir`.`dateAdded` AS `dateAdded`,
`fir`.`details` AS `details`,
`fir`.`firSolved` AS `firSolved`,
`fir`.`victimID` AS `victimID`,
`fir`.`caseID` AS `caseID`,
`fir`.`policeStationID` AS `policeStationID` from `fir`;

-- ------------------------------------------------ complaints ----------------------------------------------

 CREATE VIEW `complaints` 
 AS 
 select `criminal_complaint`.`criminalID` AS `criminalID`,
 `criminal_complaint`.`complaintID` AS `complaintID`,
 `criminal_complaint`.`personID` AS `personID`,
 `criminal_complaint`.`personName` AS `personName`,
 `criminal_complaint`.`dateA` AS `dateA` from `criminal_complaint`;
 
 
 -- ------------------------------------------- display_ criminal ----------------------------------
 
 CREATE VIEW `display_criminal`
 AS
 select `criminal`.`criminalID` AS `criminalID`,
 `criminal`.`criminalName` AS `criminalName`,
 `criminal`.`criminalAge` AS `criminalAge`,
 `criminal`.`mstatus` AS `mstatus`,
 `criminal`.`gender` AS `gender`,
 `criminal`.`dateArrest` AS `dateArrest`,
 `criminal`.`dateRelease` AS `dateRelease`,
 `criminal`.`dob` AS `dob`,
 `criminal`.`occupation` AS `occupation`,`criminal`.`act` AS `act`,
 `criminal`.`policeStationID` AS `policeStationID` from `criminal`;
 

-- --------------------------------------------- criminal_station --------------------------------------------- 

CREATE VIEW CRIMINAL_STATION
AS
SELECT COUNT(criminalID), policeStationID, policeStationName FROM (
SELECT * FROM CRIMINAL INNER JOIN POLICE_STATION WHERE criminal.p_stationID = POLICE_STATION.policeStationID) 
AS CRIMINALSTATION GROUP BY policeStationID ORDER BY policeStationID;

SELECT * FROM CRIMINAL_STATION;
 
