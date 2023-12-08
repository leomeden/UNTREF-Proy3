
CREATE VIEW multimedia.viewCategoria AS
SELECT 	id_contenido, 
		poster, 
        titulo, 
        CO.id_categoria, 
        CA.nombre_categoria,
        resumen, 
        temporadas,
        trailer
FROM multimedia.contenido CO
INNER JOIN multimedia.categorias CA
ON CO.id_categoria = CA.id_categoria
;