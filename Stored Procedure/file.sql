-- ----------------------------------- search criminal station -----------------------------------------

DELIMITER ;;
CREATE  PROCEDURE `SEARCH_CRIMINAL_STATION`(IN c_id INT)
BEGIN
	SELECT * FROM CRIMINAL WHERE p_stationID = c_id;
END ;;
DELIMITER ;

call search_criminal_station(1);

-- ----------------------------------------- search by complaint ----------------------------------------

DELIMITER ;;
CREATE PROCEDURE `SEARCH_BY_INDEX_COMPLAINT`(IN c_id INT)
BEGIN
	SELECT COUNT(complaintID), criminalID FROM CRIMINAL_COMPLAINT WHERE criminalID = c_id GROUP BY criminalID;
END ;;
DELIMITER ;
CALL SEARCH_BY_INDEX_COMPLAINT(1);


DELIMITER ;;
CREATE PROCEDURE `SEARCH_BY_INDEX_COMPLAINT1`(IN c_id INT)
BEGIN
	SELECT complaintID, COUNT(criminalID) FROM CRIMINAL_COMPLAINT WHERE complaintID = c_id GROUP BY complaintID;
END ;;
DELIMITER ;

CALL SEARCH_BY_INDEX_COMPLAINT1(1);
-- ------------------------------------------ search by index -----------------------------------------------

DELIMITER ;;
CREATE PROCEDURE `SEARCH_BY_INDEX`(IN c_id INT)
BEGIN
	SELECT COUNT(firID), criminalID FROM CRIMINAL_FIR WHERE criminalID = c_id GROUP BY criminalID;
END ;;
DELIMITER ;
CALL SEARCH_BY_INDEX(1);
-- ---------------------------------------------- no of firs --------------------------------------------------------

DELIMITER ;;
CREATE PROCEDURE `NO_OF_FIRS`()
BEGIN
	SELECT COUNT(firID), criminalID FROM CRIMINAL_FIR GROUP BY criminalID;
END ;;
DELIMITER ;
CALL NO_OF_FIRS;
-- ------------------------------------------ no of complaints -----------------------------------------------------

DELIMITER ;;
CREATE PROCEDURE `NO_OF_COMPLAINTS`()
BEGIN
	SELECT COUNT(complaintID), criminalID FROM CRIMINAL_COMPLAINT GROUP BY criminalID;
END ;;
DELIMITER ;

call no_of_complaints;
-- ---------------------------------------- fir station -----------------------------------------------------------

DELIMITER ;;
CREATE PROCEDURE `FIR_STATION`(IN c_id INT)
BEGIN
	SELECT firID, policeStationID FROM FIR WHERE policeStationID = c_id;
END ;;
DELIMITER ;
CALL FIR_STATION(1);
-- -------------------------------------------- criminal by search -----------------------------------------------------

DELIMITER ;;
CREATE PROCEDURE `CRIMINAL_BY_SEARCH`(IN c_id INT)
BEGIN
	SELECT * FROM CRIMINAL WHERE criminalID = c_id;
END ;;
DELIMITER ;
CALL CRIMINAL_BY_SEARCH(1);

