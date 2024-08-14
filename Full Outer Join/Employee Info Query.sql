SELECT 
  employees.name AS employee_name,
  employees.role AS employee_role,
  departments.name AS department_name
FROM
  `silent-complex-430821-f3.employee_data.employees` AS employees
FULL OUTER JOIN
  `silent-complex-430821-f3.employee_data.departments` AS departments
  ON employees.department_id = departments.department_id;