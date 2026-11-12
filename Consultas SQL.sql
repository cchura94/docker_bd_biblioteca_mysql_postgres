Consultas SQL

SELECT

1. Mostrar todos los usuarios registrados en la biblioteca

SELECT *
FROM usuarios;

2. Mostrar únicamente el nombre de usuario y correo electronicos de todos los usuarios

SELECT username, email
FROM usuarios;

3. Mostrar el titulo, ISBN y editorial de todos los libros.

SELECT titulo, isbn, editorial
FROM libros;

4. Mostrar los nombres y profesiones de todos los autores
SELECT nombre_completo, profesion
FROM autores;

5. Mostrar el nombre y detalle de todas las categorias

WHERE

6. Mostrar los usuarios cuyo nombre de usuario sea "carlos"

SELECT username 
FROM usuarios
WHERE username='carlos';

7. Mostrar todos los libros que pertenecen a la categoria con ID 1

SELECT *
FROM libros
WHERE categoria_id=1;


8. Mostrar los autores que tienen estado activo

SELECT *
FROM autores
WHERE estado = true;


9. Mostrar los libros publicados despues del año 2019
select * 
from libros
where anio_publicacion > 2019;

AND, OR, NOT

10 Mostrar los libros que pertenecen a la categoria 1 y fueron publicados despues del año 2020
SELECT *
FROM libros 
where categoria_id = 1 AND anio_publicacion > 2020;

11 Mostrar los libros que pertenecen a la categoria 1 o a la categoria 2

SELECT *
FROM libros 
where categoria_id = 1 OR categoria_id = 2;

12 Mostrar todos los autores que no se encuentran activos

SELECT *
FROM autores
Where NOT estado = TRUE

ORDER BY

13 Mostrar todos los libros ordenados alfabeticamente por titulo

SELECT *
FROM libros
ORDER BY titulo ASC

14 Mostrar todos los libros ordenados por año de publicacion desde el más reciente hasta el más antiguo
SELECT *
FROM libros
ORDER BY anio_publicacion DESC

15. Mostrar usuarios ordenados alfabeticamente por nombre de usuario.
SELECT *
FROM usuarios
ORDER BY username ASC

FUNCIONES AGREGACIÓN (COUNT, MAX, MIN, AVG)

16. Contar cuántos usuarios existen en la biblioteca

SELECT COUNT(*) as total_usuarios
FROM usuarios;

17. Contar cuántos libros existen en la biblioteca
SELECT COUNT(*) as total_libros
FROM libros;

18. Obtener el año de publicacion más reciente.

SELECT MAX(anio_publicacion) as año_publicacion_mas_reciente
FROM libros;


19. Obtener el año de publiación más antiguo
SELECT MIN(anio_publicacion) as año_publicacion_mas_antiguo
FROM libros;

20. Calcular el promedio de los años de publicación de los libros
SELECT AVG(anio_publicacion) as promedio
FROM libros;

GROUP BY

21 Mostrar cuántos libros existen en cada categoria.

select categoria_id, count(*) as total_libros
from libros
group by categoria_id;

22. Mostrar cuantos libros fueron publicados en cada año

SELECT anio_publicacion, COUNT(*) as total_libros
FROM libros
GROUP BY anio_publicacion

INNER JOIN
- Devuelve únicamente los registros que tienen coincidencia en ambas tablas

23. Mostrar los libros junto con el nombre de su categoria

SELECT c.nombre as Nombre_Categoria, l.titulo as Libro
FROM libros l, categorias c
WHERE l.categoria_id = c.id;

---- INNER JOIN
select l.titulo, c.nombre as categoria
from libros l inner join categorias c on l.categoria_id = c.id;

24. Mostrar los prestamos junto con el nombre del usuario que realizó cada prestamo

SELECT prestamos.*, usuarios.username
FROM prestamos, usuarios
WHERE prestamos.usuario_id = usuarios.id;

SELECT p.*, u.username
FROM prestamos p inner join usuarios u on p.usuario_id = u.id

25. Mostrar los libros junto con los nombres de sus autores

SELECT l.*, a.nombre_completo as AUTOR
FROM libros l 
INNER JOIN autor_libro al On l.id = al.libro_id
INNER JOIN autores a ON al.autor_id = a.id