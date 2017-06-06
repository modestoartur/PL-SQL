set serveroutput on;

-- 1) Desenvolver um bloco PL/SQL que exiba o nome e a idade armazenados em vari�veis.
declare
  v_nome    varchar2(100);
  v_idade   number;
begin
  v_nome := 'Nome do fulano';
  v_idade:= 30;
  dbms_output.put_line('Nome: ' || v_nome || ' Idade:' || v_idade);
end;

-- 2) Desenvolver um script PL/SQL que receba em vari�veis o nome, idade e email. Para todas as entradas, validar os casos abaixo:
-- - Caso a idade seja menor que 18 anos, retornar somente a mensagem "Idade n�o permitida.
-- - O endere�o de e-mail obrigat�riamente deve ter o caractere "@".
-- - O nome deve ter no m�nimo 2 nomes.
-- Caso todas as condi��es acima estejam validadas, exibir todos os dados recebidos nas vari�veis.
declare
  v_nome    varchar2(100) := 'Nome completo';
  v_idade   number:=20;
  v_email   varchar2(100):='nome@dominio.com.br';
begin
  if v_idade < 18 then
    dbms_output.put_line ('Idade n�o permitida');
  --elsif instr(v_email,'@')=0 then
  elsif v_email not like '%@%' then
    dbms_output.put_line ('Email inv�lido');
  elsif instr(v_nome,' ')=0 or length(v_nome)<5 then
    dbms_output.put_line ('Nome inv�lido');
  else
    dbms_output.put_line ('Nome :' || v_nome);
    dbms_output.put_line ('Idade :' || v_idade);
    dbms_output.put_line ('Email :' || v_email);
  end if;
end;



-- 3) Desenvolver um bloco PL/SQL que receba 5 valores e armazene a m�dia dos 5 valores. Armazenar somente n�meros inteiros.
declare
  v_n1 number := 10;
  v_n2 number := 15;
  v_n3 number := 13;
  v_n4 number := 0;
  v_n5 number := 40;
  v_media number;
begin
  v_media := trunc((v_n1+v_n2+v_n3+v_n4+v_n5)/5);
  dbms_output.put_line ('Com trunc ' || v_media);
  dbms_output.put_line ('Sem trunc ' || (v_n1+v_n2+v_n3+v_n4+v_n5)/5);
end;



-- 4) Desenvolver um Bloco PL/SQL que receba um n�mero em uma vari�vel e exiba o resto da divis�o dos pr�ximos 100 n�meros. Imprimir se � Par ou �mpar.
declare
  v_ini   number:=53;
begin
  for x in v_ini..v_ini+100 loop
    if mod(x,2) = 0 then
      dbms_output.put_line (x || ' � par');
    else
      dbms_output.put_line (x || ' � �mpar');
    end if;
  v_ini:=v_ini+1;
  end loop;
end;


-- 5) Desenvolver um Bloco PL/SQL que receba um nome, caso o nome exceda 30 caracteres exiba somente o sobrenome.
declare
  v_nome_completo varchar2(100);
begin
  v_nome_completo:='aaaa bbbb cccc ddddd eeeee ffffffff ggggggggg';
  if length(v_nome_completo)>30 then
    dbms_output.put_line (substr(v_nome_completo,instr(v_nome_completo,' ',-1)+1));
  end if;
end;



-- 6) Desenvolver um Bloco PL/SQL que exiba a seguinte mensagem de texto:
-- 'Hoje' || <sysdate> || ', estamos no seguinte dia da semana:' || <dia da semana>

alter session set nls_language='brazilian portuguese';
begin
  dbms_output.put_line('Hoje' || sysdate || ', estamos no seguinte dia da semana:' ||
  to_char(sysdate,'day month dd d hh24:mi:ss'));
end;


-- 7) Desenvolva um bloco an�nimo que exiba durante 365 dias (1 ano) apenas as datas que caem no s�bado e domingo, ap�s a entrada de uma data. Ap�s a solicita��o da entrada do campo data, exiba sequencialmente a data e o dia da semana que representa essa data. Utilize o comando loop para realizar essa tarefa. Utilize o pacote DBMS_OUTPUT para exibir esses valores. Exiba os valores em ordem de data
alter session set nls_language='english';
declare
  v_data  date;
begin
  v_data := to_date('28/03/2017','dd/mm/yyyy');
  for x in 1..365 loop
    --if trim(to_char(v_data,'day'))='s�bado' or trim(to_char(v_data,'day'))='domingo'  then
    if to_char(v_data,'d')=7 or to_char(v_data,'d')=1  then
      dbms_output.put_line( v_data || ' � ' || to_char(v_data,'day'));
    end if;
    v_data:=v_data+1;
  end loop;
end;


select length(to_char(sysdate,'day')) from dual;









