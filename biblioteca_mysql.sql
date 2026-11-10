CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE usuarios(
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(200) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE kardex(
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_creacion DATETIME NOT NULL,
    observacion TEXT,
    estado BOOLEAN DEFAULT true,
    usuario_id INT UNIQUE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE prestamos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_prestamo DATETIME NOT NULL,
    fecha_devolucion DATETIME NOT NULL,
    fecha_real_devolucion DATETIME,
    estado VARCHAR(20),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE categorias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    detalle TEXT
);

CREATE TABLE libros(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    isbn VARCHAR(30) NOT NULL,
    anio_publicacion VARCHAR(30) NOT NULL,
    editorial VARCHAR(200) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id) 
);

CREATE TABLE autores(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(200) NOT NULL,
    profesion VARCHAR(100),
    estado BOOLEAN DEFAULT true
);

CREATE TABLE libro_prestamo(
    prestamos_id INT,
    libro_id INT,

    PRIMARY KEY (prestamos_id, libro_id),

    FOREIGN KEY (prestamos_id) REFERENCES prestamos(id),
    FOREIGN KEY (libro_id) REFERENCES libros(id)
);

CREATE TABLE autor_libro(
    autor_id INT,
    libro_id INT,

    PRIMARY KEY (autor_id, libro_id),

    FOREIGN KEY (autor_id) REFERENCES autores(id),
    FOREIGN KEY (libro_id) REFERENCES libros(id)
);