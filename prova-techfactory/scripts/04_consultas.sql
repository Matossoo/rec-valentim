-- Active: 1781127178896@@127.0.0.1@3307@techfactory_db
-- 1
select * from departamentos;

-- 2
select nome_colaborador, cargo, email 
from colaboradores;

-- 3 
select patrimonio, descricao, fabricante
from equipamentos;

-- 4
select descricao, status_equipamento
from equipamentos;

-- 5
select * 
from colaboradores
where data_admissao > '2024-01-01';

-- 6
select *
from equipamentos
where data_aquisicao > '2023-01-01';

-- 7
select * 
from fornecedores
where cidade = 'Blumenau';

-- 8
select id_equipamento
from equipamentos
join categoria
on equipamentos.id_categoria = categoria.id_categoria
where categoria.nome_categoria = 'Computação';

-- 9
select * 
from colaboradores
where cargo = 'chefe';

-- 10
select *
from fornecedores
where telefone is not null;

-- 11
select * 
from equipamentos
where descricao like '%notebook%';

-- 12
select *
from suporte_tecnico
where status_chamado = 'Concluido';

-- 13
select *
from suporte_tecnico
where prioridade = 'alta';

-- 14
select * 
from equipamentos
order by descricao asc;

-- 15
select * 
from equipamentos
order by data_aquisicao desc;

-- 16
select count(*) as total_equipamentos
from colaboradores;

-- 17
select count(*) as total_equipamentos 
from equipamentos;

-- 18
select min(data_admissao) as data_antiga
from colaboradores;

-- 19
select categoria.nome_categoria, count(equipamentos.id_equipamento) as quantidade
from categoria
join equipamentos
on categoria.id_categoria = equipamentos.id_categoria
group by categoria.nome_categoria;

-- 20
select fornecedores.razao_social, count(equipamentos.id_equipamento) as quantidade
from fornecedores
join equipamentos
on fornecedores.id_fornecedor = equipamentos.id_fornecedor
group by fornecedores.razao_social;

-- 21
select colaboradores.nome_colaborador, departamentos.nome_departamento
from colaboradores
join departamentos
on colaboradores.id_departamento = departamentos.id_departamento;

-- 22
select equipamentos.descricao, categoria.nome_categoria
from equipamentos
join categoria
on equipamentos.id_categoria = categoria.id_categoria;

-- 23
select equipamentos.descricao, fornecedores.razao_social, equipamentos.status_equipamento
from equipamentos
join fornecedores
on equipamentos.id_fornecedor = fornecedores.id_fornecedor;

-- 24
select *
from equipamentos
where data_aquisicao =
(
    select max(data_aquisicao)
    from equipamentos
);

-- 25
select * 
from colaboradores
where data_admissao >
(
    select avg(data_admissao)
    from colaboradores
);


