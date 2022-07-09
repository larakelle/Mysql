# DML

-- insert

insert into tipos_produto (descricao) values ('Apple');
insert into produtos (descricao, preco, codigo_tipo) values ('Notebook', '1200', 1);
insert into produtos values (null, 'Macbook Air', '5200', 3);

insert into produtos values (null, 'Macbook', '7200', 1);

select * from tipos_produto;
select * from produtos;

-- upate
update produtos set codigo_tipo = 3 where codigo = 6;

update produtos set descricao = 'Impressora Laser', preco = '700' where codigo = 4;

