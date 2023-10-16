USE Filmes

-- 1 - Buscar o nome e ano dos filmes

SELECT nome AS Nome, ano AS Ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT nome AS Nome, ano AS Ano, duracao AS Duração FROM Filmes ORDER BY ano ASC;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT nome AS Nome, ano AS Ano, duracao AS Duração FROM Filmes WHERE nome = 'De volta para o futuro';

-- 4 - Buscar os filmes lançados em 1997

SELECT * FROM Filmes WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT * FROM Filmes WHERE Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM Filmes WHERE duracao > 100 AND duracao < 150 ORDER BY duracao ASC;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY ano ORDER BY Quantidade DESC;
-- Parece que a pergunta está errada, na verdade quer que ordene pela quantidade

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT * FROM Atores WHERE genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores WHERE genero = 'F' ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero

SELECT Filmes.nome, Generos.genero
FROM Filmes
JOIN FilmesGenero ON Filmes.id = FilmesGenero.idFilme
JOIN Generos ON FilmesGenero.idGenero = Generos.id;

-- 11 - Buscar o nome do filme e o gênero

SELECT Filmes.nome, Generos.genero
FROM Filmes
JOIN FilmesGenero ON Filmes.id = FilmesGenero.idFilme
JOIN Generos ON FilmesGenero.idGenero = Generos.id
WHERE genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT Filmes.nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
FROM Filmes
JOIN ElencoFilme ON Filmes.id = ElencoFilme.idFilme
JOIN Atores ON Atores.id = ElencoFilme.idAtor;