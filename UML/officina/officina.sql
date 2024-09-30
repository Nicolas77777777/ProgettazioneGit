CREATE TABLE Nazione (
    nome varchar(100) NOT NULL,
    PRIMARY KEY (nome)
);

CREATE TABLE Regione (
    nome varchar(100) NOT NULL,
    nazione varchar (100) NOT NULL,
    PRIMARY KEY (nome, nazione) NOT NULL, 
    FOREIGN KEY (nazione) REFERENCES Nazione (nome)
);

CREATE TABLE Citta (
    nome varchar(100) NOT NULL,
    nazione varchar(100) NOT NULL, 
    regione varchar(100) NOT NULL, 
    PRIMARY KEY (nome,regione,Nazione),
    FOREIGN KEY (regione, nazione) REFERENCES Regione(nome,nazione) 
);

CREATE TABLE Marca (
    nome varchar (100) NOT NULL,
    PRIMARY KEY (nome)
);

CREATE TABLE TipoVeicolo(
    nome varchar (100) NOT NULL,
    PRIMARY KEY (nome)
);

CREATE TABLE Modello (
    nome varchar (100) NOT NULL,
    marca varchar(100) NOT NULL,
    tipo varchar(100) NOT NULL,
    PRIMARY KEY (nome,marca),
    FOREIGN KEY (marca) REFERENCES Marca(nome),
    FOREIGN KEY (tipo) REFERENCES TipoVeicolo(nome)
);

CREATE TABLE Veicolo (
    targa  varchar PRIMARY KEY NOT NULL,
    immatricolazione INTEGER NOT NULL,
    modello varchar (100) NOT NULL,
    FOREIGN KEY (modello) REFERENCES modello (nome)
);

CREATE TABLE Cliente(

);

CREATE TABLE Riparazione (
    riconsegna TIMESTAMP
    codice INTEGER PRIMARY KEY
);



