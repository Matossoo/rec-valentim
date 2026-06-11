-- Active: 1781127178896@@127.0.0.1@3307@techfactory_db
create table departamentos (
    id_departamento int primary key auto_increment,
    nome_departamento varchar(250) not null,
    localizacao varchar(250) not null
);

create table colaboradores (
    id_colaborador int primary key auto_increment,
    nome_colaborador varchar(250),
    cpf varchar(14) unique,
    email varchar(250) not null unique,
    cargo varchar(250) not null,
    data_admissao date not null,
    id_departamento int,


    Foreign Key (id_departamento) 
    REFERENCES departamentos(id_departamento)
);


create table equipamentos(
    id_equipamento int primary key auto_increment,
    patrimonio int not null unique,
    descricao text not null,
    fabricante varchar(250),
    modelo varchar(250) not null,
    data_aquisicao date not null,
    status_equipamento varchar(250) not null,
    id_categoria int,
    id_fornecedor int,
    id_colaborador int,

    Foreign Key (id_colaborador) 
    REFERENCES colaboradores(id_colaborador),

    Foreign Key (id_fornecedor) 
    REFERENCES fornecedores(id_fornecedor),

    Foreign Key (id_categoria)
    REFERENCES categoria(id_categoria) 
);

create table categoria(
    id_categoria int primary key auto_increment,
    nome_categoria varchar(250) not null
);

create table fornecedores(
    id_fornecedor int primary key auto_increment,
    razao_social varchar(250) not null,
    cnpj varchar(20) not null unique,
    telefone varchar(20) not null unique,
    cidade varchar(250) not null
);

create table suporte_tecnico(
    id_suporte int primary key auto_increment,
    numero_chamado int not null,
    data_abertura date not null,
    descricao text,
    prioridade varchar(250),
    status_chamado varchar(250),
    data_encerramento date not null,
    id_colaborador int,
    id_equipamento int,

    Foreign Key (id_colaborador) 
    REFERENCES colaboradores(id_colaborador),

    Foreign Key (id_equipamento) 
    REFERENCES equipamentos(id_equipamento)
);

create table manutencao(
    id_manutencao int primary key auto_increment,
    data_manutencao date not null,
    descricao text,
    tempo_gasto int not null,
    custo decimal(10,2) not null,
    id_suporte int,

    Foreign Key (id_suporte) 
    REFERENCES suporte_tecnico(id_suporte)
);