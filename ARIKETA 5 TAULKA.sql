CREATE TABLE NEKAZALETXEA
{
	KodNekazaletxea		NUMBER(10),
	Helbidea			VARCHAR2(30),
	Telefonoa			NUMBER(9),
	Jabea				VARCHAR2(20),	
	Gelakopurua			NUMBER(3),
	PRIMARY KEY KodNekazaletxea
}
CREATE TABLE BEZEROA
{
	NAN					VARCHAR2(9),
	Datupertsonalak		VARCHAR2(20),
	Telefonoa			NUMBER(9),
	KodNekazaletxea		NUMBER(10),
	PRIMARY KEY KodPelikula
	CONSTRAINT FK_BEZEROA FOREIGN KEY (KodNekazaletxea) REFERENCES NEKAZALETXEA ON DELETE CASCADE
}
