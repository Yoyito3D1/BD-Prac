INSERT INTO nacionalitats(nom, pot_desenv, tractat_signat) VALUES ('BCN-C', 9, 'S');

INSERT INTO nacionalitats(nom, pot_desenv, tractat_signat) VALUES ('Amposta', 3, 'S');

INSERT INTO laboratoris(codi, nom, pais) VALUES ('49', 'BCN-C', 'Italia');

INSERT INTO laboratoris(codi, nom, pais) VALUES ('13', 'Amposta', 'Italia');

INSERT INTO zonesbiocontencio(codi, codiLab, nivell, responsable) VALUES ('126139949', '49', 'A', 'Jordi Guasch');

INSERT INTO zonesbiocontencio(codi, codiLab, nivell, responsable) VALUES ('214139949', '13', 'B', 'Pedro Mendoza');

INSERT INTO zonesbiocontencio(codi, codiLab, nivell, responsable) VALUES ('126899699', '13', 'B', 'Joel Marti');

INSERT INTO zonesbiocontencio(codi, codiLab, nivell, responsable) VALUES ('126899698', '13', 'M', 'Pep Marti');

INSERT INTO armesbiologiques(nom, data, potencial, zona, lab) VALUES ('SUPAC', '06-06-2013', 1, '214139949', '13');

INSERT INTO armesbiologiques(nom, data, potencial, zona, lab) VALUES ('FUMAS', '04-01-2015', 8, '126899699', '13');

INSERT INTO armesbiologiques(nom, data, potencial, zona, lab) VALUES ('STURNI', '09-02-2014', 2, '126139949', '49');

INSERT INTO empleats(num_pass, nom) VALUES ('669469896', 'Maria Vinyes');

INSERT INTO empleats(num_pass, nom) VALUES ('669139813', 'Sergi Lora');

INSERT INTO empleats(num_pass, nom) VALUES ('261313998', 'Carla Martinez');

INSERT INTO empleats(num_pass, nom) VALUES ('266613994', 'Masdeu Ferrer');

INSERT INTO empleats(num_pass, nom) VALUES ('449321489', 'Alcaraz Crack');

INSERT INTO empleats(num_pass, nom) VALUES ('669613998', 'Pep Eduard');

INSERT INTO empleats(num_pass, nom) VALUES ('326613989', 'Agustinet');

INSERT INTO empleats(num_pass, nom) VALUES ('329468999', 'Omar Carrasco');

INSERT INTO empleats(num_pass, nom) VALUES ('669213139', 'Titet Pop');

INSERT INTO ordinaris(num_pass) VALUES ('669469896');

INSERT INTO ordinaris(num_pass) VALUES ('669139813');

INSERT INTO ordinaris(num_pass) VALUES ('669213139');

INSERT INTO ordinaris(num_pass) VALUES ('329468999');

INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('669469896', 'Biomedicina', '126139949', '49');

INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('669139813', 'Tecnologia', '214139949', '13');

INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('669213139', 'Biomedicina', '126899699', '13');

INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('329468999', 'Biomedicina', '126139949', '49');

INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('261313998', 'Biomedicina', '126139949', '49');

INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('326613989', 'Micro-Tecnologia', '126899698', '13');

INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('22-04-2019', '669469896', '126139949', '49', NULL);

INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('20-02-2017', '669139813', '214139949', '13', '28-06-2009');

INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('04-02-2018', '669213139', '126899699', '13', '26-06-2019');

INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('11-03-2015', '329468999', '126139949', '49', '24-03-2019');

