use alugueis;
Select p.proprietario_id, p.nome, e.estado, h.tipo, sum(a.preco_total) from proprietarios p
inner join hospedagens h on h.proprietario_id = p.proprietario_id
inner join alugueis a on a.hospedagem_id = h.hospedagem_id
inner join enderecos e on e.endereco_id = h.endereco_id
where (e.estado = 'SP' or e.estado = 'RJ') and (h.tipo = 'APARTAMENTO' or h.tipo = 'CASA') and 
-- a.data_inicio>='2023-01-01' and a.data_inicio <='2023-12-31'
year(a.data_inicio)=2023
group by p.nome, p.proprietario_id,  e.estado, h.tipo
order by p.nome;

-- group by vai agrupar todos os valores, sem ele ficava apenas o que tem mais no caso o rogaça. 
-- sum(para calcular o total em uma unica linha)
