PROCEDURE add_company (id_in IN company.ID%TYPE, name_in IN company.name%TYPE, type_id_in IN company.type_id%TYPE)
IS
BEGIN
	INSERT INTO company (ID, name, type_id) VALUES (id_in, name_in, type_id_in);
EXCEPTION
	WHEN OTHERS
	THEN
		DECLARE
			l_errcode PLS_INEGER := SQLCODE;
		BEGIN
			CASE l_errcode
			WHEN -1 THEN
				DBMS_OUTPUT.put_line('');
				RAISE;
			WHEN -2291 THEN
				DBMS_OUTPUT.put_line('');
				RAISE;
			ELSE
				RAISE;
			END CASE;
		END; 
END;