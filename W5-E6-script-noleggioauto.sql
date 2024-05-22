/*esercizio script noleggio auto*/

create schema noleggio_auto;

create table prenotazione (
cod_prenotazione varchar(45) not null,
nome_cliente varchar(45) not null,
CF varchar(16) not null,
modello_auto varchar(45) not null,
primary key (cod_prenotazione)
);
/*ALTER TABLE `noleggio_auto`.`prenotazione` 
DROP COLUMN `modello_auto`,
ADD COLUMN `targa_auto` VARCHAR(45) NOT NULL AFTER `CF`;*/
-- eliminato modello auto e aggiunto targa auto
/*ALTER TABLE `noleggio_auto`.`prenotazione` 
DROP FOREIGN KEY `filiale_auto`;
ALTER TABLE `noleggio_auto`.`prenotazione` 
ADD CONSTRAINT `prenotazione_auto`
  FOREIGN KEY (`targa_auto`)
  REFERENCES `noleggio_auto`.`auto` (`targa`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;*/
  -- inserimento FK da prenotazione-auto
  /*ALTER TABLE `noleggio_auto`.`prenotazione` 
ADD INDEX `prenotazione_cliente_idx` (`CF` ASC) VISIBLE;
;
ALTER TABLE `noleggio_auto`.`prenotazione` 
ADD CONSTRAINT `prenotazione_cliente`
  FOREIGN KEY (`CF`)
  REFERENCES `noleggio_auto`.`cliente` (`CF`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;*/
  -- inserimento FK prenotazione-cliente

create table filiale (
nome_filiale varchar(45) not null,
indirizzo varchar(45) not null,
telefono varchar(45) not null,
cod_filiale int not null auto_increment,
numero_auto int not null,
primary key (cod_filiale)
);

create table auto (
targa varchar(45) not null,
marca_auto varchar(45) not null,
modello_auto varchar(45) not null,
posizionamento varchar(45) not null,
cod_filiale int not null,
primary key (targa)
);
/*ALTER TABLE `noleggio_auto`.`auto` 
ADD INDEX `auto_filiale_idx` (`cod_filiale` ASC) VISIBLE;
;
ALTER TABLE `noleggio_auto`.`auto` 
ADD CONSTRAINT `auto_filiale`
  FOREIGN KEY (`cod_filiale`)
  REFERENCES `noleggio_auto`.`filiale` (`cod_filiale`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;*/
  -- inserimento FK auto-filiale

create table cliente (
nome varchar(45) not null,
cognome varchar(45) not null,
CF varchar(45) not null,
telefono varchar(45) not null,
cod_prenotazione varchar(45) not null,
primary key (CF)
);
/*ALTER TABLE `noleggio_auto`.`cliente` 
ADD INDEX `cliente_prenotazione_idx` (`cod_prenotazione` ASC) VISIBLE;
;
ALTER TABLE `noleggio_auto`.`cliente` 
ADD CONSTRAINT `cliente_prenotazione`
  FOREIGN KEY (`cod_prenotazione`)
  REFERENCES `noleggio_auto`.`prenotazione` (`cod_prenotazione`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
*/
-- inserimento FK cliente-prenotazione
/*ALTER TABLE `noleggio_auto`.`cliente` 
DROP FOREIGN KEY `cliente_prenotazione`;
ALTER TABLE `noleggio_auto`.`cliente` 
DROP COLUMN `cod_prenotazione`,
DROP INDEX `cliente_prenotazione_idx` ;
;*/
-- drop di una FK cod_prenotazione


create table noleggio (
nome varchar(45) not null,
telefono varchar(45) not null,
CF varchar(45) not null,
cod_prenotazione varchar(45) not null,
data_inizio date not null,
data_fine date not null,
cod_noleggio varchar(45) not null,
primary key (cod_noleggio)
);
/*ALTER TABLE `noleggio_auto`.`noleggio` 
ADD COLUMN `targa` VARCHAR(45) NOT NULL AFTER `cod_noleggio`;*/
-- inserito targa
/*ALTER TABLE `noleggio_auto`.`noleggio` 
ADD INDEX `noleggio_auto_idx` (`targa` ASC) VISIBLE;
;
ALTER TABLE `noleggio_auto`.`noleggio` 
ADD CONSTRAINT `noleggio_auto`
  FOREIGN KEY (`targa`)
  REFERENCES `noleggio_auto`.`auto` (`targa`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;*/
  -- inserimento FK noleggio-auto-targa
  /*ALTER TABLE `noleggio_auto`.`noleggio` 
ADD CONSTRAINT `noleggio_prenotazione`
  FOREIGN KEY (`cod_prenotazione`)
  REFERENCES `noleggio_auto`.`prenotazione` (`cod_prenotazione`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;*/
  -- inserimento FK noleggio-prenotazione
  
  
