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

• StringaM
varchar(100)

create domain NumeroOre as integer
CHECK  (VALUE >= 0 and VALUE <=8)

• Denaro
real ≥ 0