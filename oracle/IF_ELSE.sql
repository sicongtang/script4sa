BEGIN
	IF salary BETWEEN 10000 AND 20000 THEN
		give_bonus(employee_id, 1500);	
	ELSIF salary > 20000 AND salary <= 40000 THEN
		give_bonus(employee_id, 1000);
	ELSIF salary > 40000 OR salary = 50000 THEN
		give_bonus(employee_id, 500);
	ELSE
		-- Do nothing, remember null!!!
		NULL; 
	END IF;
END