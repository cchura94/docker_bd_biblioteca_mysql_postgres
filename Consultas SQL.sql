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

11 Mostrar los libros que pertenecen a la categoria 1 o a la categoria 2

12 Mostrar todos los autores que no se encuentran activos

ORDER BY

13 Mostrar todos los libros ordenados alfabeticamente por titulo

14 Mostrar todos los libros ordenados por año de publicacion desde el más reciente hasta el más antiguo

15. Mostrar usuarios ordenados alfabeticamente por nombre de usuario

16. Contar cuántos usuarios existen en la biblioteca

17. Contar cuántos libros existen en la biblioteca

18. Obtener el año de publicacion más reciente.

19. Obtener el año de publiación más antiguo

20. Calcular el promedio de los años de publicación de los libros


select * 
from libros
where anio_publicacion > 2020 
AND categoria_id = 1;

select * 
from libros
where categoria_id in (1, 2);

select * 
from libros
where categoria_id =1
OR categoria_id = 2
