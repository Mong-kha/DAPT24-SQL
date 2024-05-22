/* esercizio script ALBERGO */

create schema albergo;

create table servizio (
nome_servizio varchar(45) not null,
costo int not null, 
n_stanza int not null,
CF_cliente varchar(45) not null,
ID_albergo varchar(45) not null,
primary key (nome_servizio)
);

create table prenotazione (
cod_prenotazione int not null auto_increment,
data_checkin date not null,
data_checkout date not null,
n_stanza int not null,
CF_cliente varchar(45) not null,
ID_albergo varchar(45) not null,
primary key (cod_prenotazione)
);

create table albergo (
nome_albergo varchar(45) not null,
ID_albergo varchar(45) not null,
indirizzo varchar(45) not null,
telefono varchar(45) not null,
numero_stanze int not null,
primary key (ID_albergo)
);

create table camera (
n_stanza int not null,
piano_stanza int not null,
tel_stanza varchar(45) not null,
nome_albergo varchar(45) not null,
CF_cliente varchar(45) not null,
cod_prenotazione varchar(45) not null,
primary key (n_stanza)
);

/*ALTER TABLE `albergo`.`camera` 
CHANGE COLUMN `cod_prenotazione` `cod_prenotazione` INT NOT NULL ;*/
-- alterazione tabella, cambio da VARCHAR a INT

create table ospite (
nome varchar(45) not null,
cognome varchar(45) not null,
CF_cliente varchar(45) not null,
recapito varchar(45) not null,
cod_prenotazione varchar(45) not null,
primary key (CF_cliente)
);
alter table albergo.ospite
change column cod_prenotazione cod_prenotazione INT NOT NULL;


