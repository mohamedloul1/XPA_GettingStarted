BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "bedrijf" (
	"korting_per_klant"	TEXT,
	"bedrijf_type"	TEXT,
	"kvk_nummer"	INTEGER,
	"datum_aangemaakt"	date,
	"tijd_aangemaakt"	time,
	"gemaakt_door"	VARCHAR(20),
	"datum_aangepast"	date,
	"tijd_aangepast"	time,
	"aangepast_door"	VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS "korting" (
	"korting_percentage"	INTEGER,
	"korting_geldig_van"	datetime,
	"korting_geldig_tot_met"	datetime,
	"datum_aangemaakt"	date,
	"tijd_aangemaakt"	time,
	"gemaakt_door"	VARCHAR(20),
	"datum_aangepast"	date,
	"tijd_aangepast"	time,
	"aangepastt_door"	VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS "orders" (
	"order_id"	INTEGER UNIQUE,
	"order_nummer"	INTEGER,
	"order_tijd"	time,
	"order_datum"	date,
	"order_klant"	TEXT,
	"order_totaal_prijs"	INTEGER,
	"order_artikel"	TEXT,
	"arder_aantal"	INTEGER,
	"order_regel_prijs"	INTEGER,
	"order_regel_korting"	TEXT,
	"datum_aangemaakt"	date,
	"tijd_aangemaakt"	time,
	"gemaakt_door"	VARCHAR(20),
	"datum_aangepast"	date,
	"tijd_aangepast"	time,
	"aangepast_door"	VARCHAR(20),
	PRIMARY KEY("order_id")
);
CREATE TABLE IF NOT EXISTS "btw" (
	"btw_code"	INTEGER,
	"btw_omschrijving"	TEXT,
	"btw_percentage"	TEXT,
	"btw_geldig_van"	date,
	"btw_geldig_tot"	date,
	"datum_aangemaakt"	date,
	"tijd_aangemaakt"	time,
	"gemaakt_door"	VARCHAR(20),
	"datum_aangepast"	date,
	"tijd_aangepast"	time,
	"aangepast_door"	VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS "order_Header" (
	"order_id"	INTEGER UNIQUE,
	"order_nummer"	INTEGER,
	"order_datum"	date,
	"order_klant"	TEXT,
	"order_bedrag_excl"	INTEGER,
	"datum_aangemaakt"	date,
	"tijd_aangemaakt"	time,
	"gemaakt_door"	VARCHAR(20),
	"datum_aangepast"	date,
	"tijd_aangepast"	time,
	"aangepast_door"	VARCHAR(20),
	PRIMARY KEY("order_id")
);
CREATE TABLE IF NOT EXISTS "order_Detail" (
	"order_id"	INTEGER,
	"order_nummer"	INTEGER,
	"order_detail_volg_nummer"	INTEGER,
	"order_artikel_volg_nummer"	INTEGER,
	"order_artikel_nummer"	INTEGER,
	"arder_artikel_aantal"	INTEGER,
	"order_artikel_prijs"	TEXT,
	"order_artikel_btw_code"	INTEGER,
	"order_artikel_btw_prijs"	TEXT,
	"order_artikel_korting_code"	INTEGER,
	"order_artikel_korting_prijs"	TEXT,
	"order_regel_prijs"	TEXT,
	"datum_aangemaakt"	date,
	"tijd_aangemaakt"	time,
	"gemaakt_door"	VARCHAR(20),
	"datum_aangepast"	date,
	"tijd_aangepast"	time,
	"aangepast_door"	VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS "contact" (
	"contact_id"	INT,
	"email"	CHARACTER(20) NOT NULL,
	"mobielnummer"	INT,
	"fax"	INT,
	"datum_aangemaakt"	date,
	"tijd_aangemaakt"	time,
	"gemaakt_door"	VARCHAR(20),
	"datum_aangepast"	date,
	"tijd_aangepast"	time,
	"aangepast_door"	VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS "voorraad" (
	"aantal_voorraad"	CHARACTER(20) NOT NULL,
	"aantal_ijzeren_voorraad"	CHARACTER(220) NOT NULL,
	"datum_aangemaakt"	date,
	"tijd_aangemaakt"	time,
	"gemaakt_door"	VARCHAR(20),
	"datum_aangepast"	date,
	"tijd_aangepast"	time,
	"aangepast_door"	VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS "WarningCode" (
	"code_id"	INTEGER UNIQUE,
	"inhoud"	TEXT,
	"kleur_code"	TEXT,
	"datum_aangemaakt"	date,
	"tijd_aangemaakt"	time,
	"gemaakt_door"	VARCHAR(20),
	"datum_aangepast"	date,
	"tijd_aangepast"	time,
	"aangepast_door"	VARCHAR(20),
	PRIMARY KEY("code_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "personen" (
	"person_id"	INT,
	"naam"	CHARACTER(20) NOT NULL,
	"adres"	CHARACTER(20) NOT NULL,
	"huisnummer"	INT,
	"huisnummer_toev"	CHARACTER(20) NOT NULL,
	"postcode"	CHARACTER(20) NOT NULL,
	"plaats"	CHARACTER(20) NOT NULL,
	"geslacht"	CHARACTER(20) NOT NULL,
	"bsn"	CHARACTER(20) NOT NULL,
	"iban"	CHARACTER(20) NOT NULL,
	"logo"	IMAGE,
	"datum_gemaakt"	date,
	"tijd_gemaakt"	time,
	"gemaakt_door"	VARCHAR(20),
	"datum_verwijderd"	date,
	"tijd_verwijderd"	time,
	"verwijderd_door"	VARCHAR(20),
	"datum_aangepast"	date,
	"tijd_aangepast"	time,
	"aangepast_door"	VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS "artikelen" (
	"artikel_id"	INT,
	"artikel_groep"	CHARACTER(20) NOT NULL,
	"artikel_nummer"	INT,
	"artikel_naam"	CHARACTER(20) NOT NULL,
	"artikel_foto"	CHARACTER(20) NOT NULL,
	"artikel_eenheid"	INT,
	"artikel_prijs"	INT,
	"datum_gemaakt"	DATE NOT NULL,
	"tijd_gemaakt"	TIME NOT NULL,
	"gemaakt_door"	VARCHAR(20) NOT NULL,
	"datum_aangepast"	DATE,
	"tijd_aangepast"	TIME,
	"aangepast_door"	VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS "land" (
	"land_code"	CHAR(20) NOT NULL,
	"Land_naam"	CHAR(20) NOT NULL,
	"werelddeel"	VARCHAR(50),
	"internationalprefix"	VARCHAR(5),
	"warning_id"	INT,
	"datum_aangemaakt"	DATE,
	"tijd_aangemaakt"	TIME,
	"gemaakt_door"	VARCHAR(20),
	"datum_aangepast"	DATE,
	"tijd_aangepast"	TIME,
	"aangepast_door"	VARCHAR(20)
);
INSERT INTO "bedrijf" VALUES ('20%','prive','NL234567',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "bedrijf" VALUES (NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "bedrijf" VALUES (NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "bedrijf" VALUES (NULL,NULL,9090,'2020-12-22','21:02:41','SUPERVISOR','2020-12-22','21:02:41','SUPERVISOR');
INSERT INTO "bedrijf" VALUES (NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "bedrijf" VALUES ('','',99,'2020-12-22','21:02:31','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "bedrijf" VALUES ('25','prive',2436778,'2020-12-23','16:14:38','',NULL,NULL,NULL);
INSERT INTO "bedrijf" VALUES ('45','prive',88999,'2020-12-23','17:58:29','',NULL,NULL,NULL);
INSERT INTO "bedrijf" VALUES ('50','prive',7541098,'2020-12-24','09:51:41','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "korting" VALUES ('20%','01-12-2020','31-12-2020',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "korting" VALUES (56,'2009-12-22',NULL,'2020-12-22','21:07:01','SUPERVISOR','2020-12-22','21:06:56','SUPERVISOR');
INSERT INTO "korting" VALUES (32,NULL,NULL,'2020-12-22','21:06:53','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "korting" VALUES (50,'2020-12-24','2030-01-01','2020-12-24','09:47:53','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "orders" VALUES (5,NULL,NULL,NULL,'',NULL,'',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "orders" VALUES (7,NULL,NULL,NULL,'',NULL,'',NULL,NULL,'','2020-12-22','21:25:20','SUPERVISOR','2020-12-22','21:25:17','SUPERVISOR');
INSERT INTO "orders" VALUES (66,600,'15:00:00','2020-12-24','',89,'',NULL,NULL,'','2020-12-24','09:48:57','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "orders" VALUES (78,787,NULL,NULL,'',NULL,'',NULL,NULL,'','2020-12-22','21:23:28','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "btw" VALUES (6,NULL,NULL,'2000-05-06',NULL,'2020-12-23','11:46:22','SUPERVISOR','2020-12-23','11:46:18','SUPERVISOR');
INSERT INTO "btw" VALUES (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "btw" VALUES (78,'','',NULL,NULL,'2020-12-23','11:45:55','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "btw" VALUES (66,'','','2020-12-24','2030-12-24','2020-12-24','09:50:14','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "order_Header" VALUES (3,2,NULL,'',NULL,'2020-12-23','11:49:55','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "order_Header" VALUES (5,66,NULL,'',NULL,'2020-12-23','11:50:57','SUPERVISOR','2020-12-23','11:50:57','SUPERVISOR');
INSERT INTO "order_Header" VALUES (7,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "order_Header" VALUES (8,8989,NULL,'',NULL,'2020-12-23','11:51:19','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "order_Header" VALUES (66,77,'2020-12-24','Mohammed',3000,'2020-12-24','09:50:51','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "order_Header" VALUES (89,NULL,NULL,'',NULL,'2020-12-23','11:52:50','SUPERVISOR','2020-12-23','11:52:50','SUPERVISOR');
INSERT INTO "order_Detail" VALUES (5,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "order_Detail" VALUES (8,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "order_Detail" VALUES (6,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "order_Detail" VALUES (0,0,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "order_Detail" VALUES (909,0,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'','','2020-12-23','11:56:39','SUPERVISOR','2020-12-23','11:56:39','SUPERVISOR');
INSERT INTO "order_Detail" VALUES (66,77,77,77,77,NULL,'',NULL,'',NULL,'','','2020-12-24','09:51:20','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "contact" VALUES (1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "contact" VALUES (6,'6999',6,NULL,'2020-12-22','20:43:12','SUPERVISOR','2020-12-22','20:43:08','SUPERVISOR');
INSERT INTO "contact" VALUES (66,'669999',67,NULL,'2020-12-22','20:47:11','SUPERVISOR','2020-12-22','20:47:06','SUPERVISOR');
INSERT INTO "contact" VALUES (2,'test@gmail.com',NULL,NULL,'2020-12-23','16:13:29','',NULL,NULL,NULL);
INSERT INTO "contact" VALUES (66,'roksess99@gmail.com',686464658,NULL,'2020-12-24','09:46:21','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "voorraad" VALUES ('550','90',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "voorraad" VALUES ('89','',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "voorraad" VALUES ('090909','7878','2020-12-23','11:41:04','SUPERVISOR','2020-12-23','11:41:00','SUPERVISOR');
INSERT INTO "voorraad" VALUES ('8900','900','2020-12-24','09:49:16','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "WarningCode" VALUES (1,'Let op code Rood','Rood',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "WarningCode" VALUES (2,'Let op code Oranje','Oranje',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "WarningCode" VALUES (3,'Let op code geel','Geel',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "WarningCode" VALUES (4,'hfhfhfhf','jbobo','2020-12-23','12:04:56','SUPERVISOR','2020-12-23','12:04:52','SUPERVISOR');
INSERT INTO "WarningCode" VALUES (5,'Let op code Rood','Rood','2020-12-23','18:25:56','','2020-12-23','18:25:45','');
INSERT INTO "personen" VALUES (6,'6','6',6,'','','','','','',NULL,'2020-12-22','17:15:01','SUPERVISOR','2020-12-22','17:15:01','SUPERVISOR','2020-12-22','17:15:01','SUPERVISOR');
INSERT INTO "personen" VALUES (8,'8','8',8,'8','','','','','',NULL,'2020-12-22','17:16:05','SUPERVISOR',NULL,NULL,NULL,'2020-12-22','17:16:05','SUPERVISOR');
INSERT INTO "personen" VALUES (9,'9','9',9,'9','','','','','',NULL,'2020-12-22','17:17:54','SUPERVISOR','2020-12-22','17:17:54','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "personen" VALUES (7,'Mohamed','st2',NULL,'','','','','','',NULL,'2020-12-23','16:21:22','',NULL,NULL,NULL,'2020-12-23','16:21:14','');
INSERT INTO "personen" VALUES (78,'Ahmer','',NULL,'','','','','','',NULL,'2020-12-23','16:22:29','',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personen" VALUES (88,'Peter','schipholplein',215,'','','','','','',NULL,'2020-12-23','18:01:33','',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personen" VALUES (66,'Mohammed Abo Khaled','Schipholplein',215,'','6843BR','Arnhem','Man','','',NULL,'2020-12-24','09:45:54','SUPERVISOR',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "artikelen" VALUES (5,'',6767,'','',NULL,90,'1901-01-01','','','2020-12-22','21:12:31','SUPERVISOR');
INSERT INTO "artikelen" VALUES (66,'',NULL,'','',NULL,NULL,'2020-12-22','ÿ:*','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "artikelen" VALUES (87,'',78,'','',87,NULL,'1901-01-01','','',NULL,NULL,NULL);
INSERT INTO "artikelen" VALUES (999,'99',9999,'','',999,999,'1901-01-01','','',NULL,NULL,NULL);
INSERT INTO "artikelen" VALUES (909090,'',NULL,'','',NULL,90,'2020-12-22','ÿé*','','2020-12-22','21:19:20','SUPERVISOR');
INSERT INTO "artikelen" VALUES (777,'77',7777,'','',7777,777,'1901-01-01','','',NULL,NULL,NULL);
INSERT INTO "artikelen" VALUES (333,'',3333,'','',33333,3333333,'1901-01-01',0,'',NULL,NULL,NULL);
INSERT INTO "artikelen" VALUES (8,'sex',8,'','',8,8,'2020-12-23',161403,'',NULL,NULL,NULL);
INSERT INTO "artikelen" VALUES (77,'77',777,'','',777,777,'2020-12-23',161524,'',NULL,NULL,NULL);
INSERT INTO "artikelen" VALUES (11,'11',11,'','',0,11,'2020-12-23',162009,'','2020-12-23','16:20:04','');
INSERT INTO "artikelen" VALUES (66,'ijzeren',77,'','',900,100,'2020-12-24',94943,'SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "land" VALUES ('DE','Germany','Europa
','+49',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "land" VALUES ('MA','Morocco','Noord-Africa
','+212',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "land" VALUES ('JP','Japan','Oost-Azie','+81',3,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "land" VALUES ('TR','Turkije','Midden-Oostena	','+90',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "land" VALUES ('JP','Japan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "land" VALUES ('SP','Spain','Europa
','+34',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "land" VALUES ('JP','Japa',NULL,NULL,NULL,'2020-12-22','20:54:11','SUPERVISOR','2020-12-22','20:54:05','SUPERVISOR');
INSERT INTO "land" VALUES ('ua','ua',NULL,NULL,NULL,'2020-12-22','20:54:02','SUPERVISOR',NULL,NULL,NULL);
INSERT INTO "land" VALUES ('VA','UAE',NULL,NULL,NULL,'2020-12-23','16:12:54','','2020-12-23','16:12:45','');
INSERT INTO "land" VALUES ('FR','Frankrijk',NULL,NULL,NULL,'2020-12-23','18:00:20','',NULL,NULL,NULL);
INSERT INTO "land" VALUES ('','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "land" VALUES ('DE','Germany','Europa','+49',NULL,'2020-12-24','09:47:04','SUPERVISOR',NULL,NULL,NULL);
CREATE INDEX IF NOT EXISTS "land_id" ON "WarningCode" (
	"code_id"
);
COMMIT;
