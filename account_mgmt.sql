DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS account_types;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE account_types (
    id SERIAL PRIMARY KEY,
    account_type VARCHAR(255)
);

CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    sort_code INT,
    account_number INT UNIQUE,
    account_type_id INT REFERENCES account_types(id),
    customer_id INT REFERENCES customers(id)
);

INSERT INTO customers (name) VALUES ('Bill');
INSERT INTO account_types (account_type) VALUES ('current');
INSERT INTO account_types (account_type) VALUES ('instant access savings');
INSERT INTO account_types (account_type) VALUES ('cash ISA');
INSERT INTO accounts (sort_code, account_number, account_type_id, customer_id) VALUES (040004, 44448888, 1, 1);

SELECT * FROM accounts WHERE customer_id = 1
