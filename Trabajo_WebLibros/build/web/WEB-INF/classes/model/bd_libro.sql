create database bd_libro;
use bd_libro;

create table categoria(
    id int auto_increment,
    nombre varchar(100),
    PRIMARY KEY(id)
);

create table libro(
    id int auto_increment,
    nombrelibro varchar(100),
    nombreautora varchar(100),
    sexoautor int,
    categoria_FK int,
    valorlibro int,
    PRIMARY KEY(id),
    FOREIGN KEY (categoria_FK) references categoria(id)
);



insert into categoria values(null,'Terror');
insert into categoria values(null,'Romantico');
insert into categoria values(null,'Ciencia Ficcion');
insert into categoria values(null,'Misterio');
insert into categoria values(null,'Infantil');
insert into categoria values(null,'Fantasia');
insert into categoria values(null,'Comedia');

select * from categoria where id=1;

drop database bd_libro;

