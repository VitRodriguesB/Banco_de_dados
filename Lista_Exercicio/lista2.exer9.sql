select h.*,
(select p.nome from proprietarios p
where p.proprietario_id = h.proprietario_id) as nome 
from hospedagens h;

select * from clientes c where c.cliente_id not in (select a.cliente_id from alugueis a);

select * from clientes c where c.cliente_id in (select a.cliente_id from alugueis a)
order by ' 'desc;