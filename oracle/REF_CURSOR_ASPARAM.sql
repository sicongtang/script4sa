DECLARE
BEGIN
	TYPE curvar_type IS REF CURSOR RETURN company%ROWTYPE;
	PROCEDURE open_query (curvar_out OUT curvar_type)
	IS
		local_cuur curvar_type;
	BEGIN
		OPEN local_cuur FOR SELECT * FROM company;
		curvar_out := local_cur;
	END;
END;