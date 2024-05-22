/* ESERCIZIO SCRIPT BANCA */

CREATE SCHEMA BANCA;

create table cliente (
nome varchar(45) not null,
cognome varchar(45) not null,
CF varchar(16) not null,
data_nascita date not null,
codice_cliente varchar(45) not null,
primary key (codice_cliente)
);

create table account_banca (
cod_account varchar(45) not null,
cod_filiale varchar(45) not null,
n_trasazioni int not null ,
primary key (cod_account)
);
/* ALTER TABLE `banca`.`account_banca` 
ADD INDEX `banca_cliente_idx` (`codice_cliente` ASC) VISIBLE;
;
ALTER TABLE `banca`.`account_banca` 
ADD CONSTRAINT `banca_cliente`
  FOREIGN KEY (`codice_cliente`)
  REFERENCES `banca`.`cliente` (`codice_cliente`)
  ON DELETE CASCADE
  ON UPDATE CASCADE; */
  -- per aggiungere la foreign key
  
  /*ALTER TABLE `banca`.`account_banca` 
ADD INDEX `banca_filiale_idx` (`cod_filiale` ASC) VISIBLE;
;
ALTER TABLE `banca`.`account_banca` 
ADD CONSTRAINT `banca_filiale`
  FOREIGN KEY (`cod_filiale`)
  REFERENCES `banca`.`filiale` (`cod_filiale`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;*/
  -- per aggiungere la FK da banca a filiale

create table transazioni (
cod_transazione int not null auto_increment,
cod_account varchar(45) not null,
cod_filiale varchar(45) not null,
codice_cliente varchar(45) not null,
primary key (cod_transazione)
);
/*ALTER TABLE `banca`.`transazioni` 
ADD INDEX `transa_banca_idx` (`cod_account` ASC) VISIBLE;
;
ALTER TABLE `banca`.`transazioni` 
ADD CONSTRAINT `transa_banca`
  FOREIGN KEY (`cod_account`)
  REFERENCES `banca`.`account_banca` (`cod_account`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
*/
-- inserimento FK transa-acc.banca
/*ALTER TABLE `banca`.`transazioni` 
ADD INDEX `transa_filiale_idx` (`cod_filiale` ASC) VISIBLE;
;
ALTER TABLE `banca`.`transazioni` 
ADD CONSTRAINT `transa_filiale`
  FOREIGN KEY (`cod_filiale`)
  REFERENCES `banca`.`filiale` (`cod_filiale`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;*/
  -- inserimento FK transazione-filiale

create table prestito (
cod_prestito varchar(45) not null,
cod_account varchar(45) not null,
codice_cliente varchar(45) not null,
cod_filiale varchar(45) not null,
primary key (cod_prestito)
);
/*ALTER TABLE `banca`.`prestito` 
ADD INDEX `prestito_banca_idx` (`cod_account` ASC) VISIBLE;
;
ALTER TABLE `banca`.`prestito` 
ADD CONSTRAINT `prestito_banca`
  FOREIGN KEY (`cod_account`)
  REFERENCES `banca`.`account_banca` (`cod_account`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;*/
  -- insereire FK da prestito a banca
  /*ALTER TABLE `banca`.`prestito` 
ADD INDEX `prestito_filiale_idx` (`cod_filiale` ASC) VISIBLE;
;
ALTER TABLE `banca`.`prestito` 
ADD CONSTRAINT `prestito_filiale`
  FOREIGN KEY (`cod_filiale`)
  REFERENCES `banca`.`filiale` (`cod_filiale`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;*/
  -- inserire FK da prestito a filiale

create table filiale (
nome_filiale varchar(45) not null,
indirizzo varchar(45) not null,
telefono varchar(45) not null,
cod_filiale varchar(45) not null,
primary key (cod_filiale)
);


