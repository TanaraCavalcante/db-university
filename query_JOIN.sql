-- 1 Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia.
SELECT *
FROM `degrees`
JOIN `students` ON `degrees`.`id` = `students` . `degree_id`
WHERE `degrees` . `name` = "Corso di Laurea in Economia";

-- 2 Selezionare tutti i corsi di laurea magistrale del dipartamento di Neuroscienze.
SELECT `degrees`.`name`,`degrees`.`level`, `departments`.`name`
FROM `degrees`
INNER JOIN `departments` 
ON `degrees`.`department_id` = `departments` . `id`
WHERE `degrees` . `level` = "magistrale";

-- 3 Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44).

-- 4 Selezionare tutti gli studenti con i dati relativi al corso di Laurea a cui sono iscritti e il relativo dipartamento, in ordine alfabetico per cognome e nome.

-- 5 Selezionare tutti i docenti che insegnano nel dipartamento di matematica (54).

-- 6 Selezionare tutti i docenti che insegnano nel dipartimento di matematica.

-- 7 BONUS: Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, stampando anche il voto massimo. Successivamente, filtrare i tentativi con voto minimo 18.

