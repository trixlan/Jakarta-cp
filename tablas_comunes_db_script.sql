-- USE master;

-- CREATE DATABASE hub_informacion_db;

USE hub_informacion_db;

CREATE SCHEMA ubicacion;

CREATE TABLE hub_informacion_db.ubicacion.estado (estado_id char(5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL, estado varchar(65) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, estado_nomenclatura varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, CONSTRAINT k_estado PRIMARY KEY (estado_id));

INSERT INTO hub_informacion_db.ubicacion.estado (estado_id,estado,estado_nomenclatura) VALUES (N'01000',N'AGUASCALIENTES',N'AS'), (N'02000',N'BAJA CALIFORNIA',N'BC'), (N'03000',N'BAJA CALIFORNIA SUR',N'BS'), (N'04000',N'CAMPECHE',N'CC'), (N'05000',N'COAHUILA DE ZARAGOZA',N'CL'), (N'06000',N'COLIMA',N'CM'), (N'07000',N'CHIAPAS',N'CS'), (N'08000',N'CHIHUAHUA',N'CH'), (N'09000',N'CIUDAD DE MEXICO',N'DF'), (N'10000',N'DURANGO',N'DG');
INSERT INTO hub_informacion_db.ubicacion.estado (estado_id,estado,estado_nomenclatura) VALUES (N'11000',N'GUANAJUATO',N'GT'), (N'12000',N'GUERRERO',N'GR'), (N'13000',N'HIDALGO',N'HG'), (N'14000',N'JALISCO',N'JC'), (N'15000',N'MEXICO',N'MC'), (N'16000',N'MICHOACAN DE OCAMPO',N'MN'), (N'17000',N'MORELOS',N'MS'), (N'18000',N'NAYARIT',N'NT'), (N'19000',N'NUEVO LEON',N'NL'), (N'20000',N'OAXACA',N'OC');
INSERT INTO hub_informacion_db.ubicacion.estado (estado_id,estado,estado_nomenclatura) VALUES (N'21000',N'PUEBLA',N'PL'), (N'22000',N'QUERETARO',N'QT'), (N'23000',N'QUINTANA ROO',N'QR'), (N'24000',N'SAN LUIS POTOSI',N'SP'), (N'25000',N'SINALOA',N'SL'), (N'26000',N'SONORA',N'SR'), (N'27000',N'TABASCO',N'TC'), (N'28000',N'TAMAULIPAS',N'TS'), (N'29000',N'TLAXCALA',N'TL'), (N'30000',N'VERACRUZ DE IGNACIO DE LA LLAVE',N'VS');
INSERT INTO hub_informacion_db.ubicacion.estado (estado_id,estado,estado_nomenclatura) VALUES (N'31000',N'YUCATAN',N'YN'), (N'32000',N'ZACATECAS',N'ZS');

