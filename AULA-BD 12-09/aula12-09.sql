/* criar banco de dados */
create database if not exists exemplo;

# colocar o BD em uso
use exemplo;

# mostrar os BD na máquina 
show databases;

# apagar BD 
drop database exemplo;

# criar uma tabela 
create table if not exists fornecedor (
idFornecedor int not null, 
nome varchar(45) not null unique,
endereco varchar(45),
telefone int,
cidade varchar(20) default "Bragança",
email varchar(25),
primary key (idFornecedor)
)engine InnoDB; /* tipo de motor que o banco de dados vai usar (DB tem uma performance melhor)*/

# mostrar as tabelas 
show tables;

# exibir a descrição da tabela
desc fornecedor;

# apagar uma tabela 
drop table fornecedor;

# criar a tabela produto 
create table if not exists produto(
idProduto int not null, 
descricao varchar(45),
preco decimal(7,2),
unidade varchar(10),
idFornecedor int not null,
primary key (idProduto),
foreign key (idFornecedor) references fornecedor(idFornecedor)
);
desc produto;
show tables;