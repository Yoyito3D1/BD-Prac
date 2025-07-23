drop database taules;
create database taules;
use taules;

CREATE TABLE nacionalitats (
nom varchar(20) not null,
pot_desenv BIT not null,
tractat_signat varchar(1),
CONSTRAINT pk_nom PRIMARY KEY (nom),
CONSTRAINT ck_pot_desenv CHECK(pot_desenv=0 OR pot_desenv=1),
CONSTRAINT ck_tractat_signat CHECK(tractat_signat= 'S' OR tractat_signat='N')
) ENGINE=InnoDB;

CREATE TABLE laboratoris (
codi int(9) not null,
nom varchar(20) not null,
pais varchar(20) not null,
CONSTRAINT pk_codi PRIMARY KEY (codi),
CONSTRAINT fk_pais FOREIGN KEY (nom) REFERENCES
nacionalitats(nom)
) ENGINE=InnoDB;

CREATE TABLE zonesBiocontencio (
codi int(9) not null,
codiLab int(9) not null,
nivell varchar(1) not null,
responsable varchar(20),
CONSTRAINT pk_codi PRIMARY KEY (codi,codiLab),
CONSTRAINT ck_nivell CHECK(nivell= 'A' OR nivell= 'M' OR nivell= 'B'),
CONSTRAINT fk_codiLab FOREIGN KEY (codiLab) REFERENCES
laboratoris(codi)
) ENGINE=InnoDB;

CREATE TABLE armesBiologiques (
nom varchar(20) not null,
data Date,
potencial int(2) not null,
zona int(20) not null,
lab int(9) not null,
CONSTRAINT pk_nom PRIMARY KEY (nom),
CONSTRAINT ck_nivell CHECK( potencial > 0 AND potencial <=10),
CONSTRAINT fk_codiLab1 FOREIGN KEY (zona,lab) REFERENCES 
zonesBiocontencio(codi, codiLab)
) ENGINE=InnoDB;

CREATE TABLE empleats(
num_pass int(9) not null,
nom varchar(20) not null,
CONSTRAINT pk_nom PRIMARY KEY (num_pass)
) ENGINE=InnoDB;

CREATE TABLE ordinaris(
num_pass int(9) not null,
CONSTRAINT pk_num_pass PRIMARY KEY (num_pass),
CONSTRAINT fk_num_pass FOREIGN KEY (num_pass) REFERENCES
empleats(num_pass)
) ENGINE=InnoDB;

CREATE TABLE qualificats(
num_pass int(9) not null,
titulacio varchar(30)not null,
zona_assignada int(9) not null,
lab int(9) not null,
CONSTRAINT pk_num_pass1 PRIMARY KEY (num_pass),
CONSTRAINT fk_num_pass1 FOREIGN KEY (num_pass) REFERENCES
empleats(num_pass),
CONSTRAINT fk_codiLab2 FOREIGN KEY (zona_assignada,lab) REFERENCES 
zonesBiocontencio(codi, codiLab)
) ENGINE=InnoDB;

CREATE TABLE assignacions(
data Date,
data_fi Date,
empl_ord int(9),
zona int(20) not null,
lab int(9) not null,
CONSTRAINT pk_data1 PRIMARY KEY (data,empl_ord),
CONSTRAINT fk_num_pass2 FOREIGN KEY (empl_ord) REFERENCES
ordinaris(num_pass),
CONSTRAINT fk_codiLab3 FOREIGN KEY (zona,lab) REFERENCES 
zonesBiocontencio(codi, codiLab)
) ENGINE=InnoDB;
