DROP TABLE IF EXISTS peso;
CREATE TABLE `peso` (
  `idPeso` INT NOT NULL AUTO_INCREMENT,
  `peso` DECIMAL(5,2) NULL,
  `estatura` INT NULL,
  PRIMARY KEY (`idPeso`));
INSERT INTO peso (estatura,peso)values(58,115),
(59,117),
(60,120),
(61,123),
(62,126),
(63,129),
(64,132),
(65,135),
(66,139),
(67,142),
(68,146),
(69,150),
(70,154),
(71,159),
(72,164);


DROP function IF EXISTS `calcular_m`;

DELIMITER $$
$$
CREATE FUNCTION `calcular_m`() RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
 DECLARE v1 DECIMAL(10,2);
 select  (count(id)*sum(xy)-(sum(x)*sum(y)))/(count(id) *sum(x2)-((sum(x)*sum(x)))) INTO v1 from (
  select (peso*estatura)as xy,(peso*peso)as y2, (estatura*estatura)as x2, estatura as x,peso as y, idPeso as id from peso) as tabla_valores;
RETURN v1;
END$$

DELIMITER ;
;

DROP procedure IF EXISTS `calcular_b`;

DELIMITER $$
$$
CREATE PROCEDURE `calcular_b`()
BEGIN
	select (avg(peso)-(avg(estatura)*`calcular_m`())) as b from peso ;
END$$

DELIMITER ;
;


call calcular_b();
select calcular_m();

