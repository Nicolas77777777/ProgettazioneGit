select wp.nome, wp.inizio, wp.fine
from progetto p, WP wp
where p.nome= 'Pegasus'
	and wp.progetto = p.id;

-- Quali sono il nome, il cognome e la posizione degli strutturati che hanno almeno
-- una attività nel progetto ‘Pegasus’, ordinati per cognome decrescente?

select distinct persona.id , persona.nome, persona.cognome, persona.posizione, progetto.nome
from progetto, attivitaprogetto, persona
where progetto.nome = 'Pegasus'





