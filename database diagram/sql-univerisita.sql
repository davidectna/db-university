create database università;

use università;

create table dipartimento(
 id int not null auto_increment,
 nome_dipartimento varchar(50) not null,
 indirizzo_civico varchar(50) not null,
 presidente_dipartimento varchar(50) not null,
 primary key (id)
);

create table corso_di_laurea(
id int not null auto_increment,
id_dipartimento int not null,
nome_corso_di_laurea varchar(50) not null,
presidente_corso_di_laurea varchar(50) not null,
primary key (id)
);

alter table corso_di_laurea add foreign key (id_dipartimento) references dipartimento(id);

create table materia (
id int not null auto_increment,
id_corso_di_laurea int not null,
nome_materia varchar(50) not null,
numero_di_ore mediumint not null,
tipologia_esame varchar(50),not null
primary key (id)
);

create table professore (
id int not null auto_increment,
id_materia int not null,
nome varchar(50) not null,
cognome varchar(50) not null,
email varchar(50) not null,
primary key (id)
);

create table studente (
id int not null auto_increment,
id_corsodilaurea int not null,
nome varchar(50) not null,
cognome varchar(50) not null,
email varchar(50) not null,
numero_di_matricola varchar(50) not null,
primary key (id)
);

alter table materia add foreign key (id_corso_di_laurea) references corso_di_laurea(id);
alter table professore add foreign key (id_materia) references materia(id);


alter table studente add foreign key (id_corsodilurea) references corso_di_laurea(id);

insert into dipartimento (nome_dipartimento,indirizzo_civico,presidente_dipartimento)
values ('Dipartimento di Ingegneria','Via delle Scienze','Mario Rossi');

insert into corso_di_laurea(id_dipartimento,nome_corso_di_laurea,presidente_corso_di_laurea)
values (1,'Ingegneria gestionele','Laura Bianchi')

insert into corso_di_laurea(id_dipartimento,nome_corso_di_laurea,presidente_corso_di_laurea)
values (1,'Ingegneria civile','Laura Verdi')

insert into corso_di_laurea(id_dipartimento,nome_corso_di_laurea,presidente_corso_di_laurea)
values (1,'Ingegneria informatica','Laura Rossi')


delete from corso_di_laurea where id = 4;
delete from corso_di_laurea where id = 5;



insert into professore (id_materia,nome,cognome,email)
values(1,'Valerio','Rossi','valeriorossi@universita.edu.it')

insert into studente (id_corsodilurea,nome,cognome,email,numero_di_matricola)
values (1,'Davide','Catalano','davidecatalano@universita.edu.it',1546546)

insert into materia (id_corso_di_laurea,nome_materia,numero_di_ore,tipologia_esame)
values (1,'Analisi matematica I',60,'Scritto')



