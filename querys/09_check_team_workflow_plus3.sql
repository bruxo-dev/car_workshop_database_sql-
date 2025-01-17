SELECT Equipe.equipe_id, nome_equipe, COUNT(Ordem_Servico.ordem_id) AS total_ordens 
FROM Equipe 
JOIN Ordem_Servico ON Equipe.equipe_id = Ordem_Servico.equipe_id 
GROUP BY Equipe.equipe_id, nome_equipe 
HAVING COUNT(Ordem_Servico.ordem_id) > 3;
