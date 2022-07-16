create database secao05;

use secao05;

create table tipos_produto(
    codigo int not null auto_increment,
    descricao varchar(30) not null,
    primary key (codigo)
);

create table produtos(
    codigo int not null auto_increment,
    descricao varchar(30) not null,
    preco decimal(8,2) not null,
    codigo_tipo int not null,
    primary key (codigo),
    foreign key (codigo_tipo) references tipos_produto(codigo)
);

insert into tipos_produto (descricao) values ('Cardeno');
insert into tipos_produto (descricao) values ('Lapis');

insert into produtos (descricao, preco, codigo_tipo) values ('borracha', '2', 1);
insert into produtos (descricao, preco, codigo_tipo) values ('Livros', '20', 1);
insert into produtos (descricao, preco, codigo_tipo) values ('Canetas', '3', 2);
insert into produtos (descricao, preco, codigo_tipo) values ('Cola', '1', 2);

-- Filtrandos consultas com where

select * from produtos;

select * from produtos where codigo_tipo = 2;

select * from produtos where codigo_tipo = 2 and preco > 2;

