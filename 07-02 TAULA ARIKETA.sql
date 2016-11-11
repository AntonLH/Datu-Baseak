CREATE TABLE ERAIKINA
(
	KALEA VARCHAR2(30),
	ZENBAKIA NUMBER(3),		
	SOLAIRUA NUMBER(2),
	ATEA CHAR(1),
	POSTA-KODEA NUMBER(5),
	METROAK NUMBER(5),
	OHARRAK VARCHAR2(100),
	ZONALDE-KOD NUMBER(2),
	NAN VARCHAR2(10),
	CONSTRAINT PK_ERAIKINA PRIMARY KEY (KALEA, ZENBAKIA, SOLAIRUA, ATEA)

);
CREATE TABLE ZONALDE
(
	ZONALDE-IZENA VARCHAR2(50),
	OHARRAK VARCHAR2(100),
	ZONALDE-KOD NUMBER(2),
	CONSTRAINT PK_ERAIKINA PRIMARY KEY (KALEA, ZENBAKIA, SOLAIRUA, ATEA)

);
CREATE TABLE BEZERO
(
	IZENA VARCHAR2(20),
	ABIZENA VARCHAR2(50),
	NAN VARCHAR2(10)
);