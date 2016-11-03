CREATE TABLE ZINEMA_ARETOA
{
	KodAretoa		NUMBER(10),
	Izena			VARCHAR(20),
	Helbidea		VARCHAR(30),
	Telefonoa		NUMBER(9),
	PRIMARY KEY KodAretoa
}
CREATE TABLE PELIKULA
{
	KodPelikula		NUMBER(10),
	Titulua			VARCHAR(20),
	Zuzendaria		VARCHAR(30),
	Aktorenagusiak	VARCHAR(50),
	Iraupena		NUMBER(3),
	Laburpena		VARCHAR(100),
	PRIMARY KEY KodPelikula
}
CREATE TABLE EMAN
{
	KodAretoa		NUMBER(10),
	KodPelikula		NUMBER(10),
	Eguna			VARCHAR(10),
	Ordua			NUMBER(4),
	CONSTRAINT PK_EMAN PRIMARY KEY (KodAretoa, KodPelikula, Eguna, Ordua),
	CONSTRAINT FK_EMAN FOREIGN KEY (KodAretoa, KodPelikula) REFERENCES ZINEMA_ARETOA, PELIKULA ON DELETE CASCADE
}
