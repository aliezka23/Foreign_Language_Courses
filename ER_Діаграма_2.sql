CREATE TABLE `School` (
	`School_ID` INT NOT NULL,
	`Teacher_ID` INT NOT NULL,
	`Name` varchar NOT NULL,
	`Website` varchar NOT NULL,
	`Email` varchar NOT NULL,
	`Number` INT NOT NULL,
	`Position` varchar NOT NULL,
	PRIMARY KEY (`School_ID`)
);

CREATE TABLE `Quiz` (
	`Quiz_ID` INT NOT NULL,
	`Subject_ID` INT NOT NULL,
	`Student_ID` INT NOT NULL,
	`Teacher_ID` INT NOT NULL,
	`Grades` varchar NOT NULL,
	`Date-Exam` DATE NOT NULL,
	PRIMARY KEY (`Quiz_ID`)
);

CREATE TABLE `Student` (
	`Student_ID` INT NOT NULL,
	`Quiz_ID` INT NOT NULL,
	`User_Name` varchar NOT NULL,
	`First_Name` varchar NOT NULL,
	`Last_Name` varchar NOT NULL,
	`Website` varchar NOT NULL,
	PRIMARY KEY (`Student_ID`)
);

CREATE TABLE `Teacher` (
	`Teacher_id` INT NOT NULL,
	`First_Name` varchar NOT NULL,
	`Last_Name` varchar NOT NULL,
	`User_Name` varchar NOT NULL,
	`Phone_Number` varchar NOT NULL,
	`Email` varchar NOT NULL,
	`Website` varchar NOT NULL,
	`Subject_ID` INT NOT NULL,
	`Student_ID` INT NOT NULL,
	PRIMARY KEY (`Teacher_id`)
);

CREATE TABLE `Subject` (
	`Subject_id` INT NOT NULL,
	`Full_Time_Study` INT NOT NULL,
	`English` INT NOT NULL,
	`Germany` INT NOT NULL,
	`Level_A1-C1` INT NOT NULL,
	`Name` varchar NOT NULL,
	`Teacher_ID` INT NOT NULL,
	PRIMARY KEY (`Subject_id`)
);

CREATE TABLE `Group` (
	`Group_ID` INT NOT NULL,
	`Name` varchar NOT NULL,
	`Group_Number` varchar NOT NULL,
	`Student_ID` INT NOT NULL,
	PRIMARY KEY (`Group_ID`)
);

ALTER TABLE `School` ADD CONSTRAINT `School_fk0` FOREIGN KEY (`Teacher_ID`) REFERENCES `Teacher`(`Teacher_id`);

ALTER TABLE `Student` ADD CONSTRAINT `Student_fk0` FOREIGN KEY (`Student_ID`) REFERENCES `Group`(`Student_ID`);

ALTER TABLE `Student` ADD CONSTRAINT `Student_fk1` FOREIGN KEY (`Quiz_ID`) REFERENCES `Quiz`(`Quiz_ID`);

ALTER TABLE `Teacher` ADD CONSTRAINT `Teacher_fk0` FOREIGN KEY (`Teacher_id`) REFERENCES `Quiz`(`Teacher_ID`);

ALTER TABLE `Teacher` ADD CONSTRAINT `Teacher_fk1` FOREIGN KEY (`Subject_ID`) REFERENCES `Subject`(`Subject_id`);

ALTER TABLE `Teacher` ADD CONSTRAINT `Teacher_fk2` FOREIGN KEY (`Student_ID`) REFERENCES `Student`(`Student_ID`);

ALTER TABLE `Subject` ADD CONSTRAINT `Subject_fk0` FOREIGN KEY (`Subject_id`) REFERENCES `Quiz`(`Subject_ID`);







