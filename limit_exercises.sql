USE employees;
# List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

# Create a query to get the top 5 salaries and display just the employees number from the salaries table.
# 43624
# 43624
# 254466
# 47978
# 253939
SELECT emp_no
FROM employees.salaries
ORDER BY salary DESC
LIMIT 5;

# Update the previous query to find the tenth page of results.
# 36219
# 254466
# 492164
# 66793
# 492164
SELECT emp_no
FROM employees.salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;