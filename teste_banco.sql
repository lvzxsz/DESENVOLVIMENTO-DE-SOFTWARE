/*Programação de Bando de Dados
funções Nativas do Banco MySQL
*/
-- 1. Criando tabela medicoes_experimento
create table medicoes_experimento (
  repeticao INT,
  valor_medido DECIMAL(10,4)
);
-- Carga de dados
insert into medicoes_experimento (repeticao, valor_medido) VALUES
(1, 12.3454),
(2, 12.2354),
(3, 13.1354),
(4, 12.1767),
(5, 11.2827),
(6, 12.3849);
-- 2. Aplicando função para arrendodamento de valores
select * from medicoes_experimento;
select repeticao, ROUND(valor_medido) from medicoes_experimento;

-- 2.1 Aplicando função de agregação, exibindo media dos valores de uma coluna (valor_medido)
select avg(valor_medido) from medicoes_experimento;

select sujeito, avg(valor_medido) from medicoes_experimento group by sujeito;

-- 2.2 Apague a tabela
drop table medicoes_experimento;
  
 -- 2.3 Criando tabela  medicoes_experimento
create table medicoes_experimento(
  repeticao int,
  valor_medido decimal(6,4),
  sujeito char(1)
);

-- 2.4 Carga de dados
insert into medicoes_experimento (repeticao, valor_medido, sujeito) values 
(1, 12.3454, 'A'),
(2, 12.2354,'A'),
(3, 13.1354,'A'),
(4, 12.1767,'A'),
(5, 11.2827,'A'),
(6, 12.3849,'A'),
(1, 13.3454,'B'),
(2, 13.2354,'B'),
(3, 14.1454,'B'),
(4, 13.1567,'B'),
(5, 12.2627,'B'),
(6, 13.5649,'B');

-- 2.4 Consultando registros da tabela
select * from medicoes_experimento;]

-- 2.5 Consultando registros agrupados com função de agregação
select sujeito, avg (valor_medido) from  medicoes_experimento group by sujeito;
