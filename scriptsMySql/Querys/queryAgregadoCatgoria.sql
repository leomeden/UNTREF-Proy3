
SELECT 	id_contenido, 
		poster, 
        titulo, 
        CO.id_categoria, 
        CA.nombre_categoria,
        resumen, 
        temporadas,
        trailer
FROM multimedia.contenido CO
LEFT JOIN multimedia.categorias CA
ON CO.id_categoria = CA.id_categoria
;