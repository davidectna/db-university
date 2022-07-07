-- contare quanti inscritti ci sono stati ogni anno 
select count(students.id) as number_of_inscriptions, courses.`year` 
from students 
inner join `degrees`
on students.degree_id = degrees.id 
inner join courses
on courses.degree_id = degrees.id 
group by courses.`year` 
order by courses.`year` asc;

-- selezionare tutti gli studenti iscritti al corso di laurea in economia opzione 1
select students.name, students.surname, degrees.name 
from students 
inner join `degrees`
on students.degree_id = degrees.id
where degrees.name  like 'Corso di Laurea in economia';

-- selezionare tutti gli studenti iscritti al corso di laurea in economia opzione 2
select *
from degrees
where name like '%Economia%';
-- ricavo id univoco

select students.name, students.surname, degrees.name 
from students 
inner join `degrees`
on students.degree_id = degrees.id
where degrees.id = 53;

-- Selezionare tutti i corsi in cui insegna Fulvio Amato
select courses.name , teachers.name , teachers.surname 
from courses 
inner join course_teacher 
on course_teacher.course_id = courses.id 
inner join teachers 
on course_teacher.teacher_id = teachers.id 
where teachers.name = 'Fulvio' and teachers.surname ='amato';


-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono 
-- iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
select *
from students 
inner join `degrees`
on students.degree_id = degrees.id 
inner join departments 
on departments.id = degrees.department_id 
order by students.name , students.surname;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento e mostrare nome dipartimento e numero di corsi
select d.name as nome_dipartimento, count(d2.id) as numero_di_corsi
from departments d 
inner join `degrees` d2 
on d.id = d2.department_id
group by d.id 
