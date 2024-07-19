
CREATE TABLE `Address` (
  `Address_ID` int(6) AUTO_INCREMENT PRIMARY KEY,
  `Country` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `PostCode` varchar(8) DEFAULT NULL,
  `Street` varchar(30) DEFAULT NULL
);


CREATE TABLE `Class` (
  `Class_ID` int(6) AUTO_INCREMENT PRIMARY KEY,
  `Name` varchar(12) DEFAULT NULL,
  `Capacity` CHAR(2) DEFAULT NULL,
  `Subject` varchar(15) DEFAULT NULL
);


CREATE TABLE `Teacher` (
  `Teacher_ID` int(6) AUTO_INCREMENT PRIMARY KEY,
  `Name` varchar(20) DEFAULT NULL,
  `HireDate` date NOT NULL,
  `Address_ID` int(6) NOT NULL,
  `Class_ID` int(6) NOT NULL,
  `PhoneNumber` varchar(11) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Salary` varchar(12) NOT NULL,
  `BackgroundCheck` varchar(200) DEFAULT NULL,
  FOREIGN KEY (`Address_ID`) REFERENCES `Address` (`Address_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`Class_ID`) REFERENCES `Class` (`Class_ID`) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE `Pupil` (
  `Pupil_ID` int AUTO_INCREMENT PRIMARY KEY,
  `FirstName` varchar(15) DEFAULT NULL,
  `LastName` varchar(15) DEFAULT NULL,
  `DateOfBirth` date NOT NULL,
  `Class_ID` int(6) NOT NULL,
  `Gender` varchar(15) DEFAULT NULL,
  `Address_ID` int(6) NOT NULL,
  `Medical_Info` varchar(15) DEFAULT NULL,
  FOREIGN KEY (`Address_ID`) REFERENCES `Address` (`Address_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`Class_ID`) REFERENCES `Class` (`Class_ID`) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE `Guardian` (
  `Guardian_ID` int(6) AUTO_INCREMENT PRIMARY KEY,
  `Name` varchar(30) DEFAULT NULL,
  `Address_ID` int(6) NOT NULL,
  `Pupil_ID` int(6) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `PhoneNumber` varchar(12) DEFAULT NULL,
  FOREIGN KEY (`Address_ID`) REFERENCES `Address` (`Address_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`Pupil_ID`) REFERENCES `Pupil` (`Pupil_ID`) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE `PupilGuardian` (
  `PupilGuardian_ID` int(6) AUTO_INCREMENT PRIMARY KEY,
  `Pupil_ID` int(6) NOT NULL,
  `Guardian_ID` int(6) NOT NULL,
  FOREIGN KEY (`Pupil_ID`) REFERENCES `Pupil` (`Pupil_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`Guardian_ID`) REFERENCES `Guardian` (`Guardian_ID`) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE `Enrollment` (
  `Enrollment_ID` int(6) AUTO_INCREMENT PRIMARY KEY,
  `Class_ID` int(6) NOT NULL,
  `Pupil_ID` int(6) NOT NULL,
  `EnrollmentDate` date NOT NULL,
  FOREIGN KEY (`Class_ID`) REFERENCES `Class` (`Class_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`Pupil_ID`) REFERENCES `Pupil` (`Pupil_ID`) ON DELETE CASCADE ON UPDATE CASCADE
);



INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (1001, 'United Kingdom', 'Manchester', 'Manchester', 'M16 0PU', 'Old Trafford');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (1002, 'United Kingdom', 'Manchester', 'Manchester', '26192', '2014 Jabberwocky Rd');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (1003, 'United Kingdom', 'Manchester', 'Manchester', '99236', '2011 Interiors Blvd');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (1004, 'United Kingdom', 'Manchester', 'Manchester', 'M32 0AY', '106 Moss Road');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (1005, 'United Kingdom', 'Manchester', 'Manchester', 'M12 UL2', '21 Chorlton');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (1006, 'United Kingdom', 'Manchester', 'Manchester', 'MU2 P9Y', '109 Hornby Road');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (1007, 'United Kingdom', 'Manchester', 'Manchester', 'M40 7WF', '43 Farnborough');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (2001, 'United Kingdom', 'Manchester', 'Manchester', '98199', '2004 Charade Rd');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (2002, 'United Kingdom', 'London', 'London', 'M5V 2L7', '147 Spadina Ave');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (2003, 'United Kingdom', 'Oxford', 'Oxford', 'OX9 9ZB', 'Magdalen Centre');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (2004, 'United Kingdom', 'Oxford', 'Oxford', 'OX7 8MB', 'Oxford Centre');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (2005, 'United Kingdom', 'Liverpool', 'Liverpool', 'L5V 2L7', '139 Alder Road');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (2006, 'United Kingdom', 'Liverpool', 'Liverpool', 'L16 9OJ', 'West Derby');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (2007, 'United Kingdom', 'Liverpool', 'Liverpool', 'L98 8LB', '99 Old Swan');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (2008, 'United Kingdom', 'Liverpool', 'Liverpool', 'LY7 12B', '23 Seaview Avenue');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (2009, 'United Kingdom', 'Liverpool', 'Liverpool', 'L5V 2L7', '129 Alder Road');
INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `State`, `PostCode`, `Street`) VALUES (2010, 'United Kingdom', 'Liverpool', 'Liverpool', 'L16 9OJ', 'West Derby');


INSERT INTO `Class` (`Class_ID`, `Name`, `Capacity`, `Subject`) VALUES (201, 'Reception Year', '12', 'Mathematics');
INSERT INTO `Class` (`Class_ID`, `Name`, `Capacity`, `Subject`) VALUES (202, 'Year One', '12', 'English');
INSERT INTO `Class` (`Class_ID`, `Name`, `Capacity`, `Subject`) VALUES (203, 'Year Two', '12', 'Physics');
INSERT INTO `Class` (`Class_ID`, `Name`, `Capacity`, `Subject`) VALUES (204, 'Year Three', '12', 'Geography');
INSERT INTO `Class` (`Class_ID`, `Name`, `Capacity`, `Subject`) VALUES (205, 'Year Four', '12', 'Biology');
INSERT INTO `Class` (`Class_ID`, `Name`, `Capacity`, `Subject`) VALUES (206, 'Year Five', '12', 'Geography');
INSERT INTO `Class` (`Class_ID`, `Name`, `Capacity`, `Subject`) VALUES (207, 'Year Six', '12', 'Biology');


INSERT INTO `Teacher` (`Teacher_ID`, `Name`, `HireDate`, `Address_ID`, `Class_ID`, `PhoneNumber`, `Email`, `Salary`, `BackgroundCheck`) VALUES (100, 'Hannah Kunis', '2009-08-20',1001,201, '+4488473212', 'hannah.kunis@example.org', '32 000$', '');
INSERT INTO `Teacher` (`Teacher_ID`, `Name`, `HireDate`, `Address_ID`, `Class_ID`, `PhoneNumber`, `Email`, `Salary`, `BackgroundCheck`) VALUES (101, 'Jenny Clark', '1982-03-17',1002,202, '+4492399239', 'jenny.clark@example.org', '20 000$', '');
INSERT INTO `Teacher` (`Teacher_ID`, `Name`, `HireDate`, `Address_ID`, `Class_ID`, `PhoneNumber`, `Email`, `Salary`, `BackgroundCheck`) VALUES (102, 'Jennifer Moon', '1984-07-02',1003,203, '+449847012', 'jennifer.moon@example.org', '18 600$', '');
INSERT INTO `Teacher` (`Teacher_ID`, `Name`, `HireDate`, `Address_ID`, `Class_ID`, `PhoneNumber`, `Email`, `Salary`, `BackgroundCheck`) VALUES (103, 'Chris Isaak', '2001-12-27',1004,204, '+4492399239', 'chris.isaak@example.org', '24 000$', '');
INSERT INTO `Teacher` (`Teacher_ID`, `Name`, `HireDate`, `Address_ID`, `Class_ID`, `PhoneNumber`, `Email`, `Salary`, `BackgroundCheck`) VALUES (104, 'Tom Hanks', '1984-07-02',1005,205, '+447543012', 'tom.hanks@example.org', '32 600$', '');
INSERT INTO `Teacher` (`Teacher_ID`, `Name`, `HireDate`, `Address_ID`, `Class_ID`, `PhoneNumber`, `Email`, `Salary`, `BackgroundCheck`) VALUES (105, 'Alexander Khoo', '2001-12-27',1006,206, '+4492909169', 'alex.khoo@example.org', '24 000$', '');
INSERT INTO `Teacher` (`Teacher_ID`, `Name`, `HireDate`, `Address_ID`, `Class_ID`, `PhoneNumber`, `Email`, `Salary`, `BackgroundCheck`) VALUES (106, 'Adam Fripp', '1984-07-02',1007,207, '+449342012', 'adam.fripp@example.org', '19 400$', '');


INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20001, 'Sophia', 'Nguyen', '2012-05-12',201, 'Female',2001,NULL);
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20002, 'Liam', 'Smith', '2011-08-22',202, 'Male',2001,NULL);
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20003, 'Smith', 'Brown', '2013-03-15',203, 'Male',2002,NULL);
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20004, 'Noah', 'Jones', '2010-01-11',204, 'Male',2002,NULL); 
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20005, 'Emma', 'Garcia', '2012-07-04',205, 'Female',2003,NULL);
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20006, 'Ethan', 'Davis', '2013-09-26',206, 'Male',2004,NULL);
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20007, 'Eva', 'Rodriguez', '2011-06-11',207, 'Female',2005,NULL);
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20008, 'Jackson', 'Martinez', '2011-03-21',201, 'Male',2006,NULL);
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20009, 'Isabella', 'Hernandez', '2012-12-30',202, 'Female',2007,NULL);
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20010, 'Aiden', 'Lopez', '2012-09-17',203, 'Male',2008,NULL);
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20011, 'Mia', 'Gonzalez', '2012-06-12',204, 'Female',2009,NULL);
INSERT INTO `Pupil` (`Pupil_ID`, `FirstName`, `LastName`, `DateOfBirth`, `Class_ID`, `Gender`, `Address_ID`, `Medical_Info`) VALUES (20012, 'Mason', 'Wilson', '2012-11-18',205, 'Male',2010,NULL);


INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (2201, 'Christopher Nolan',2001,20001, 'goat01@gmail.com', '051.051.051');
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (22011, 'Christopher Nolan',2001,20002, 'goat01@gmail.com', '051.051.051');
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (2202, 'Cristiano Ronaldo',2002,20003, 'goat02@gmail.com', '001.001.001');
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (22022, 'Cristiano Ronaldo',2002,20004, 'goat02@gmail.com', '001.001.001');
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (2203, 'Lionel Messi',2003,20005, 'goat03@gmail.com', '002.002.002');
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (2204, 'Khabib Nurmagomedov',2004,20006, 'goat04@gmail.com', '029.029.029');
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (2205, 'Kanye West',2005,20007, 'goat05@gmail.com', '111.111.111');
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (2206, 'Travis Scott',2006,20008, 'goat06@gmail.com', '123.123.123');
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (2207, 'Donald Trump',2007,20009, 'goat07@gmail.com', '321.321.321');
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (2208, 'Michael Jackson',2008,20010, 'goat08@gmail.com', '999.999.999');
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (2209, 'Elon Musk',2009,20011, 'goat09@gmail.com',NULL);
INSERT INTO `Guardian` (`Guardian_ID`, `Name`, `Address_ID`, `Pupil_ID`, `Email`, `PhoneNumber`) VALUES (2210, 'Gordon Ramsay',2010,20012, 'goat10@gmail.com', '888.888.888');


INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4001,20001,2201);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4002,20002,2201);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4003,20003,2202);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4004,20004,2202);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4005,20005,2203);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4006,20006,2204);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4007,20007,2205);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4008,20008,2206);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4009,20009,2207);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4010,20010,2208);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4011,20011,2209);
INSERT INTO `PupilGuardian` (`PupilGuardian_ID`, `Pupil_ID`, `Guardian_ID`) VALUES (4012,20012,2210);


INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5000,201,20001, '2012-08-11');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5001,202,20002, '2012-08-11');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5002,203,20003, '2012-08-11');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5003,204,20004, '2012-08-11');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5004,205,20005, '2012-08-11');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5005,206,20006, '2012-08-11');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5006,207,20007, '2012-08-11');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5007,201,20008, '2012-07-10');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5008,202,20009, '2012-07-10');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5009,203,20010, '2012-07-10');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5010,204,20011, '2012-07-10');
INSERT INTO `Enrollment` (`Enrollment_ID`, `Class_ID`, `Pupil_ID`, `EnrollmentDate`) VALUES (5011,205,20012, '2012-07-10');

