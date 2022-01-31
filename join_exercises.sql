USE employees;
# write a query that shows each department along with the name of the current manager for that department.
# +--------------------+--------------------+
# | Department Name    | Department Manager |
# +--------------------+--------------------+
# | Customer Service   | Yuchang Weedman    |
# | Development        | Leon DasSarma      |
# | Finance            | Isamu Legleitner   |
# | Human Resources    | Karsten Sigstam    |
# | Marketing          | Vishwani Minakawa  |
# | Production         | Oscar Ghazalie     |
# | Quality Management | Dung Pesch         |
# | Research           | Hilary Kambil      |
# | Sales              | Hauke Zhang        |
# +--------------------+--------------------+
# what do i want -> departments with full name of current manager
SELECT dept.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
    JOIN dept_manager AS dm
        ON e.emp_no = dm.emp_no
    JOIN departments as dept
        ON dept.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY `Department Name`;

# Find the name of all departments currently managed by women.
#
# +------------------+--------------------+
# | Department Name  | Department Manager |
# +------------------+--------------------+
# | Development      | Leon DasSarma      |
# | Finance          | Isamu Legleitner   |
# | Human Resources  | Karsten Sigstam    |
# | Research         | Hilary Kambil      |
# +------------------+--------------------+
SELECT dept.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
    JOIN dept_manager AS dm
        ON e.emp_no = dm.emp_no
    JOIN departments AS dept
        ON dept.dept_no = dm.dept_no
    JOIN employees AS emp
        ON emp.emp_no = dm.emp_no
WHERE emp.gender = 'f'
    AND dm.to_date = '9999-01-01'
ORDER BY 'Department Name';

# Find the current titles of employees currently working in the Customer Service department.
# +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+
SELECT title AS t2,
       COUNT(t2.title) AS Total
FROM employees as e
    JOIN titles AS t2
        ON e.emp_no = t2.emp_no
    JOIN dept_emp AS de
        ON e.emp_no = de.emp_no
    JOIN departments AS d
     ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01'
    AND d.dept_name = 'Customer Service'
    AND t2.to_date = '9999-01-01'
GROUP BY t2.title
ORDER BY Total DESC;

# Find the current salary of all current managers.
# +--------------------+--------------------+--------+
# | Department Name    | Department Manager | Salary |
# +--------------------+--------------------+--------+
# | Customer Service   | Yuchang Weedman    |  58745 |
# | Development        | Leon DasSarma      |  74510 |
# | Finance            | Isamu Legleitner   |  83457 |
# | Human Resources    | Karsten Sigstam    |  65400 |
# | Marketing          | Vishwani Minakawa  | 106491 |
# | Production         | Oscar Ghazalie     |  56654 |
# | Quality Management | Dung Pesch         |  72876 |
# | Research           | Hilary Kambil      |  79393 |
# | Sales              | Hauke Zhang        | 101987 |
# +--------------------+--------------------+--------+
SELECT dept.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       sal.salary AS Salary
FROM employees AS e
    JOIN dept_manager AS dm
        ON e.emp_no = dm.emp_no
    JOIN departments AS dept
        ON dept.dept_no = dm.dept_no
    JOIN salaries AS sal
        ON e.emp_no = sal.emp_no
WHERE sal.to_date = '9999-01-01'
    AND dm.to_date = '9999-01-01';

