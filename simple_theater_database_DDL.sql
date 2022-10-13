CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    phone NUMERIC(10,0),
    email VARCHAR(100),
    isOver18 BOOLEAN
);

CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    product VARCHAR(50),
    size VARCHAR(10),
    price NUMERIC(6,2),
    date_time TIMESTAMP(0),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    movie_name VARCHAR(100),
    price NUMERIC(6,2),
    showing_time TIME,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    movie_name VARCHAR(100),
    isGood BOOLEAN,
    showing_time TIME NOT NULL,
    rating VARCHAR(5),
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);