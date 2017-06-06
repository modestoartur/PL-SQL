-- Habilitar o uso do dbms_output
set serveroutput on;

-- Declaracao de variaveis
declare
	v_idade	number;
begin
	v_idade:='zzzzz';
	--Obrigatorio 
	exception
		when others then
			raise_application_error(-20001,'Erro desconhecido =>'|| sqlerrm);
end;
-- 

--ESTRUTURA DE COMANDO
declare
	v_erro_numero_par	exception;
begin
	for x in 1..10 loop
		begin
			if mod(x,2)=0 then	
				raise v_erro_numero_par;
			end if;
		-- exception criada
		exception
			when v_erro_numero_par then
				dbms_output.put_line (x|| ' é par');
				raise_application_error (-20999,' Erro de negócio.');
		end;
	end loop;

--Obrigatorio 
exception
	when others then	
		raise_application_error(-20001,'Abortou o programa pelo erro'
		||sqlcode);
end;