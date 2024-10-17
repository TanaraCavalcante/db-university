--TODO 1- Selezionare tutti gli studenti nati del 1990(160):
SELECT * 
FROM `students` 
WHERE YEAR(`date_of_birth`)= 1990;

--TODO 2- Selezionare tutti i corsi che valgono più di 10 crediti(479)
SELECT *
FROM `courses`
WHERE `cfu`> 10;

--TODO 3- Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * 
FROM `students` 
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30;

--TODO 4- Selezionare tutti i corsi del primo semestre del primo anno di qualsiasi corso di laurea (286)
SELECT * 
FROM `courses` 
WHERE `period` = "I semestre"
AND `year`= 1;

--TODO 5- Selezionare tutti gli appelli d'esame che avengono nel pomerriggio (dopo le 14) del 20/06/2020
SELECT * 
FROM `exams` 
WHERE HOUR(`hour`) >= 14
AND `date`>= "2020/06/20";

--TODO 6- Selezionare tutti i corsi di laurea magistrale (38)
SELECT * 
FROM `degrees` 
WHERE `level` = "magistrale";

--TODO 7- Da quanti dipartamenti è composta l'universita? (12)
SELECT DISTINCT `department_id` 
FROM `degrees`;

--TODO 8- Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT COUNT(`id`)
FROM `teachers`
WHERE `phone` IS NULL;

--TODO 9- Inserire nella tabela degli studenti un nuovo record con i propri dati (per il campo degree_id, inserire un valore casuale)
INSERT INTO `students`(`degree_id`, `name`, `surname`, `date_of_bith`,`codice_fiscale`, `enrolment_date`,`registration_number`,`e-mail`)
VALUES (`50`, `Luca`, `Mauro`, `1994-07-15`,`lkj45982314674py`, `2024-10-17`,`5960`,`luca_mauro@gmail.com`);

--TODO 10- Cambiare il numero dell'uficio del professor Pietro Rizzo in 126
UPDATE `teachers`
SET `office_number` = 126
WHERE `name` = `Pietro`
AND `surname` = `Rizzo`;

--TODO 11- Elliminare dalla tabella studenti il record creato precedentemente al punto 9
DELETE FROM `students`
WHERE `name` = `Luca`
AND `surname` = `Mauro`;

