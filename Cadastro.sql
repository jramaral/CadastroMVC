USE cadastro
GO

create table Usuario(
	CodigoID Int NOT NULL IDENTITY,
	Nome varchar(70) not null,
	cpf varchar(11) not null,
	sexo char(1),
	Telefone varchar(16),
	DataCadastro DateTime,
	Cidade varchar(50),
	Email varchar(50),
	Senha varchar(6)
	primary key (CodigoID)

);

create table Alunos(
	CodigoID Int NOT NULL IDENTITY,
	Nome varchar(70) not null,
	cpf varchar(11) not null,
	rg varchar(25),
	DataNascimento DateTime,
	EnderecoCompleto varchar(60),
	Matricula varchar(10),
	Idade int,
	Sexo char(1),
	Telefone varchar(16),
	DataCadastro DateTime,
	Email varchar(50),
	Cidade varchar(50),
	primary key (CodigoID)

);

create table Filiacao(
	CodigoFiliacaoID INT NOT NULL IDENTITY,
	CodigoID_Aluno int,
	NomePai varchar(50),
	NomeMae varchar(60),
	primary key (CodigoFiliacaoID)
);

create table Cidade(
	CodigoCidade INT NOT NULL IDENTITY,
	NomeCidade varchar(50),
	UF varchar(2),
	Cep	varchar(8)
	primary key (CodigoCidade)
);

alter table Filiacao add constraint aluno_fk foreign key (CodigoID_Aluno) references Alunos(CodigoID);