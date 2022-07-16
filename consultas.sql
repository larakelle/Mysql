# Consulta em multiplas tabelas 

select * from tipos_produto;
select * from produtos;

select p.codigo as 'Codigo', p.descricao as 'Descricao', p.preco as 'Preco', tp.descricao as 'Tipos_produto'
    from produtos as p, tipos_produto as tp
    where p.codigo_tipo = tp.codigo;