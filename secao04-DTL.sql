select * from tipos_produto;

# DTL

-- Transaction

start transaction;
   insert into tipos_produto (descricao) values ('Acessorios');
	insert into tipos_produto (descricao) values ('Equipamentos');
    
-- commit
commit;

-- rollback
rollback;
