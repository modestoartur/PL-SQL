create or replace function FNC_INICIO_MAI (p_nome varchar2) return varchar2
is
--Declaração de todas as variáveis, exceptions e cursores.
cursor xpto is
select count(1) qtd, ano
  from xxxxxxxx
  where ano=parametro
  group by ano;
  v_cursor xpto%rowtype;
begin
  open xpto;
  loop
    fetch xpto into....
    exit when...
      return cursor.qtd;  
  end loop;
  
exception
  when others then
    raise_application_error(-20001,'Erro na execução da função FNC_INICIO_MAI');
    
end;


select fnc_inicio_mai('aaaa bbbbb ccccc ddddd') from dual;

grant select on loc_cliente to fiapaluno

grant select on loc_pedido_locacao to public



create or replace function fnc_qtd_pedidos(p_ano number) return number
is
  cursor c_qtd is
    select count(1) quantidade, to_char(dt_locacao,'yyyy')
      from pf0064.loc_pedido_locacao
      where to_char(dt_locacao,'yyyy') = p_ano
      group by to_char(dt_locacao,'yyyy');
  
  v_qtd     c_qtd%rowtype;
begin
  open c_qtd;
  loop
    fetch c_qtd into v_qtd;
    exit when c_qtd%notfound;
    return v_qtd.quantidade;
  end loop;
  return 0;
exception
  when others then
    return 0;
end;



select FNC_QTD_PEDIDOS(1989) from dual;










grant select on loc_item_locacao to public