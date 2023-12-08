CREATE VIEW multimedia.viewCompleto AS
SELECT 	CO.id_contenido AS id, 
		CONCAT("http://repo_img/trailerflix", poster) AS poster,
        CO.titulo, 
        CA.nombre_categoria AS categoria,
        GROUP_CONCAT(DISTINCT GE.nombre_genero) AS genero,
        CO.resumen,
        CO.temporadas,
        GROUP_CONCAT(DISTINCT AC.nombre_actor) AS reparto,
        CO.trailer
FROM multimedia.contenido CO
-- JOINS para categoria
RIGHT JOIN multimedia.categorias CA 
ON CO.id_categoria = CA.id_categoria
-- JOINS para genero
LEFT JOIN multimedia.generos_contenido GC
ON CO.id_contenido = GC.id_contenido
RIGHT JOIN multimedia.generos GE
ON GC.id_genero = GE.id_genero
-- JOINS para reparto
LEFT JOIN multimedia.reparto RE
ON CO.id_contenido = RE.id_contenido
RIGHT JOIN multimedia.actores AC
ON RE.id_actor = AC.id_actor

GROUP BY id
;
