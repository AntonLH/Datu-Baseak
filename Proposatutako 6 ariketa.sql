CREATE TABLE FABRIKATZAILEA
(
FABRIKA_KODEA NUMBER(3),
IZENA VARCHAR2(15),
HERRIA VARCHAR2(15),
CONSTRAINT PK_KOD PRIMARY KEY(FABRIKA_KODEA),
CONSTRAINT MAYUS_IZENA CHECK (IZENA = UPPER(IZENA)),
CONSTRAINT HERRIA_MAYUS CHECK (HERRIA = UPPER(HERRIA))
);
CREATE TABLE ARTIKULU
(
ARTIKULU_IZENA VARCHAR2(20),
PISUA NUMBER(3),
KATEGORIA VARCHAR2(10),
SALMENTA_PREZ NUMBER(6,2),
EROSKETA_PREZ NUMBER(6,2),
STOCK NUMBER(5),
FABRIKA_KODEA NUMBER(3),
CONSTRAINT PK_FABRIKA_KOD PRIMARY KEY(FABRIKA_KODEA, ARTIKULU_IZENA, PISUA, KATEGORIA),
CONSTRAINT FK_KODE FOREIGN KEY (FABRIKA_KODEA) REFERENCES FABRIKATZAILEA (FABRIKA_KODEA) ON DELETE CASCADE,
CONSTRAINT SALMENTA_TARTEA CHECK (SALMENTA_PREZ > 0),
CONSTRAINT EROSKETA_TARTEA CHECK (EROSKETA_PREZ > 0),
CONSTRAINT PISUA_TARTEA CHECK (PISUA > 0),
CONSTRAINT KATEGORIA_TARTEA CHECK (KATEGORIA IN('Primera', 'Segunda', 'Tercera'))
);