#QUESTAO 1
INSERT INTO livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora,paginas,idiomas)
VALUES ('As Crônicas de Narnia', 'C.S. Lewis', '1950', 'Fantasia', '978-0064471190', 'HarperCollins', '768', 'Frances');

#QUESTAO 28
UPDATE livros
SET st_dispinibilidade= False
Where ano_publicacao < 1980;

#QUESTAO 3
UPDATE livros
SET editora= 'Plume Books'
Where titulo = 1984;

#QUESTAO 4
DELETE FROM livros
WHERE idioma= 'Ingles' AND ano_publicacao;

#QUESTAO 5 
SELECT *
FROM livros 
WHERE pagina > 650;

#QUESTAO 6
SELECT categarias, COUNT(*) AS quantidade_livros
FROM livros
GROUP BY categoria;

#QUESTAO 7
SELECT *
FROM livros 
ORDER BY data_adicao DESC
LIMIT 5;

#QUESTAO 8
SELECT AVG (paginas) AS media_paginas
FROM livros
WHERE disponibilidade= TRUE;

#QUESTAO 9
SELECT *
FROM livros
ORDER BY ano_publicacao DESC;

#QUESTAO 10
SELECT * 
FROM livros
WHERE titulo LIKE 'S%'
AND ano_publicacao BETWEEN 1975 AND 1990;
