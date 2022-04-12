DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS accounts;

CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    account_type VARCHAR(255)
);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    account_id INT REFERENCES accounts(id)
);

INSERT INTO accounts (account_type) VALUES ('business');
INSERT INTO customers (name, account_id) VALUES ('Bill', 1);

SELECT * FROM customers
