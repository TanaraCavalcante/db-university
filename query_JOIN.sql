-- 1 Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia.
SELECT *
FROM `degrees`
JOIN `students` ON `degrees`.`id` = `students` . `degree_id`
WHERE `degrees` . `name` = "Corso di Laurea in Economia";

-- 2 Selezionare tutti i corsi di laurea magistrale del dipartamento di Neuroscienza.
SELECT `degrees`.`name`,`degrees`.`level`, `departments`.`name`
FROM `degrees`
JOIN `departments` ON `degrees`.`department_id` = `departments` . `id`
WHERE `degrees` . `level` = "magistrale"
AND `departments`.`name` = "Dipartamento di Neuroscienze";

-- 3 Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44).
SELECT `degrees`.`name`, `teachers`.`name`, `teachers`.`surname`
FROM `degrees`
JOIN `courses` ON `degrees`.`id` = `courses` . `degree_id`
JOIN `course_teacher` ON `courses`.`id` = `course_teacher` . `course_id`
JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers` . `id`
WHERE `teachers` . `id` = 44;

-- 4 Selezionare tutti gli studenti con i dati relativi al corso di Laurea a cui sono iscritti e il relativo dipartamento, in ordine alfabetico per cognome e nome.
Select `students`.`surname`, `students`.`name`, `degrees`.`name`, `departments`.`name`
FROM `students`
JOIN `degrees` ON `students` . `degree_id` = `degrees` . `id`
JOIN `departments` ON `departments` . `id` = `degrees` . `department_id` 
ORDER BY `students`.`surname` ASC;

-- 5 Selezionare tutti i docenti che insegnano nel dipartimento di matematica (54).
SELECT `teachers`. `name`, `teachers`.`surname` , `departments`.`name`
FROM `teachers` 
JOIN `course_teacher` ON `teachers` . `id` = `course_teacher` . `teacher_id`
JOIN `courses` ON `course_teacher` . `teacher_id` = `courses` . `id`
JOIN `degrees` ON `courses` . `degree_id` = `degrees` . `id`
JOIN `departments` ON `degrees` . `department_id` = `departments` . `id` 
WHERE `departments` . `name` = "Dipartimento di Matematica";

-- 6 Selezionare tutti i corsi di laurea con i relativi corsi i insegnanti.
SELECT DISTINCT `teachers`. `name`, `teachers`.`surname`, `degrees`.`name`
FROM `degrees`
JOIN `courses` ON `degrees` . `id` = `courses` . `degree_id`
JOIN `course_teacher` ON `courses` . `id` = `course_teacher` . `course_id`
JOIN `teachers` ON `course_teacher` . `teacher_id` = `teachers` . `id`;

-- 7 BONUS: Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, stampando anche il voto massimo. Successivamente, filtrare i tentativi con voto minimo 18.
SELECT `students`. `id`, `students`. `name`, `students`. `surname`, MAX(`exam_student`. `vote`) AS `max_vote`, `courses`. `name`, COUNT(`exam_student`. `vote`) AS `numero_tentativi_appello`
FROM `students`
JOIN `exam_student` ON `students` . `id` = `exam_student` . `student_id`
JOIN `exams` ON `exams` . `id` = `exam_student` . `exam_id`
JOIN `courses` ON `courses` . `id` = `exams` . `course_id`
GROUP BY `students`.`id`,`courses`.`id`
HAVING `max_vote` >= 18;


