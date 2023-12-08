
SELECT 	CO.id_contenido, 
		-- poster, 
        titulo, 
        -- CO.id_categoria, 
        -- CA.nombre_categoria,
        GE.nombre_genero
        -- resumen, 
        -- temporadas,
        -- trailer
FROM multimedia.contenido CO
-- INNER JOIN multimedia.categorias CA
-- ON CO.id_categoria = CA.id_categoria
INNER JOIN multimedia.generos_contenido GC
ON CO.id_contenido = GC.id_contenido
INNER JOIN multimedia.generos GE
ON GC.id_genero = GE.id_genero
-- WHERE CO.id_contenido = 5
;

 