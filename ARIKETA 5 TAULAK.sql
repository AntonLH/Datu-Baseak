CREATE TABLE NEKAZALETXEA
(
	KodNekazaletxea		 NUMBER(10) PRIMARY KEY,
	Helbidea			 VARCHAR2(30),
	Telefonoa			 NUMBER(9),
	Jabea				 VARCHAR2(20),	
	Gelakopurua			 NUMBER(3)
);
CREATE TABLE BEZEROA
(
	NAN					 VARCHAR2(9) PRIMARY KEY,
	Datupertsonalak		 VARCHAR2(20),
	Telefonoa			 NUMBER(9),
	KodNekazaletxea		 NUMBER(10),
	CONSTRAINT FK_BEZEROA FOREIGN KEY (KodNekazaletxea) REFERENCES NEKAZALETXEA ON DELETE CASCADE
);
