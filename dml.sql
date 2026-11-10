INSERT INTO usuarios (username, email, password) VALUES ('carlos', 'carlos@mail.com', '123456');
INSERT INTO usuarios (username, email, password) VALUES
    ('ana', 'ana@mail.com', 'demo123'),
    ('lucas', 'lucas@mail.com', 'demo123'),
    ('sofia', 'sofia@mail.com', 'demo123'),
    ('mateo', 'mateo@mail.com', 'demo123');

INSERT INTO kardex (fecha_creacion, observacion, estado, usuario_id) VALUES
    ('2026-11-05', 'NINUNA', true, 1),
    ('2026-11-05', 'NINUNA', true, 2),
    ('2026-11-05', 'NINUNA', false, 3);

INSERT INTO kardex (fecha_creacion, observacion, estado, usuario_id) VALUES
    (NOW(), 'NINGUNA', true, 4);


INSERT INTO prestamos (fecha_prestamo, fecha_devolucion, fecha_real_devolucion, estado, usuario_id) VALUES
    (NOW(), '2026-11-09', null, 'EN PROCESO', 2);

INSERT INTO prestamos (fecha_prestamo, fecha_devolucion, fecha_real_devolucion, estado, usuario_id) VALUES
    (NOW(), '2026-11-10', null, 'EN PROCESO', 3);

INSERT INTO categorias (nombre, detalle) VALUES ('LITERATURA', 'VARIOS');
INSERT INTO categorias (nombre, detalle) VALUES ('Historia', 'Libros de historia');


INSERT INTO libros (titulo, isbn, anio_publicacion, editorial, categoria_id) VALUES
    ('El mapa de las estrellas quietas', '9780000000001', '2021', 'Editorial Horizonte', 1),
    ('La casa junto al faro azul', '9780000000002', '2019', 'Ediciones Brisa', 1),
    ('Crónicas del valle escondido', '9780000000003', '2023', 'Editorial Horizonte', 1),
    ('Rutas antiguas del norte', '9780000000004', '2018', 'Archivo y Memoria', 2),
    ('Ciudades que cambiaron el tiempo', '9780000000005', '2020', 'Archivo y Memoria', 2);

INSERT INTO libro_prestamo (prestamos_id, libro_id) VALUES (2, 3), (2, 5);
INSERT INTO libro_prestamo (prestamos_id, libro_id) VALUES (1, 1), (1, 2);



INSERT INTO autores (nombre_completo, profesion, estado) VALUES
    ('Valeria Montes', 'Novelista', true),
    ('Diego Ferrer', 'Escritor', true),
    ('Camila Rojas', 'Poeta', true),
    ('Andres Salvatierra', 'Historiador', true),
    ('Elena Prado', 'Investigadora', true);

INSERT INTO autor_libro (autor_id, libro_id) VALUES
    ((SELECT id FROM autores WHERE nombre_completo = 'Valeria Montes'),
     (SELECT id FROM libros WHERE titulo = 'El mapa de las estrellas quietas')),
    ((SELECT id FROM autores WHERE nombre_completo = 'Diego Ferrer'),
     (SELECT id FROM libros WHERE titulo = 'La casa junto al faro azul')),
    ((SELECT id FROM autores WHERE nombre_completo = 'Camila Rojas'),
     (SELECT id FROM libros WHERE titulo = 'Crónicas del valle escondido')),
    ((SELECT id FROM autores WHERE nombre_completo = 'Andres Salvatierra'),
     (SELECT id FROM libros WHERE titulo = 'Rutas antiguas del norte')),
    ((SELECT id FROM autores WHERE nombre_completo = 'Elena Prado'),
     (SELECT id FROM libros WHERE titulo = 'Ciudades que cambiaron el tiempo'));