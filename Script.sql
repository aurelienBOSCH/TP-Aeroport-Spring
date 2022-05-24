-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tp_aeroport_spring
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tp_aeroport_spring
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tp_aeroport_spring` DEFAULT CHARACTER SET utf8 ;
USE `tp_aeroport_spring` ;

-- -----------------------------------------------------
-- Table `tp_aeroport_spring`.`Passager`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_aeroport_spring`.`Passager` (
  `idP` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idP`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tp_aeroport_spring`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_aeroport_spring`.`User` (
  `idU` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `telephone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `motDePasse` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idU`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tp_aeroport_spring`.`Aeroport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_aeroport_spring`.`Aeroport` (
  `idAeroport` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `ville` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAeroport`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tp_aeroport_spring`.`Vol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_aeroport_spring`.`Vol` (
  `idVol` INT NOT NULL AUTO_INCREMENT,
  `dateDepart` DATE NULL,
  `dateArrivee` DATE NULL,
  `heureDepart` VARCHAR(45) NULL,
  `heureArrivee` VARCHAR(45) NULL,
  `Aeroport_idAeroport` INT NOT NULL,
  PRIMARY KEY (`idVol`),
  INDEX `fk_Vol_Aeroport1_idx` (`Aeroport_idAeroport` ASC) VISIBLE,
  CONSTRAINT `fk_Vol_Aeroport1`
    FOREIGN KEY (`Aeroport_idAeroport`)
    REFERENCES `tp_aeroport_spring`.`Aeroport` (`idAeroport`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tp_aeroport_spring`.`Reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_aeroport_spring`.`Reservation` (
  `idR` INT NOT NULL AUTO_INCREMENT,
  `numero` LONGBLOB NOT NULL,
  `dateRes` VARCHAR(45) NOT NULL,
  `Passager_idP` INT NOT NULL,
  `Client_idC` INT NOT NULL,
  `Vol_idVol` INT NOT NULL,
  PRIMARY KEY (`idR`),
  INDEX `fk_Reservation_Passager_idx` (`Passager_idP` ASC) VISIBLE,
  INDEX `fk_Reservation_Client1_idx` (`Client_idC` ASC) VISIBLE,
  INDEX `fk_Reservation_Vol1_idx` (`Vol_idVol` ASC) VISIBLE,
  CONSTRAINT `fk_Reservation_Passager`
    FOREIGN KEY (`Passager_idP`)
    REFERENCES `tp_aeroport_spring`.`Passager` (`idP`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_Client1`
    FOREIGN KEY (`Client_idC`)
    REFERENCES `tp_aeroport_spring`.`User` (`idU`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_Vol1`
    FOREIGN KEY (`Vol_idVol`)
    REFERENCES `tp_aeroport_spring`.`Vol` (`idVol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tp_aeroport_spring`.`Compagnie_Aerienne`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_aeroport_spring`.`Compagnie_Aerienne` (
  `idCA` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NULL,
  PRIMARY KEY (`idCA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tp_aeroport_spring`.`Vol_Compagnie_Aerienne`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_aeroport_spring`.`Vol_Compagnie_Aerienne` (
  `idVol` INT NOT NULL,
  `idCA` INT NOT NULL,
  PRIMARY KEY (`idVol`, `idCA`),
  INDEX `fk_Vol_has_CompagnieAerienne_CompagnieAerienne1_idx` (`idCA` ASC) VISIBLE,
  INDEX `fk_Vol_has_CompagnieAerienne_Vol1_idx` (`idVol` ASC) VISIBLE,
  CONSTRAINT `fk_Vol_has_CompagnieAerienne_Vol1`
    FOREIGN KEY (`idVol`)
    REFERENCES `tp_aeroport_spring`.`Vol` (`idVol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vol_has_CompagnieAerienne_CompagnieAerienne1`
    FOREIGN KEY (`idCA`)
    REFERENCES `tp_aeroport_spring`.`Compagnie_Aerienne` (`idCA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- Data entries

INSERT INTO aeroport(nom, ville) values 
("Aérodrome d'Anaa", "Anaa"),
("Aéroport d'Arrabury", "Arrabury"),
("Aérodrome d'El-Arich", "El-Arich"),
("Aérodrome d'Adado", "Adado"),
("Aérodrome d'Anaa - Rabah-Bitat", "Rabah-Bitat"),
("Aéroport municipal d'Apalachicola", "Apalachicola"),
("Aéroport Avelino Viera", "Arapoti"),
("Aéroport d'Aachen-Merzbruck", "Aix-la-Chapelle"),
("Aéroport d'Arraias", "Arraias"),
("Aérodrome de Cayana", " Awaradam"),
("Aéroport international d'Atâr", "Atar"),
("Aérodrome d'Aranuka", "Buariki"),
("Aéroport d'Aalborg", "Aalborg"),
("Aérodrome de Fazenda Tucunare", "Sapezal"),
("Aéroport de Xanxerê", "Xanxerê");

INSERT INTO user(nom, prenom, telephone, email, motDePasse) values 
("Zurie  ", "Bélanger", "05.11.07.88.84", "ZurieBelanger@jourrapide.com", "de3UchaW"),
("Christien ", "Melanson", "02.86.37.60.97", "ChristienMelanson@dayrep.com", "Eis9sahfae"),
("Alexandrie ", "Majory", "02.63.71.76.02", "AlexandrieMajory@jourrapide.com", "mahl9Mus"),
("Algernon ", "Rousseau", "01.88.12.94.37", "AlgernonRousseau@armyspy.com", "aeB2oiWu0A"),
("Marguerite ", "Courtemanche", "01.09.18.74.54", "MargueriteCourtemanche@dayrep.com", "Ohpois7vo"),
("Vick ", "Lavoie", "03.87.06.76.43", "VickLavoie@armyspy.com", "eiLeanae6zie"),
("Josephe ", "Étoile", "01.59.64.85.11", "JosepheEtoile@dayrep.com", "ahY2Leth"),
("Andrée ", "Laderoute", "03.67.33.75.30", "AndreeLaderoute@armyspy.com", "ohPe9ooxuNai"),
("Renée ", "Turcotte", "04.96.28.43.72", "ReneeTurcotte@armyspy.com", "Sheegio4eiz"),
("Troy ", "Guimond", "01.22.29.99.78", "TroyGuimond@jourrapide.com", "Tahph1wech"),
("Troy ", "Dandonneau", "01.28.49.64.04", "TroyDandonneau@rhyta.com", "eiTai2Wee"),
("Landers ", "Mercure", "01.84.94.01.53", "LandersMercure@rhyta.com", "aij1iugahPh"),
("Gill ", "Duperré", "01.68.52.49.71", "GillDuperre@dayrep.com", "nohu8weCoo"),
("Yolande ", "Devoe", "03.82.56.90.94", "YolandeDevoe@teleworm.us", "Gie3jeengoo"),
("Fifi ", "Trépanier", "04.32.28.44.02", "FifiTrepanier@rhyta.com", "Dieh1sahw");

INSERT INTO compagnie_aerienne(nom) values 
("Air France"), ("Air Corsica"), ("Air Senegal"), ("Air Caraibes"), ("Aegean Airlines"), ("ASL Airlines France"),
("Austrian Airlines"), ("Alitalia Air Canada"), ("Air Europa"), ("Air Arabia Maroc"), ("Air Malta"),
("Air Austral"), ("Air Serbia"), ("Air Algerie"), ("Aeromexico"), ("Aer Lingus"), ("Aeroflot
Air"), ("Antilles Express"), ("Air Moldova ASKY"), ("Air Tanzania"), ("Air Tahiti Nui"), ("airBaltic"),
("Air Burkina Avianca"), ("American Airlines"), ("Azul Linhas Aereas Brasileiras"), ("Air Transat"), ("Aeromar"),
("Air India Albastar"), ("Air Kbz Aircalin"), ("Air Cairo Arkia"),
("Alaska Airlines"), ("Albawings AtlasGlobal"), ("Air Mediterranean"),
("All Nippon Airways");

INSERT INTO passager(nom, prenom) values
("Zurie  ", "Bélanger"),
("Christien ", "Melanson"),
("Alexandrie ", "Majory"),
("Algernon ", "Rousseau"),
("Marguerite ", "Courtemanche"),
("Vick ", "Lavoie"),
("Josephe ", "Étoile"),
("Andrée ", "Laderoute"),
("Renée ", "Turcotte"),
("Troy ", "Guimond"),
("Troy ", "Dandonneau"),
("Landers ", "Mercure"),
("Gill ", "Duperré"),
("Yolande ", "Devoe"),
("Fifi ", "Trépanier");

INSERT INTO vol(dateDepart, dateArrivee, heureDepart, heureArrivee, Aeroport_idAeroport) values
('2025-03-09', '2025-03-10', "09:31:15", "06:37:31", 1),
('2022-05-04', '2022-05-06', "06:24:56", "17:57:23", 2),
('1927-04-30', '1927-05-01', "12:29:08", "13:56:49", 3),
('1962-11-05', '1962-11-06', "20:00:39", "14:29:59", 4),
('2062-04-14', '2062-04-16', "11:44:17", "06:20:23", 5),
('2063-06-24', '2063-06-25', "14:43:57", "12:57:53", 6),
('2009-11-03', '2009-11-04', "02:24:40", "22:18:50", 7),
('1935-01-22', '1935-01-23', "23:50:28", "02:30:57", 8),
('2089-06-15', '2089-06-16', "11:06:04", "22:37:19", 9),
('2046-07-19', '2046-07-20', "09:46:32", "10:26:23", 10);

INSERT INTO vol_compagnie_aerienne(idVol, idCA) values
(4,23),
(6,16),
(8,11),
(9,14),
(1,6),
(2,9),
(3,34),
(3,6),
(1,5),
(8,8),
(6,4),
(8,4),
(5,16),
(8,20),
(10,15);