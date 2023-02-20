-- ------------------------------------- update complaint track -----------------------------------

DELIMITER ;;
CREATE TRIGGER `update_complaintTrack` 
BEFORE UPDATE ON `complaint`
 FOR EACH ROW 
 BEGIN
    IF NEW.complaintSolved = 1 THEN
        SET NEW.complaintTrack = 100;
    ELSE
        SET NEW.complaintTrack = FLOOR(RAND()*100);
    END IF;
END ;;
DELIMITER ;

-- ------------------------------------------ update case ---------------------------------------------------

DELIMITER ;;
CREATE TRIGGER `update_case` 
BEFORE UPDATE ON `caseCourt`
 FOR EACH ROW 
 BEGIN
    IF NEW.caseSolved = 1 THEN
        SET NEW.caseTrack = 100;
    ELSE
        SET NEW.caseTrack = FLOOR(RAND()*100);
    END IF;
END ;;
DELIMITER ;

select * from caseCourt;

-- ---------------------------------------------- update fir -------------------------------------

DELIMITER ;;
CREATE TRIGGER `update_fir` 
BEFORE UPDATE ON `FIR`
 FOR EACH ROW 
 BEGIN
    IF NEW.firSolved = 1 THEN
        SET NEW.firTrack = 100;
    ELSE
        SET NEW.firTrack = FLOOR(RAND()*100);
    END IF;
END ;;
DELIMITER ;

UPDATE FIR set firSolved = 1 WHERE firID = 1;
SELECT * FROM FIR;

-- ------------------------------------------------- criminal update ----------------------------------------

DELIMITER ;;
CREATE TRIGGER `CRIMINAL_UPDATE` 
BEFORE UPDATE ON `criminal` 
FOR EACH ROW 
BEGIN
	INSERT INTO CRIMINAL_UPDATE(criminalID, criminalName, criminalAge, mstatus, gender, dateArrest, dateRelease, DOB, occupation, act) 
    VALUES( old.criminalID, old.criminalName, old.criminalAge, old.mstatus, old.gender, old.dateArrest, old.dateRelease, old.DOB, old.occupation, old.act);
END ;;
DELIMITER ;
select * from criminal;
drop trigger criminal_update;

-- --------------------------------------------- police officer update -------------------------------------------

DELIMITER ;;
CREATE TRIGGER `POLICE_OFFICER_UPDATE_T` 
BEFORE UPDATE ON `police_officer` 
FOR EACH ROW 
BEGIN
	INSERT INTO POLICE_OFFICER_UPDATE(policeOfficeID, name, post, address) VALUES(old.policeOfficerID, old.name, old.post, old.address);
END;;
DELIMITER ;


