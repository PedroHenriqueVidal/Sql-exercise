create table student(
	id integer primary key,
	first_name varchar(128),
	last_name varchar(128),
	birth_date date,
	start_date date
);

create table lecturer(
	id integer primary key,
	first_name varchar(128),
	last_name varchar(128),
	degree varchar(32),
	email varchar(128)
);

create table academic_semester(
	id integer primary key,
	calendar_year int,
	term varchar(128),
	start_date date,
	end_date date
);

create table course_edition(
	id integer primary key,
	academic_semester_id integer,
	lecturer_id integer,
	foreign key (academic_semester_id) references academic_semester(id),
	foreign key (lecturer_id) references lecturer(id)
);

insert into student(id, first_name, last_name, birth_date, start_date) 
values(1, 'Mário', 'Andrade', '2002-06-10', '2014-05-09'),
		(2, 'Maria','Fátima','2004-07-10','2014-05-20'),
		(3, 'Ana', 'Silva', '2001-04-12', '2014-05-09'),
		(4, 'Bruno', 'Oliveira', '2000-11-23', '2013-09-15'),
		(5, 'Carlos', 'Mendes', '2002-02-18', '2014-06-01'),
		(6, 'Daniela', 'Fernandes', '2001-07-05', '2014-05-10'),
		(7, 'Eduardo', 'Souza', '1999-08-29', '2012-03-11'),
		(8, 'Fernanda', 'Costa', '2003-09-15', '2015-01-20'),
		(9, 'Gustavo', 'Almeida', '2001-12-07', '2014-04-22'),
		(10, 'Helena', 'Martins', '2002-10-03', '2014-05-09'),
		(12, 'Igor', 'Pereira', '2000-05-21', '2013-09-02'),
		(13, 'Júlia', 'Araújo', '2001-03-27', '2014-05-01'),
		(14, 'Kleber', 'Lima', '1998-07-17', '2012-02-15'),
		(15, 'Larissa', 'Ribeiro', '2002-01-10', '2014-07-14'),
		(16, 'Matheus', 'Vieira', '2003-11-09', '2015-01-16'),
		(17, 'Nathalia', 'Barbosa', '1999-04-25', '2012-09-18'),
		(18, 'Otávio', 'Neves', '2002-06-30', '2014-06-19'),
		(19, 'Beatriz', 'Santos', '2008-06-05', '2020-01-20'),
		(20, 'Lucas', 'Moura', '2009-09-19', '2021-04-12'),
		(21, 'Mariana', 'Teixeira', '2007-03-28', '2019-06-30'),
		(22, 'Felipe', 'Lopes', '2006-11-14', '2018-10-05'),
		(23, 'Gabriela', 'Sousa', '2010-01-21', '2022-02-14'),
		(24, 'Rafael', 'Moreira', '2009-08-15', '2022-02-14'),
		(25, 'Luana', 'Cardoso', '2008-11-09', '2022-02-14'),
		(26, 'Rodrigo', 'Monteiro', '2007-05-27', '2022-02-14'),
		(27, 'Sofia', 'Andrade', '2009-04-02', '2022-02-14'),
		(28, 'Henrique', 'Cavalcante', '2006-10-25', '2022-02-14'),
		(29, 'Clara', 'Pinto', '2008-09-19', '2022-02-14'),
		(30, 'Vinícius', 'Siqueira', '2007-01-05', '2022-02-14'),
		(31, 'Eduarda', 'Ferreira', '2009-02-18', '2022-02-14'),
		(32, 'Renan', 'Dias', '2006-12-12', '2022-02-14'),
		(33, 'Patrícia', 'Campos', '2008-07-01', '2022-02-14'),
		(34, 'Caio', 'Ramos', '2007-03-16', '2022-02-14'),
		(35, 'Lívia', 'Barros', '2009-06-23', '2022-02-14'),
		(36, 'Thiago', 'Alves', '2008-10-30', '2022-02-14'),
		(37, 'Manuela', 'Melo', '2009-12-07', '2022-02-14'),
		(38, 'Gabriel', 'Melo', '2009-12-07', '2022-02-14');



insert into lecturer(id, first_name, last_name, degree, email)
values
	  (1, 'João', 'Cunha', 'Bacharelado de Ciências', 'joão@example.com'),
	  (2, 'Jane', 'Sousa', 'Mestre de Artes', 'jane@example.com'),
	  (3, 'Antônio', 'Vasconcelos', 'Doutor de Filosofia', 'antvasc@example.com'),
	  (4, 'Wilson', 'Silva', 'Bacharelado em Engenharia', 'wilson@example.com'),
	  (5, 'Davi', 'Negreiros', 'Mestre em Administração', 'davineg@example.com'),
	  (6, 'Emilly', 'Souza', 'Bacharelado de Engenharia', 'emilysouza@example.com'),
	  (7, 'Tom', 'Braga', 'Doutor de Medicina', 'tombraga@example.com'),
	  (8, 'Sarah', 'Silva', 'Mestre em Música', 'sarah123@example.com'),
	  (9, 'Kelvin', 'Vidal', 'Bacharelado em Ciências', 'kelvinvid@example.com'),
	  (10, 'Laura', 'Braga', 'Mestre em Administração Pública', 'laurabraga1@example.com');

  

insert into academic_semester (id, calendar_year, term, start_date, end_date)
values
	(1, 2024, 'Primeiro Semestre', '2024-02-01', '2024-06-30'),
	(2, 2024, 'Segundo Semestre', '2024-08-01', '2024-12-15'),
	(3, 2025, 'Primeiro Semestre', '2025-02-01', '2025-06-30'),
	(4, 2025, 'Segundo Semestre', '2025-08-01', '2025-12-15'),
	(5, 2026, 'Primeiro Semestre', '2026-02-01', '2026-06-30'),
	(6, 2026, 'Segundo Semestre', '2026-08-01', '2026-12-15'),
	(7, 2027, 'Primeiro Semestre', '2027-02-01', '2027-06-30'),
	(8, 2027, 'Segundo Semestre', '2027-08-01', '2027-12-15'),
	(9, 2028, 'Primeiro Semestre', '2028-02-01', '2028-06-30'),
	(10, 2028, 'Segundo Semestre', '2028-08-01', '2028-12-15');

insert into course_edition (id, academic_semester_id, lecturer_id) 
values
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 3),
(5, 3, 1),
(6, 3, 2),
(7, 4, 3),
(8, 4, 5),
(9, 5, 4),
(10, 5, 6),
(11, 6, 4),
(12, 6, 7),
(13, 7, 1),
(14, 7, 2),
(15, 8, 3), 
(16, 8, 8),
(17, 9, 5),
(18, 9, 9),
(19, 10, 10),
(20, 10, 8); 

select * from academic_semester;

select * from lecturer;

select * from course_edition;



select * from student;

select first_name, last_name from student;

select email from lecturer where id = 5;

select * from student where last_name like 'Silva';

select first_name, last_name from student where last_name like 'D%';

select * from academic_semester where calendar_year = 2024;

select last_name, birth_date 
from student 
where birth_date >= '2003'
order by last_name desc;

select first_name, last_name, birth_date
from student
where birth_date between ('2006') and ('2010');

select start_date, count(*) AS num_students
from student
group by start_date;

select start_date, count(*) as num_students
from student
group by start_date
having count(*) > 15;


select 
    l.first_name,
    l.last_name,
    a.calendar_year,
    a.term,
    count(c.id) as course_count
from 
    lecturer l
join 
    course_edition c on l.id = c.lecturer_id
join 
    academic_semester a on c.academic_semester_id = a.id
group by 
    l.first_name, l.last_name, a.calendar_year, a.term
order by 
    l.last_name, a.calendar_year, a.term;







