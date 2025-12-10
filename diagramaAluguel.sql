create table pessoa (
cpf char(14) not null primary key,
nome varchar(30) not null,
endereco text,
telefone char(9)
);
create table veiculos();

drop table veiculos;

create table veiculos(
placa char(7) not null primary key,
ano char(4),
modelo varchar(15)
);

create table aluguel(
idAluguel serial, 
dataInicio date not null,
dataFim date not null,
valorTotal numeric(5,2),
cpfID char(14),
placaID char(7),
foreign key (cpfID) references pessoa (cpf),
foreign key (placaID) references veiculos (placa)
);