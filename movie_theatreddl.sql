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
    runtime_mins VARCHAR
);

ALTER TABLE movies
ADD COLUMN showtime VARCHAR;

CREATE TABLE concessions(
    transaction_id SERIAL PRIMARY KEY,
    customer_id VARCHAR,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    item_purchased VARCHAR,
    amount VARCHAR
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    movie_title VARCHAR,
    FOREIGN KEY (movie_title) REFERENCES movies(movie_title),
    full_name VARCHAR,
    FOREIGN KEY (full_name) REFERENCES customer(full_name)
);

