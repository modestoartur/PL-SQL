-- Desenvolver um bloco PL/SQL que faça a transferência dos registros da tabela PF0064.LOC_GRUPO para a estrutura abaixo:

-- create table loc_grupo_exception(
-- CD_GRUPO                                  NUMBER(3) PRIMARY KEY,
-- DS_GRUPO                                  VARCHAR2(100),
-- VL_LOCACAO_DIARIA                         NUMBER(8,2));

-- Utilizando o recurso de CURSORES EXPLÍCITOS e EXCEPTIONS, transfira os novos registros e atualize os existentes. 
-- Este programa NUNCA deve suspender sua execução por erros.








--alteracao

-- DECLARACAO DE VARIAVEIS DO CURSOR
declare
  cursor c_Grupo is
    -- SELECT DE ONDE O CURSOR VAI RODAR
    select * from pf0064.loc_grupo where cd_grupo between 1 and 1000;
  v_Grupo   c_Grupo%rowtype;
begin
  -- ABRE O CURSOR E FAZ O LOOP
  open c_Grupo;
  loop
    fetch c_Grupo into v_Grupo;
    exit when c_Grupo%notfound;
    -- INSERE NA TABELA DE TRANSFERENCIA
    insert into loc_grupo(cd_grupo, ds_grupo, vl_locacao_diaria)
    values (v_Grupo.cd_grupo,v_Grupo.ds_grupo,v_Grupo.vl_locacao_diaria);
  end loop;
  close c_Grupo;
  commit;
end;

select * from loc_grupo
select * from pf0064.loc_grupo








create table loc_grupo_2017 as select * from loc_grupo where 1=2
select * from loc_grupo_2017

declare
  cursor cGrupo is
    select * from pf0064.loc_grupo where cd_grupo between 1 and 5;
    
  v_grupo   cGrupo%rowtype;
begin
  open cGrupo;
  loop
    fetch cGrupo into v_grupo;
    exit when cGrupo%notfound;
    insert into loc_grupo (cd_grupo, ds_grupo, vl_locacao_diaria)
      values(v_grupo.cd_grupo, v_grupo.ds_grupo, v_grupo.vl_locacao_diaria);
  end loop;
  close cGrupo;
  commit;  
end;

create table loc_veiculo_2017 as select * from loc_veiculo where 1=2
create table loc_proprietario_2017 as select * from loc_proprietario where 1=2


grant select on loc_veiculo to fiapaluno
grant select on loc_proprietario to fiapaluno













declare
  cursor c_Prop is
  select * from pf0064.loc_proprietario;
  
  cursor c_Veic is
  select * from pf0064.loc_veiculo;
  
  v_Prop  c_Prop%rowtype;
  v_Veic  c_Veic%rowtype;
begin
  open c_Prop;
  loop
    fetch c_Prop into v_Prop;
    exit when c_Prop%notfound;
    insert into loc_proprietario_2017 (cd_proprietario, nome_proprietario, tp_proprietario, telefone, nr_cpf, nr_cgc, ds_email)
     values(v_Prop.cd_proprietario, v_Prop.nome_proprietario, v_Prop.tp_proprietario, v_Prop.telefone, v_Prop.nr_cpf, v_Prop.nr_cgc, v_Prop.ds_email);
  end loop;
  close c_Prop;
  
  open c_Veic;
  loop
    fetch c_Veic into v_Veic;
    exit when c_Veic%notfound;
    insert into loc_veiculo_2017 (nr_placa, cd_proprietario, nr_chassis, status, tipo_automovel, km_atual, combustivel, modelo, cor, cd_grupo)
    values (v_Veic.nr_placa, v_Veic.cd_proprietario, v_Veic.nr_chassis, v_Veic.status, v_Veic.tipo_automovel, v_Veic.km_atual, v_Veic.combustivel, v_Veic.modelo, v_Veic.cor, v_Veic.cd_grupo);
  end loop;
  close c_Veic;
  commit;  
end;

select * from loc_proprietario_2017
select rowid from loc_veiculo_2017
select 'v_Veic.' || column_name || ','from user_tab_columns where table_name='LOC_VEICULO' ORDER BY COLUMN_ID
select 'v_Veic.' || column_name || ','from user_tab_columns where table_name='LOC_VEICULO' ORDER BY COLUMN_ID
select * from loc_grupo

grant select on loc_grupo to fiapaluno
select * from pf0064.loc_grupo









declare
  cursor c_Grupo is
    select * from pf0064.loc_grupo where cd_grupo between 1 and 1000;
    
  v_Grupo   c_Grupo%rowtype;
    
begin
  open c_Grupo;
  loop
    fetch c_Grupo into v_Grupo;
    exit when c_Grupo%notfound;
    insert into loc_grupo(cd_grupo, ds_grupo, vl_locacao_diaria)
    values (v_Grupo.cd_grupo,v_Grupo.ds_grupo,v_Grupo.vl_locacao_diaria);
  end loop;
  commit;
end;













declare
  cursor c_Prop is
    select * from pf0064.loc_proprietario;
    
  cursor c_Veic is
    select * from pf0064.loc_veiculo;
    
  v_Prop    c_Prop%rowtype;
  v_Veic    c_Veic%rowtype;
begin
  open c_Prop;
  loop
    fetch c_Prop into v_Prop;
    exit when c_Prop%notfound;
    insert into loc_proprietario_2 (cd_proprietario, nome_proprietario, tp_proprietario, telefone, nr_cpf, nr_cgc, ds_email)
    values (v_Prop.cd_proprietario, v_Prop.nome_proprietario, v_Prop.tp_proprietario, v_Prop.telefone, v_Prop.nr_cpf, v_Prop.nr_cgc, v_Prop.ds_email);
  end loop;
  close c_Prop;
  
  open c_Veic;
  loop
    fetch c_Veic into v_Veic;
    exit when c_Veic%notfound;
    insert into loc_veiculo_2 (nr_placa, cd_proprietario, nr_chassis, status, tipo_automovel, km_atual, combustivel, modelo, cor, cd_grupo)
    values (v_Veic.nr_placa, v_Veic.cd_proprietario, v_Veic.nr_chassis, v_Veic.status, v_Veic.tipo_automovel, v_Veic.km_atual, v_Veic.combustivel, v_Veic.modelo, v_Veic.cor, v_Veic.cd_grupo);
  end loop;
  close c_Veic;
  commit;
end;

create table loc_veiculo_2 as select * from loc_veiculo where 1=2
create table loc_proprietario_2 as select * from loc_proprietario where 1=2

select * from loc_proprietario_2