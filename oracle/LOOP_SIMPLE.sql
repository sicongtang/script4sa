PROCEDURE display_multiple_years (
	start_year_in IN PLS_INTEGER,
	end_year_in IN PLS_INTEGER
)
IS
	l_current_year PLS_INTEGER := start_year_in;
BEGIN
	LOOP
		--1. EXIT WHEN
		EXIT WHEN l_current_year > end_year_in;
		--2. EXIT
		IF l_current_year > end_year_in THEN
			EXIT:
		END IF;
		
		display_total_sales (l_current_year);
		l_current_year := l_current_year + 1;
	END LOOP;
END ;