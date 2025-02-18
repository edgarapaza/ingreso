CREATE SCHEMA `acentral` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;

use acentral;

SELECT * FROM acentral.caracFisicas;

INSERT INTO caracFisicas VALUES(1, 'Soporte: Papel (X) Medio Electronico ( )  Otros ( )');
INSERT INTO caracFisicas VALUES(2, 'Soporte: Papel ( ) Medio Electronico (X)  Otros ( )');
INSERT INTO caracFisicas VALUES(3, 'Soporte: Papel ( ) Medio Electronico ( )  Otros (X)');
INSERT INTO caracFisicas VALUES(4, 'Soporte: Papel (X) Medio Electronico ( )  Otros (X)');
INSERT INTO caracFisicas VALUES(5, 'Soporte: Papel ( ) Medio Electronico (X)  Otros (X)');
INSERT INTO caracFisicas VALUES(6, 'Soporte: Papel (X) Medio Electronico (X)  Otros (X)');
INSERT INTO caracFisicas VALUES(7, 'Soporte: Papel (X) Medio Electronico (X)  Otros ( )');

SELECT * FROM acentral.frecuenciaServicio;

INSERT INTO frecuenciaServicio VALUES(1, 'Alta ( X )  Media ( )  Baja ( )   Nula ( )');
INSERT INTO frecuenciaServicio VALUES(2, 'Alta (  )   Media ( X )  Baja ( )   Nula ( )');
INSERT INTO frecuenciaServicio VALUES(3, 'Alta (  )  Media ( )  Baja ( X )   Nula ( )');
INSERT INTO frecuenciaServicio VALUES(4, 'Alta (  )  Media ( )  Baja ( )   Nula ( X )');

UPDATE series SET docgestion = 'Ley Universitaria Nª 30220, Resolución N° 272-2018-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ' WHERE idseries between 2 and 403;


CREATE TABLE resolucion(
  idresolucion int not null auto_increment,
  numresolucion int not null,
  anio char(4) not null,
  fecha date not null,
  numfolios int not null,
  caja int DEFAULT 0,
  legajo int DEFAULT 0,
  estante int DEFAULT 0,
  cuerpo int DEFAULT 0,
  balda int DEFAULT 0,
  obs varchar(255),
  PRIMARY KEY(idresolucion)
);

