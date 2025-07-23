CREATE VIEW llista_empleats AS

SELECT E.nom, A.zona
FROM empleats E INNER JOIN assignacions A ON E.num_pass = A.empl_ord
WHERE A.data_fi = "NULL"


UNION ALL

SELECT E.nom, Z.codi
FROM empleats E INNER JOIN zonesbiocontencio Z ON E.num_pass = Z.responsable;

SELECT * FROM llista_empleats;