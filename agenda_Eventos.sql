create database db_agenda_eventos_2;
use db_agenda_eventos_2;

create table tbl_categorias(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(60) NOT NULL,
descripcion VARCHAR(100) NOT NULL
);

create table tbl_ubicaciones(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(60) NOT NULL,
direccion VARCHAR(200) NOT NULL,
municipio VARCHAR(100) NOT NULL,
departamento VARCHAR(100) NOT NULL
);


create table tbl_organizadores(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(60) NOT NULL,
direccion VARCHAR(200) NOT NULL
);

CREATE TABLE tbl_eventos(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  descripcion VARCHAR(200) NULL,
  fecha_hora DATETIME NOT NULL,
  duracion DOUBLE NOT NULL,
  costo DOUBLE NOT NULL,
  id_ubicacion INT NOT NULL,
  id_categoria INT NOT NULL,
  id_organizador_principal INT NOT NULL,
  CONSTRAINT fk_ubicacion_evento FOREIGN KEY (id_ubicacion) REFERENCES tbl_ubicaciones(id),
  CONSTRAINT fk_categoria_evento FOREIGN KEY (id_categoria) REFERENCES tbl_categorias(id),
   CONSTRAINT fk_organizadorPrincipal_evento FOREIGN KEY (id_organizador_principal) REFERENCES tbl_organizadores(id)
);


create table tbl_evento_organizadores(
id_evento INT PRIMARY KEY,
id_organizador INT not null,
 CONSTRAINT fk_id_evento_organizador FOREIGN KEY (id_evento) REFERENCES tbl_eventos(id),
  CONSTRAINT fk_evento_organizador FOREIGN KEY (id_organizador) REFERENCES tbl_organizadores(id)
);


CREATE TABLE tbl_correos_organizadores (
id INT PRIMARY KEY AUTO_INCREMENT,
correo VARCHAR(100) UNIQUE,
id_organizador INT not null,
 CONSTRAINT fk_organizador_correo FOREIGN KEY (id_organizador) REFERENCES tbl_organizadores(id)
);

create table tbl_telefonos_organizadores(
id INT PRIMARY KEY AUTO_INCREMENT,
telefono INT,
id_organizador INT not null,
 CONSTRAINT fk_organizador_telefono FOREIGN KEY (id_organizador) REFERENCES tbl_organizadores(id)
);

CREATE TABLE tbl_usuarios (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
correo VARCHAR(100) NOT NULL UNIQUE,
contrasena VARCHAR(255) NOT NULL,
fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tbl_eventos_usuarios (
id_evento INT NOT NULL,
id_usuario INT NOT NULL,
confirmado TINYINT NOT NULL DEFAULT 0,
PRIMARY KEY (id_evento,id_usuario),
 CONSTRAINT fk_id_evento_usuario FOREIGN KEY (id_evento) REFERENCES tbl_eventos(id),
  CONSTRAINT fk_evento_usuario FOREIGN KEY (id_usuario) REFERENCES tbl_usuarios(id)
);



drop database db_agenda_eventos_2;



