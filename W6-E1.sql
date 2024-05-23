/*W6-E1 - POPOLARE UN DB */

create database StoreVideogames;

create table store (
codiceStore int not null auto_increment,
indirizzoFisico varchar(45) not null,
numeroTelefono varchar(45) not null,
primary key (codiceStore)
);

create table impiegato (
CF varchar(16) not null,
nome varchar(45) not null,
titoloStudio varchar(150) not null,
recapito varchar(45) not null,
primary key (CF)
);

create table servizio_impiegato (
CF varchar(16) not null,
codiceStore int not null,
dataInizio date not null,
dataFine date not null,
carica varchar(80) not null,
foreign key (CF) references impiegato(CF),
foreign key (codiceStore) references store(codiceStore)
);

create table videogioco (
titolo varchar(150) not null,
sviluppatore varchar(80) not null,
annoDistribuzione year not null,
costoAcquisto decimal(10,2) not null,
genere varchar(45) not null,
codiceVideogioco varchar(45) not null,
primary key (codiceVideogioco)
);

-- insert into store values, fatto dalla tabella per far girare auto increment in modo automatico

insert into impiegato values 
("ab12345678912345", "mario rossi", "diploma","mariorossi@gmail.com"),
("ab12345678912344", "francesco verdi", "diploma","francescoverdi@gmail.com"),
("ac12345678912345", "claudia neri", "laurea","claudianeri@gmail.com"),
("az12345678912345", "francesca grigi", "laurea","francescogrigi@gmail.com");

insert into servizio_impiegato values 
("ab12345678912345","1","2023-01-01","2023-12-31","cassiere"),
("ab12345678912344","2","2023-02-01","2023-11-30","commesso"),
("ac12345678912345","3","2023-03-01","2024-01-01","magazziniere"),
("az12345678912345","4","2023-04-01","2024-01-01","direttore");

insert into videogioco values 
("fifa23","ea sports","2023","49.99","calcio","1"),
("assassins creed valhalla","ubisoft","2020","59.99","action","2"),
("super mario odissey","nintendo","2017","39.99","platform","3"),
("the lust of us part II","naughty dog","2020","69.99","action","4");




