




#######################  SOMENTE BUSCAS E ADIÇÃO DE CONTEÚDO   ##########################


select * from Pessoa	
select * from Chamado
select * from Servico
select * from Produto	

insert into Pessoa
(uf, tipo_acesso, tipo_pessoa, sexo)
values
('SP','A', 'F', 'F'),
('RJ','C', 'J', 'M'),
('RS','AH', '', 'NA'),
('MG','CH', '', '')

insert into Pessoa
(sexo)
values
('F'),
('M'),
('NA')


ALTER TABLE Pessoa ALTER COLUMN uf char(2);
ALTER TABLE Chamado ALTER COLUMN data_abertura datetime;

insert into Pessoa
(tipo_acesso)
values
('A'),
('C'),
('AH'),
('CH')

insert into Pessoa
(sexo)
values
('F'),
('M'),
('NA')

insert into Pessoa
(tipo_pessoa)
values
('F'),
('J')

insert into Pessoa
(uf)
values
('AC'), 
('AL'),
('AP'),
('AM'),
('BA'),
('CE'),
('DF'),
('ES'),
('GO'),
('MA'),
('MG'),
('MT'),
('MS'),
('PA'),
('PB'),
('PR'),
('PE'),
('PI'),
('RJ'),
('RN'),
('RS'),
('RO'),
('RR'),
('SC'),
('SE'),
('SP'),
('TO')


insert into Produto
(marca)
values
('DELL'),
('MAC'),
('Samsung')

insert into Servico (grupo, prioridade) values
('Computador','Alta'),
('Monitor', 'Media'),
('Perifericos', 'Baixa'),
('Software', 'Alta')




select 
pessoa_id_usuario, Pessoa.nome, Pessoa.razao_social, Pessoa.login_usuario, id_chamado, Chamado.data_abertura, Chamado.servico_solicitado, produto_id_produto
From Pessoa INNER JOIN Chamado on Pessoa.id_usuario = Chamado.id_chamado;


SELECT        
pessoa.id_usuario, Pessoa.razao_social, Pessoa.nome, 
id_chamado, Chamado.data_abertura, Chamado.servico_solicitado, Chamado.avaliacao, Chamado.situacao, 
produto.id_produto, Produto.descricao,
servico.id_servico, Servico.data_inicio, Servico.hora_inicio, Servico.data_fim, Servico.hora_fim, Servico.grupo, Servico.descricao, Servico.prioridade, Servico.servico_realizado

FROM Pessoa INNER JOIN Chamado ON Pessoa.id_usuario = Chamado.id_chamado  
INNER JOIN Produto ON Chamado.produto_id_produto = Produto.id_produto 
INNER JOIN Servico ON Chamado.servico_id_servico = Servico.id_servico AND Produto.id_produto = Servico.id_servico