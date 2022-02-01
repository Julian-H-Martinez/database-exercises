USE employees;
# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows Expected

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
#
# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
    # titles table
    # employees table

SELECT title
FROM titles
WHERE emp_no IN(
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

# Find all the current department managers that are female.
# dept_manager
# employees

# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
    )
AND gender = 'f';