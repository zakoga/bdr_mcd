
DROP SCHEMA IF EXISTS `mcd_sistema`;
CREATE DATABASE  IF NOT EXISTS `mcd_sistema`;
USE `mcd_sistema`;
#
# TABLE STRUCTURE FOR: Acceso
#

DROP TABLE IF EXISTS `Acceso`;

CREATE TABLE `Acceso` (
  `idAcceso` int(11) NOT NULL AUTO_INCREMENT,
  `idAccesoPadre` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `URL` varchar(100) DEFAULT NULL,
  `esMenu` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idAcceso`),
  KEY `Acceso_AccesoPadre_idx` (`idAccesoPadre`),
  CONSTRAINT `Acceso_AccesoPadre` FOREIGN KEY (`idAccesoPadre`) REFERENCES `Acceso` (`idAcceso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (4, NULL, 'Caterpillar\'s making such VERY', 'http://www.olivas.com/', b'1');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (5, NULL, 'How queer everything is to-day', 'http://pelayo.biz/', b'1');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (6, NULL, 'Duchess; \'and that\'s the jury,', 'http://solano.com/', b'1');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (7, NULL, 'ARE OLD, FATHER WILLIAM,\' to t', 'http://caraballo.com/', b'0');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (8, NULL, 'Alice sadly. \'Hand it over aft', 'http://www.valles.com/', b'0');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (9, NULL, 'Some of the party were placed ', 'http://orellanaarteaga.com/', b'1');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (10, NULL, 'I can\'t quite follow it as you', 'http://robles.com/', b'0');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (11, NULL, 'That your eye was as long as y', 'http://www.agosto.com/', b'1');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (12, NULL, 'I give it up,\' Alice replied: ', 'http://www.alva.com/', b'0');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (13, NULL, 'So she sat down again very sad', 'http://abeytarubio.com/', b'0');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (14, NULL, 'The twelve jurors were writing', 'http://romero.com/', b'0');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (15, NULL, 'Dinah, if I know all the while', 'http://www.villaseñorcuellar.com/', b'0');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (16, NULL, 'Gryphon: \'I went to the seasid', 'http://marroquín.com/', b'0');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (17, NULL, 'Cat, \'or you wouldn\'t squeeze ', 'http://negrón.info/', b'0');
INSERT INTO `Acceso` (`idAcceso`, `idAccesoPadre`, `nombre`, `URL`, `esMenu`) VALUES (18, NULL, 'Mabel after all, and I shall h', 'http://villaramón.com/', b'0');


#
# TABLE STRUCTURE FOR: Ahorro
#

DROP TABLE IF EXISTS `Ahorro`;

CREATE TABLE `Ahorro` (
  `idAhorro` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `clave` char(5) DEFAULT NULL,
  PRIMARY KEY (`idAhorro`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (1, 'reiciendis', '88118');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (2, 'fugiat', '78575');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (3, 'officiis', '38386');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (4, 'sit', '39133');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (5, 'rerum', '40205');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (6, 'ratione', '90168');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (7, 'voluptatem', '84876');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (8, 'beatae', '78375');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (9, 'nihil', '94999');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (10, 'omnis', '80810');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (11, 'est', '13863');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (12, 'vero', '87338');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (13, 'laboriosam', '52071');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (14, 'autem', '14093');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (15, 'ullam', '76408');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (16, 'incidunt', '85012');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (17, 'voluptas', '57397');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (18, 'adipisci', '62949');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (19, 'quia', '97333');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (20, 'et', '87113');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (21, 'et', '45950');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (22, 'ut', '85057');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (23, 'est', '93420');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (24, 'dignissimos', '96606');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (25, 'et', '78387');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (26, 'velit', '42842');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (27, 'omnis', '72296');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (28, 'voluptatem', '77170');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (29, 'excepturi', '47227');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (30, 'optio', '15109');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (31, 'corporis', '57381');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (32, 'aut', '23788');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (33, 'repellendus', '99219');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (34, 'ex', '40987');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (35, 'reiciendis', '77584');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (36, 'voluptas', '81786');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (37, 'voluptates', '50811');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (38, 'veritatis', '12492');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (39, 'ex', '46012');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (40, 'corporis', '70717');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (41, 'dolores', '66680');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (42, 'eos', '36521');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (43, 'natus', '30325');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (44, 'ad', '64274');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (45, 'soluta', '64864');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (46, 'consectetur', '32402');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (47, 'ea', '71235');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (48, 'enim', '49778');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (49, 'temporibus', '47455');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (50, 'officia', '71105');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (51, 'dolore', '93166');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (52, 'ea', '83140');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (53, 'culpa', '60020');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (54, 'itaque', '14544');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (55, 'quia', '21949');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (56, 'ipsa', '42814');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (57, 'modi', '24896');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (58, 'rem', '29048');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (59, 'rerum', '76308');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (60, 'corporis', '74659');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (61, 'neque', '64765');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (62, 'aperiam', '98418');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (63, 'unde', '69560');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (64, 'minima', '92486');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (65, 'dolor', '82123');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (66, 'pariatur', '56181');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (67, 'deserunt', '95314');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (68, 'quod', '49229');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (69, 'nihil', '39851');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (70, 'quia', '17740');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (71, 'fuga', '25639');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (72, 'quam', '83296');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (73, 'quia', '88065');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (74, 'expedita', '86971');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (75, 'nobis', '39444');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (76, 'modi', '18086');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (77, 'voluptatem', '88778');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (78, 'voluptas', '12467');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (79, 'explicabo', '34583');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (80, 'voluptatem', '19776');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (81, 'dolores', '57309');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (82, 'voluptas', '96991');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (83, 'aut', '42299');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (84, 'optio', '70240');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (85, 'nemo', '12260');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (86, 'provident', '62574');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (87, 'autem', '85014');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (88, 'enim', '49617');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (89, 'ipsa', '47426');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (90, 'cum', '65050');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (91, 'ad', '39704');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (92, 'nam', '81086');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (93, 'dolorum', '97326');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (94, 'in', '50246');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (95, 'dolores', '79581');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (96, 'laborum', '95547');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (97, 'deleniti', '70807');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (98, 'animi', '40950');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (99, 'dolores', '23664');
INSERT INTO `Ahorro` (`idAhorro`, `nombre`, `clave`) VALUES (100, 'modi', '44779');


#
# TABLE STRUCTURE FOR: Cliente
#

DROP TABLE IF EXISTS `Cliente`;

CREATE TABLE `Cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `razonSocial` varchar(30) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `RFC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (4, 'Future-proofed encompassing ar', 'Chacón-Guzmán', '597 Calderón  95 4\nAguirredel Oeste, AR-K 4616', '90 gx');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (5, 'Cross-platform attitude-orient', 'Vélez e Hijos', '69 Yáñez \nPuerto Bruno, AR-Q 90220', '27 mv');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (6, 'Fundamental dedicated moderato', 'Rosario-Salcido', '3972 Andrea \nCanodel Oeste, AR-P 7214', '27 hb');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (7, 'Decentralized object-oriented ', 'Ruvalcaba y Frías', '616 Felipe  4 6\nUrrutiadel Sur, AR-N 32831', '18 eg');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (8, 'Business-focused impactful loc', 'Olivo y Tapia', '1676 Luna \nDon Camiladel Este, AR-G 9337', '94 ew');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (9, 'Re-engineered encompassing syn', 'Valentín y Lomeli', '8 Arellano \nPuerto Sophie, AR-E 51379', '12 ft');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (10, 'Profound static ability', 'Briones-Carrillo', '5702 Alejandra  7 D\nFelipedel Oeste, AR-J 6612', '10 ga');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (11, 'Secured clear-thinking migrati', 'Valles y Segovia', '8591 Juan  Depto. 690\nSan Facundo, AR-E 9792', '57 gb');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (12, 'Synchronised heuristic archive', 'Salinas y Gaona', '16 Mireles \nVilla Horaciodel Sur, AR-G 6233', '80 jf');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (13, 'Polarised high-level paralleli', 'Valdés y Montemayor', '21 Elías \nToledodel Norte, AR-D 63200', '61 sh');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (14, 'Team-oriented uniform model', 'Hernádez de Carvajal', '993 Josefa  4 B\nNúñezdel Este, AR-R 14441', '67 hd');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (15, 'Devolved radical collaboration', 'Valdés de Beltrán', '8 Meléndez \nAlvaradodel Norte, AR-M 90306', '95 on');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (16, 'Up-sized holistic implementati', 'Gaona de Pelayo', '72 Josué \nGral. Alejandra, AR-R 8495', '95 dp');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (17, 'Compatible local opensystem', 'Alcala de Jáquez', '178 Ivanna  1 4\nAgustíndel Mirador, AR-R 2077', '67 sj');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (18, 'Streamlined motivating product', 'Cardenas y Maldonado', '65 Elena  \nPauladel Sur, AR-J 4028', '28 ve');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (19, 'Sharable static intranet', 'Carrasco S. de H.', '4 Isidora  3 D\nDon Catalinadel Mirador, AR-Q 0164', '94 qv');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (20, 'Cross-group modular approach', 'Pacheco y Torres', '63 Jesús  82 F\nJulianadel Norte, AR-U 5227', '26 xs');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (21, 'Reactive multi-tasking algorit', 'Vera y Gaitán', '8450 Romina \nDon Simón, AR-P 0899', '13 aj');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (22, 'Balanced client-server circuit', 'Muro S. de H.', '23 Valeria  0 E\nJuan Pablodel Este, AR-E 3610', '53 ba');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (23, 'Universal assymetric hierarchy', 'Águilar y Palacios', '96 Frías \nCalderadel Sur, AR-R 9739', '39 ga');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (24, 'De-engineered nextgeneration m', 'Caraballo de Mena', '06446 Fabiana \nDon Franco, AR-F 74682', '45 gk');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (25, 'Operative multimedia database', 'Mondragón y Narváez', '3 Rafael  96 B\nDanieladel Mar, AR-W 0766', '33 pg');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (26, 'Customizable homogeneous frame', 'Mondragón-Partida', '908 Pedro \nVilla Emmanueldel Mirador, AR-Z 1850', '84 to');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (27, 'Innovative bi-directional firm', 'Uribe de Archuleta', '5204 Mondragón \nGral. Marianadel Mirador, AR-E 27209', '14 yj');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (28, 'Future-proofed object-oriented', 'Aranda, Jáquez y Ruiz', '1745 Velásquez \nManueladel Norte, AR-E 0996', '92 ar');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (29, 'Ergonomic heuristic middleware', 'Águilar de Vigil', '093 Salas \nVilla Juan Martíndel Sur, AR-L 94507', '81 sm');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (30, 'Organized non-volatile migrati', 'Ulibarri-Delafuente', '2597 Lebrón  30 A\nVilla Emmadel Mirador, AR-U 48170', '75 zq');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (31, 'Seamless optimizing functional', 'Briseño e Hijo', '46252 Vicente \nDon Jesús, AR-R 79946', '21 bu');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (32, 'Synergized multimedia matrices', 'Hinojosa y Huerta', '084 Luis  0 B\nMalavedel Norte, AR-V 67658', '91 lv');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (33, 'Programmable value-added adapt', 'Bernal-Jáquez', '56 Carrion  6 5\nHuertadel Oeste, AR-Y 82145', '65 fi');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (34, 'Ergonomic static attitude', 'Abeyta y Batista', '704 Elena   Depto. 649\nVilla Lucía, AR-F 9633', '05 bt');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (35, 'Cross-platform systematic neur', 'Medrano-Carvajal', '74 Bianca  9 2\nAlandel Norte, AR-U 23508', '65 rw');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (36, 'De-engineered modular leverage', 'Castellanos y Vélez', '62609 Cazares \nSeguradel Mar, AR-A 2857', '60 rt');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (37, 'Triple-buffered zeroadministra', 'Soria-Guillen', '9 Delagarza \nZapatadel Sur, AR-N 4979', '01 ku');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (38, 'Devolved well-modulated budget', 'Linares e Hijo', '6795 Laura \nGral. Carolinadel Mar, AR-Y 4154', '88 qe');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (39, 'Enterprise-wide tertiary matri', 'Melgar-Mireles', '869 Thiago \nPuerto Ana Sofía, AR-W 0449', '30 sx');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (40, 'Realigned stable info-mediarie', 'Terrazas de Jasso', '2104 Thiago  8 D\nSan Elíasdel Este, AR-N 97845', '74 tb');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (41, 'Proactive real-time architectu', 'Partida-Maldonado', '4681 Ana Sofía  24 C\nGonzalesdel Mirador, AR-U 10553', '98 iz');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (42, 'Digitized national extranet', 'Aguirre y Ballesteros', '95 Jerónimo \nSan María Camiladel Mar, AR-R 70671', '70 hw');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (43, 'Synergized client-server struc', 'Chavarría y Verdugo', '6167 Silvana  \nAntonelladel Sur, AR-K 57882', '63 hd');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (44, 'Profit-focused dedicated budge', 'Aguirre y Otero', '4265 Julián  Hab. 475\nAmadordel Este, AR-M 4300', '52 cq');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (45, 'Self-enabling asynchronous kno', 'Valenzuela e Hija', '59 Isabel  8 D\nDurandel Este, AR-W 87837', '67 fk');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (46, 'Multi-channelled cohesive encr', 'Solís e Hija', '415 Luana  Piso 8\nVilla Sophie, AR-G 0917', '41 kz');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (47, 'Compatible nextgeneration thro', 'Blanco, Treviño y Pagan', '01 Irene \nPeñadel Mirador, AR-S 7109', '56 ki');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (48, 'Assimilated attitude-oriented ', 'Menéndez de Barrios', '05 Carreón \nMaitedel Oeste, AR-R 89639', '46 qx');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (49, 'Multi-tiered motivating task-f', 'Tejada e Hijo', '4 Tomas  96 C\nDon Silvana , AR-X 05097', '63 rc');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (50, 'Automated value-added product', 'Pedraza-Ureña', '096 Beltrán \nJuan Estebandel Este, AR-D 61510', '98 ov');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (51, 'Exclusive radical hardware', 'Escalante, Olmos y Palomino', '97 María Paula \nSan Ivandel Sur, AR-E 7124', '35 to');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (52, 'Universal incremental toolset', 'Arenas, Roldán y Romo', '99155 Vera \nDon Abigail, AR-S 5321', '56 cg');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (53, 'Automated 6thgeneration method', 'Magaña y Robles', '04 Palacios  5 B\nVilla Manuel, AR-R 70121', '08 fw');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (54, 'Secured solution-oriented stru', 'Matías S. de H.', '79324 Atencio \nNahueldel Oeste, AR-V 9311', '60 ac');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (55, 'Automated needs-based knowledg', 'Ruvalcaba de Adame', '85 Rebeca  1 F\nPuerto Juan David, AR-N 61891', '54 dl');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (56, 'Fully-configurable responsive ', 'Casas SA', '797 Abreu \nGral. Amandadel Norte, AR-V 3729', '08 rz');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (57, 'User-centric homogeneous group', 'Guardado y Aranda', '188 Olivia \nAxeldel Norte, AR-G 1869', '28 ph');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (58, 'Horizontal impactful functiona', 'Morales-Cazares', '892 Olivia  61 A\nZaratedel Norte, AR-Q 26956', '83 gq');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (59, 'Fully-configurable eco-centric', 'Guardado-Bustamante', '249 de Jesús  90 C\nDon Luanadel Norte, AR-V 18168', '76 qi');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (60, 'Expanded explicit structure', 'Zaragoza-Narváez', '7907 Sandoval  9 8\nDon Salomé, AR-B 5457', '33 kq');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (61, 'Reduced attitude-oriented stan', 'Becerra de Ozuna', '476 Rodríquez \nCeballosdel Norte, AR-W 08153', '82 vr');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (62, 'Public-key zeroadministration ', 'Barela e Hija', '58 Galarza  5 F\nBrunodel Sur, AR-P 5963', '38 pg');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (63, 'Public-key asynchronous intern', 'Segovia e Hija', '126 Rael \nVacadel Mar, AR-F 0415', '26 tw');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (64, 'Adaptive secondary data-wareho', 'Cadena de Cintrón', '395 Alcala \nSan Brunodel Mirador, AR-P 78460', '15 fj');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (65, 'Switchable zerotolerance data-', 'Navarro y Nevárez', '422 Lautaro  87 F\nValentinodel Mar, AR-F 5385', '80 rm');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (66, 'Cross-group even-keeled matric', 'Alva, Henríquez y Merino', '37 Christian  7 E\nVilla Paulina, AR-N 38013', '72 qf');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (67, 'Distributed zerotolerance alli', 'Granados-Estévez', '118 Trejo \nPuerto Santinodel Sur, AR-D 15749', '01 nt');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (68, 'Multi-tiered grid-enabled cong', 'Becerra-Alcala', '13 Mata \nPuerto Micaeladel Sur, AR-G 81602', '19 nt');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (69, 'Secured incremental success', 'Muñoz, Santillán y Gallardo', '796 Elías  Hab. 145\nPuerto Amanda, AR-K 45285', '40 te');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (70, 'Reactive assymetric concept', 'Fernández y Cervantes', '360 Rivera \nDelvalledel Mirador, AR-A 38398', '18 ec');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (71, 'Exclusive interactive methodol', 'Galván, Rodríquez y Portillo', '6 Agustín \nMagdalenadel Sur, AR-N 02636', '90 qw');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (72, 'Upgradable even-keeled portal', 'Soria, Matos y Coronado', '3120 Zambrano \nVioletadel Oeste, AR-P 4850', '57 fd');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (73, 'Synergistic optimal orchestrat', 'Gallegos de Salgado', '0613 Fernando  Piso 13\nRominadel Mar, AR-B 7177', '34 co');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (74, 'Decentralized even-keeled prod', 'Muro de Guerra', '690 Horacio \nTorodel Norte, AR-P 49236', '46 en');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (75, 'Implemented asynchronous websi', 'Rosado SRL', '69 Felipe \nUríasdel Norte, AR-D 7941', '03 kx');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (76, 'Enhanced encompassing opensyst', 'Nava-Ordóñez', '8972 Casares \nCorralesdel Este, AR-V 27149', '39 it');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (77, 'Proactive non-volatile migrati', 'Gaytán, Padilla y Cadena', '7 Alessandra \nSantinodel Sur, AR-M 0422', '25 sh');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (78, 'Open-source neutral monitoring', 'Villarreal-Morales', '038 Melgar  54 B\nLuanadel Oeste, AR-P 3492', '25 fp');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (79, 'Intuitive mission-critical mat', 'Barrios y Asoc.', '79793 Rojo \nIgnaciodel Este, AR-F 03107', '48 cb');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (80, 'Open-source tangible support', 'Limón, Palacios y Cabrera', '9 Vega  77 5\nApodacadel Sur, AR-U 3984', '59 tc');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (81, 'Cloned bi-directional systemen', 'Álvarez y de Jesús', '76 Hidalgo \nNicoledel Sur, AR-A 5811', '80 rm');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (82, 'User-friendly solution-oriente', 'Terán-Lozano', '3800 Lemus  1 C\nPuerto Hidalgo, AR-T 26393', '82 af');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (83, 'Vision-oriented solution-orien', 'Valladares y Asoc.', '31329 Quezada  18 C\nCrespodel Sur, AR-K 77289', '53 wz');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (84, 'Synergistic secondary Graphica', 'Cedillo de Chavarría', '25 Manuel  3 D\nRebecadel Este, AR-B 0397', '10 wq');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (85, 'Self-enabling bi-directional p', 'Alcántar y Melgar', '2 Clara \nSan Tomasdel Oeste, AR-D 19400', '29 nx');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (86, 'Re-engineered uniform attitude', 'Guillen y Salas', '8 Nadia  PB A\nGral. Elena del Oeste, AR-R 8389', '85 ba');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (87, 'Phased client-driven definitio', 'Báez, Cruz y Aguayo', '0075 Torres \nZaratedel Este, AR-E 1425', '23 lb');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (88, 'Future-proofed demand-driven c', 'Arenas-Crespo', '218 Barrera  89 E\nMaría Josédel Oeste, AR-M 68284', '48 xv');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (89, 'Up-sized human-resource data-w', 'Zelaya de Rosario', '7959 Granados  98 D\nDon Josuédel Sur, AR-F 0903', '76 ey');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (90, 'Enhanced dedicated time-frame', 'Santiago-Puga', '75 Anaya \nCanalesdel Mar, AR-N 85139', '49 wa');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (91, 'Balanced object-oriented hub', 'Gamboa de Cruz', '6781 Horacio \nPorrasdel Oeste, AR-V 7102', '85 ct');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (92, 'Total secondary array', 'Leal, Barela y Amaya', '6360 Joshua  1 F\nCarreóndel Norte, AR-R 80727', '85 hx');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (93, 'Versatile upward-trending para', 'Gallegos y Lara', '408 Vicente  3 E\nJuan Josédel Mar, AR-M 62064', '55 bc');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (94, 'Team-oriented static service-d', 'Saucedo y Arellano', '3 Daniela \nPuentedel Mirador, AR-M 44612', '79 fk');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (95, 'Devolved systematic budgetarym', 'Aguirre de Concepción', '0 Florencia \nJuradodel Oeste, AR-J 06565', '88 sn');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (96, 'Public-key uniform openarchite', 'Dávila y Caraballo', '1 Allison \nDon Franciscodel Mirador, AR-S 4342', '15 xr');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (97, 'Seamless composite processimpr', 'Parra SA', '154 Archuleta  3 C\nSan Maite, AR-H 82002', '69 gu');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (98, 'Phased systemic GraphicalUserI', 'Benavides SA', '6 Alfaro \nGral. Mateodel Norte, AR-W 89377', '97 bu');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (99, 'Enterprise-wide 4thgeneration ', 'Lemus-Tamez', '64783 Juan \nDon Ashleydel Este, AR-Z 5086', '14 uw');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (100, 'Triple-buffered incremental ut', 'Balderas e Hijo', '593 Luevano  Piso 55\nPuerto Andrés, AR-H 7042', '89 cp');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (101, 'Re-engineered radical capabili', 'Véliz y Godoy', '54 Robles \nJosuédel Mar, AR-R 3287', '02 hh');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (102, 'Mandatory actuating collaborat', 'Covarrubias y Negrete', '17489 Roybal \nPuerto Luisdel Mar, AR-K 5691', '00 on');
INSERT INTO `Cliente` (`idCliente`, `nombre`, `razonSocial`, `direccion`, `RFC`) VALUES (103, 'Digitized assymetric leverage', 'Munguía e Hijo', '2 Valentino  Piso 0\nSosadel Este, AR-G 30794', '88 ap');



#
# TABLE STRUCTURE FOR: ElementoEstructuraEmpresa
#

DROP TABLE IF EXISTS `ElementoEstructuraEmpresa`;

CREATE TABLE `ElementoEstructuraEmpresa` (
  `idElementoEstructuraEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `tipoElementoEstructura` varchar(30) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idElementoEstructuraEmpresa`),
  KEY `ElementoEstructuraEmpresa_Cliente_idx` (`idCliente`),
  CONSTRAINT `ElementoEstructuraEmpresa_Cliente` FOREIGN KEY (`idCliente`) REFERENCES `Cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (1, 'Gryphon. \'Then, you know,\' sai', 'qui', 92);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (2, 'Alice the moment how large she', 'voluptates', 75);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (3, 'Queen. \'Can you play croquet?\'', 'ab', 59);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (4, 'Paris, and Paris is the same t', 'quasi', 89);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (5, 'Alice alone with the tea,\' the', 'sunt', 23);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (6, 'As she said these words her fo', 'ipsum', 52);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (7, 'THAT in a great thistle, to ke', 'id', 70);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (8, 'Who in the lock, and to wonder', 'ut', 37);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (9, 'IS the fun?\' said Alice. \'Come', 'sunt', 11);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (10, 'Suppress him! Pinch him! Off w', 'voluptas', 89);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (11, 'Alice. \'Why not?\' said the Mou', 'qui', 40);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (12, 'Alice heard it muttering to it', 'dolor', 29);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (13, 'King in a game of croquet she ', 'enim', 11);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (14, 'But do cats eat bats?\' and som', 'et', 75);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (15, 'Alice, and looking at everythi', 'tempora', 72);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (16, 'Alice; \'I must be getting some', 'quia', 77);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (17, 'King. \'Nearly two miles high,\'', 'rerum', 55);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (18, 'Alice. \'Now we shall have some', 'omnis', 14);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (19, 'However, the Multiplication Ta', 'exercitationem', 61);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (20, 'Duchess sneezed occasionally; ', 'autem', 84);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (21, 'Crab, a little faster?\" said a', 'quia', 18);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (22, 'Alice was silent. The King lai', 'officiis', 52);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (23, 'I almost wish I hadn\'t quite f', 'et', 41);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (24, 'HERE.\' \'But then,\' thought Ali', 'et', 28);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (25, 'Mercia and Northumbria, declar', 'perspiciatis', 17);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (26, 'OUTSIDE.\' He unfolded the pape', 'sunt', 4);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (27, 'The Dormouse again took a minu', 'ut', 62);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (28, 'ME\' were beautifully marked in', 'consequatur', 10);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (29, 'There are no mice in the air, ', 'in', 91);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (30, 'Gryphon: and Alice looked at h', 'inventore', 96);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (31, 'She pitied him deeply. \'What i', 'delectus', 66);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (32, 'Lory and an Eaglet, and severa', 'ullam', 31);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (33, 'The Hatter was out of the tail', 'dicta', 102);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (34, 'Knave did so, very carefully, ', 'qui', 103);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (35, 'I beg your pardon,\' said Alice', 'fuga', 93);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (36, 'Hatter. \'I deny it!\' said the ', 'beatae', 83);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (37, 'Alice felt so desperate that s', 'adipisci', 32);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (38, 'King said, with a sigh: \'it\'s ', 'nisi', 16);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (39, 'Why, I haven\'t been invited ye', 'accusantium', 47);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (40, 'YOU?\' said the Queen, who was ', 'repellendus', 45);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (41, 'Alice, every now and then all ', 'exercitationem', 55);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (42, 'Alice put down her anger as we', 'quibusdam', 39);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (43, 'Alice and all her coaxing. Har', 'perspiciatis', 51);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (44, 'Alice led the way, and then hu', 'aliquam', 86);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (45, 'WHAT?\' thought Alice \'without ', 'occaecati', 102);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (46, 'You gave us three or more; The', 'atque', 65);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (47, 'Mock Turtle. \'Hold your tongue', 'rerum', 77);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (48, 'ME,\' said Alice in a game of p', 'quo', 48);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (49, 'King, \'or I\'ll have you execut', 'porro', 90);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (50, 'A little bright-eyed terrier, ', 'libero', 90);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (51, 'I eat or drink something or ot', 'consectetur', 64);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (52, 'Alice had begun to think that ', 'officiis', 4);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (53, 'She waited for a minute or two', 'quia', 56);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (54, 'Queen, and Alice looked round,', 'aperiam', 73);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (55, 'Soup! \'Beautiful Soup! Who car', 'aut', 54);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (56, 'I wish you wouldn\'t keep appea', 'enim', 53);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (57, 'I\'ve finished.\' So they couldn', 'consequatur', 99);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (58, 'What happened to me! I\'LL soon', 'omnis', 97);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (59, 'ME,\' said the Mock Turtle went', 'sed', 22);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (60, 'Majesty,\' he began. \'You\'re a ', 'laboriosam', 55);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (61, 'The judge, by the whole court ', 'tenetur', 19);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (62, 'Caterpillar. Here was another ', 'ratione', 69);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (63, 'Alice said very politely, \'if ', 'voluptatem', 4);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (64, 'The great question is, Who in ', 'laudantium', 66);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (65, 'Alice; but she had not attende', 'non', 33);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (66, 'March Hare. \'Then it ought to ', 'eum', 65);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (67, 'However, everything is to-day!', 'sint', 9);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (68, 'Dodo solemnly presented the th', 'aspernatur', 65);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (69, 'But do cats eat bats, I wonder', 'ducimus', 12);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (70, 'After a while she ran, as well', 'aut', 75);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (71, 'Seaography: then Drawling--the', 'est', 72);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (72, 'I say,\' the Mock Turtle. So sh', 'velit', 25);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (73, 'I ever saw in another moment, ', 'sed', 22);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (74, 'HAVE tasted eggs, certainly,\' ', 'in', 85);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (75, 'Cheshire cat,\' said the March ', 'adipisci', 74);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (76, 'I want to get out of its voice', 'inventore', 84);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (77, 'Still she went on saying to he', 'et', 29);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (78, 'WOULD twist itself round and l', 'aut', 21);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (79, 'Alice did not come the same he', 'nobis', 32);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (80, 'I know?\' said Alice, rather al', 'laborum', 83);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (81, 'Alice looked all round the tab', 'dolores', 90);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (82, 'I shall see it written down: b', 'aut', 12);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (83, 'I must be getting home; the ni', 'rerum', 53);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (84, 'I don\'t take this child away w', 'eum', 8);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (85, 'The baby grunted again, and pu', 'voluptatem', 76);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (86, 'I then? Tell me that first, an', 'laudantium', 93);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (87, 'Alice indignantly. \'Let me alo', 'reprehenderit', 64);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (88, 'Even the Duchess said after a ', 'culpa', 6);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (89, 'Who for such dainties would no', 'totam', 55);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (90, 'The miserable Hatter dropped h', 'voluptas', 40);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (91, 'THAT!\' \'Oh, you can\'t be civil', 'eligendi', 67);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (92, 'I like\"!\' \'You might just as u', 'blanditiis', 89);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (93, 'VERY unpleasant state of mind,', 'doloremque', 38);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (94, 'I eat or drink under the circu', 'nesciunt', 11);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (95, 'And argued each case with MINE', 'aut', 101);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (96, 'Pray, what is the capital of R', 'quod', 38);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (97, 'Alice hastily replied; \'at lea', 'aut', 15);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (98, 'Oh, my dear paws! Oh my dear p', 'fugit', 86);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (99, 'Alice could speak again. In a ', 'praesentium', 35);
INSERT INTO `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`, `nombre`, `tipoElementoEstructura`, `idCliente`) VALUES (100, 'Alice said nothing; she had ac', 'nam', 6);



#
# TABLE STRUCTURE FOR: AhorroElementoEstructuraEmpresa
#

DROP TABLE IF EXISTS `AhorroElementoEstructuraEmpresa`;

CREATE TABLE `AhorroElementoEstructuraEmpresa` (
  `idAhorroElementoEstructuraEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `idAhorro` int(11) DEFAULT NULL,
  `idElementoEstructuraEmpresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAhorroElementoEstructuraEmpresa`),
  KEY `AhorroElementoEstructuraEmpresa_Ahorro_idx` (`idAhorro`),
  KEY `AhorroElementoEstructuraEmpresa_EEE_idx` (`idElementoEstructuraEmpresa`),
  CONSTRAINT `AhorroElementoEstructuraEmpresa_Ahorro` FOREIGN KEY (`idAhorro`) REFERENCES `Ahorro` (`idAhorro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `AhorroElementoEstructuraEmpresa_EEE` FOREIGN KEY (`idElementoEstructuraEmpresa`) REFERENCES `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (1, 87, 53);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (2, 49, 85);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (3, 97, 56);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (4, 46, 25);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (5, 58, 69);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (6, 33, 72);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (7, 94, 1);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (8, 32, 2);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (9, 68, 19);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (10, 90, 56);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (11, 17, 79);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (12, 99, 52);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (13, 64, 24);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (14, 77, 47);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (15, 12, 2);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (16, 4, 76);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (17, 7, 87);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (18, 17, 82);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (19, 92, 47);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (20, 55, 45);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (21, 11, 56);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (22, 51, 10);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (23, 89, 87);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (24, 9, 34);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (25, 10, 39);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (26, 60, 31);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (27, 89, 80);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (28, 64, 8);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (29, 37, 59);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (30, 3, 16);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (31, 54, 80);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (32, 59, 67);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (33, 91, 41);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (34, 18, 24);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (35, 29, 42);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (36, 1, 53);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (37, 33, 32);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (38, 73, 79);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (39, 84, 29);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (40, 12, 20);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (41, 13, 24);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (42, 100, 86);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (43, 71, 56);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (44, 90, 9);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (45, 6, 41);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (46, 53, 50);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (47, 21, 72);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (48, 2, 8);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (49, 99, 77);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (50, 32, 52);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (51, 70, 75);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (52, 90, 5);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (53, 75, 77);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (54, 90, 69);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (55, 78, 53);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (56, 90, 80);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (57, 83, 93);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (58, 73, 53);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (59, 89, 17);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (60, 23, 91);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (61, 43, 58);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (62, 89, 37);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (63, 91, 95);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (64, 16, 87);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (65, 73, 30);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (66, 32, 50);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (67, 4, 24);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (68, 42, 99);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (69, 45, 44);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (70, 62, 81);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (71, 35, 16);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (72, 49, 47);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (73, 9, 99);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (74, 77, 48);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (75, 98, 48);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (76, 35, 16);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (77, 38, 43);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (78, 97, 44);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (79, 30, 63);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (80, 58, 94);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (81, 14, 94);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (82, 80, 83);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (83, 43, 85);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (84, 43, 93);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (85, 79, 97);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (86, 46, 34);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (87, 97, 32);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (88, 95, 2);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (89, 11, 84);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (90, 54, 17);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (91, 34, 46);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (92, 11, 80);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (93, 27, 78);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (94, 96, 58);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (95, 21, 45);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (96, 100, 74);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (97, 39, 91);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (98, 47, 78);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (99, 83, 94);
INSERT INTO `AhorroElementoEstructuraEmpresa` (`idAhorroElementoEstructuraEmpresa`, `idAhorro`, `idElementoEstructuraEmpresa`) VALUES (100, 77, 75);


#
# TABLE STRUCTURE FOR: CuentaBancaria
#

DROP TABLE IF EXISTS `CuentaBancaria`;

CREATE TABLE `CuentaBancaria` (
  `idCuentaBancaria` int(11) NOT NULL AUTO_INCREMENT,
  `numeroCuentaBancaria` varchar(20) DEFAULT NULL,
  `razonSocial` varchar(30) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCuentaBancaria`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (1, '58051644768103730', 'Salas-Banda', 'Proactive assymetric structure');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (2, '80121782768546388', 'Hernández e Hija', 'Synchronised composite GraphicalUserInterface');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (3, '14603594291164060', 'Barajas-Reyes', 'Total solution-oriented localareanetwork');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (4, '81999653459617032', 'Delvalle-Sanches', 'Mandatory systematic flexibility');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (5, '32143766474481976', 'Gracia, García y Barrera', 'Versatile methodical infrastructure');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (6, '69498809978924313', 'Gil y Flia.', 'Mandatory encompassing matrix');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (7, '17586189497448626', 'Huerta de Figueroa', 'Ameliorated modular database');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (8, '57964542553106886', 'Alarcón-Maestas', 'Enhanced intangible circuit');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (9, '60029801717493660', 'Camacho, Lomeli y Pichardo', 'Stand-alone heuristic paradigm');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (10, '72196795710472664', 'Cantú-Briones', 'Enterprise-wide radical hardware');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (11, '12719641021142001', 'Melgar, Batista y Espinoza', 'Ameliorated bifurcated artificialintelligence');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (12, '82752106636576355', 'Melgar, Malave y Naranjo', 'Fundamental modular extranet');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (13, '49845773814777069', 'Olivares-Figueroa', 'Self-enabling object-oriented help-desk');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (14, '18486306464498759', 'Atencio y Barraza', 'Inverse composite flexibility');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (15, '98393205641813876', 'Jiménez-Montero', 'Universal methodical architecture');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (16, '17528649182402058', 'Preciado e Hijos', 'Monitored tertiary portal');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (17, '18675064603121275', 'Pizarro, Villarreal y Centeno', 'Innovative even-keeled artificialintelligence');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (18, '31711834109954348', 'Gaytán e Hijo', 'Adaptive client-driven conglomeration');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (19, '10741996328031445', 'Raya de Nazario', 'Progressive real-time flexibility');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (20, '28878116522267684', 'Bahena-Castañeda', 'Mandatory local capacity');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (21, '94990903258793700', 'Rocha de Meza', 'Multi-lateral tertiary neural-net');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (22, '17959821721103881', 'Ornelas, Reynoso y Ceballos', 'Exclusive stable moratorium');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (23, '16762273490630730', 'Vanegas, Arguello y Ferrer', 'Reduced dynamic forecast');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (24, '37259003212327661', 'Meza-Caraballo', 'User-friendly client-driven artificialintelligence');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (25, '84037766572467529', 'Dueñas-Medina', 'Mandatory 4thgeneration function');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (26, '29521653971455475', 'Gurule y Monroy', 'Triple-buffered nextgeneration processimprovement');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (27, '88525986052810061', 'Saucedo, Álvarez y Ruiz', 'Open-source solution-oriented architecture');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (28, '64752925146841275', 'Gonzales, Ureña y Márquez', 'Persistent dedicated analyzer');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (29, '90789596241608966', 'Badillo e Hijo', 'Digitized dedicated hierarchy');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (30, '85476836814811428', 'Molina, Yáñez y Ledesma', 'Re-engineered empowering processimprovement');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (31, '35232351257027118', 'Zaragoza e Hijo', 'Organic 3rdgeneration website');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (32, '64667235705843149', 'Collado, Dávila y Amaya', 'Open-source multi-state algorithm');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (33, '92868117057650175', 'Estévez e Hija', 'Distributed content-based securedline');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (34, '61863475056389271', 'Soto, Grijalva y Esquibel', 'Devolved stable middleware');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (35, '52769282384702412', 'Gallardo, Abeyta y Bonilla', 'User-friendly system-worthy interface');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (36, '56929965630320008', 'Cantú, Venegas y Marín', 'Customer-focused radical throughput');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (37, '56427808520863570', 'Anguiano e Hijo', 'Business-focused even-keeled emulation');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (38, '55421604710976399', 'Pérez, Cardona y Mares', 'Self-enabling leadingedge alliance');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (39, '28631157128890722', 'Ríos, Cisneros y Marín', 'Diverse human-resource array');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (40, '75851859974007153', 'Barrera, Delatorre y Robles', 'Integrated grid-enabled customerloyalty');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (41, '85235851802249143', 'Matos-Vega', 'Visionary nextgeneration circuit');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (42, '20511885392776627', 'Quezada-Vélez', 'Configurable encompassing neural-net');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (43, '28486242036541454', 'Ramos-Cedillo', 'Down-sized systematic archive');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (44, '48995454632742590', 'Burgos, Carrillo y Dávila', 'Phased human-resource knowledgeuser');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (45, '94070929463213381', 'Ramón SRL', 'Monitored local knowledgebase');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (46, '86121069953459297', 'Muro, Serna y López', 'Secured user-facing monitoring');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (47, '62198556196160566', 'Delapaz y Flia.', 'Upgradable bifurcated productivity');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (48, '52181504851893140', 'Acuña-Lomeli', 'Networked regional GraphicalUserInterface');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (49, '99125038713486263', 'Barrientos e Hija', 'Up-sized didactic internetsolution');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (50, '84847601099716386', 'Amaya-Cordero', 'Mandatory object-oriented analyzer');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (51, '29927572539141078', 'Amaya, Valadez y Mayorga', 'Digitized intangible challenge');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (52, '78541572668223300', 'Lebrón de Orosco', 'Fundamental client-server framework');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (53, '83348329230259511', 'Vaca y Rascón', 'Total executive initiative');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (54, '48861299520911500', 'Gaona, Heredia y Ulloa', 'Exclusive multi-tasking artificialintelligence');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (55, '34156959237387365', 'Malave, Ocasio y Urías', 'Right-sized contextually-based workforce');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (56, '30715592318987649', 'Rosales-Pedroza', 'Exclusive upward-trending productivity');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (57, '27521185508354963', 'Villa y Rocha', 'Automated transitional systemengine');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (58, '93526799454592371', 'Deleón y Botello', 'Fully-configurable asynchronous data-warehouse');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (59, '79992835481503379', 'Valdivia-Salas', 'User-centric cohesive solution');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (60, '52478929382189981', 'Cisneros, Carvajal y Miranda', 'Centralized empowering service-desk');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (61, '75757972574350343', 'Burgos y Garza', 'Up-sized heuristic throughput');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (62, '29232753089618356', 'Sanabria, Solorio y Zamudio', 'Ergonomic neutral opensystem');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (63, '74126437681426663', 'Valdés, Caballero y Miramontes', 'Right-sized static solution');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (64, '29446973602377314', 'Espinal y Valdés', 'Decentralized 24hour GraphicalUserInterface');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (65, '17585262035964332', 'Lozano de Jiménez', 'Horizontal real-time conglomeration');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (66, '39724969148200627', 'Niño SRL', 'Managed neutral data-warehouse');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (67, '26193135285568082', 'Anaya, Cantú y Limón', 'Fundamental system-worthy focusgroup');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (68, '60207231923002723', 'Cervántez, Niño y Cerda', 'Team-oriented fault-tolerant forecast');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (69, '84797562700004431', 'Flores-Godoy', 'Implemented context-sensitive processimprovement');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (70, '28641389839830775', 'Cavazos de Farías', 'Diverse clear-thinking encoding');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (71, '18401141048425776', 'Barrera y Valverde', 'Digitized bifurcated emulation');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (72, '47518045426580837', 'Serrano de Cortez', 'Optimized homogeneous contingency');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (73, '21600950879944235', 'Ruiz, Soliz y Dávila', 'Fully-configurable global conglomeration');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (74, '29618673581012534', 'Bétancourt-Feliciano', 'Ergonomic bandwidth-monitored knowledgebase');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (75, '80860965368207502', 'Negrete e Hijo', 'Managed client-driven attitude');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (76, '61332003142418337', 'Jáquez, Méndez y Botello', 'Cross-platform coherent pricingstructure');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (77, '83367193898641638', 'Negrete y Jimínez', 'Organic global artificialintelligence');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (78, '30479102149325077', 'Miramontes y Narváez', 'Reduced eco-centric leverage');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (79, '73782747901153854', 'Rincón SRL', 'Quality-focused non-volatile capability');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (80, '46394544114290895', 'Ocasio, Cintrón y Tello', 'Total intermediate processimprovement');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (81, '83572525094048037', 'Bernal-Terán', 'Distributed impactful task-force');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (82, '34450645231224441', 'Chapa-Carvajal', 'Secured clear-thinking toolset');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (83, '78564919434459104', 'Colunga y Asoc.', 'Diverse needs-based algorithm');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (84, '80774491356251812', 'Negrete-Casares', 'Facetoface directional strategy');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (85, '19004099176351882', 'Jaramillo, Niño y Delafuente', 'De-engineered upward-trending openarchitecture');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (86, '96642855593539248', 'Venegas e Hijo', 'Facetoface encompassing support');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (87, '99918943136663920', 'Carrion y Varela', 'De-engineered eco-centric moderator');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (88, '68932028264205962', 'Pedraza y Yáñez', 'Visionary bi-directional attitude');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (89, '41800363210620628', 'Almaraz, Lara y Carrasco', 'Optional optimizing analyzer');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (90, '86723729508416393', 'de Jesús y Mata', 'Grass-roots tertiary extranet');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (91, '34450457374231072', 'Flores e Hija', 'Pre-emptive logistical forecast');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (92, '46381959398544849', 'Santana-Bravo', 'Cross-group transitional localareanetwork');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (93, '41061521846476629', 'Jasso, Rivero y Frías', 'Secured client-server projection');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (94, '90572367148217440', 'Arevalo-Mota', 'Diverse zerodefect securedline');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (95, '61674971310411736', 'Ramírez, Negrete y Solís', 'Virtual human-resource opensystem');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (96, '35949281096458272', 'Ferrer, González y Echevarría', 'Balanced responsive strategy');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (97, '84250560796565992', 'Ozuna, de Jesús y Santiago', 'Team-oriented modular access');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (98, '35587035781320334', 'Toledo y Rivero', 'Horizontal exuding securedline');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (99, '12640682686879784', 'Loya-Caballero', 'Versatile logistical complexity');
INSERT INTO `CuentaBancaria` (`idCuentaBancaria`, `numeroCuentaBancaria`, `razonSocial`, `banco`) VALUES (100, '44273148915840497', 'Perales, Cepeda y Peres', 'Seamless optimizing openarchitecture');




#
# TABLE STRUCTURE FOR: Poliza
#

DROP TABLE IF EXISTS `Poliza`;

CREATE TABLE `Poliza` (
  `idPoliza` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idPoliza`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (1, 27, '37187.03', '1979-12-26 11:32:56');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (2, 15, '6151.90', '1997-12-07 22:40:15');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (3, 35, '31946.05', '1971-07-16 12:36:20');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (4, 44, '96195.25', '2020-01-09 04:16:25');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (5, 23, '37139.16', '1973-03-10 22:37:59');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (6, 84, '71412.60', '1989-05-04 04:13:24');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (7, 81, '81839.25', '2007-04-08 05:34:54');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (8, 17, '25506.89', '1992-10-31 17:02:10');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (9, 47, '28039.99', '2020-01-24 12:33:25');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (10, 85, '78906.01', '1993-03-18 16:53:58');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (11, 91, '76080.54', '1980-02-03 20:01:34');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (12, 29, '93772.93', '1975-03-09 19:05:42');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (13, 73, '99211.93', '1988-05-01 18:48:52');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (14, 31, '21505.67', '1997-05-11 00:17:52');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (15, 62, '7493.60', '1993-11-12 08:58:41');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (16, 86, '58835.64', '2008-04-18 01:33:36');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (17, 82, '32800.23', '2004-06-01 23:59:05');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (18, 62, '61135.08', '2011-03-27 22:11:14');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (19, 90, '75317.23', '1988-08-31 20:06:07');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (20, 44, '72042.78', '1995-03-16 04:42:43');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (21, 25, '88201.12', '1978-10-04 06:52:34');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (22, 99, '721.55', '1999-07-02 22:05:31');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (23, 44, '55531.89', '2000-08-01 18:43:52');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (24, 92, '23534.10', '1984-11-26 03:14:27');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (25, 44, '71850.59', '1981-09-20 05:16:21');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (26, 50, '2102.71', '1993-08-01 19:49:42');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (27, 45, '80360.02', '2007-07-07 09:45:34');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (28, 94, '93060.57', '1973-01-09 15:37:24');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (29, 60, '14017.01', '1979-03-10 23:49:41');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (30, 39, '98869.63', '1984-05-29 16:40:33');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (31, 74, '39446.80', '2021-03-29 09:18:55');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (32, 18, '69970.50', '2010-02-15 04:04:49');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (33, 63, '30750.53', '1985-05-11 18:50:17');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (34, 66, '64848.53', '2011-02-21 09:54:09');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (35, 10, '36845.70', '1980-02-01 04:52:01');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (36, 38, '63347.14', '2003-01-20 14:31:55');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (37, 32, '68786.31', '1994-01-28 15:18:51');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (38, 94, '75946.05', '1987-05-05 04:03:51');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (39, 23, '65826.29', '1980-10-08 01:36:44');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (40, 9, '20391.50', '1997-10-26 23:40:26');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (41, 33, '99011.69', '2016-01-24 14:46:07');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (42, 48, '17907.13', '1975-04-23 20:47:31');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (43, 31, '22729.64', '1999-10-24 02:38:48');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (44, 9, '87387.26', '2023-08-31 13:26:45');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (45, 70, '20282.45', '1996-09-27 23:02:04');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (46, 3, '89021.80', '1995-07-21 23:22:30');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (47, 63, '64797.01', '2004-11-03 22:35:35');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (48, 32, '29830.18', '2018-09-28 05:39:43');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (49, 17, '94061.99', '2017-01-30 02:55:21');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (50, 6, '68229.22', '1985-01-07 04:37:08');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (51, 68, '8605.56', '1997-08-14 08:53:35');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (52, 47, '81717.13', '2007-04-22 22:07:42');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (53, 70, '88848.73', '2001-11-21 20:52:40');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (54, 43, '63670.35', '2004-02-06 11:13:04');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (55, 61, '64590.31', '1984-04-27 02:13:10');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (56, 87, '58655.52', '1976-03-15 22:28:34');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (57, 30, '13465.85', '1977-11-07 00:31:37');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (58, 64, '98805.30', '1980-07-04 23:01:35');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (59, 23, '27798.60', '1998-06-02 16:51:13');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (60, 47, '14965.98', '1974-03-24 02:38:42');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (61, 100, '60532.67', '2015-06-07 03:40:13');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (62, 64, '70326.93', '1990-11-18 07:36:24');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (63, 81, '8999.78', '2009-09-02 03:55:45');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (64, 89, '21670.92', '2013-10-02 19:43:56');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (65, 101, '24916.65', '1999-03-04 21:29:25');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (66, 75, '42020.45', '1973-12-16 07:25:23');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (67, 67, '39320.77', '1993-07-26 20:28:58');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (68, 99, '8159.19', '1999-05-30 17:30:19');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (69, 32, '97648.65', '1994-08-24 21:08:39');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (70, 98, '50406.09', '1981-05-10 22:29:07');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (71, 61, '34921.35', '2005-05-06 13:41:10');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (72, 80, '71310.78', '1975-10-06 06:19:16');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (73, 49, '16310.83', '2020-06-04 09:33:13');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (74, 40, '48961.55', '2022-02-18 06:58:55');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (75, 18, '72601.31', '2006-07-02 03:09:50');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (76, 37, '48397.77', '2017-04-05 05:23:34');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (77, 87, '15535.32', '1983-05-17 13:35:01');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (78, 5, '55349.58', '2014-08-30 11:35:48');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (79, 12, '26991.89', '2008-10-05 08:16:29');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (80, 96, '62900.04', '1978-12-17 21:18:43');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (81, 37, '45244.12', '2016-08-19 20:38:46');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (82, 65, '27574.91', '1994-09-27 18:25:20');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (83, 23, '54427.60', '2007-08-11 08:50:00');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (84, 13, '28677.59', '2002-04-25 01:21:14');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (85, 40, '69991.16', '1995-08-17 21:56:04');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (86, 6, '36632.92', '1973-12-20 07:04:19');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (87, 97, '57197.89', '1971-01-14 13:54:51');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (88, 31, '37472.53', '2001-04-25 18:55:42');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (89, 84, '40243.84', '1987-09-10 11:10:40');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (90, 86, '8137.69', '2012-01-14 08:34:25');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (91, 19, '44945.77', '2002-05-26 23:40:27');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (92, 69, '78944.21', '2004-11-05 14:30:12');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (93, 99, '99113.96', '1988-05-10 16:31:28');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (94, 41, '19140.93', '1981-11-22 11:35:16');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (95, 17, '4652.51', '1994-02-07 22:01:03');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (96, 37, '66209.98', '1981-09-03 03:11:09');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (97, 73, '81944.32', '1988-09-10 09:54:10');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (98, 70, '72048.34', '1997-02-08 01:18:28');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (99, 38, '96176.09', '1978-11-09 21:06:14');
INSERT INTO `Poliza` (`idPoliza`, `idUsuario`, `monto`, `fecha`) VALUES (100, 45, '17992.46', '1983-02-27 02:20:20');



#
# TABLE STRUCTURE FOR: MovimientoPoliza
#

DROP TABLE IF EXISTS `MovimientoPoliza`;

CREATE TABLE `MovimientoPoliza` (
  `idMovimientoPoliza` int(11) NOT NULL AUTO_INCREMENT,
  `cuentaContable` varchar(100) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `idPoliza` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMovimientoPoliza`),
  KEY `MovimientoPoliza_Poliza_idx` (`idPoliza`),
  CONSTRAINT `MovimientoPoliza_Poliza` FOREIGN KEY (`idPoliza`) REFERENCES `Poliza` (`idPoliza`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (1, 'Assumenda inventore eaque qui illo possimus.', '2.10', 40);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (2, 'Nisi maiores deserunt rerum eos ipsam recusandae totam.', '3266048.50', 23);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (3, 'Aliquam et ea dolorem ipsam.', '1668306.29', 12);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (4, 'Repudiandae quo quo eos nesciunt quos quis.', '162399.53', 42);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (5, 'Commodi et reiciendis nihil aliquid.', '489.35', 49);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (6, 'Tempora reiciendis libero ex.', '2863225.46', 41);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (7, 'Repellendus dolorem qui facere veritatis a in optio.', '1.00', 54);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (8, 'Et maxime corporis et ab.', '1598549.46', 50);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (9, 'Ut ipsam tempora totam dolor ad.', '0.00', 67);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (10, 'Rerum atque numquam eligendi nihil nam velit.', '3.69', 24);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (11, 'Et repellat earum nihil vero voluptatem eum.', '1256.00', 54);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (12, 'Ea necessitatibus consequatur incidunt aut.', '840.13', 60);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (13, 'Ipsa harum temporibus autem rerum ipsum consequatur qui.', '11701.69', 15);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (14, 'Eum qui autem nisi consectetur.', '17233908.94', 8);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (15, 'Repudiandae vero enim voluptas exercitationem vel nihil cumque.', '234554.35', 37);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (16, 'Iure ea iusto dolorum fugit.', '40973180.47', 80);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (17, 'Non tempora sapiente et cupiditate molestias quod.', '99999999.99', 52);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (18, 'Et nisi mollitia impedit ad magnam quae itaque et.', '1.73', 80);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (19, 'Qui molestiae delectus beatae ullam asperiores aliquam nobis.', '196.41', 3);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (20, 'Dolorem quae quaerat tempore praesentium.', '41456.42', 17);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (21, 'Ad aliquam maiores nisi a.', '31752924.93', 91);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (22, 'Et id ipsum ut sed rerum minima.', '10481775.40', 51);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (23, 'Nulla sed molestias eos voluptatibus ea.', '0.00', 83);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (24, 'Dolore est ut autem in sit consectetur numquam.', '29715295.00', 22);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (25, 'Et perferendis molestiae porro similique quaerat.', '5312660.36', 64);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (26, 'Quia possimus labore fuga non quam.', '190.69', 89);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (27, 'Consequatur praesentium est voluptatum molestiae non.', '29238.42', 25);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (28, 'Et cumque voluptatem ducimus repellat voluptas soluta vel.', '186708.63', 47);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (29, 'Et consequuntur dolorum aliquid sed eligendi.', '64552.01', 87);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (30, 'Rerum minus quo dolor.', '100138.86', 72);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (31, 'Libero dolores voluptates assumenda quo et accusamus et.', '2351847.21', 57);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (32, 'Iste officiis eligendi voluptate perferendis ea et.', '99999999.99', 35);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (33, 'Ut alias aliquid illum consequatur officia.', '7557123.77', 15);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (34, 'Est reiciendis ut molestiae blanditiis dicta numquam.', '760.00', 39);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (35, 'Itaque modi voluptatem consequatur sunt consequatur eaque libero omnis.', '657.61', 71);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (36, 'Id sequi distinctio aliquam hic debitis.', '1.31', 23);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (37, 'Mollitia eaque provident numquam quas fugit.', '33.07', 72);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (38, 'Impedit voluptate libero consequatur officiis occaecati.', '8923945.55', 3);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (39, 'Vitae non aspernatur cum.', '58.52', 68);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (40, 'Ipsa dicta sapiente explicabo quia optio.', '4.28', 1);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (41, 'Qui et eveniet provident rerum minus vel ea placeat.', '149417.26', 89);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (42, 'Qui quaerat qui ex.', '0.00', 13);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (43, 'Aut odio et consequuntur ut sit iure.', '43958673.70', 35);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (44, 'Nulla ut expedita numquam nisi consectetur impedit natus.', '53701241.70', 74);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (45, 'Iusto occaecati dolor et quidem quia.', '899677.74', 28);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (46, 'Voluptatem rerum enim culpa ipsa omnis.', '381.35', 71);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (47, 'Sunt odio id sed est esse.', '11129.09', 43);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (48, 'Consequatur necessitatibus et consectetur numquam.', '304.92', 46);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (49, 'Consequatur in nesciunt et eligendi recusandae.', '12.06', 59);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (50, 'Tempore voluptate culpa ipsum aspernatur rerum.', '3443.24', 57);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (51, 'Nesciunt quo earum sed voluptatum.', '0.00', 70);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (52, 'Ipsum nobis eius quasi.', '652482.70', 35);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (53, 'Magnam laboriosam commodi aliquam maiores eos est nostrum.', '2986.00', 92);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (54, 'Quasi totam esse voluptates dolores explicabo possimus saepe.', '997318.70', 9);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (55, 'Omnis odit quis voluptates ratione quod.', '6598.15', 70);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (56, 'Modi reprehenderit dolore animi qui earum.', '8480750.87', 17);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (57, 'Ullam et illo adipisci commodi.', '2139900.16', 33);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (58, 'Ducimus dolore aut aliquam rerum et assumenda excepturi qui.', '12.00', 28);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (59, 'Dolorum saepe vitae dolore alias rerum.', '7237.00', 5);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (60, 'Expedita necessitatibus ex quam consequatur fugiat ex occaecati.', '102.38', 66);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (61, 'Quis earum et animi laboriosam corrupti.', '9347.84', 100);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (62, 'Odit nostrum illo sunt est quis incidunt in.', '48737.98', 81);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (63, 'Maiores aut quisquam blanditiis unde similique officiis nesciunt.', '0.14', 4);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (64, 'Placeat itaque aspernatur fuga quis voluptas est enim.', '43.65', 85);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (65, 'Vel blanditiis est distinctio nulla.', '44779131.71', 18);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (66, 'Delectus asperiores repellendus porro labore molestiae.', '5187773.00', 98);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (67, 'Accusamus eius debitis et aspernatur.', '1034041.55', 30);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (68, 'Soluta quos commodi quo autem similique.', '9026048.39', 2);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (69, 'Sed autem quia praesentium dolorem harum fugiat sed.', '74600809.60', 61);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (70, 'Facere rerum nisi nesciunt consequuntur quaerat.', '18458.73', 48);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (71, 'Deleniti eligendi aspernatur dolor ipsa aperiam sequi.', '1.00', 61);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (72, 'Praesentium laboriosam repudiandae officia esse qui voluptatem commodi.', '49429472.56', 94);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (73, 'In et nulla ut earum accusamus.', '4586639.57', 33);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (74, 'Ut fugiat excepturi qui consequatur.', '82.55', 36);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (75, 'Vel recusandae enim quae aut saepe aut.', '5930156.76', 66);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (76, 'Itaque alias hic alias qui voluptatibus ex.', '6160.99', 47);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (77, 'Expedita debitis ducimus dolores.', '277229.72', 6);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (78, 'Atque harum dolorem illo incidunt enim.', '52647731.38', 43);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (79, 'Laboriosam quia non placeat pariatur explicabo.', '45183793.36', 52);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (80, 'Perferendis magnam voluptatem quis enim placeat.', '0.00', 14);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (81, 'Cumque porro suscipit natus cum.', '52.00', 71);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (82, 'Natus incidunt aspernatur nemo sit.', '43.04', 84);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (83, 'Facilis laudantium debitis totam omnis provident voluptatem excepturi.', '6666.76', 38);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (84, 'Animi voluptates aut nisi vero non in.', '0.00', 72);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (85, 'Quo et quidem eos iusto molestiae.', '10.74', 70);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (86, 'Dolorum deleniti quia ipsam ipsam velit.', '7355879.63', 44);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (87, 'Eum vel quia id sed modi.', '1809.00', 76);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (88, 'Maiores qui qui deleniti dicta officia saepe.', '63.00', 26);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (89, 'Minus quas minima et magnam nobis autem.', '0.00', 45);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (90, 'Nihil adipisci impedit voluptatum praesentium repudiandae blanditiis.', '24253555.70', 63);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (91, 'Provident est laborum exercitationem eum ipsum necessitatibus magni.', '734.60', 3);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (92, 'Architecto inventore vel recusandae deserunt voluptatem eos porro.', '18078781.70', 44);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (93, 'Et ut magnam recusandae aspernatur et.', '59252367.26', 15);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (94, 'Deserunt atque est in optio dolorem odit.', '33.80', 59);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (95, 'Dolor dolore est culpa deserunt earum omnis.', '1.79', 56);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (96, 'Ullam id sint minima possimus.', '0.59', 22);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (97, 'Id voluptatem vero voluptates non voluptatem sed.', '99999999.99', 18);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (98, 'Cum possimus non nesciunt quibusdam.', '143503.19', 38);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (99, 'Sit ea voluptatem saepe est.', '31.40', 37);
INSERT INTO `MovimientoPoliza` (`idMovimientoPoliza`, `cuentaContable`, `monto`, `idPoliza`) VALUES (100, 'Sunt quis aut voluptas voluptas commodi.', '19.01', 90);


#
# TABLE STRUCTURE FOR: PerfilUsuario
#

DROP TABLE IF EXISTS `PerfilUsuario`;

CREATE TABLE `PerfilUsuario` (
  `idPerfilUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idPerfilUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (3, 'voluptatum');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (4, 'voluptas');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (5, 'totam');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (6, 'quasi');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (7, 'voluptate');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (8, 'et');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (9, 'libero');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (10, 'eos');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (11, 'sed');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (12, 'voluptatem');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (13, 'libero');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (14, 'aut');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (15, 'exercitationem');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (16, 'et');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (17, 'corrupti');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (18, 'et');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (19, 'quae');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (20, 'perspiciatis');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (21, 'recusandae');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (22, 'dicta');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (23, 'cupiditate');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (24, 'iusto');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (25, 'unde');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (26, 'voluptatum');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (27, 'voluptatem');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (28, 'saepe');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (29, 'quis');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (30, 'tempore');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (31, 'et');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (32, 'nulla');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (33, 'dignissimos');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (34, 'ducimus');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (35, 'voluptatem');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (36, 'ipsam');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (37, 'et');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (38, 'cum');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (39, 'amet');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (40, 'laborum');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (41, 'aut');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (42, 'magnam');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (43, 'rem');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (44, 'rerum');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (45, 'veniam');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (46, 'est');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (47, 'molestiae');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (48, 'dolorum');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (49, 'aut');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (50, 'saepe');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (51, 'ut');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (52, 'excepturi');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (53, 'consequatur');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (54, 'eos');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (55, 'et');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (56, 'eum');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (57, 'autem');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (58, 'natus');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (59, 'sapiente');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (60, 'rerum');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (61, 'quibusdam');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (62, 'dolor');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (63, 'et');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (64, 'et');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (65, 'dolore');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (66, 'blanditiis');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (67, 'illo');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (68, 'voluptatem');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (69, 'sit');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (70, 'accusamus');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (71, 'vel');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (72, 'et');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (73, 'a');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (74, 'distinctio');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (75, 'exercitationem');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (76, 'itaque');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (77, 'sed');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (78, 'quae');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (79, 'accusantium');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (80, 'dolor');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (81, 'sapiente');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (82, 'sapiente');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (83, 'incidunt');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (84, 'facere');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (85, 'voluptatum');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (86, 'aut');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (87, 'quia');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (88, 'consectetur');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (89, 'a');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (90, 'voluptatibus');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (91, 'magni');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (92, 'mollitia');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (93, 'consectetur');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (94, 'necessitatibus');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (95, 'culpa');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (96, 'maiores');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (97, 'vero');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (98, 'aliquam');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (99, 'saepe');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (100, 'dolores');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (101, 'qui');
INSERT INTO `PerfilUsuario` (`idPerfilUsuario`, `nombre`) VALUES (102, 'ipsam');


#
# TABLE STRUCTURE FOR: PerfilUsuarioAcceso
#

DROP TABLE IF EXISTS `PerfilUsuarioAcceso`;

CREATE TABLE `PerfilUsuarioAcceso` (
  `idPerfilUsuarioAcceso` int(11) NOT NULL AUTO_INCREMENT,
  `idPerfilUsuario` int(11) DEFAULT NULL,
  `idAcceso` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPerfilUsuarioAcceso`),
  KEY `PerfilUsuarioAcceso_PerfilUsuario_idx` (`idPerfilUsuario`),
  KEY `PerfilUsuarioAcceso_Acceso_idx` (`idAcceso`),
  CONSTRAINT `PerfilUsuarioAcceso_Acceso` FOREIGN KEY (`idAcceso`) REFERENCES `Acceso` (`idAcceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PerfilUsuarioAcceso_PerfilUsuario` FOREIGN KEY (`idPerfilUsuario`) REFERENCES `PerfilUsuario` (`idPerfilUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (6, 85, 4);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (7, 3, 4);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (8, 63, 17);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (9, 56, 8);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (10, 46, 18);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (11, 48, 18);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (12, 44, 5);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (13, 31, 9);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (14, 72, 9);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (15, 47, 7);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (16, 73, 13);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (17, 32, 5);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (18, 14, 11);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (19, 46, 18);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (20, 26, 4);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (21, 71, 7);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (22, 100, 12);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (23, 9, 10);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (24, 66, 4);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (25, 101, 14);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (26, 102, 18);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (27, 100, 7);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (28, 71, 6);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (29, 62, 9);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (30, 85, 17);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (31, 98, 18);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (32, 69, 14);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (33, 62, 16);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (34, 88, 4);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (35, 91, 8);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (36, 98, 12);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (37, 68, 6);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (38, 82, 11);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (39, 66, 6);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (40, 70, 7);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (41, 80, 16);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (42, 8, 18);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (43, 3, 12);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (44, 12, 17);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (45, 86, 4);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (46, 90, 6);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (47, 72, 13);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (48, 59, 14);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (49, 27, 16);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (50, 21, 8);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (51, 57, 15);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (52, 81, 5);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (53, 71, 15);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (54, 89, 5);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (55, 27, 15);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (56, 5, 14);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (57, 29, 7);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (58, 100, 9);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (59, 93, 18);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (60, 69, 17);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (61, 72, 9);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (62, 85, 10);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (63, 47, 13);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (64, 5, 11);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (65, 92, 17);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (66, 10, 8);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (67, 27, 7);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (68, 88, 15);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (69, 56, 18);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (70, 69, 7);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (71, 94, 8);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (72, 36, 7);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (73, 78, 15);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (74, 75, 16);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (75, 29, 11);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (76, 37, 7);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (77, 43, 7);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (78, 87, 14);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (79, 52, 4);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (80, 43, 11);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (81, 54, 8);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (82, 23, 14);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (83, 99, 10);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (84, 64, 8);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (85, 91, 6);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (86, 24, 4);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (87, 51, 9);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (88, 61, 8);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (89, 102, 13);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (90, 85, 14);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (91, 28, 11);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (92, 22, 12);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (93, 21, 18);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (94, 63, 9);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (95, 3, 16);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (96, 33, 6);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (97, 72, 15);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (98, 96, 11);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (99, 83, 13);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (100, 41, 13);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (101, 10, 4);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (102, 63, 14);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (103, 87, 12);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (104, 55, 16);
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuarioAcceso`, `idPerfilUsuario`, `idAcceso`) VALUES (105, 39, 14);

#
# TABLE STRUCTURE FOR: TipoMovimientoDeposito
#

DROP TABLE IF EXISTS `TipoMovimientoDeposito`;

CREATE TABLE `TipoMovimientoDeposito` (
  `idTipoMovimientoDeposito` int(11) NOT NULL AUTO_INCREMENT,
  `clave` char(5) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idTipoMovimientoDeposito`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (1, '21052', 'Romina Aguilera Segundo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (2, '95365', 'Ian Cintrón');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (3, '46934', 'Ing. Rafael Navarro');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (4, '47194', 'Ing. Emily Armendáriz');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (5, '28142', 'Ornela Salcido');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (6, '27858', 'Srita. Victoria Bonilla Tercer');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (7, '28455', 'Rafaela Robledo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (8, '80129', 'Christopher Haro');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (9, '81471', 'Christian Arellano');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (10, '28921', 'Jesús Ruiz');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (11, '11543', 'Ashley Rentería Hijo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (12, '94523', 'Benjamín Hurtado');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (13, '24250', 'Benjamín Roldán');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (14, '17147', 'Regina Barrientos');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (15, '99171', 'Matthew Guerra');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (16, '95696', 'Alan Acevedo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (17, '82673', 'Ariana Zavala');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (18, '99166', 'Fabiana Mercado');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (19, '91254', 'Violeta Terán Tercero');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (20, '41707', 'Ana Sofía Olivares Tercero');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (21, '13434', 'Ing. Alejandra Valdez Hijo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (22, '74452', 'Juana Samaniego');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (23, '80827', 'Constanza Calderón');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (24, '92336', 'Emiliano Gamboa');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (25, '78214', 'Ing. Thiago Reyes');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (26, '35023', 'Antonia Gallardo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (27, '74840', 'Damián Quiñónez Tercero');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (28, '75500', 'Daniela Zamora');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (29, '48254', 'Dn. Aarón Corrales Tercero');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (30, '15071', 'Sophie Arguello');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (31, '99150', 'Maite Gallardo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (32, '36068', 'Julián Casanova');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (33, '32809', 'Jesús Cortés Hijo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (34, '35109', 'Sebastián Vanegas');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (35, '12575', 'Lic. Julieta Malave Segundo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (36, '36570', 'Dr. Dante Orellana Segundo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (37, '30095', 'Samuel Gálvez');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (38, '77020', 'Bianca Botello Tercero');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (39, '86478', 'Ing. Salomé Laureano Hijo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (40, '52908', 'Miranda Tijerina');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (41, '74355', 'Ing. Alex Arias');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (42, '81942', 'Lucía Matías');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (43, '81370', 'Alonso Baca');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (44, '95461', 'Lautaro Ledesma');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (45, '20173', 'Bianca Macías');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (46, '76627', 'Joshua Orellana Segundo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (47, '75520', 'Anthony Meléndez');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (48, '47443', 'Axel Luna Hijo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (49, '64394', 'Srita. Fabiana Serna');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (50, '45130', 'Ximena/Jimena Tamez');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (51, '51089', 'Valeria Colunga');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (52, '71286', 'Lucas Munguía Segundo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (53, '12333', 'Gael Luevano');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (54, '14128', 'Ing. Zoe Almanza Tercero');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (55, '42858', 'Sr. Hugo Godínez Tercero');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (56, '42199', 'Ana Paula Patiño');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (57, '41916', 'Sara Sofía Sánchez');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (58, '28379', 'Juan Manuel Olivera');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (59, '87765', 'Allison Zambrano');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (60, '74389', 'Adrián Mireles');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (61, '63988', 'Manuela García');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (62, '22654', 'Ignacio Atencio');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (63, '95033', 'Lic. Juan Pablo Santillán Segu');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (64, '55072', 'Emma Luján');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (65, '92071', 'Jazmín Urías');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (66, '63866', 'Ing. María Alejandra Aguilera ');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (67, '37910', 'Srita. Rafaela Alonso');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (68, '58430', 'Horacio Barrera');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (69, '25594', 'Ximena/Jimena Delarosa Hijo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (70, '39549', 'Elena  Cerda');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (71, '47761', 'Srita. Magdalena Ledesma Terce');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (72, '45162', 'Sara Melgar');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (73, '17327', 'Guadalupe Suárez');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (74, '49567', 'Samuel Bueno');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (75, '62663', 'Rodrigo Valdivia');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (76, '99515', 'Juan Diego Magaña');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (77, '95360', 'Renata Luna');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (78, '19821', 'Isidora Ruiz Segundo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (79, '37304', 'Lautaro Acosta');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (80, '94119', 'Josué Santacruz');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (81, '25473', 'Lucía Borrego');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (82, '89344', 'Dr. Manuela Bustamante Segundo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (83, '22734', 'Lic. Thiago Reyes');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (84, '77973', 'Lucía Rosales');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (85, '35407', 'Rebeca Carrion');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (86, '39006', 'Dr. Gabriel Santiago');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (87, '71596', 'Lic. Matthew Marín Tercero');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (88, '85841', 'Magdalena Santacruz');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (89, '24003', 'María Quintana Segundo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (90, '78803', 'Dr. Miguel Luevano Tercero');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (91, '24314', 'Martina Casárez');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (92, '53210', 'Dr. Mateo Rocha');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (93, '99374', 'Sophie Lozano Hijo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (94, '94902', 'Valentín Mercado');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (95, '63156', 'Mariana Valle Segundo');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (96, '11809', 'Fátima  Saavedra');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (97, '36532', 'Maite Tejada');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (98, '28958', 'Nadia Llamas');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (99, '63787', 'Lic. María José Figueroa Terce');
INSERT INTO `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`, `clave`, `nombre`) VALUES (100, '14981', 'Malena Sandoval');


#
# TABLE STRUCTURE FOR: Usuario
#

DROP TABLE IF EXISTS `Usuario`;

CREATE TABLE `Usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `RFC` varchar(15) DEFAULT NULL,
  `CURP` varchar(20) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellidoPaterno` varchar(30) DEFAULT NULL,
  `apellidoMaterno` varchar(30) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `passwordTemporal` varchar(15) DEFAULT NULL,
  `idElementoEstructuraEmpresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (3, 'ucastellanos', 'yotero@example.com', '(189)426-4760', '(99)155631-3529', 'Anaya y Ocasio', '58 en', 'Violeta', 'Leonardo', 'Valadez', 'b77dc70cfa6db3d', 'cde9ac680360491', 42);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (4, 'zpacheco', 'xhernández@example.org', '(22)4532-2451', '(414)498-8586', 'Arellano, Salas', '81 uu', 'Jesús', 'Sebastián', 'Mares', '5554e9b48b2dd23', '7a143c932fa0227', 45);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (5, 'juan manuel.méndez', 'martín.velasco@example.com', '(1226)42-8821', '(1781)41-1736', 'Velázquez e Hij', '99 ka', 'Carla', 'Sara Sofía', 'Linares', 'cf3f54ecb0fc635', '48c98a81007d11f', 5);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (6, 'ogarrido', 'lola.serrato@example.net', '(867)483-7547', '(50)5508-4147', 'Quintanilla-Apo', '53 nh', 'Ignacio', 'María Camila', 'Maldonado', '2e1bf9f9c3e6dda', '119971e49c3602a', 44);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (7, 'tzaragoza', 'elena40@example.org', '(6015)1545-4512', '673-353-4864', 'Saucedo SRL', '36 xg', 'Benjamín', 'Lola', 'Zavala', 'e7708e600e71ca4', 'ae37bc31513bff5', 24);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (8, 'gabriel86', 'nahuel57@example.org', '(428)512-5232', '(65)4604-5543', 'Salgado y Parra', '27 st', 'Renata', 'Isaac', 'Gaytán', 'd836280a65fbeda', '50bafa49b3260d9', 93);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (9, 'miguel ángel.roldán', 'yálvarez@example.org', '(9612)47-3623', '+51(9)440731782', 'Martínez S. de ', '84 yy', 'Emmanuel', 'Leonardo', 'Quintana', '698b6c2b8deee44', '4380ae60a31fd17', 32);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (10, 'juan martín45', 'vergara.nahuel@example.org', '(5352)1544-4241', '(2239)44-0832', 'Alvarado, Armen', '88 og', 'Alan', 'Thiago', 'Zambrano', 'e33d31bd9f12d74', '10ca62cdf9949ec', 65);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (11, 'egarica', 'godoy.christian@example.org', '+32(5)819562489', '(121)483-3583', 'Escobedo y Rodr', '04 hx', 'Thiago', 'Regina', 'Peralta', 'c08a7603c9b67cd', '2264ce5d0627c28', 26);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (12, 'emma94', 'gallardo.miguelángel@example.com', '+76(7)880403035', '(799)441-7298', 'Lebrón, Pérez y', '42 bx', 'Ornela', 'Sara', 'Almaraz', 'd4908c7fa129339', 'c252530bb3d1149', 14);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (13, 'tmendoza', 'luis.maestas@example.org', '(254)15463-5881', '383-398-1873', 'Prado y Macías', '07 fj', 'Julieta', 'Olivia', 'Vallejo', '1c131cb6154e2cb', '1db9c12cb557289', 50);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (14, 'ornela.navarro', 'jochoa@example.com', '(091)427-6342', '(722)15444-4571', 'Gutiérrez y Ago', '53 hm', 'Dylan', 'Emilia', 'Martínez', 'b155346be71d297', '5fd63cae74a3fe7', 74);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (15, 'axel87', 'sarasofía.borrego@example.net', '(601)406-6055', '(291)15430-0538', 'Maldonado de Ra', '71 fp', 'Francisco', 'Kevin', 'Fernández', '393b8d5f8b88b08', '5e8428120a02802', 3);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (16, 'santiago.amelia', 'anasofía97@example.org', '786-023-5035', '(14)4224-9293', 'Manzanares-Alma', '61 kz', 'Emmanuel', 'Emily', 'Villanueva', 'b249c8305759e2a', '12d93825182a683', 22);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (17, 'catalina70', 'sofía.estrada@example.net', '(17)4981-3579', '(983)15559-3570', 'Guardado-Zambra', '09 sj', 'Alessandra', 'Julia', 'Tijerina', 'db337c998a71431', 'e1b320204751ec1', 87);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (18, 'miguel ángel.dávila', 'pontiveros@example.org', '(15)4892-6110', '(1713)46-4418', 'Orosco y Mora', '63 vk', 'Isaac', 'Leonardo', 'Ferrer', '39a7d585f0cbdbf', '1ae1e62605f02f6', 54);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (19, 'samaniego.damián', 'oliva65@example.org', '(78)155873-0221', '(1435)42-9247', 'Nieto-Anguiano', '53 lc', 'Antonia', 'Sofía', 'Arguello', 'd747037bc2ec926', '28767933d6d384a', 96);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (20, 'allison94', 'maríajosé.matías@example.org', '(9586)1555-5275', '(8913)41-6700', 'Pelayo y Segovi', '13 ws', 'Emmanuel', 'Juan José', 'Guerrero', '942a1b98ea20c4d', 'a57622cef0389ec', 80);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (21, 'lautaro.alarcón', 'melgar.antonella@example.net', '(30)5033-5757', '(72)4878-9616', 'Quezada-Villega', '78 mz', 'Matthew', 'Alan', 'Almanza', 'd52059d168090f4', '6b18aa2bac71754', 58);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (22, 'josefina.villalpando', 'rodrigo.villareal@example.net', '(4225)1546-0145', '(79)4030-0873', 'Varela y Terraz', '66 tr', 'Rebeca', 'Andrea', 'Ballesteros', '0ffc840549beeed', 'db6c9f26feba4cf', 55);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (23, 'rodríguez.martina', 'serrano.luciano@example.org', '(97)4227-0479', '+26(9)620953837', 'Escamilla y Lab', '56 pr', 'Santino', 'Felipe', 'Guajardo', '112a04ea555dfe1', 'd5993a22cb1eaca', 30);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (24, 'alcántar.elena ', 'casanova.alessandra@example.net', '(860)420-1279', '(28)4582-5487', 'Montero-Delaros', '66 ca', 'Maximiliano', 'Delfina', 'Alemán', '453c1c404f89967', '3ab6cc9f957f9fb', 35);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (25, 'kevin.carrion', 'gael96@example.com', '(910)15563-3539', '(0765)45-8825', 'Solorio y Bermú', '67 pf', 'David', 'Malena', 'Perales', 'ad45f35829149fe', '6141e5755305772', 84);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (26, 'pablo.farías', 'ivan66@example.com', '(96)4410-4785', '(3196)47-5884', 'Aponte e Hijo', '29 bz', 'Nadia', 'Emmanuel', 'Terán', 'f457947a1fe0753', 'dffa7683140052c', 34);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (27, 'porras.aarón', 'pedro63@example.com', '(9352)1551-9105', '(45)154022-4360', 'Ruiz e Hijos', '87 ay', 'Felipe', 'Ariadna', 'Rojo', 'b3015bacbbe61c5', '1f305e5a770ef69', 31);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (28, 'pedraza.matthew', 'simón17@example.net', '(111)537-0094', '503-576-5525', 'Tórrez-Bernal', '36 rb', 'Camila', 'Michelle', 'Canales', '5a21fe0af3e8d04', '65374c66ca3d858', 58);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (29, 'emilio.jáquez', 'imedrano@example.org', '(894)487-7153', '(96)4943-9536', 'Hernández-Páez', '44 vj', 'Constanza', 'Jorge', 'Heredia', '67b25325e3da51b', 'd91996183d34bd6', 46);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (30, 'xvalverde', 'matías.porras@example.net', '+01(5)982812061', '(40)155481-2158', 'Villegas y Agos', '47 xx', 'Alejandra', 'Elena ', 'Longoria', '158c1cb005c4054', 'a9057ea97d4829e', 1);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (31, 'ochacón', 'cavazos.ignacio@example.org', '(24)155405-1055', '(291)522-0537', 'Arenas, Velasco', '24 tb', 'Luis', 'Lola', 'Quiñones', 'c7091ee6b18b6a8', 'e9ba1678140890c', 80);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (32, 'josefa84', 'aheredia@example.com', '(441)599-7824', '(937)15574-8506', 'Jasso y Urrutia', '57 kt', 'Luana', 'Emmanuel', 'Molina', '254ca21bc50a64a', '559d7ec8c60c445', 20);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (33, 'malonzo', 'miranda52@example.com', '+40(3)650422617', '+34(6)391210949', 'Mena de Medrano', '34 yp', 'Romina', 'Manuel', 'Chapa', '110d8fdc2250fb6', '02936e78e6696ba', 60);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (34, 'constanza41', 'ecorrea@example.org', '158-478-0984', '(460)538-6636', 'Montez, Delapaz', '38 jz', 'Josefina', 'Matías', 'Fernández', '97f4696e8e69ca6', '311270dd7e01983', 84);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (35, 'atencio.samantha', 'fátima.gil@example.net', '(826)457-5249', '(338)494-2717', 'Bravo, Chapa y ', '53 ch', 'Victoria', 'Franco', 'Alfaro', '2063df7311515cf', 'f3b54f868ee8773', 46);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (36, 'alva.alexander', 'gvilla@example.org', '(4540)1549-7153', '(558)15482-7594', 'Mojica y Montal', '68 wg', 'María Fernanda', 'Silvana ', 'Lovato', 'fd5b2e78330caf1', 'cb0a1ce2da8ca84', 13);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (37, 'regina52', 'emilio.rascón@example.org', '(066)580-8600', '(87)4881-7618', 'Ulloa de Anguia', '27 pb', 'Clara', 'Renata', 'Gallardo', '2a784b4f17c4407', 'baf720497e88b7c', 70);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (38, 'irene17', 'julián.porras@example.com', '(77)155367-9910', '(588)484-8775', 'Delgado e Hijo', '07 ai', 'Constanza', 'Gabriel', 'Montemayor', '01926c08f590556', 'cb906f6f2833305', 63);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (39, 'rafael.villagómez', 'lvillarreal@example.org', '(09)155697-7536', '(220)402-6591', 'Méndez y Santil', '67 rw', 'Sofía', 'Luana', 'Leyva', 'de2d548fbd17312', 'e612c739238baa7', 100);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (40, 'gabriel.orta', 'leonardo65@example.net', '(011)15430-1662', '(910)509-2560', 'Orellana, Puent', '45 yg', 'Christian', 'Julia', 'Sisneros', '4c4015cdbd066ff', '3fc6ed741defaf7', 52);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (41, 'ttoro', 'luciana.manzanares@example.net', '(3125)44-7295', '(568)15468-8506', 'Baeza y Chávez', '82 vt', 'Carla', 'Elías', 'Ordóñez', 'cb84ac445130b52', '847bb84436ea268', 18);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (42, 'ana sofía25', 'jalmanza@example.net', '(34)155242-1445', '(50)155273-8746', 'Uribe, Barraza ', '92 uo', 'Santiago', 'Esteban', 'Rodrígez', 'a8d064f4758b8a7', '6d955d3e2892b82', 100);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (43, 'pulido.emilio', 'león.diegoalejandro@example.org', '156-175-4930', '(179)585-5554', 'Barraza, Corder', '51 kg', 'Kevin', 'José', 'Espinosa', 'e62a9aae5433cfb', '36db108b74bcebf', 12);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (44, 'hidalgo93', 'antonia27@example.org', '(1109)40-5141', '(227)15524-8565', 'Tejada-Tórrez', '66 dv', 'Luis', 'Juan Martín', 'Osorio', '94056380c63d2ae', 'b3cacfc1c98c5f5', 19);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (45, 'aavilés', 'juanpablo76@example.com', '(107)531-5731', '(53)6520-9075', 'Cornejo de Leal', '74 hb', 'Oliva', 'Bautista', 'González', '2beecf704b84a01', 'd3e1c3eacaa6e94', 30);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (46, 'nadia.delgadillo', 'hidalgo76@example.com', '(12)4980-0562', '(32)154187-2414', 'Delafuente de U', '66 ml', 'Nicole', 'Luna', 'Arredondo', '39c63cc541ab290', 'ef847335734f6f0', 34);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (47, 'manuela.caballero', 'nadia46@example.com', '(037)500-6821', '(26)155596-5846', 'Sisneros y Asoc', '62 uk', 'Fátima ', 'Antonio', 'Ibarra', '63b6d6e1fbdca85', '2b16842aa587604', 26);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (48, 'nquiroz', 'badillo.ignacio@example.org', '(69)4799-2470', '(9005)49-4336', 'Alva, Godoy y A', '40 ou', 'Andrés', 'Andrea', 'Sisneros', '39346cf40c1fd3b', 'fddbef69a2eeba5', 81);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (49, 'montserrat97', 'nicole.pagan@example.net', '(566)500-8301', '(383)15403-0012', 'Arreola de Nava', '03 rz', 'Sebastián', 'Adrián', 'Segura', '860e10d427fc3cb', '356c0cb7b532cec', 76);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (50, 'valentina.montero', 'oálvarez@example.com', '(4323)1548-7165', '(256)565-0223', 'Frías y Castill', '57 zr', 'Ana Sofía', 'Emily', 'Solís', '325c5a829d8f58e', '1ee3a577d51a251', 79);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (51, 'juan esteban.vallejo', 'hcuellar@example.com', '(69)4104-7757', '(758)528-5915', 'Reynoso de Arme', '11 mm', 'Sofía', 'Ana Paula', 'Hinojosa', '63a9d29bdb29df7', 'eb2ea8e7cb6fd1c', 35);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (52, 'madera.paulina', 'elena.maya@example.net', '(3482)46-0971', '(64)5718-5676', 'Castañeda-Romo', '45 kg', 'Hugo', 'Mario', 'Esquibel', '08fb00d3b6f9657', 'c5926d3c85b1533', 3);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (53, 'amelia.raya', 'arreola.juanmanuel@example.org', '963-547-5616', '(675)15556-1430', 'Fierro y Vallej', '03 qn', 'Sophie', 'Juan Sebastián', 'Tamez', '2e5f4c317f54f6a', 'fd0497886892887', 47);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (54, 'violeta13', 'lávila@example.net', '(3020)49-5975', '(9156)41-9096', 'Ruiz y Palacios', '07 sg', 'Natalia', 'Paulina', 'Amador', '2fbf6508a01ac27', '06512294a71b42e', 58);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (55, 'ivan41', 'ovaladez@example.com', '743-965-2327', '(9448)1545-6216', 'Vergara de Córd', '98 ok', 'Victoria', 'Mateo', 'Corral', 'e2e42456f1f473e', 'c7dc7bdaab37068', 69);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (56, 'maría.olivárez', 'sarasofía.torres@example.com', '(06)4296-4983', '(55)4811-5936', 'Escalante y Pre', '65 ft', 'Franco', 'Pedro', 'Bueno', 'ff4062bcef3d891', '232daebcf10cd76', 39);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (57, 'eyáñez', 'coronado.juanjosé@example.org', '(5289)1542-6725', '(1683)47-9745', 'Laureano e Hijo', '24 ep', 'Isabel', 'María', 'Páez', 'd7a67e325cbced3', '717075c752dac43', 8);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (58, 'flomeli', 'maría.salcedo@example.org', '(254)15486-6073', '(698)15533-4254', 'Perea e Hija', '07 gq', 'Aarón', 'Florencia', 'Corrales', 'aaa44f87bcb4d8d', '8b531bbbadba75e', 60);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (59, 'mario.jimínez', 'maría80@example.net', '(24)4057-3738', '(5562)1540-8106', 'Rosario S. de H', '39 sz', 'Rafaela', 'Juan Sebastián', 'Abreu', 'edda7c2a74efa7a', 'c00f5b5bd7df458', 80);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (60, 'gabriela53', 'agustín.méndez@example.com', '(00)4181-9450', '(79)4472-4137', 'Balderas de Sor', '64 jg', 'María Camila', 'Ignacio', 'Cintrón', 'ad7db706dece331', '568ce79d55f9a0f', 42);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (61, 'luana75', 'joaquín.salgado@example.org', '(30)5328-2333', '(303)15599-7432', 'Heredia, Romo y', '21 uj', 'Juliana', 'Amanda', 'Garrido', '35af177a3d16832', '8f7e3400223a42b', 20);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (62, 'michelle58', 'hserrato@example.org', '(0034)46-7487', '(959)15468-5258', 'Carrasquillo de', '13 yo', 'Laura', 'Antonio', 'Curiel', '3042526ccbcef2d', '407b36b3493521f', 85);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (63, 'eulibarri', 'msolorzano@example.com', '(4514)49-9178', '(05)5506-7424', 'Escalante SA', '86 ra', 'Nahuel', 'Emmanuel', 'Sauceda', '97c75b5784f5c13', '867a9f2592eff81', 54);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (64, 'rebeca.oquendo', 'kmascareñas@example.net', '(782)447-5825', '(91)4690-7491', 'Luevano, Ojeda ', '10 rx', 'Michelle', 'Nicole', 'Vela', 'f2794301978a5ba', '5ca24d706fe8dca', 94);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (65, 'david.delafuente', 'maríafernanda04@example.com', '(0904)45-2550', '(0308)1541-0541', 'Briones y Asoc.', '70 sc', 'Martín', 'Andrea', 'Aguirre', 'e7ebb97dbb34960', '1e5ad92ba9404a2', 91);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (66, 'spérez', 'luciano.barrera@example.org', '(54)4853-0443', '(443)15413-8584', 'Yáñez SA', '87 hx', 'Hugo', 'Maite', 'Narváez', 'b2c32a73a941eda', 'dd5ab562a44e16d', 2);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (67, 'sberríos', 'tapia.elizabeth@example.com', '(34)4633-3420', '(355)15441-7622', 'Llamas, Enríque', '13 cc', 'Juan David', 'Alessandra', 'Agosto', 'a86c16572c8439a', '78617e00c16d1c5', 54);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (68, 'caballero.malena', 'bernal.micaela@example.net', '(208)594-9958', '(7899)1548-3975', 'Villanueva y Fl', '02 zz', 'Simón', 'Valery ', 'Carvajal', 'bb00a778b8a7665', 'abcd7a2a03effd5', 16);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (69, 'olivárez.ximena/jimena', 'juanmartín34@example.com', '(704)582-6540', '(16)4206-4249', 'Figueroa de Gal', '71 in', 'Antonio', 'Elías', 'Vallejo', '9a3ce29d2ccaba6', '56ad0984a791aaf', 20);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (70, 'gracia.juan diego', 'gabriel.grijalva@example.com', '(919)15518-5488', '(929)15438-2849', 'Villagómez y Sa', '82 aj', 'Andrea', 'Cristóbal', 'Huerta', 'c5debeeca701b16', '38ea9e68ee6fd3e', 86);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (71, 'pcisneros', 'isabel.cervantes@example.net', '+23(3)696396030', '(87)155870-2111', 'Ceja de Armenta', '36 of', 'Juan Diego', 'Luciano', 'Pacheco', 'dd72ab906b3eea8', '5c5810063526114', 98);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (72, 'qsoria', 'guajardo.sophie@example.com', '(382)15555-4821', '(32)4496-0346', 'Marrero y Armen', '05 xz', 'David', 'Constanza', 'Calderón', 'e64cb63cebb6620', 'fb41c60d6123a0b', 55);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (73, 'smoya', 'josefina75@example.net', '(06)5510-5388', '(344)563-1247', 'Fierro y Olivas', '26 ho', 'Ximena/Jimena', 'Cristóbal', 'Suárez', 'e55831baf78f25f', 'a49b14d9b5a2003', 20);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (74, 'brico', 'flórez.esteban@example.net', '(85)4084-6010', '(3743)1540-7971', 'Grijalva y Blan', '15 hq', 'Antonio', 'Luis', 'Prado', 'b13a550ce768b88', 'ce08a8265da5805', 100);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (75, 'castillo.agustina', 'camila24@example.com', '(02)155119-4634', '(82)155657-0922', 'Valenzuela-Guru', '71 wo', 'Manuela', 'Jazmín', 'Cabán', 'a663b0eb365ffeb', '909ef241fb3eff8', 75);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (76, 'almonte.paula', 'damián11@example.org', '(4056)41-9603', '(81)4554-3110', 'Casares-Cardona', '30 ik', 'Mariangel', 'Valery ', 'Mesa', '5d8e7066912da0d', '57d5e1276b30d7a', 20);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (77, 'hipólito.escalante', 'facundo11@example.com', '(6874)43-0463', '(3076)1540-1218', 'Escamilla e Hij', '08 er', 'Catalina', 'Alonso', 'Collado', '2fbee27241048a8', 'b202054f43b3a8f', 32);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (78, 'zmontenegro', 'facundo76@example.org', '(0791)44-4200', '(26)155398-1688', 'Niño de Terán', '95 hc', 'Miguel Ángel', 'María Alejandra', 'Flórez', '7d56dee57b395cb', 'd447c8b03cd8d55', 79);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (79, 'ngaribay', 'morosco@example.org', '(89)155927-9578', '(182)15567-5415', 'Abeyta-Guevara', '67 aj', 'Ivan', 'Juan', 'Fierro', '80aa1f91c74fc03', 'd8da6d0435d44fe', 93);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (80, 'ballesteros.laura', 'franco.cortés@example.org', '(896)576-8770', '(59)4117-9738', 'Guardado y Port', '71 jm', 'Andrés', 'Christian', 'Ferrer', '9bedd172787e596', 'f0096de0e8fb690', 25);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (81, 'zbarrera', 'cmuñiz@example.net', '+74(3)720936327', '(9752)49-3682', 'Pacheco e Hijos', '19 co', 'Catalina', 'Salomé', 'Villareal', 'ae29c22546038d5', '8a183252671f0a0', 43);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (82, 'sophie.luna', 'zgamboa@example.org', '(035)15470-0574', '(502)420-1364', 'Morales e Hijo', '75 at', 'Ashley', 'Juan David', 'Adorno', 'cdb4346876da2b3', '8c35b2385c97565', 70);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (83, 'valentino.carrillo', 'pichardo.mía@example.com', '(3202)46-8982', '(63)6144-3163', 'Fernández y Ama', '06 ih', 'Miguel', 'Silvana ', 'Montenegro', 'f40a3c7d797f0b2', '7935a04a8659a08', 32);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (84, 'gabriela.contreras', 'emolina@example.com', '(852)408-1907', '(12)4107-9271', 'de Jesús, Bahen', '75 dy', 'Ana Paula', 'Agustina', 'Estévez', '1a829552bb561de', '93f6fa4c41ddb32', 99);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (85, 'dpaz', 'juanjosé25@example.net', '(280)15544-8365', '(718)409-2312', 'Ureña-Barreto', '46 dp', 'Florencia', 'Fernando', 'Laureano', '6f0307ee8b66a30', '7342f6958388231', 93);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (86, 'wloera', 'matthew.cornejo@example.net', '(8996)1547-0750', '(662)15538-9423', 'Ozuna S. de H.', '74 yg', 'Ivan', 'Juan', 'de Anda', '4f565e80ebb0a82', '0729cbd24dbb02c', 1);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (87, 'garcía.pablo', 'miguel92@example.com', '(3027)41-0055', '(41)4945-4143', 'Cardona SA', '96 ky', 'Ximena/Jimena', 'Felipe', 'Meléndez', 'ab062ccb8140790', '9a6babdf984f141', 95);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (88, 'mpedroza', 'flores.valeria@example.net', '(804)473-0102', '(49)155753-2240', 'Briones-Vásquez', '86 os', 'Emilia', 'Leonardo', 'Cotto', '0cc4a464ee94edf', 'f05c86d78227ff1', 65);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (89, 'izelaya', 'solorio.martina@example.org', '(296)445-2511', '(06)6929-8855', 'Riojas-Fernánde', '91 qn', 'Emma', 'Isidora', 'Arreola', 'caf6827a9ec5c31', '795a818cac11b02', 42);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (90, 'matthew80', 'jorge21@example.org', '(62)155792-8776', '(44)5403-5070', 'Fajardo de Rosa', '27 pt', 'Luana', 'Josefa', 'Colón', '3d468a0818c9d20', 'd8ff6f41d4a0890', 54);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (91, 'ogarza', 'dlovato@example.com', '(2387)1546-0021', '055-230-9822', 'Reynoso-Salinas', '41 xv', 'Pablo', 'Micaela', 'Puente', '26ae1727c256d36', '1369b15154807d8', 100);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (92, 'victoria83', 'david04@example.com', '(690)478-7058', '(08)155301-1423', 'Moreno-Carrera', '40 ug', 'Abril', 'Emiliano', 'Segura', '2f625e9fc04cc30', 'e0f206b8b8061e5', 20);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (93, 'emma52', 'tverduzco@example.org', '(179)457-5399', '(3551)48-1204', 'Pantoja y Véliz', '74 gg', 'Máximo', 'Florencia', 'Paz', 'd9f5a23a1d9d04e', 'dd38ca08f9cc1ea', 16);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (94, 'rosales.jacobo', 'cristóbal.caballero@example.com', '+39(6)410987980', '(9786)1544-0128', 'Treviño-Miranda', '14 ji', 'Benjamín', 'Juan José', 'Cordero', 'e793062219dc88d', 'a1005b19e24645e', 100);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (95, 'delgadillo.abril', 'santino55@example.org', '(64)4068-9549', '(19)4179-1174', 'Esquibel y Guru', '12 as', 'Gabriela', 'Lucía', 'Delarosa', '657e690f88f4692', 'e7033852026d837', 80);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (96, 'clara.fonseca', 'sofía.martínez@example.net', '(76)4597-1468', '(761)565-0521', 'Ureña e Hijos', '85 gx', 'Rebeca', 'Adrián', 'Tórrez', '163f0c12e2eeaf9', '7ff6bf9177e50fb', 7);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (97, 'jorge.roybal', 'nmárquez@example.org', '(886)15445-2324', '207-306-5263', 'Pineda S. de H.', '64 vy', 'Clara', 'Ana Paula', 'Centeno', '56212319d1e9060', 'b1f8fb2d4b3b3f1', 83);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (98, 'oaguilera', 'axel.garibay@example.net', '(853)15407-0939', '(20)155744-8295', 'Gamez y Arteaga', '97 mf', 'Romina', 'Javier', 'Naranjo', '36234184a64fdae', '90ec26c6c5200a2', 87);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (99, 'luna.olivares', 'méndez.abril@example.com', '(6001)1548-0620', '(18)4746-3227', 'Santillán SA', '30 hj', 'Santino', 'Luis', 'Laboy', 'e4b852574cee4d7', '0a2282a52732523', 10);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (100, 'efranco', 'axel.arredondo@example.com', '(53)5679-0857', '(55)6812-5581', 'Badillo-Beltrán', '79 ij', 'Ashley', 'Mario', 'Pedroza', 'dfc276b0ee81043', '24ac782a35bc19d', 40);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (101, 'oserna', 'dserrano@example.org', '(78)155370-6711', '(3621)46-4975', 'Quesada y Amaya', '27 ri', 'Martina', 'Delfina', 'Rubio', 'f3a38ce75592c0b', '39146bd54fc0b21', 77);
INSERT INTO `Usuario` (`idUsuario`, `userName`, `email`, `telefono`, `celular`, `RFC`, `CURP`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `passwordTemporal`, `idElementoEstructuraEmpresa`) VALUES (102, 'martina.solano', 'xnieto@example.net', '(1808)1545-1253', '253-531-2295', 'Sevilla y Quiño', '52 xg', 'Vicente', 'Sara', 'Serrato', 'a313cc1a7fb6cef', 'b37c691d1025cd3', 76);


#
# TABLE STRUCTURE FOR: UsuarioPerfilUsuario
#

DROP TABLE IF EXISTS `UsuarioPerfilUsuario`;

CREATE TABLE `UsuarioPerfilUsuario` (
  `idUsuarioPerfilUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `idPerfilUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuarioPerfilUsuario`),
  KEY `UsuarioPerfilUsuario_Usuario_idx` (`idUsuario`),
  KEY `UsuarioPerfilUsuario_PerfilUsuario_idx` (`idPerfilUsuario`),
  CONSTRAINT `UsuarioPerfilUsuario_PerfilUsuario` FOREIGN KEY (`idPerfilUsuario`) REFERENCES `PerfilUsuario` (`idPerfilUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `UsuarioPerfilUsuario_Usuario` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (1, 66, 96);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (2, 45, 63);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (3, 92, 47);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (4, 102, 98);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (5, 26, 71);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (6, 68, 26);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (7, 100, 94);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (8, 20, 94);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (9, 54, 60);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (10, 83, 28);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (11, 4, 7);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (12, 94, 6);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (13, 101, 78);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (14, 31, 3);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (15, 25, 21);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (16, 67, 34);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (17, 58, 4);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (18, 44, 20);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (19, 58, 52);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (20, 22, 98);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (21, 66, 12);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (22, 80, 14);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (23, 38, 28);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (24, 56, 87);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (25, 18, 27);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (26, 59, 53);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (27, 29, 61);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (28, 76, 14);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (29, 41, 24);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (30, 82, 76);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (31, 21, 21);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (32, 57, 72);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (33, 66, 84);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (34, 26, 96);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (35, 98, 36);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (36, 38, 14);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (37, 47, 68);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (38, 18, 28);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (39, 47, 25);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (40, 54, 17);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (41, 99, 15);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (42, 59, 61);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (43, 42, 62);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (44, 87, 18);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (45, 5, 18);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (46, 89, 8);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (47, 82, 60);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (48, 95, 55);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (49, 74, 72);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (50, 10, 15);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (51, 88, 69);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (52, 72, 62);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (53, 100, 14);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (54, 5, 24);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (55, 98, 55);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (56, 99, 53);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (57, 50, 94);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (58, 23, 71);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (59, 21, 4);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (60, 86, 31);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (61, 10, 58);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (62, 87, 63);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (63, 86, 3);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (64, 59, 35);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (65, 4, 63);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (66, 67, 80);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (67, 98, 52);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (68, 26, 97);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (69, 4, 14);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (70, 5, 58);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (71, 21, 40);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (72, 45, 97);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (73, 27, 57);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (74, 89, 10);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (75, 16, 5);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (76, 52, 62);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (77, 68, 30);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (78, 45, 23);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (79, 78, 69);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (80, 91, 88);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (81, 75, 28);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (82, 5, 92);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (83, 76, 55);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (84, 96, 69);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (85, 75, 6);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (86, 55, 94);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (87, 24, 23);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (88, 30, 72);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (89, 51, 74);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (90, 59, 43);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (91, 25, 100);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (92, 86, 35);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (93, 82, 59);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (94, 38, 7);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (95, 65, 16);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (96, 5, 35);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (97, 55, 74);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (98, 18, 68);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (99, 10, 46);
INSERT INTO `UsuarioPerfilUsuario` (`idUsuarioPerfilUsuario`, `idUsuario`, `idPerfilUsuario`) VALUES (100, 8, 26);



#
# TABLE STRUCTURE FOR: DepositoUsuario
#

DROP TABLE IF EXISTS `DepositoUsuario`;

CREATE TABLE `DepositoUsuario` (
  `idDepositoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `idTipoMovimientoDeposito` int(11) DEFAULT NULL,
  `idCuentaBancaria` int(11) DEFAULT NULL,
  `idAhorro` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `folio` varchar(30) DEFAULT NULL,
  `origenDeposito` varchar(20) DEFAULT NULL,
  `estatus` varchar(15) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idDepositoUsuario`),
  KEY `DepositoUsuario_TipoMovimientoDeposito_idx` (`idTipoMovimientoDeposito`),
  KEY `DepositoUsuario_CuentaBancaria_idx` (`idCuentaBancaria`),
  KEY `DepositoUsuario_Ahorro_idx` (`idAhorro`),
  KEY `DepositoUsuario_Usuario_idx` (`idUsuario`),
  CONSTRAINT `DepositoUsuario_Ahorro` FOREIGN KEY (`idAhorro`) REFERENCES `Ahorro` (`idAhorro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `DepositoUsuario_CuentaBancaria` FOREIGN KEY (`idCuentaBancaria`) REFERENCES `CuentaBancaria` (`idCuentaBancaria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `DepositoUsuario_TipoMovimientoDeposito` FOREIGN KEY (`idTipoMovimientoDeposito`) REFERENCES `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `DepositoUsuario_Usuario` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (1, 57, 71, 11, 37, '2007-10-05 18:00:37', '574', 'Entre Ríos', 'Culpa quaerat c', '58548.90');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (2, 19, 9, 76, 95, '2004-01-21 03:42:00', '894', 'Misiones', 'Sunt tempore qu', '40.43');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (3, 46, 100, 35, 15, '1970-12-15 16:26:38', '135', 'Córdoba', 'Ipsum quo recus', '20007402.63');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (4, 21, 90, 55, 67, '1997-06-01 15:15:54', '293', 'Chubut', 'Quia aut beatae', '134.08');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (5, 66, 79, 32, 66, '1986-05-25 06:11:26', '434', 'Chaco', 'Dolore ut et ut', '828.55');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (6, 76, 30, 89, 76, '1991-03-24 19:11:03', '048', 'Buenos Aires', 'Eius dolor quid', '1.08');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (7, 42, 62, 96, 97, '1979-01-28 07:47:02', '910', 'La Pampa', 'Rem veritatis v', '727733.49');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (8, 88, 9, 36, 40, '2022-03-30 19:24:07', '312', 'Corrientes', 'Porro autem dol', '501.50');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (9, 24, 57, 96, 34, '1980-10-04 23:28:34', '787', 'San Juan', 'Eum quis et inc', '130258.21');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (10, 43, 19, 72, 8, '2006-11-14 14:36:56', '270', 'Salta', 'Et saepe et nob', '99999999.99');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (11, 28, 54, 73, 3, '2013-12-28 22:22:39', '249', 'Misiones', 'Ut ex ut et. Co', '20182.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (12, 74, 36, 45, 86, '2011-11-07 23:14:40', '589', 'Mendoza', 'Repellat quia v', '0.58');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (13, 5, 59, 60, 11, '2000-12-31 08:09:05', '404', 'Santa Fe', 'Delectus quia q', '68076.10');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (14, 91, 55, 58, 22, '2015-06-09 15:02:53', '771', 'Corrientes', 'Rerum fugit id ', '371694.99');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (15, 50, 42, 25, 58, '2011-11-07 23:17:23', '258', 'Misiones', 'Vitae architect', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (16, 88, 99, 36, 42, '2011-01-05 02:11:28', '629', 'Salta', 'Est vitae dolor', '115826.20');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (17, 93, 83, 82, 51, '1989-08-09 19:06:49', '467', 'Formosa', 'Velit quaerat a', '6.90');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (18, 96, 11, 76, 54, '1984-01-28 10:04:17', '149', 'Jujuy', 'Velit beatae vo', '13210180.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (19, 71, 9, 93, 82, '1984-11-28 06:31:59', '597', 'Catamarca', 'Ratione dicta o', '5.99');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (20, 56, 98, 59, 34, '1985-05-28 20:05:49', '067', 'Santa Fe', 'Impedit officii', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (21, 35, 22, 7, 90, '1970-01-12 06:50:18', '809', 'Chubut', 'Porro sapiente ', '718.20');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (22, 94, 69, 81, 77, '1982-02-21 06:30:05', '098', 'Neuquén', 'Dolorem archite', '99999999.99');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (23, 66, 26, 33, 75, '1986-06-19 19:27:10', '043', 'Formosa', 'Cumque inventor', '4192813.53');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (24, 8, 99, 3, 15, '2013-01-03 18:25:38', '382', 'La Pampa', 'Earum fugit ass', '99999999.99');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (25, 92, 28, 38, 8, '1991-11-14 13:02:40', '061', 'San Juan', 'Porro et sit et', '81.94');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (26, 51, 58, 20, 80, '1976-10-04 20:05:02', '838', 'Misiones', 'Error voluptate', '5191708.40');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (27, 83, 39, 4, 58, '1987-02-11 22:09:02', '252', 'Santa Fe', 'Voluptas sint i', '99999999.99');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (28, 28, 97, 74, 3, '2022-08-23 05:28:34', '554', 'Chaco', 'Laudantium occa', '212.51');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (29, 46, 1, 67, 45, '2009-09-11 16:38:58', '575', 'Tucumán', 'Non sed aut asp', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (30, 26, 12, 60, 16, '2016-01-02 19:49:04', '403', 'Salta', 'Consequuntur la', '299.70');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (31, 20, 58, 62, 30, '2020-10-14 08:47:35', '952', 'San Juan', 'Eveniet atque f', '43435722.61');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (32, 69, 12, 20, 29, '2006-10-24 01:08:39', '162', 'Chaco', 'Dolore libero r', '239996.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (33, 81, 48, 63, 16, '2020-03-31 10:41:46', '872', 'Buenos Aires', 'Repellat accusa', '708209.72');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (34, 29, 52, 27, 75, '2000-07-25 06:12:49', '349', 'Río Negro', 'Dignissimos lab', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (35, 31, 49, 83, 84, '2006-11-17 12:50:27', '385', 'Chaco', 'Amet neque quia', '27854.29');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (36, 9, 99, 16, 13, '1995-01-28 08:39:18', '953', 'Misiones', 'Occaecati quisq', '99999999.99');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (37, 98, 12, 28, 39, '1990-06-04 22:37:36', '158', 'Río Negro', 'Magni iure ad q', '65341.37');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (38, 61, 27, 96, 60, '1997-06-04 17:42:17', '877', 'Tucumán', 'Qui officiis sa', '78604.51');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (39, 17, 30, 48, 49, '2013-09-17 07:04:49', '663', 'Mendoza', 'Et voluptatem v', '19516.97');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (40, 80, 9, 6, 81, '1997-06-18 10:59:38', '142', 'Chubut', 'Nobis nobis ass', '20.43');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (41, 30, 95, 71, 15, '1977-11-06 19:37:07', '660', 'Neuquén', 'Earum totam qui', '22.30');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (42, 24, 6, 49, 74, '2003-06-02 07:58:47', '276', 'Santa Cruz', 'Et repudiandae ', '235.36');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (43, 32, 81, 94, 24, '1990-05-16 05:22:14', '011', 'Entre Ríos', 'Cupiditate dele', '29.72');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (44, 86, 67, 25, 89, '1981-11-13 16:21:29', '812', 'Catamarca', 'Illum ipsam hic', '12644089.70');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (45, 5, 77, 87, 25, '1989-06-21 18:37:52', '265', 'Jujuy', 'Magni enim id s', '4579.27');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (46, 41, 35, 54, 65, '1984-03-18 05:01:16', '428', 'San Luis', 'Voluptatem et v', '57203060.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (47, 46, 3, 99, 87, '2022-07-03 18:00:47', '336', 'Río Negro', 'Beatae pariatur', '13.70');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (48, 3, 71, 67, 22, '1972-10-05 08:28:55', '990', 'Chaco', 'Quae ullam quib', '293.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (49, 100, 71, 46, 50, '2007-03-04 10:52:41', '509', 'Jujuy', 'Vitae quam reru', '150848.44');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (50, 28, 63, 26, 96, '2009-06-12 05:56:26', '880', 'Chubut', 'Veritatis et es', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (51, 31, 91, 83, 7, '1975-12-06 13:50:37', '071', 'Entre Ríos', 'Eveniet praesen', '99999999.99');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (52, 31, 31, 15, 56, '1983-02-21 00:17:46', '675', 'Catamarca', 'Fugit temporibu', '201283.59');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (53, 36, 41, 52, 45, '1993-12-12 21:05:43', '610', 'San Juan', 'Officiis distin', '100763.70');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (54, 85, 51, 6, 73, '1979-05-16 23:22:43', '697', 'Neuquén', 'Expedita expedi', '2.40');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (55, 52, 95, 28, 69, '1980-07-18 08:57:39', '253', 'Catamarca', 'Doloremque dist', '3.01');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (56, 54, 79, 34, 52, '2018-06-20 11:05:16', '447', 'Corrientes', 'Voluptatum cons', '248379.21');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (57, 21, 61, 85, 96, '2009-06-10 08:32:10', '337', 'Tucumán', 'Voluptatem quid', '0.90');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (58, 90, 6, 20, 15, '2005-05-14 13:39:51', '443', 'Santa Fe', 'Eaque asperiore', '18664323.10');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (59, 85, 63, 58, 52, '1976-12-06 00:38:17', '732', 'Tucumán', 'Quasi eos volup', '17.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (60, 49, 80, 54, 41, '1971-04-06 20:37:08', '007', 'Entre Ríos', 'Tempore ut hic ', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (61, 14, 73, 67, 66, '2016-05-11 00:32:16', '408', 'Misiones', 'Dolor qui aut e', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (62, 75, 84, 26, 65, '2023-04-29 08:00:38', '602', 'Corrientes', 'Cumque voluptat', '77.07');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (63, 27, 5, 76, 77, '2012-02-20 07:18:25', '133', 'Formosa', 'Quo necessitati', '846940.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (64, 3, 65, 51, 17, '1997-01-27 01:02:10', '623', 'Río Negro', 'Qui voluptatibu', '949.02');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (65, 8, 28, 56, 42, '2004-11-12 06:00:44', '487', 'Tucumán', 'Quas ut sed del', '349458.66');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (66, 81, 23, 43, 8, '2002-01-18 11:00:20', '651', 'Salta', 'Consequatur ut ', '298.11');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (67, 93, 90, 48, 78, '2003-03-19 04:41:25', '084', 'Catamarca', 'Cumque ipsa dol', '14.28');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (68, 54, 12, 88, 65, '1972-12-24 23:21:19', '283', 'Salta', 'Sit accusantium', '0.70');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (69, 67, 60, 53, 28, '1990-05-30 06:26:59', '483', 'Córdoba', 'Aut nesciunt se', '1512.11');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (70, 5, 80, 41, 9, '1979-07-16 03:55:40', '170', 'Jujuy', 'Dolore minus vo', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (71, 67, 55, 35, 94, '2019-09-21 20:21:25', '570', 'Mendoza', 'Quasi magni qui', '162.49');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (72, 8, 26, 40, 18, '1971-09-15 02:30:50', '535', 'Chaco', 'Repellat tempor', '99999999.99');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (73, 2, 41, 58, 40, '1980-05-14 19:59:02', '169', 'Entre Ríos', 'Accusamus quaer', '168.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (74, 43, 91, 18, 100, '2010-03-19 03:20:33', '220', 'San Juan', 'Rerum ut quia r', '28127303.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (75, 18, 53, 48, 58, '1986-03-29 15:53:32', '284', 'Chubut', 'Qui labore qui ', '7.53');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (76, 77, 93, 25, 16, '2022-01-13 15:23:59', '842', 'Tierra del Fuego, An', 'Quibusdam eum n', '3532.09');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (77, 28, 44, 77, 57, '1992-07-27 13:04:04', '208', 'La Rioja', 'Qui doloribus c', '187053.19');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (78, 11, 98, 100, 90, '1996-06-24 04:23:27', '013', 'La Pampa', 'Neque voluptate', '180223.64');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (79, 57, 81, 31, 55, '1972-01-30 19:59:16', '061', 'Chaco', 'Sed aperiam ape', '59.23');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (80, 45, 34, 40, 39, '1998-04-13 03:19:26', '722', 'Santiago del Estero', 'Accusamus quia ', '5071.25');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (81, 93, 18, 50, 91, '2002-08-13 19:35:48', '966', 'La Rioja', 'Officia volupta', '204884.34');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (82, 1, 38, 98, 20, '2009-10-23 18:51:12', '191', 'Neuquén', 'Qui et molestia', '72.59');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (83, 43, 71, 36, 70, '1970-07-23 01:44:18', '400', 'Catamarca', 'Veritatis quos ', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (84, 20, 88, 97, 83, '1996-01-27 23:01:20', '446', 'Neuquén', 'Reprehenderit i', '1356.26');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (85, 69, 83, 36, 82, '1974-01-07 07:31:47', '239', 'Jujuy', 'Quam velit enim', '98153.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (86, 88, 12, 86, 29, '1973-10-01 15:13:47', '178', 'La Pampa', 'Libero ex qui v', '1952.70');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (87, 40, 18, 13, 52, '2007-12-29 07:54:03', '744', 'Misiones', 'Minus libero et', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (88, 32, 5, 54, 78, '1991-05-16 00:45:20', '972', 'Santiago del Estero', 'Quo quia non se', '4472983.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (89, 2, 86, 95, 74, '1980-10-20 05:34:50', '178', 'Salta', 'Asperiores et r', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (90, 46, 94, 52, 101, '2016-10-12 16:22:31', '223', 'Tierra del Fuego, An', 'Aut veniam aute', '0.67');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (91, 2, 30, 47, 43, '2002-03-23 07:28:45', '180', 'Chaco', 'Laudantium et d', '15108.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (92, 31, 29, 93, 87, '1992-02-07 12:02:34', '041', 'San Luis', 'Et laudantium o', '326933.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (93, 98, 3, 90, 47, '2017-08-26 14:15:35', '944', 'Buenos Aires', 'Praesentium nos', '10313594.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (94, 14, 3, 7, 14, '2012-02-18 16:45:15', '432', 'Río Negro', 'Ut rerum volupt', '361323.37');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (95, 32, 14, 64, 34, '2006-01-16 00:58:24', '553', 'Neuquén', 'Nam id nemo aut', '1.10');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (96, 65, 43, 69, 57, '1989-08-10 04:10:24', '083', 'Chubut', 'Sint dolores el', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (97, 44, 22, 2, 39, '2006-12-17 02:45:02', '592', 'La Pampa', 'Quam necessitat', '800.69');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (98, 11, 7, 13, 98, '2018-05-11 02:15:47', '861', 'Jujuy', 'Et pariatur dol', '25.43');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (99, 80, 42, 33, 52, '1980-12-05 09:50:05', '466', 'Chaco', 'Culpa sed eum o', '0.00');
INSERT INTO `DepositoUsuario` (`idDepositoUsuario`, `idTipoMovimientoDeposito`, `idCuentaBancaria`, `idAhorro`, `idUsuario`, `fecha`, `folio`, `origenDeposito`, `estatus`, `monto`) VALUES (100, 39, 32, 94, 93, '1978-11-10 15:24:17', '577', 'Jujuy', 'Eius assumenda ', '64333.32');

