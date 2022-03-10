
--1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name`
FROM `students`
JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` = 'Corso di laurea in Economia'

--2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`name`
FROM `degrees`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'

--3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`name`
FROM `courses`
JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`id` = 44;

--4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
--relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`name` , `students`.`surname`, `degrees`.* , `departments`.*
FROM `students` 
JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname`, `students`.`name`;