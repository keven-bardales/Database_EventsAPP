-- Insert into tbl_categorias
use db_agenda_eventos_2;
INSERT INTO tbl_categorias (nombre, descripcion) VALUES
('Concierto', 'Evento musical en vivo'),
('Conferencia', 'Charla o presentación sobre un tema específico'),
('Festival', 'Evento con múltiples actividades y artistas');

-- Insert into tbl_ubicaciones
INSERT INTO tbl_ubicaciones (nombre, direccion, municipio, departamento) VALUES
('Teatro Nacional', 'Calle 3, Avenida 2', 'San José', 'San José'),
('Estadio Nacional', 'Avenida Central', 'La Sabana', 'San José'),
('Centro de Convenciones', 'Radial a Santa Ana', 'Escazú', 'San José');

-- Insert into tbl_organizadores
INSERT INTO tbl_organizadores (nombre, direccion) VALUES
('Eventos Costa Rica', 'Calle 1, Avenida 5'),
('Producciones del Este', 'Avenida 10, Calle 15'),
('Organización Creativa', 'Avenida 2, Calle 10');

-- Insert into tbl_eventos
INSERT INTO tbl_eventos (nombre, descripcion, fecha_hora, duracion, costo, id_ubicacion, id_categoria, id_organizador_principal) VALUES
('Concierto de Rock', 'Concierto de rock con bandas nacionales', '2023-06-01 20:00:00', 2.5, 2500.00, 1, 1, 1),
('Charla sobre Tecnología', 'Charla sobre las últimas tendencias en tecnología', '2023-07-15 18:00:00', 1.5, 0.00, 3, 2, 2),
('Festival de Cine', 'Proyección de películas nacionales e internacionales', '2023-09-10 10:00:00', 8.0, 5000.00, 2, 3, 3);

-- Insert into tbl_evento_organizadores
INSERT INTO tbl_evento_organizadores (id_evento, id_organizador) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into tbl_correos_organizadores
INSERT INTO tbl_correos_organizadores (correo, id_organizador) VALUES
('eventoscr@gmail.com', 1),
('produccionesdeleste@gmail.com', 2),
('orgcreativa@yahoo.com', 3);

-- Insert into tbl_telefonos_organizadores
INSERT INTO tbl_telefonos_organizadores (telefono, id_organizador) VALUES
(2222-2222, 1),
(3333-3333, 2),
(4444-4444, 3);

-- Insert into tbl_usuarios
INSERT INTO tbl_usuarios (nombre, correo, contrasena) VALUES
('Juan Perez', 'juan.perez@gmail.com', 'abc123'),
('Maria Gonzalez', 'maria.gonzalez@yahoo.com', 'qwerty'),
('Carlos Ramirez', 'carlos.ramirez@hotmail.com', '123456');

-- Insert into tbl_eventos_usuarios
INSERT INTO tbl_eventos_usuarios (id_evento, id_usuario, confirmado) VALUES
(1, 1, 1),
(1, 2, 0),
(2, 2, 1);

select id from tbl_categorias