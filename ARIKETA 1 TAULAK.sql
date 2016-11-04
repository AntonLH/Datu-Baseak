CREATE TABLE Departamentua(
KodDeptua Number(6) PRIMARY KEY,
Izena Varchar2(25)
);

CREATE TABLE Irakaslea(
NAN Varchar2(10) PRIMARY KEY,
Izen_Abizenak Varchar2(50),
Espezialitatea Varchar2(25),
KodDeptua Number(6),
FOREIGN KEY (KodDeptua) REFERENCES Departamentua (KodDeptua)
ON DELETE CASCADE
);



CREATE TABLE Hitzaldia(
KodHitzaldia Number(5) PRIMARY KEY,
Gaia Varchar2(25),
Data date,
Iraupena Number(3),
Tokia Varchar(25)
);


CREATE TABLE Parte_hartu(
NAN Varchar2(10),
KodHitzaldia Number(5),
CONSTRAINT PK_parte_hartu
PRIMARY KEY (NAN, KodHitzaldia),
CONSTRAINT FK_PH_Irakas
FOREIGN KEY (NAN)
REFERENCES Irakaslea (NAN) 
ON DELETE CASCADE,
CONSTRAINT FK_PH_Hitz
FOREIGN KEY (KodHitzaldia)
REFERENCES Hitzaldia (KodHitzaldia)
ON DELETE CASCADE
);