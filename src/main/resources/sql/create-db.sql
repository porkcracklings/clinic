CREATE DATABASE IF NOT EXISTS `clinic`;

CREATE TABLE IF NOT EXISTS `disease` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(25) DEFAULT NULL,
  `DESCRIPTION` blob,
  `CURED` bit(1) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_disease_user` (`USER_ID`),
  CONSTRAINT `FK_disease_user` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `seanse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SEANSE_DATE` datetime DEFAULT NULL,
  `DESCRIPTION` blob,
  `DISEASE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_seanse_disease` (`DISEASE_ID`),
  CONSTRAINT `FK_seanse_disease` FOREIGN KEY (`DISEASE_ID`) REFERENCES `seanse` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(15) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `ROLE` bit(1) DEFAULT NULL,
  `NAME` varchar(40) DEFAULT NULL,
  `PHONE` varchar(9) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;