--Definizione dei domini

--1. Quali sono i voli (codice e nome della compagnia) la cui durata supera le 3 ore?
SELECT DISTINCT Volo.codice , Volo.comp
FROM Volo
WHERE Volo.durataMinuti > 180 ;

--2. Quali sono le compagnie che hanno voli che superano le 3 ore?
SELECT DISTINCT Compagnia.nome
FROM Compagnia , Volo
WHERE Compagnia.nome = Volo.comp AND Volo.durataMinuti > 180 ;

--3. Quali sono i voli (codice e nome della compagnia) che partono dall’aeroporto con
--codice ‘CIA’ ?
SELECT DISTINCT Volo.codice , Volo.comp
FROM Volo , ArrPart
WHERE Volo.codice = ArrPart.codice
AND Volo.comp = ArrPart.comp
AND ArrPart.partenza = 'CIA';

--4. Quali sono le compagnie che hanno voli che arrivano all’aeroporto con codice
--‘FCO’ ?
SELECT DISTINCT Compagnia.nome
FROM Compagnia , Volo , ArrPart , Aeroporto
WHERE Compagnia.nome = Volo.comp and Aeroporto.codice = ArrPart.arrivo AND
ArrPart.arrivo = 'FCO' ;


--5. Quali sono i voli (codice e nome della compagnia) che partono dall’aeroporto ‘FCO’
--e arrivano all’aeroporto ‘JFK’ ?
SELECT DISTINCT Volo.codice , Volo.comp
FROM Volo , ArrPart
WHERE Volo.codice = ArrPart.codice
AND Volo.comp = ArrPart.comp
AND ArrPart.partenza = 'FCO' AND ArrPart.arrivo = 'JFK' ;

--6. Quali sono le compagnie che hanno voli che partono dall’aeroporto ‘FCO’ e atter-
-- rano all’aeroporto ‘JFK’ ?
SELECT DISTINCT Volo.comp
FROM Volo , ArrPart
WHERE Volo.codice = ArrPart.codice
AND Volo.comp = ArrPart.comp
AND ArrPart.partenza = 'FCO' AND ArrPart.arrivo = 'JFK' ;

--7. Quali sono i nomi delle compagnie che hanno voli diretti dalla città di ‘Roma’ alla
-- città di ‘New York’ ?
SELECT DISTINCT 
FROM
WHERE
