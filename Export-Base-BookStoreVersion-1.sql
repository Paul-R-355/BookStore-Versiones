--------------------------------------------------------
-- Archivo creado  - viernes-agosto-14-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence NUMTARJETA_SECUENCIA
--------------------------------------------------------

   CREATE SEQUENCE  "PRUEBA"."NUMTARJETA_SECUENCIA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Table AUTOR
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."AUTOR" 
   (	"ID_AUTOR" NUMBER(*,0), 
	"NOMBRE_AUTOR" CHAR(50 BYTE), 
	"APELLIDO_AUTOR" CHAR(50 BYTE), 
	"CEDULA_AUTOR" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."CLIENTE" 
   (	"ID_CLIENTE" NUMBER(*,0), 
	"NOMBRE_CLIENTE" CHAR(50 BYTE), 
	"CI_CLIENTE" CHAR(50 BYTE), 
	"APELLIDO_CLIENTE" CHAR(50 BYTE), 
	"LIMITECREDITO" NUMBER(8,2), 
	"ID_GARANTE" NUMBER(38,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DETALLE
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."DETALLE" 
   (	"ID_DETALLE" NUMBER(*,0), 
	"ID_FACTURA" NUMBER(*,0), 
	"ID_EDICION" NUMBER(*,0), 
	"CANTIDAD" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DETALLE_AUTOR_LIBRO
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."DETALLE_AUTOR_LIBRO" 
   (	"ID_DETALLE_AUTOR_LIBRO" NUMBER(*,0), 
	"ID_LIBRO" NUMBER(*,0), 
	"ID_AUTOR" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEUDOR
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."DEUDOR" 
   (	"CODCLI" NUMBER(38,0), 
	"CODIGOGARANTE" NUMBER(38,0), 
	"LIMITECREDITO" FLOAT(126), 
	"SALDODEUDOR" FLOAT(126)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EDICION
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."EDICION" 
   (	"ID_EDICION" NUMBER(*,0), 
	"ID_LIBRO" NUMBER(*,0), 
	"ID_LIBRERIA" NUMBER(*,0), 
	"PRECIO_EDICION" FLOAT(126), 
	"EDICION_LIBRO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FACTURA
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."FACTURA" 
   (	"ID_FACTURA" NUMBER(*,0), 
	"ID_EDICION" NUMBER(*,0), 
	"ID_CLIENTE" NUMBER(*,0), 
	"FECHA_FACTURA" DATE, 
	"MONTOTOTAL" FLOAT(126), 
	"TIPOFAC" VARCHAR2(10 BYTE) DEFAULT 'contado', 
	"FECHAVENCIMIENTO" VARCHAR2(20 BYTE), 
	"CODICO_SEGURIDAD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GARANTE
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."GARANTE" 
   (	"ID_GARANTE" NUMBER(*,0), 
	"NOMBRE_GARANTE" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LIBRERIA
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."LIBRERIA" 
   (	"ID_LIBRERIA" NUMBER(*,0), 
	"NOMBRE_LIBRERIA" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LIBRO
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."LIBRO" 
   (	"ID_LIBRO" NUMBER(*,0), 
	"TITULO_LIBRO" CHAR(50 BYTE), 
	"ISBN_LIBRO" CHAR(50 BYTE), 
	"ANIO_LIBRO" CHAR(50 BYTE), 
	"IDIOMA_LIBRO" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TARJETACREDITO
--------------------------------------------------------

  CREATE TABLE "PRUEBA"."TARJETACREDITO" 
   (	"NUMTARJETA" NUMBER(38,0), 
	"EMISOR" VARCHAR2(38 BYTE), 
	"FECHAVENCIMIENTO" VARCHAR2(38 BYTE), 
	"CODIGOSEGURIDAD" NUMBER(3,0), 
	"ID_CLIENTE" NUMBER, 
	"TOTALUTILIZADO" FLOAT(126)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into PRUEBA.AUTOR
SET DEFINE OFF;
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('1','Luciano                                           ','Egido                                             ','17253647589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('2','Martin                                            ','Mazzucco                                          ','17345647589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('3','Benjamin                                          ','Payne                                             ','17564787589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('4','Melania                                           ','Stanley                                           ','17875447589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('5','CarlosG                                           ','Reigosa                                           ','17987647589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('6','William                                           ','Gaarder                                           ','17347247589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('7','Jostein                                           ','Gabilondo                                         ','17987647589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('8','Ángel                                             ','Tierney                                           ','17567447589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('9','Gabriel                                           ','Perez                                             ','17136747589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('10','Antonio                                           ','Sylvianne                                         ','17093647589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('11','José                                              ','Gadamer                                           ','17908647589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('12','Galán                                             ','Gaddis                                            ','17222647589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('13','Markus                                            ','Hans                                              ','172675447589                                      ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('14','Gabriel                                           ','Gacinski                                          ','17212147589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('15','Gaitán                                            ','Lewis                                             ','17876547589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('16','Fernando                                          ','Gala                                              ','17342147589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('17','Antonio                                           ','Galarza                                           ','17453247589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('18','Sergio                                            ','Rhea                                              ','17223147589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('19','James                                             ','Galbraith                                         ','17287647589                                       ');
Insert into PRUEBA.AUTOR (ID_AUTOR,NOMBRE_AUTOR,APELLIDO_AUTOR,CEDULA_AUTOR) values ('20','Eduardo                                           ','Galison                                           ','17289747589                                       ');
REM INSERTING into PRUEBA.CLIENTE
SET DEFINE OFF;
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('1','JULIANA                                           ','1725279077                                        ','ACUÑA                                             ','30,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('2','EDUARDO                                           ','170977462                                         ','ALVARADO                                          ','40,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('3','INGRID                                            ','100178482                                         ','ARENALES                                          ','30,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('4','JULIAN                                            ','060286373                                         ','BARAJAS                                           ','40,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('5','VEYKER                                            ','170977462                                         ','BARRETO                                           ','30,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('6','KAREN                                             ','060322454                                         ','BASTO                                             ','50,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('7','DANIEL                                            ','080212685                                         ','BERMUDEZ                                          ','30,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('8','SILVIA                                            ','100174341                                         ','BUITRAGO                                          ','40,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('9','KAROL                                             ','050179954                                         ','CACERES                                           ','30,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('10','YOHANA                                            ','070291685                                         ','CORREDOR                                          ','40,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('11','ANGEL                                             ','070291685                                         ','GAMARRA                                           ','30,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('12','ANDRES                                            ','091713698                                         ','GAMBOA                                            ','50,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('13','MAUREN                                            ','170861045                                         ','GARCIA                                            ','30,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('14','CAROL                                             ','110336785                                         ','GONZALEZ                                          ','40,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('15','LAURA                                             ','010207919                                         ','GUTIERREZ                                         ','30,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('16','GABRIELA                                          ','110192017                                         ','HERNANDEZ                                         ','30,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('17','JHONYER                                           ','020133878                                         ','MENDEZ                                            ','40,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('18','EDGAR                                             ','091634091                                         ','MORENO                                            ','30,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('19','SOFIA                                             ','080092329                                         ','PINTO                                             ','40,1',null);
Insert into PRUEBA.CLIENTE (ID_CLIENTE,NOMBRE_CLIENTE,CI_CLIENTE,APELLIDO_CLIENTE,LIMITECREDITO,ID_GARANTE) values ('20','SOFIA                                             ','1711279077                                        ','ROJAS                                             ','30,1',null);
REM INSERTING into PRUEBA.DETALLE
SET DEFINE OFF;
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('1','1','1','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('2','2','2','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('3','3','3','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('4','4','4','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('5','5','5','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('6','6','6','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('7','7','7','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('8','8','8','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('9','9','9','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('10','10','10','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('11','11','11','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('12','12','12','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('13','13','13','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('14','14','14','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('15','15','15','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('16','16','16','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('17','17','17','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('18','18','18','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('19','19','19','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('20','20','20','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('21','21','21','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('22','22','22','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('23','23','23','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('24','24','24','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('25','25','25','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('26','1','26','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('27','2','27','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('28','3','28','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('29','4','29','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('30','5','30','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('31','6','31','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('32','7','31','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('33','8','33','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('34','9','34','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('35','10','35','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('36','11','36','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('37','12','37','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('38','13','38','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('39','14','39','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('40','15','40','2');
Insert into PRUEBA.DETALLE (ID_DETALLE,ID_FACTURA,ID_EDICION,CANTIDAD) values ('41','15','40','1');
REM INSERTING into PRUEBA.DETALLE_AUTOR_LIBRO
SET DEFINE OFF;
REM INSERTING into PRUEBA.DEUDOR
SET DEFINE OFF;
Insert into PRUEBA.DEUDOR (CODCLI,CODIGOGARANTE,LIMITECREDITO,SALDODEUDOR) values ('19',null,'199,15','200,85');
Insert into PRUEBA.DEUDOR (CODCLI,CODIGOGARANTE,LIMITECREDITO,SALDODEUDOR) values ('19',null,'199,15','200,85');
Insert into PRUEBA.DEUDOR (CODCLI,CODIGOGARANTE,LIMITECREDITO,SALDODEUDOR) values ('19',null,'199,15','200,85');
REM INSERTING into PRUEBA.EDICION
SET DEFINE OFF;
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('1','1','1','291,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('2','1','1','191,18','2da edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('3','2','1','91,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('4','2','1','80,18','2da edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('5','3','1','111,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('6','3','1','110,18','2da edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('7','4','1','20,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('8','4','1','31,18','2da edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('9','5','1','89,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('10','5','1','87,18','2da edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('11','6','1','71,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('12','6','1','81,18','2da edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('13','7','1','291,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('14','7','1','291,18','2da edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('15','8','1','101,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('16','8','1','211,18','2da edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('17','9','1','201,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('18','9','1','191,18','2da edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('19','10','1','121,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('20','10','1','131,18','2da edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('21','11','1','91,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('22','11','1','80,18','3ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('23','12','1','71,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('24','12','1','81,18','3ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('25','13','1','51,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('26','13','1','81,18','4ta edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('27','14','1','71,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('28','14','1','41,18','3ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('29','15','1','81,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('30','15','1','101,18','3ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('31','16','1','11,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('32','16','1','31,18','4ta edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('33','17','1','95,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('34','17','1','81,18','5ta edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('35','18','1','31,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('36','18','1','41,18','3ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('37','19','1','51,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('38','19','1','61,18','5ta edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('39','20','1','81,18','1ra edicion');
Insert into PRUEBA.EDICION (ID_EDICION,ID_LIBRO,ID_LIBRERIA,PRECIO_EDICION,EDICION_LIBRO) values ('40','20','1','90,18','3ra edicion');
REM INSERTING into PRUEBA.FACTURA
SET DEFINE OFF;
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('26','10','19',to_date('27/07/2020','DD/MM/RRRR'),'200,85','credito',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('1','1','1',to_date('01/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('2','3','1',to_date('02/07/2020','DD/MM/RRRR'),'100,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('3','5','2',to_date('03/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('4','7','2',to_date('05/07/2020','DD/MM/RRRR'),'100,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('5','9','3',to_date('06/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('6','11','4',to_date('07/07/2020','DD/MM/RRRR'),'100,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('7','13','5',to_date('08/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('8','15','5',to_date('09/07/2020','DD/MM/RRRR'),'120,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('9','17','6',to_date('10/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('10','19','7',to_date('11/07/2020','DD/MM/RRRR'),'120,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('11','21','7',to_date('12/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('12','23','8',to_date('13/07/2020','DD/MM/RRRR'),'120,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('13','25','8',to_date('14/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('14','27','9',to_date('15/07/2020','DD/MM/RRRR'),'100,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('15','29','10',to_date('16/07/2020','DD/MM/RRRR'),'232,85','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('16','31','10',to_date('17/07/2020','DD/MM/RRRR'),'120,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('17','33','11',to_date('18/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('18','35','12',to_date('19/07/2020','DD/MM/RRRR'),'100,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('19','37','12',to_date('20/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('20','39','13',to_date('21/07/2020','DD/MM/RRRR'),'110,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('21','2','14',to_date('22/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('22','4','15',to_date('23/07/2020','DD/MM/RRRR'),'111,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('23','6','16',to_date('24/07/2020','DD/MM/RRRR'),'142,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('24','8','17',to_date('25/07/2020','DD/MM/RRRR'),'110,67','contado',null,null);
Insert into PRUEBA.FACTURA (ID_FACTURA,ID_EDICION,ID_CLIENTE,FECHA_FACTURA,MONTOTOTAL,TIPOFAC,FECHAVENCIMIENTO,CODICO_SEGURIDAD) values ('25','10','18',to_date('26/07/2020','DD/MM/RRRR'),'51,18','contado',null,null);
REM INSERTING into PRUEBA.GARANTE
SET DEFINE OFF;
Insert into PRUEBA.GARANTE (ID_GARANTE,NOMBRE_GARANTE) values ('17','garanteNuevo                                      ');
REM INSERTING into PRUEBA.LIBRERIA
SET DEFINE OFF;
Insert into PRUEBA.LIBRERIA (ID_LIBRERIA,NOMBRE_LIBRERIA) values ('1','La Espaniola                                      ');
REM INSERTING into PRUEBA.LIBRO
SET DEFINE OFF;
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('1','Poema 20                                          ','8497364678                                        ','1992                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('2','PoemaGilgamesh                                    ','8497364678                                        ','1992                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('3','Libro de Job                                      ','8497364678                                        ','1999                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('4','Saga de Njál                                      ','8497364678                                        ','1999                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('5','Todo se desmorona                                 ','8497364678                                        ','1999                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('6','Divina Comedia                                    ','8497364678                                        ','1999                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('7','Orgullo y prejuicio                               ','8497364678                                        ','1999                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('8','Papá Goriot                                       ','8497364678                                        ','1999                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('9','Cumbres Borrascosas                               ','8497364678                                        ','1999                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('10','Nostromo                                          ','8497364678                                        ','1999                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('11','El idiota                                         ','8497364678                                        ','1999                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('12','Medea                                             ','8497364678                                        ','1999                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('13','Harry Poter                                       ','8497364678                                        ','2005                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('14','El principit                                      ','8497364678                                        ','2005                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('15','Platero y yo                                      ','8497364678                                        ','2005                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('16','El idiota                                         ','8497364678                                        ','1989                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('17','La isla                                           ','8497364678                                        ','2001                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('18','Expedientes x                                     ','8497364678                                        ','2005                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('19','Ruptura                                           ','8497364678                                        ','2003                                              ','Español                                           ');
Insert into PRUEBA.LIBRO (ID_LIBRO,TITULO_LIBRO,ISBN_LIBRO,ANIO_LIBRO,IDIOMA_LIBRO) values ('20','Divergente y yo                                   ','8497364678                                        ','2000                                              ','Español                                           ');
REM INSERTING into PRUEBA.TARJETACREDITO
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C0010719
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRUEBA"."SYS_C0010719" ON "PRUEBA"."GARANTE" ("ID_GARANTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010722
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRUEBA"."SYS_C0010722" ON "PRUEBA"."AUTOR" ("ID_AUTOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010723
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRUEBA"."SYS_C0010723" ON "PRUEBA"."CLIENTE" ("ID_CLIENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010724
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRUEBA"."SYS_C0010724" ON "PRUEBA"."DETALLE" ("ID_DETALLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010725
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRUEBA"."SYS_C0010725" ON "PRUEBA"."DETALLE_AUTOR_LIBRO" ("ID_DETALLE_AUTOR_LIBRO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010726
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRUEBA"."SYS_C0010726" ON "PRUEBA"."EDICION" ("ID_EDICION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010728
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRUEBA"."SYS_C0010728" ON "PRUEBA"."LIBRERIA" ("ID_LIBRERIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010729
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRUEBA"."SYS_C0010729" ON "PRUEBA"."LIBRO" ("ID_LIBRO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010733
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRUEBA"."SYS_C0010733" ON "PRUEBA"."FACTURA" ("ID_FACTURA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011004
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRUEBA"."SYS_C0011004" ON "PRUEBA"."TARJETACREDITO" ("NUMTARJETA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table AUTOR
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."AUTOR" ADD PRIMARY KEY ("ID_AUTOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRUEBA"."AUTOR" MODIFY ("ID_AUTOR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."CLIENTE" ADD PRIMARY KEY ("ID_CLIENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRUEBA"."CLIENTE" MODIFY ("ID_CLIENTE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DETALLE
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."DETALLE" ADD PRIMARY KEY ("ID_DETALLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRUEBA"."DETALLE" MODIFY ("ID_DETALLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DETALLE_AUTOR_LIBRO
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."DETALLE_AUTOR_LIBRO" ADD PRIMARY KEY ("ID_DETALLE_AUTOR_LIBRO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRUEBA"."DETALLE_AUTOR_LIBRO" MODIFY ("ID_DETALLE_AUTOR_LIBRO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EDICION
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."EDICION" ADD PRIMARY KEY ("ID_EDICION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRUEBA"."EDICION" MODIFY ("ID_EDICION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FACTURA
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."FACTURA" ADD CONSTRAINT "CK_FACTURA_CONTADO_CREDITO" CHECK (tipofac='credito' or Tipofac='contado') ENABLE;
  ALTER TABLE "PRUEBA"."FACTURA" ADD PRIMARY KEY ("ID_FACTURA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRUEBA"."FACTURA" MODIFY ("ID_FACTURA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GARANTE
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."GARANTE" ADD PRIMARY KEY ("ID_GARANTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRUEBA"."GARANTE" MODIFY ("ID_GARANTE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIBRERIA
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."LIBRERIA" ADD PRIMARY KEY ("ID_LIBRERIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRUEBA"."LIBRERIA" MODIFY ("ID_LIBRERIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIBRO
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."LIBRO" ADD PRIMARY KEY ("ID_LIBRO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRUEBA"."LIBRO" MODIFY ("ID_LIBRO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TARJETACREDITO
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."TARJETACREDITO" ADD PRIMARY KEY ("NUMTARJETA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRUEBA"."TARJETACREDITO" MODIFY ("NUMTARJETA" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."CLIENTE" ADD CONSTRAINT "FK_CLIENTE_DEPENDE_GARANTE" FOREIGN KEY ("ID_GARANTE")
	  REFERENCES "PRUEBA"."GARANTE" ("ID_GARANTE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DETALLE
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."DETALLE" ADD CONSTRAINT "FK_DETALLE_CONTIENE_FACTURA" FOREIGN KEY ("ID_FACTURA")
	  REFERENCES "PRUEBA"."FACTURA" ("ID_FACTURA") ENABLE;
  ALTER TABLE "PRUEBA"."DETALLE" ADD CONSTRAINT "FK_DETALLE_POSEE_EDICION" FOREIGN KEY ("ID_EDICION")
	  REFERENCES "PRUEBA"."EDICION" ("ID_EDICION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DETALLE_AUTOR_LIBRO
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."DETALLE_AUTOR_LIBRO" ADD CONSTRAINT "FK_DETALLE__ESCRIBE_AUTOR" FOREIGN KEY ("ID_AUTOR")
	  REFERENCES "PRUEBA"."AUTOR" ("ID_AUTOR") ENABLE;
  ALTER TABLE "PRUEBA"."DETALLE_AUTOR_LIBRO" ADD CONSTRAINT "FK_DETALLE__SER_ESCRI_LIBRO" FOREIGN KEY ("ID_LIBRO")
	  REFERENCES "PRUEBA"."LIBRO" ("ID_LIBRO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EDICION
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."EDICION" ADD CONSTRAINT "FK_EDICION_HAY_LIBRERIA" FOREIGN KEY ("ID_LIBRERIA")
	  REFERENCES "PRUEBA"."LIBRERIA" ("ID_LIBRERIA") ENABLE;
  ALTER TABLE "PRUEBA"."EDICION" ADD CONSTRAINT "FK_EDICION_TIENE_LIBRO" FOREIGN KEY ("ID_LIBRO")
	  REFERENCES "PRUEBA"."LIBRO" ("ID_LIBRO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FACTURA
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."FACTURA" ADD CONSTRAINT "FK_FACTURA_ADQUIERE_CLIENTE" FOREIGN KEY ("ID_CLIENTE")
	  REFERENCES "PRUEBA"."CLIENTE" ("ID_CLIENTE") ENABLE;
  ALTER TABLE "PRUEBA"."FACTURA" ADD CONSTRAINT "FK_FACTURA_ESTA_EN_EDICION" FOREIGN KEY ("ID_EDICION")
	  REFERENCES "PRUEBA"."EDICION" ("ID_EDICION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TARJETACREDITO
--------------------------------------------------------

  ALTER TABLE "PRUEBA"."TARJETACREDITO" ADD CONSTRAINT "FK_TARJETACREDITO_CLIENTE" FOREIGN KEY ("ID_CLIENTE")
	  REFERENCES "PRUEBA"."CLIENTE" ("ID_CLIENTE") ENABLE;
--------------------------------------------------------
--  DDL for Trigger COMPRACONTARJETA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PRUEBA"."COMPRACONTARJETA" 
AFTER INSERT ON factura
-----------------------------
----- declaro variables
   FOR EACH ROW
DECLARE
   v_factura float(126);
   nombre_cli varchar2(50);
BEGIN
-- Cuando se hace el pedido a crédito, se inserta una fila en DEUDOR con el valor de esa factura en SaldoDeudor.
--Si el cliente ya tiene otras facturas a crédito, se incrementa el saldo deudor. 
 IF :NEW.tipofac='credito' THEN
    
  SELECT sum( montototal ) total_calculado INTO v_factura
		FROM cliente,factura 
    where cliente.id_cliente=factura.id_cliente
    and cliente.id_cliente = :NEW.ID_CLIENTE; 
    
  SELECT cliente.NOMBRE_CLIENTE INTO nombre_cli
		FROM cliente,factura 
    where cliente.id_cliente=factura.id_cliente
    and cliente.id_cliente = :NEW.ID_CLIENTE;    
    
  insert into tarjetacredito values (nombre_cli,:NEW.FECHAVENCIMIENTO,:NEW.CODICO_SEGURIDAD,:NEW.ID_CLIENTE,v_factura);
 
 END IF;
END;
/
ALTER TRIGGER "PRUEBA"."COMPRACONTARJETA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DEUDOR_CLIENTE_CON_DEUDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PRUEBA"."DEUDOR_CLIENTE_CON_DEUDA" 
BEFORE INSERT ON DEUDOR   
FOR EACH ROW
BEGIN
DECLARE
   tipofactura varchar2(10); 
BEGIN
   -- verificado el tipo de factura para saber si el cliente de esa factura tiene deuda o no    
   select factura.tipofac INTO tipofactura
   from cliente, factura
   where factura.id_cliente = cliente.id_cliente and cliente.id_cliente = :NEW.CODCLI;

   -- si el valor de la consulta no es contado   
  IF (tipofactura='contado') THEN
  RAISE_APPLICATION_ERROR (-20600,tipofactura||'cliente no deudor');
  END IF;
END; 
END;
/
ALTER TRIGGER "PRUEBA"."DEUDOR_CLIENTE_CON_DEUDA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DEUDOR_INSERT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PRUEBA"."DEUDOR_INSERT" 
BEFORE INSERT ON factura
   FOR EACH ROW

DECLARE
   v_factura float(126);
   limite_credito float(126);   
   limite_t float(126);
BEGIN
-- Cuando se hace el pedido a crédito, se inserta una fila en DEUDOR con el valor de esa factura en SaldoDeudor.
--Si el cliente ya tiene otras facturas a crédito, se incrementa el saldo deudor. 
 IF :NEW.tipofac='credito' THEN                   
    
  SELECT sum( montototal ) total_calculado INTO v_factura
		FROM cliente,factura 
    where cliente.id_cliente=factura.id_cliente
    and cliente.id_cliente=:NEW.id_cliente; 
    
  limite_credito := 400.00;
  
 --Si el SaldoDeudor es mayor que el LímiteCrédito, no se puede realizar la venta a crédito.
       IF (limite_credito > v_factura)  THEN
         limite_t:=(limite_credito - v_factura);
         insert into deudor values (:NEW.id_cliente,NULL,limite_t,v_factura);
       END IF;
 
 END IF;
END;

--drop trigger DEUDOR_INSERT
/
ALTER TRIGGER "PRUEBA"."DEUDOR_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GARANTE_CLIENTE_SIN_DEUDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PRUEBA"."GARANTE_CLIENTE_SIN_DEUDA" 
BEFORE INSERT ON GARANTE
FOR EACH ROW
DECLARE
   tipofactura varchar2(10);

BEGIN
   -- verificado el tipo de factura para saber si el cliente de esa factura tiene deuda o no    
   select factura.tipofac INTO tipofactura 
   from cliente ,factura 
   where factura.id_cliente = cliente.id_cliente
   and cliente.id_cliente = :NEW.id_garante;

   -- si el valor de la consulta no es contado   
  IF tipofactura='credito' THEN  
  raise_application_error(-20001,'cliente tiene deudas');
  END IF;
  
END;
/
ALTER TRIGGER "PRUEBA"."GARANTE_CLIENTE_SIN_DEUDA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NUMTARJETASECUENCIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PRUEBA"."NUMTARJETASECUENCIA" 
  BEFORE INSERT ON TARJETACREDITO
  FOR EACH ROW
  BEGIN
    SELECT numTarjeta_secuencia.nextval INTO :new.numTarjeta FROM dual;
  END;
/
ALTER TRIGGER "PRUEBA"."NUMTARJETASECUENCIA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SUMA_MONTO_TOTAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PRUEBA"."SUMA_MONTO_TOTAL" 
AFTER INSERT ON detalle
BEGIN
-----------------------------
----- declaro variables
DECLARE
   id_ultima_Fact number;
   total_mont number;
BEGIN
----- obtengo ID factura del ultimo detalle ingresado
Select id_factura INTO id_ultima_Fact
from (select id_factura from detalle
order by id_factura desc )
where rownum = 1 ;
----- edito el monto con la suma de los valores(precio) en la edicion para ese detalle
UPDATE factura SET montototal = 
    (SELECT sum( precio_edicion ) total_calculado --INTO total_mont
		FROM detalle, edicion,factura 
    where detalle.id_edicion=edicion.id_edicion 
    and detalle.id_factura=factura.id_factura 
    and factura.id_factura=id_ultima_Fact)
    WHERE factura.id_factura=id_ultima_Fact;
    
END;

END;
/
ALTER TRIGGER "PRUEBA"."SUMA_MONTO_TOTAL" ENABLE;
