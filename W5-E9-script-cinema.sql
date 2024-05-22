/*esercizio script CINEMA */

create schema cinema_2;

create table regista (
nome varchar(45) not null,
cognome varchar(45) not null,
id_regista varchar(45) not null,
titolo_filmGirati varchar(45) not null,
cod_film varchar(45) not null,
primary key (id_regista)
);

create table attore (
nome varchar(45) not null,
cognome varchar(45) not null,
id_attore varchar(45) not null,
titolo_filmRecitato varchar(45) not null,
cod_film varchar(45) not null,
primary key (id_attore)
);
/*ALTER TABLE `cinema_2`.`attore` 
ADD INDEX `attore_film_idx` (`cod_film` ASC) VISIBLE;
;
ALTER TABLE `cinema_2`.`attore` 
ADD CONSTRAINT `attore_film`
  FOREIGN KEY (`cod_film`)
  REFERENCES `cinema_2`.`film` (`cod_film`)
  ON DELETE CASCADE
  ON UPDATE CASCADE; */
  -- inserimento FK 


create table film (
titolo varchar(45) not null,
cod_film varchar(45) not null,
durata int not null,
id_regista varchar(45) not null,
id_attore varchar(45) not null,
produttore varchar(45) not null,
anno_produzione int not null,
primary key (cod_film)
);

create table studio (
nome_studio varchar(45) not null,
id_studio varchar(45) not null,
film_prodotti varchar(45) not null,
cod_film varchar(45) not null,
id_regista varchar(45) not null,
primary key (id_studio)
);

alter table cinema