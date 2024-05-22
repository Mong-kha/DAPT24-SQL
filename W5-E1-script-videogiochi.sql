CREATE TABLE store (
    cod_store INT NOT NULL AUTO_INCREMENT,
    indirizzo VARCHAR(45) NOT NULL,
    telefono VARCHAR(45) NOT NULL,
    PRIMARY KEY (cod_store)
);

CREATE TABLE impiegato (
    cod_fiscale VARCHAR(16) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    titolo_studio VARCHAR(45) NOT NULL,
    recapito VARCHAR(45) NOT NULL,
    PRIMARY KEY (cod_fiscale)
);

CREATE TABLE servizio_impiegato (
    cod_fiscale VARCHAR(16) NOT NULL,
    cod_store INT NOT NULL,
    data_inizio date not null,
    data_fine date not null,
    carica varchar(45),
    foreign key (cod_fiscale) references impiegato (cod_fiscale),
    foreign key (cod_store) references store (cod_store)
);

CREATE TABLE videogiochi (
    ID_videogioco INT NOT NULL AUTO_INCREMENT,
    titolo VARCHAR(45) NOT NULL,
    sviluppatore VARCHAR(45) NOT NULL,
    anno_distribuzione YEAR NOT NULL,
    costo_acquisto DECIMAL(5 , 2 ) NOT NULL,
    genere VARCHAR(45) NOT NULL,
    remake VARCHAR(45) NULL,
    PRIMARY KEY (ID_videogioco)
);

CREATE TABLE collocazione (
    ID_videogioco INT NOT NULL,
    cod_store INT NOT NULL,
    n_copie int not null,
    foreign key (ID_videogioco) references videogiochi (ID_videogioco),
    foreign key (cod_store) references store (cod_store)
);