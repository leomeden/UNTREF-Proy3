CREATE VIEW multimedia.viewGenero AS
SELECT 	CO.id_contenido, 
        titulo, 
        GE.nombre_genero
FROM multimedia.contenido CO
INNER JOIN multimedia.generos_contenido GC
ON CO.id_contenido = GC.id_contenido
INNER JOIN multimedia.generos GE
ON GC.id_genero = GE.id_genero
;