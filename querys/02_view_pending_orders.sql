SELECT ordem_id, numero_os, data_emissao, status 
FROM Ordem_Servico 
WHERE status = 'pendente' AND data_emissao > '2025-01-01';
