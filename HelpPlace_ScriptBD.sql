create database CrudHelpPlace3
go
use CrudHelpPlace3
go

CREATE TABLE Chamado 
(
    id_chamado           int identity NOT NULL,
    data_abertura        DATETIME,
    servico_solicitado   VARCHAR(200),
    situacao             VARCHAR(15),
    avaliacao            VARCHAR(15),
    pessoa_id_usuario    INTEGER NOT NULL,
    produto_id_produto   INTEGER NOT NULL,
	servico_id_servico	 INTEGER NOT NULL
)

go

ALTER TABLE Chamado ADD constraint chamado_pk PRIMARY KEY CLUSTERED (id_chamado)
 go

CREATE TABLE Pessoa
 (
    id_usuario        int identity NOT NULL,
    razao_social      VARCHAR(40),
    nome              VARCHAR(30),
    cpf_cnpj          VARCHAR(20),
    cep               VARCHAR(10),
    logradouro        VARCHAR(30),
    bairro            VARCHAR(30),
    cidade            VARCHAR(30),
	uf				  CHAR(2),
    data_nascimento   DATE,
    telefone1         VARCHAR(10),
    telefone2         VARCHAR(10),
    departamento      VARCHAR(10),
    login_usuario     VARCHAR(10),
    senha_usuario     VARCHAR(10),
    tipo_acesso       VARCHAR(2),
    tipo_pessoa       CHAR,
    sexo              VARCHAR(2),
    email             VARCHAR(20)
)

go

ALTER TABLE Pessoa ADD constraint pessoa_pk PRIMARY KEY CLUSTERED (id_usuario)

 go

CREATE TABLE Produto 
(
    id_produto   int identity NOT NULL,  
    marca        VARCHAR(30),
    modelo       VARCHAR(30),
    descricao    VARCHAR(50)
)

go

ALTER TABLE Produto ADD constraint produto_pk PRIMARY KEY CLUSTERED (id_produto)

 go

CREATE TABLE Servico (
    id_servico           int identity NOT NULL,
    data_inicio          DATE,
    hora_inicio          time,
    data_fim             DATE,
    hora_fim             time,
	grupo				VARCHAR(20),
    descricao            VARCHAR(30),
    prioridade           VARCHAR(20),
    servico_realizado    VARCHAR(200),
    produto_id_produto   INTEGER  
)

go


ALTER TABLE Servico ADD constraint servico_pk PRIMARY KEY CLUSTERED (id_servico)
 go


ALTER TABLE Chamado
    ADD CONSTRAINT chamado_pessoa_fk FOREIGN KEY ( pessoa_id_usuario )
        REFERENCES pessoa ( id_usuario )
 go

ALTER TABLE Chamado
    ADD CONSTRAINT chamado_produto_fk FOREIGN KEY ( produto_id_produto )
        REFERENCES produto ( id_produto )
go

ALTER TABLE Chamado
    ADD CONSTRAINT chamado_servico_fk FOREIGN KEY ( servico_id_servico )
        REFERENCES servico ( id_servico )
 go


ALTER TABLE Servico
    ADD CONSTRAINT servico_produto_fk FOREIGN KEY ( produto_id_produto )
        REFERENCES produto ( id_produto )
 go





