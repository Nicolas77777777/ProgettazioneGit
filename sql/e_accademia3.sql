-- Definizione dei domini

create type Strutturato as 
enum (Ricercatore, Professore Associato, Professore Ordinario)

create type LavoroProgetto as
enum (’Ricerca e Sviluppo’, ’Dimostrazione’, ’Management’, ’Altro’)

create type LavoroNonProgettuale as
enum ('Didattica', 'Ricerca', 'Missione', 'Incontro Dipartimentale', 'Incontro
Accademico', 'Altro') ;

create type CausaAssenza as enum
('Chiusura Universitaria', 'Maternita', 'Malattia');

create domain PosInteger as integer
CHECK (VALUE >= 0);

create domain StringaM as varchar (100);

create domain NumeroOre as integer
CHECK  (VALUE >= 0 and VALUE <=8);

CREATE DOMAIN Denaro AS REAL
CHECK (VALUE >= 0);

--Schema relazionale con vincoli della base dati
CREATE TABLE Persona (
    id PosInteger NOT NULL, -- PRIMARY KEY
    nome StringaM  NOT NULL ,
    cognome  StringaM   NOT NULL, 
    posizione Strutturato  NOT NULL,
    stipendio Denaro   NOT NULL
    (id) PRIMARY KEY;
);

CREATE TABLE Progetto 
(id PosInteger  NOT NULL,
 nome StringaM NOT NULL, 
 inizio date NOT NULL, 
 fine date NOT NULL, 
 budget Denaro NOT NULL,
check inizio < fine
PRIMARY KEY (id)
unique (nome)
);
 

CREATE TABLE WP 
(progetto PosInteger  NOT NULL,
id PosInteger NOT NULL, 
nome StringaM NOT NULL, 
inizio date NOT NULL, 
fine date NOT NULL
CHECK inizio < fine
PRIMARY KEY (progetto,id)
UNIQUE (progetto,nome)
foreign key: progetto references Progetto(id) deferrable
);

CREATE TABLE AttivitaProgetto 
(id PosInteger NOT NULL, 
persona PosInteger NOT NULL, 
progetto PosInteger NOT NULL,
wp PosInteger NOT NULL,
giorno date NOT NULL, 
tipo LavoroProgetto NOT NULL, 
oreDurata NumeroOre NOT NULL
PRIMARY KEY (id),
foreign key (persona) references Persona(id),
foreign key: (progetto, wp) references WP(progetto, id) deferrable
);

create table AttivitaNonProgettuale (
  id PosInteger not null,
  persona PosInteger not null,
  tipo LavoroNonProgettuale not null,
  giorno date not null,
  oreDurata NumeroOre not null,
  primary key (id),
  foreign key (persona) references Persona(id) deferrable
);

create table Assenza (
  id PosInteger not null,
  persona PosInteger not null,
  tipo CausaAssenza not null,
  giorno date not null,
  primary key (id),
  unique (persona, giorno),
  foreign key (persona) references Persona(id) deferrable
);


