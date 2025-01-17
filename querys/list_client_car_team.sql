SELECT os.ordem_id, os.numero_os, os.data_emissao, os.status, 
       c.nome AS nome_cliente, v.placa AS placa_veiculo, e.nome_equipe 
FROM Ordem_Servico os
JOIN Veiculo v ON os.veiculo_id = v.veiculo_id
JOIN Cliente c ON v.cliente_id = c.cliente_id
JOIN Equipe e ON os.equipe_id = e.equipe_id;
