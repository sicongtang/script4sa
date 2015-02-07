PACKAGE favorites_pkg
IS
	c_chocolate CONSTANT PLS_INTEGER := 16;
	c_strawberry CONSTANT PLS_INTEGER := 29;
	
	TYPE codes_nt IS TABLE OF INTEGER;
	
	my_favorites codes_nt;
	
	TYPE fav_info_rct IS REF CURSOR RETURN favorites%ROWTYPE;
	
	PROCEDURE show_favorities (list_int IN codes_nt);
	
	FUNCTION most_popular RETURN fav_info_rct;

END favorites_pkg;