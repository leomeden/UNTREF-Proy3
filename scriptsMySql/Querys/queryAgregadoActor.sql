
SELECT 	CO.id_contenido, 
		-- poster, 
        titulo, 
        -- CO.id_categoria, 
        -- CA.nombre_categoria,
        -- GE.nombre_genero,
        -- resumen, 
        -- temporadas,
        AC.nombre_actor
        -- trailer
FROM multimedia.contenido CO
-- INNER JOIN multimedia.categorias CA
-- ON CO.id_categoria = CA.id_categoria
INNER JOIN multimedia.reparto RE
ON CO.id_contenido = RE.id_contenido
INNER JOIN multimedia.actores AC
ON RE.id_actor = AC.id_actor
-- WHERE CO.id_contenido = 33
;
