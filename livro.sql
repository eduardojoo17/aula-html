create table livro(
id serial primary key,
titulo varchar(100) not null,
autor varchar (80),
ano_publicacao int,
preco numeric(4,2),
estoque int default 0
);

insert into livro (titulo, autor, ano_publicacao, preco, estoque)
values
('O Senhor dos Anéis', 'J.R.R. Tolkien', 1954, 45.90, 12),
('1984', 'George Orwell', 1949, 35.50, 8),
('Dom Casmurro', 'Machado de Assis', 1899, 28.00, 15),
('Harry Potter', 'J.K. Rowling', 1997, 42.00, 20),
('A Revolução dos Bichos', 'George Orwell', 1945, 30.00, 10);

alter table livro add column editora varchar(50);
alter table livro add column categoria varchar(25);
alter table livro alter column preco type numeric(10,2);
alter table livro add column isbn varchar(20);
alter table livro drop column isbn;
alter table livro rename column ano_publicacao to ano;
alter table livro add column desconto numeric(5,2) default(0.00);
update livro set editora = 'companhia das letras' , categoria = 'ficção cintifica' where titulo = '1984';
update livro set desconto = 10.00 where autor = 'George Orwell';
update livro set preco = 32.50 where autor = 'Dom Casmurro';
update livro set categoria = 'fantasia' where titulo = 'O Senhor dos Anéis' and titulo = 'Harry Potter';
update livro set estoque = estoque + 5;
update livro set editora = 'Nova Fronteira', categoria ='Romance' where titulo = 'Dom Casmurro';
delete from livro where id=3;
delete from livro where estoque < 5;
delete from livro where titulo ='A Revolução dos Bichos';


