CREATE SCHEMA `peace` ;
CREATE TABLE `peace`.`world` (
  `id` INT NOT NULL,
  `id_strana` INT NULL,
  `id_oblast` INT NULL,
  `id_raion` INT NULL,
  `id_gorod` INT NULL,
  PRIMARY KEY (`id`));  
CREATE TABLE `peace`.`strana` (
  `id_strana` INT NOT NULL,
  `name_strana` VARCHAR(45) NULL,
  PRIMARY KEY (`id_strana`));
  CREATE TABLE `peace`.`oblast` (
  `id_oblast` INT NOT NULL,
  `name_oblast` VARCHAR(45) NULL,
  PRIMARY KEY (`id_oblast`));
  CREATE TABLE `peace`.`raion` (
  `id_raion` INT NOT NULL,
  `name_raion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_raion`));
CREATE TABLE `peace`.`gorod` (
  `id_gorod` INT NOT NULL,
  `name_gorod` VARCHAR(45) NULL,
  `chislenost` INT NULL,
  `ploshad` INT NULL,
  PRIMARY KEY (`id_gorod`));
  ALTER TABLE `peace`.`world` 
ADD INDEX `FK_Gorod_idx` (`id_gorod` ASC) VISIBLE,
ADD INDEX `FK_Oblast_idx` (`id_oblast` ASC) VISIBLE,
ADD INDEX `FK_Raion_idx` (`id_raion` ASC) VISIBLE,
ADD INDEX `FK_Strana_idx` (`id_strana` ASC) VISIBLE;
;
ALTER TABLE `peace`.`world` 
ADD CONSTRAINT `FK_Gorod`
  FOREIGN KEY (`id_gorod`)
  REFERENCES `peace`.`gorod` (`id_gorod`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Oblast`
  FOREIGN KEY (`id_oblast`)
  REFERENCES `peace`.`oblast` (`id_oblast`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Raion`
  FOREIGN KEY (`id_raion`)
  REFERENCES `peace`.`raion` (`id_raion`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Strana`
  FOREIGN KEY (`id_strana`)
  REFERENCES `peace`.`strana` (`id_strana`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  INSERT INTO `peace`.`gorod` (`id_gorod`, `name_gorod`, `chislenost`, `ploshad`) VALUES ('1', 'Москва', '11000', '200');
INSERT INTO `peace`.`gorod` (`id_gorod`, `name_gorod`, `chislenost`, `ploshad`) VALUES ('2', 'Колифорния', '12000', '100');
INSERT INTO `peace`.`oblast` (`id_oblast`, `name_oblast`) VALUES ('1', 'Московская');
INSERT INTO `peace`.`oblast` (`id_oblast`, `name_oblast`) VALUES ('2', 'Колифорнийская');
INSERT INTO `peace`.`raion` (`id_raion`, `name_raion`) VALUES ('1', 'Северный ');
INSERT INTO `peace`.`raion` (`id_raion`, `name_raion`) VALUES ('2', 'Южный');
INSERT INTO `peace`.`strana` (`id_strana`, `name_strana`) VALUES ('1', 'Россия');
INSERT INTO `peace`.`strana` (`id_strana`, `name_strana`) VALUES ('2', 'США');
INSERT INTO `peace`.`world` (`id`, `id_strana`, `id_oblast`, `id_raion`, `id_gorod`) VALUES ('1', '1', '1', '1', '1');
INSERT INTO `peace`.`world` (`id`, `id_strana`, `id_oblast`, `id_raion`, `id_gorod`) VALUES ('2', '2', '2', '2', '2');
INSERT INTO `peace`.`gorod` (`id_gorod`, `name_gorod`, `chislenost`, `ploshad`) VALUES ('3', 'Пекин', '1000000', '10');
INSERT INTO `peace`.`oblast` (`id_oblast`, `name_oblast`) VALUES ('3', 'Пекинская');
INSERT INTO `peace`.`raion` (`id_raion`, `name_raion`) VALUES ('3', 'Нет Района');
INSERT INTO `peace`.`strana` (`id_strana`, `name_strana`) VALUES ('3', 'Китай');
INSERT INTO `peace`.`world` (`id`, `id_strana`, `id_oblast`, `id_raion`, `id_gorod`) VALUES ('3', '3', '3', '3', '3');


--select `world`.`id`, `strana`.`name_strana`, `oblast`.`name_oblast`, `raion`.`name_raion`, `gorod`.`name_gorod`, `gorod`.`chislenost`, `gorod`.`ploshad` AS `ploshad` from `world` inner join `strana` on `world`.`id_strana` = `strana`.`id_strana` inner join `oblast` on `world`.`id_oblast` = `oblast`.`id_oblast` inner join `raion` on `world`.`id_raion` = `raion`.`id_raion` inner join `gorod` on `world`.`id_gorod` = `gorod`.`id_gorod`;


