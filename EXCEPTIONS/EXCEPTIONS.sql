set serveroutput on;
declare
	v_idade	number;
begin
	v_idade:='zzzzz';
exception
	when others then
		raise_application_error(-20001,'Erro desconhecido =>'||
		sqlerrm);
end;


declare
	v_erro_numero_par	exception;
begin
	for x in 1..10 loop
		begin
			if mod(x,2)=0 then	
				raise v_erro_numero_par;
			end if;
		exception
			when v_erro_numero_par then
				dbms_output.put_line (x|| ' é par');
				raise_application_error (-20999,' Erro de negócio.');
		end;
	end loop;
exception
	when others then	
		raise_application_error(-20001,'Abortou o programa pelo erro'
		||sqlcode);
end;


