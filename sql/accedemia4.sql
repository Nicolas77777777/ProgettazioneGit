
--1. Quali sono i cognomi distinti di tutti gli strutturati?
SELECT DISTINCT cognome
from persona

----2. Quali sono i Ricercatori (con nome e cognome)?
SELECT DISTINCT nome, cognome,posizione
from persona
WHERE persona.posizione = 'Ricercatore'

--3. Quali sono i Professori Associati il cui cognome comincia con la lettera ‘V’?
SELECT id, nome, cognome, posizione
FROM persona 
WHERE  cognome like 'V%' and posizione = 'Professore Associato'
--4. Quali sono i Professori (sia Associati che Ordinari) il cui cognome comincia con la
--lettera ‘V’?
SELECT id, nome, cognome, posizione
FROM persona 
WHERE  cognome like 'V%' and posizione = 'Professore Associato' OR
		cognome like 'V%' and posizione = 'Professore Ordinario'

--5. Quali sono i Progetti già terminati alla data odierna?
SELECT id, nome, inizio, fine, budget
FROM progetto


--6. Quali sono i nomi di tutti i Progetti ordinati in ordine crescente di data di inizio?
SELECT id, nome
from progetto 
order by inizio asc ;

--7. Quali sono i nomi dei WP ordinati in ordine crescente (per nome)?
SELECT id , nome	
from WP 
order by nome asc

--8. Quali sono (distinte) le cause di assenza di tutti gli strutturati?
--9. Quali sono (distinte) le tipologie di attività di progetto di tutti gli strutturati?
--10. Quali sono i giorni distinti nei quali del personale ha effettuato attività non progettuali
--di tipo ‘Didattica’? Dare il risultato in ordine crescente.





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

