--TODO 1- Selezionare tutti gli studenti nati del 1990(160):
SELECT * 
FROM `students` 
WHERE YEAR(`date_of_birth`)= 1990;

--TODO 2- Selezionare tutti i corsi che valgono più di 10 crediti(479)
SELECT *
FROM `courses`
WHERE `cfu`>= 10;

--TODO 3- Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * 
FROM `students` 
WHERE YEAR(`date_of_birth`) <= 1994;

--TODO 4- Selezionare tutti i corsi del primo semestre del primo anno di qualsiasi corso di laurea (286)
SELECT * 
FROM `courses` 
WHERE `period` = "I semestre"
AND `year`= 1;

--TODO 5- Selezionare tutti gli appelli d'esame che avengono nel pomerriggio (dopo le 14) del 20/06/2020
SELECT * 
FROM `exams` 
WHERE `hour` >= "14:00"
AND `date`>= "2020/06/20";

--TODO 6- Selezionare tutti i corsi di laurea magistrale (38)


--TODO 7- Da quanti dipartamenti è composta l'universita? (12)
SELECT DISTINCT `department_id` 
FROM `degrees`;

--TODO 8- Quanti sono gli insegnanti che non hanno un numero di telefono? (50)


--TODO 9- Inserire nella tabela degli studenti un nuovo record con i propri dati (per il campo degree_id, inserire un valore casuale)


--TODO 10- Cambiare il numero dell'uficio del professor Pietro Rizzo in 126


--TODO 11- Elliminare dalla tabella studenti il record creato precedentemente al punto 9

