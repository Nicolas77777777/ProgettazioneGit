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
    stipendio Denaro   NOT NULL)
    (id) PRIMARY KEY

Progetto (id: PosInteger, nome: StringaM, inizio: date, fine: date, budget:
Denaro)
[VincoloDB.1] altra chiave: (nome)
[VincoloDB.2] ennupla: inizio < fine
WP (progetto: PosInteger, id: PosInteger, nome: StringaM, inizio: date, fine:
date)
[VincoloDB.3] ennupla: inizio < fine
[VincoloDB.4] altra chiave: (progetto, nome)
[VincoloDB.5] foreign key: progetto references Progetto(id)
AttivitaProgetto (id: PosInteger, persona: PosInteger, progetto: PosInteger,
wp: PosInteger, giorno: date, tipo: LavoroProgetto, oreDurata: NumeroOre)
[VincoloDB.6] foreign key: persona references Persona(id)
[VincoloDB.7] foreign key: (progetto, wp) references WP(progetto, id)
AttivitaNonProgettuale (id: PosInteger, persona: PosInteger, tipo: Lavoro-
NonProgettuale, giorno: date, oreDurata: NumeroOre)
[VincoloDB.8] foreign key: persona references Persona(id)
Assenza (id: PosInteger, persona: PosInteger, tipo: CausaAssenza, giorno: date)
[VincoloDB.9] altra chiave: persona, giorno
[VincoloDB.10] foreign key: persona references Persona(id)