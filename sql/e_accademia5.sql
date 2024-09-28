--Definire in SQL le seguenti interrogazioni, in cui si chiedono tutti risultati distinti:

--1. Quali sono il nome, la data di inizio e la data di fine dei WP del progetto di nome
--‘Pegasus’?
select w.nome, w.inizio, w.fine, p.nome
from progetto as  p, wp as w
where p.nome = 'Pegasus' and w.progetto =p.id

--2. Quali sono il nome, il cognome e la posizione degli strutturati che hanno almeno
--una attività nel progetto ‘Pegasus’, ordinati per cognome decrescente?
select distinct p.nome, p.cognome, p.posizione, pr.nome
from persona as  p, progetto as pr, attivitaprogetto as atp
where pr.nome = 'Pegasus' 
and pr.id = atp.Progetto 
and p.id = atp.persona
order by p.cognome desc;

--3. Quali sono il nome, il cognome e la posizione degli strutturati che hanno più di
--una attività nel progetto ‘Pegasus’?
--4. Quali sono il nome, il cognome e la posizione dei Professori Ordinari che hanno
--fatto almeno una assenza per malattia?
--5. Quali sono il nome, il cognome e la posizione dei Professori Ordinari che hanno
--fatto più di una assenza per malattia?
--6. Quali sono il nome, il cognome e la posizione dei Ricercatori che hanno almeno
--un impegno per didattica?
--7. Quali sono il nome, il cognome e la posizione dei Ricercatori che hanno più di un
--impegno per didattica?
--8. Quali sono il nome e il cognome degli strutturati che nello stesso giorno hanno sia
--attività progettuali che attività non progettuali?
--9. Quali sono il nome e il cognome degli strutturati che nello stesso giorno hanno sia
--attività progettuali che attività non progettuali? Si richiede anche di proiettare il
--giorno, il nome del progetto, il tipo di attività non progettuali e la durata in ore di
--entrambe le attività.
--10. Quali sono il nome e il cognome degli strutturati che nello stesso giorno sono
--assenti e hanno attività progettuali?
--11. Quali sono il nome e il cognome degli strutturati che nello stesso giorno sono
--assenti e hanno attività progettuali? Si richiede anche di proiettare il giorno, il
--nome del progetto, la causa di assenza e la durata in ore della attività progettuale.
--12. Quali sono i WP che hanno lo stesso nome, ma appartengono a progetti diversi?



select wp.nome, wp.inizio, wp.fine
from progetto p, WP wp
where p.nome= 'Pegasus'
	and wp.progetto = p.id;

-- Quali sono il nome, il cognome e la posizione degli strutturati che hanno almeno
-- una attività nel progetto ‘Pegasus’, ordinati per cognome decrescente?

select distinct persona.id , persona.nome, persona.cognome, persona.posizione, progetto.nome
from progetto, attivitaprogetto, persona
where progetto.nome = 'Pegasus'

select distinct





