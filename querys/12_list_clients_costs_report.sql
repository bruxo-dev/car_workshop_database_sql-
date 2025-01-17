SELECT c.nome AS nome_cliente, 
       SUM(osp.subtotal) AS custo_total_pecas, 
       SUM(oss.subtotal) AS custo_total_mao_de_obra, 
       (SUM(osp.subtotal) + SUM(oss.subtotal)) AS custo_total_geral 
FROM Cliente c
JOIN Veiculo v ON c.cliente_id = v.cliente_id
JOIN Ordem_Servico os ON v.veiculo_id = os.veiculo_id
LEFT JOIN Ordem_Servico_Peca osp ON os.ordem_id = osp.ordem_id
LEFT JOIN Ordem_Servico_Servico oss ON os.ordem_id = oss.ordem_id
GROUP BY c.nome;
