CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    age INTEGER,
    customer_address VARCHAR,
    phone_num VARCHAR
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR,
    rating VARCHAR,
    runtime_mins VARCHAR,
    showtime VARCHAR
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE concessions(
    transaction_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    item_purchased VARCHAR,
    amount VARCHAR
);