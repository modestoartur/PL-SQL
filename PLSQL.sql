set serveroutput on;

-- Desenvolver um bloco anônimo em PL/SQL, que receba 2 valores e exiba a soma, multiplicação e divisão destes números.
declare
  v_soma  number;
  v_mult  number;
  v_div   number;
  v_n1    number;
  v_n2    number;
begin
  v_n1 := 10;
  v_n2 := 3;
  v_soma := v_n1 + v_n2;
  v_mult := v_n1 * v_n2;
  v_div  := v_n1 / v_n2;
  dbms_output.put_line ('Soma ' || v_soma);
  dbms_output.put_line ('Multiplicação ' || v_mult);
  dbms_output.put_line ('Divisão ' || v_div);
end;


-- Desenvolver um bloco anônimo em PL/SQL, que receba um nome completo em uma variável e exiba somente o primeiro nome.
declare
  v_nome_completo varchar2(100);
  v_primeiro_nome varchar2(100);
begin
  v_nome_completo := 'Nome do fulano';
  v_primeiro_nome := substr(v_nome_completo,1,instr(v_nome_completo,' ')-1);
  dbms_output.put_line(v_primeiro_nome);
end;


-- Desenvolver um bloco anônimo em PL/SQL, que receba uma data no formato DD/MM/YYYY e exiba somente o mês por extenso.

declare
  v_data    date;
  v_mes     varchar2(20);
begin
  v_data := to_date('14/03/2017','dd/mm/yyyy');
  v_mes  := to_char(v_data,'month');
  dbms_output.put_line (v_data || ' ' || v_mes);
end;