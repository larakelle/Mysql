create database secao04;

use secao04;

create table tipos_produto(
    codigo int not null auto_increment,
    descricao varchar(30) not null,
    primary key(codigo)
);

create table produtos(
    codigo int not null auto_increment primary key,
    descricao varchar(30) not null,
    preco decimal(8,2) not null,
    codigo_tipo int not null,
    foreign key (codigo_tipo) references tipos_produto(codigo)
);



insert into tipos_produto (descricao) values ('Computadores');
insert into tipos_produto (descricao) values ('Impressoras');

insert into produtos (descricao, preco, codigo_tipo) values ('Desktop', '1200', 1);
insert into produtos (descricao, preco, codigo_tipo) values ('Laptop', '1800', 1);
insert into produtos (descricao, preco, codigo_tipo) values ('Impr, Jato de Tinta', '300', 2);
insert into produtos (descricao, preco, codigo_tipo) values ('Impr,Laser', '500', 2);

# DQL

select * from tipos_produto;

select codigo, descricao from tipos_produto;

# Alias = apelido
select p.codigo as cod, p.descricao as descri, p.preco as pre, p.codigo_tipo as ctp from produtos as p;pacientes
