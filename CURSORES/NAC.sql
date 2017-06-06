-- Você foi contratado para desenvolver programa de transferência de dados da tabela pf0064.LOC_ITEM_LOCACAO para a estrutura abaixo:

-- CREATE TABLE LOC_ITEM_LOCACAO_STG (
--        DT_RETIRADA          DATE 			NULL,
--        NR_ITEM              NUMBER(5) 		NOT NULL,
--        DT_ENTREGA           DATE 			NULL,
--        QT_DIAS              NUMBER(3) 		NULL,
--        VL_LOCACAO           NUMBER(11,2) 	NULL,
--        NR_PLACA             VARCHAR2(7) 	NOT NULL,
--        VL_TOTAL             NUMBER(11,2) 	NULL,
--        NR_PEDIDO            NUMBER(8) 		NOT NULL,
--        DT_CARGA		    DATE		NOT NULL
-- );

-- ALTER TABLE LOC_ITEM_LOCACAO_STG
--        ADD CONSTRAINT PK_LOC_ITEM_LOCACAO2 PRIMARY KEY (NR_PEDIDO, NR_ITEM);



-- Utilizando o recurso de cursores explícitos, escreva um bloco em PL/SQL que realize a transferência de todos os dados e popule a coluna DT_CARGA com a data da execução  do programa.


declare

cursor c_Item_Locacao is
  select * from pf0064.LOC_ITEM_LOCACAO;
  
  v_Item_Locacao c_Item_Locacao%rowtype;

begin

open c_Item_Locacao;
  loop
    fetch c_Item_Locacao into v_Item_Locacao;
    exit when c_Item_Locacao%notfound;
    insert into LOC_ITEM_LOCACAO_STG(DT_RETIRADA,NR_ITEM,DT_ENTREGA,QT_DIAS,VL_LOCACAO,NR_PLACA,VL_TOTAL,NR_PEDIDO,DT_CARGA)
    values(v_Item_Locacao.DT_RETIRADA,v_Item_Locacao.NR_ITEM,v_Item_Locacao.DT_ENTREGA,v_Item_Locacao.QT_DIAS,v_Item_Locacao.VL_LOCACAO,v_Item_Locacao.NR_PLACA,
          v_Item_Locacao.VL_TOTAL,v_Item_Locacao.NR_PEDIDO,sysdate);
  end loop;
  close c_Item_Locacao;
  commit;
end;