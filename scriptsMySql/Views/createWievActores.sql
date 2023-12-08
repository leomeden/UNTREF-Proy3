CREATE VIEW multimedia.viewActores AS
SELECT 	CO.id_contenido, 
        titulo, 
        AC.nombre_actor
FROM multimedia.contenido CO
INNER JOIN multimedia.reparto RE
ON CO.id_contenido = RE.id_contenido
INNER JOIN multimedia.actores AC
ON RE.id_actor = AC.id_actor
;