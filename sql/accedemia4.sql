-- 1
strutturati ?
select distinct cognome
from persona

--2
select nome,cognome
from persona 
where persona.posizione = 'Ricercatore'

--3
select id,cognome
from persona 
where posizione = 'Professore Associato' and cognome like 'V%'

--4 
select id,cognome
from persona 
where posizione = 'Professore Associato' and cognome like 'V%' or posizione = 'Professore Ordinario' and cognome like 'V%'

--5
select *
from progetto
where fine < CURRENT_DATE; 

--6
select nome
FROM progetto
order by inizio asc;

--7
selct nome
from wp
order by nome;

--8 
select distinct tipo
from assenza

--9 
select distinct tipo 

