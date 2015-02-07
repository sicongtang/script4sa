-- 1. not contain using into clause
EXECUTE IMMEDIATE 'CREATE INDEX emp_ind_1 on employees (salary, hire_date)';

-- 2. contain using
EXECUTE IMMEDIATE 'UPDATE' || l_table || ' SET salary =: salary WHERE employee_id =: employee_id'
USING 10000, 1506;

-- 3. 
EXECUTE IMMEDIATE 'SELECT last_name, salary FROM employees WHERE department_id =: dept_id'
INTO l_last_name, l_salary
USING 10;

-- 4. rarely use
OPEN l_cursor FOR 'SELECT ' || l_column_list || 'FROM employee';

