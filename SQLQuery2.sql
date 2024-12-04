-- 1
SELECT Nome, Ano
FROM Filmes

-- 2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7
SELECT Ano, COUNT (*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino'

-- 9
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome ASC

-- 10
SELECT F.Nome AS Filme, G.Nome AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.FilmeId
JOIN Generos G ON FG.GeneroId = G.Id

-- 11
SELECT F.Nome AS Filme, G.Nome AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.FilmeId 
JOIN Generos G ON FG.GeneroId = G.Id 
WHERE G.Nome = 'Mistério'

-- 12
SELECT F.Nome AS Filme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F 
JOIN ElencoFilme EF ON F.Id = EF.FilmeId 
JOIN Atores A ON EF.AtorId = A.Id 