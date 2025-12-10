create table alunos(
id_aluno serial primary key, 
nome text not null,
serie text not null,
data_nasc date
);

create table livros(
id_livros serial primary key,
titulo text not null,
autor text,
ano int,
categoria text
);

create table emprestimos(
id_emprestimos serial primary key,
alu_emprestimo int references alunos (id_aluno) not null,
liv_emprestimo int references livros (id_livros) not null,
data_inicio date not null,
data_fim date,
data_efetiva date
);

insert into alunos (nome, serie, data_nasc)
values
('joão','1º ano médio','2000-10-20'),
('pedro','1º ano médio','2000-05-18'),
('lucas','1º ano médio','2001-10-18'),
('mateus','1º ano médio','2001-09-01'),
('amanda','1º ano médio','2001-02-10');

insert into livros(titulo, autor, ano, categoria)
values
('harry potter','J. K. Rowling',2000,'ficção'),
('matematica','ferreto',1999,'exatas'),
('portugues','noslen',2005,'humanas'),
('livro qualquer','desconhecido',2022,'nada'),
('fisica','ferreto',2005,'exatas');

insert into emprestimos(alu_emprestimo, liv_emprestimo, data_inicio,data_fim,data_efetiva)
values
(1,3,'2025-10-20','2025-10-30','2025-10-29'),
(3,3,'2025-09-10','2025-09-20','2025-10-21'),
(5,2,'2025-09-10','2025-10-21','2025-10-19'),
(3,1,'2025-09-10','2025-09-20','2025-10-21'),
(5,5,'2025-09-10','2025-10-21','2025-10-19'),
(4,3,'2025-10-20','2025-10-30','2025-10-29'),
(5,1,'2025-10-20','2025-10-30','2025-10-29'),
(5,2,'2025-05-05','2025-05-15','2025-05-15'),
(1,1,'2025-10-20','2025-10-30','2025-10-30'),
(1,5,'2025-10-20','2025-10-30','2025-10-30');


select * from alunos;
select * from livros;
select * from emprestimos;

SELECT *from emprestimos e JOIN alunos a ON e.alu_emprestimo = id_aluno JOIN livros l ON e.liv_emprestimo = l.id_livros WHERE a.nome = 'lucas';
select * from livros where autor = 'desconhecido';


select * from emprestimos where data_fim = '2025-10-30' and data_inicio = '2025-09-10' or data_efetiva = '2025-10-21';

