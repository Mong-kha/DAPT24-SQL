/* esercizio script voli */

create schema voli;

create table aeroporto (
citta varchar(45) not null,
indirizzo varchar(45) not null,
tel varchar(45) not null,
id_aeroporto varchar(45) not null,
compagnie varchar(45) not null,
cod_volo varchar(45) not null,
primary key (id_aeroporto)
);

create table biglietto (
cod_biglietto varchar(45) not null,
ID_passeggero varchar(45) not null,
cod_volo varchar(45) not null,
n_sedia int not null,
ora_data_partenza date not null,
cod_prenotazione varchar(45) not null,
id_aeroporto varchar(45) not null,
primary key (cod_biglietto)
);

create table volo (
cod_volo varchar(45) not null,
id_aeroporto varchar(45) not null,
id_pilota varchar(45) not null,
ora_data date not null,
primary key (cod_volo) 
);

create table passeggero (
nome varchar(45) not null,
cognome varchar(45) not null,
ID_passeggero varchar(45) not null,
recapito varchar(45) not null,
cod_prenotazione varchar(45) not null,
primary key (ID_passeggero)
);

create table prenotazione (
cod_prenotazione varchar(45) not null,
ID_passeggero varchar(45) not null,
id_aeroporti varchar(45) not null,
primary key (cod_prenotazione)
);
