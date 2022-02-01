USE employees;
# Find all the employees with the same hire date as employee 101010 using a subquery.
# WHAT WE WANT -> WHAT INFO ARE WE PULLING FROM TABLES -> first_name, last_name, hire_date
SELECT first_name, last_name, hire_date
# WHAT TABLE ARE WE LOOKING TO GET THEM FROM -> employees
FROM employees
# FILTER RESULTS TO GET CERTAIN EMPLOYEES BY -> hire_date
WHERE hire_date IN (
# WHAT WE WANT -> hire_date
    SELECT hire_date
# WHAT TABLE ARE WE LOOKING TO GET THEM FROM -> employees
    FROM employees
# FILTER RESULTS BY A CERTAIN EMPLOYEE -> emp_no
    WHERE emp_no = 101010
    );
# SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM dept_manager
# )
# LIMIT 10;
#
# 69 Rows
#
# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles
#
# Find all the current department managers that are female.
#
#
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+