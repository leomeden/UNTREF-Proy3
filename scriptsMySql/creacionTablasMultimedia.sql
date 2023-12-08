CREATE TABLE `Contenido` (
	`id_contenido` INT NOT NULL AUTO_INCREMENT,
	`poster` varchar(50) NOT NULL,
	`titulo` varchar(70) NOT NULL,
	`id_categoria` INT NOT NULL,
	`resumen` varchar(1000) NOT NULL,
	`temporadas` varchar(3) NOT NULL,
	`trailer` varchar(50) NOT NULL,
	PRIMARY KEY (`id_contenido`)
);

CREATE TABLE `Actores` (
	`id_actor` INT NOT NULL AUTO_INCREMENT,
	`nombre_actor` varchar(30) NOT NULL,
	PRIMARY KEY (`id_actor`)
);

CREATE TABLE `Reparto` (
	`id_reparto` INT NOT NULL AUTO_INCREMENT,
	`id_contenido` INT NOT NULL,
	`id_actor` INT NOT NULL,
	PRIMARY KEY (`id_reparto`)
);

CREATE TABLE `GenerosContenido` (
	`id_genero_contenido` INT NOT NULL AUTO_INCREMENT,
	`id_contenido` INT NOT NULL,
	`id_genero` INT NOT NULL,
	PRIMARY KEY (`id_genero_contenido`)
);

CREATE TABLE `Generos` (
	`id_genero` INT NOT NULL AUTO_INCREMENT,
	`nombre_genero` varchar(20) NOT NULL,
	PRIMARY KEY (`id_genero`)
);

CREATE TABLE `Categorias` (
	`id_categoria` INT NOT NULL AUTO_INCREMENT,
	`nombre_categoria` varchar(20) NOT NULL,
	PRIMARY KEY (`id_categoria`)
);

ALTER TABLE `Contenido` ADD CONSTRAINT `Contenido_fk0` FOREIGN KEY (`id_categoria`) REFERENCES `Categorias`(`id_categoria`);

ALTER TABLE `Reparto` ADD CONSTRAINT `Reparto_fk0` FOREIGN KEY (`id_contenido`) REFERENCES `Contenido`(`id_contenido`);

ALTER TABLE `Reparto` ADD CONSTRAINT `Reparto_fk1` FOREIGN KEY (`id_actor`) REFERENCES `Actores`(`id_actor`);

ALTER TABLE `GenerosContenido` ADD CONSTRAINT `GenerosContenido_fk0` FOREIGN KEY (`id_contenido`) REFERENCES `Contenido`(`id_contenido`);

ALTER TABLE `GenerosContenido` ADD CONSTRAINT `GenerosContenido_fk1` FOREIGN KEY (`id_genero`) REFERENCES `Generos`(`id_genero`);







