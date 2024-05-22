/*esercizio script MUSICA */

create schema musica;

create table canzone (
titoloCanzone varchar(45) not null,
durata int not null,
id_artista varchar(45) not null,
album varchar(45) not null,
id_canzone varchar(45) not null,
id_playlist varchar(45) not null,
n_stream int not null,
primary key (id_canzone)
);

create table album (
nome varchar(45) not null,
n_singoli int not null,
id_artista varchar(45) not null,
anno_produzione int not null,
casa_discografica varchar(45) not null,
id_album varchar(45) not null,
primary key (id_album)
);

create table utente (
username varchar(45) not null,
cod_account varchar(45) not null,
subscription boolean not null,
cod_playlist varchar(45) not null,
ore_stream int not null,
primary key (username)
);

create table artista (
nome varchar(45) not null,
recapito varchar(45) not null,
id_artista varchar(45) not null,
casa_discografica varchar(45) not null,
id_album varchar(45) not null,
primary key (id_artista)
);

create table playlist (
singolo varchar(45) not null,
id_album varchar(45) not null,
id_playlist varchar(45) not null,
primary key (id_playlist)
);