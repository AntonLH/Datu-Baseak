CREATE TABLE Langilea(
KodLang varchar2(10) PRIMARY KEY,
IzenAbizenak varchar2(50),
Helbidea varchar2(50), 
Telefonoa varchar2(11)
);


CREATE TABLE Arduraduna(
KodLang varchar2(10),
KodNagusia varchar2(10),
CONSTRAINTS PK_Arduradun
PRIMARY KEY (KodLang, KodNagusia),
CONSTRAINT FK_ardu_lang1 FOREIGN KEY (KodLang) REFERENCES Langilea(KodLang) 
ON DELETE CASCADE,
CONSTRAINT FK_ardu_lang2 FOREIGN KEY (KodLang) REFERENCES Langilea(KodLang)
ON DELETE CASCADE
);