SELECT Ordem_Servico_Servico.os_servico_id, 
       Ordem_Servico_Servico.ordem_id, 
       Ordem_Servico_Servico.servico_id, 
       Ordem_Servico_Servico.quantidade, 
       (Ordem_Servico_Servico.quantidade * Servico.valor_mao_de_obra) AS valor_total_servico
FROM Ordem_Servico_Servico 
JOIN Servico ON Ordem_Servico_Servico.servico_id = Servico.servico_id;
