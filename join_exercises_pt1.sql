USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', null),
       ('willie', 'willie@example.com', 2),
       ('hank', 'hank@example.com', 2),
       ('bruce', 'bruce@example.com', 2);

# Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson.
# Before you run each query, guess the expected number of results.
# 4 Results should display
# only 3 results displayed
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;
# should return 4 results because it's pulling from the "Left" table which is users table in this example
# it does
SELECT users.name as user_name, roles.name as role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;
# Should return 6 results
# RIGHT JOIN is rarely used cause you can switch table sides to achieve the same outcome
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries.
# Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role.
# Hint: You will also need to use GROUP BY in the query.
SELECT roles.name AS role_name, COUNT(role_id) 'number of users'
FROM users
RIGHT JOIN roles on users.role_id = roles.id
GROUP BY roles.name;
