SELECT * FROM caseCourt;
SELECT * FROM criminal_case;
SELECT COUNT(criminalID), c_ID FROM criminal_case GROUP BY c_ID;
SELECT criminalID, COUNT(c_ID) FROM criminal_case GROUP BY criminalID;
SELECT * FROM caseCOURT INNER JOIN criminal_case where caseCourt.caseID = criminal_case.c_ID;
SELECT * FROM CRIMINAL NATURAL JOIN
(SELECT * FROM caseCOURT INNER JOIN criminal_case where caseCourt.caseID = criminal_case.c_ID) 
AS CRIMINALS ORDER BY criminalID ;




SELECT * FROM CRIMINAL;
SELECT * FROM police_statioN;
SELECT * FROM POLICE_OFFICER NATURAL JOIN (
SELECT * FROM CRIMINAL INNER JOIN POLICE_STATION WHERE CRIMINAL.p_stationID = POLICE_STATION.policeStationID ORDER BY criminalID) AS INFORMATION;
 


SELECT * FROM COMPLAINT;
SELECT * FROM criminal_complaint;
SELECT * FROM COMPLAINT NATURAL JOIN criminal_complaint;
