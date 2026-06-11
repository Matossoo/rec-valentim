insert into  departamentos(nome_departamento, localizacao) values
('Produção', 'setor 1'),
('Engenharia', 'setor 2'),
('Qualidade', 'setor 3'),
('Logística', 'setor 4'),
('Tecnologia da Informação', 'setor 5');


insert into colaboradores(nome_colaborador, cpf, email, cargo, data_admissao, id_departamento) values
('Rafael', '12345678912', 'rafa@gmail.com', 'chefe', '2020-01-01', 4),
('Emanuel', '09876543211', 'ema@gmail.com', 'peão', '2026-02-01', 1),
('Gustavo', '12312378912', 'gu@gmail.com', 'gerente', '2024-01-01', 5),
('Augusto', '16755678912', 'augu@gmail.com', 'peão', '2024-07-01', 3),
('Leonardo', '12345678654', 'leo@gmail.com', 'Representante', '2021-01-01', 2);

insert into equipamentos(patrimonio, descricao, fabricante, modelo, data_aquisicao, status_equipamento, id_categoria, id_colaborador, id_fornecedor) values
(1234, 'computadores', 'CISCO', 'AT555', '2020-01-02', 'Em uso', 1,2,3),
(2345, 'notebooks', 'DELL', 'AP90', '2022-01-02', 'Em uso', 2,3,4),
(1234321, 'servidores', 'WEG', 'RE678', '2023-01-02', 'sem uso', 3,4,5),
(123321, 'impressoras', 'Logitech', '67', '2024-01-02', 'Em uso', 4,5,1),
(123121234, 'tablets industriais', 'Samsung', 'note 12', '2025-01-02', 'sem uso', 5,1,2);

insert into categoria(nome_categoria) values
('Computação'),
('Rede'),
('Impressão'),
('Mobilidade'),
('Servidores');

insert into fornecedores(razao_social, cnpj, telefone, cidade) values
('SCHAOLIN', 6473431432439, 4711111111, 'Jaragua do Sul'),
('SHELBI', 6473758695449, 4722222222, 'Sao Paulo'),
('LAION CORPIS', 6474563275899, 4733333333, 'guaramirim'),
('67 AUTOMACOES', 6473219516739, 4744444444, 'Massaranduba'),
('LOGITECH 42', 6473219876589, 4755555555, 'Blumenau');

insert into suporte_tecnico(numero_chamado, data_abertura, descricao, prioridade, status_chamado, data_encerramento, id_colaborador, id_equipamento) values
(1234, '2026-01-01', 'quebrou tudo', 'alta', 'Concluido', '2026-02-01', 1, 2),
(4321, '2026-02-01', 'falha de comunicação', 'altissima', 'Concluido', '2026-03-01', 2, 3),
(1134, '2026-03-01', 'internet caiu', 'baixa', 'Concluido', '2026-04-01', 3, 4),
(1224, '2026-04-01', 'maquina travou', 'médio', 'Concluido', '2026-05-01', 4, 5),
(1274, '2026-05-01', 'deixaram cair cafe na cpu', 'baixa', 'Concluido', '2026-06-01', 5, 1);

insert into manutencao(data_manutencao, descricao, tempo_gasto, custo, id_suporte) values
('2026-05-01', 'conserto de maquina eletrica', 5, '1300.00', 1),
('2026-05-02', 'conexao wifi estabelecida', 1, '120.00', 2),
('2026-05-03', 'cabo bem conectado', 1, '30.00', 3),
('2026-05-04', 'afiação', 2, '100.00', 4),
('2026-05-05', 'Reforma geral', 30, '5000.00', 5);
