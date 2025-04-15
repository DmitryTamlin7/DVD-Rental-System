DROP TABLE IF EXISTS customers CASCADE;
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20)
);

DROP TABLE IF EXISTS dvds CASCADE;
CREATE TABLE dvds (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_year INT
);

DROP TABLE IF EXISTS rentals CASCADE;
CREATE TABLE rentals (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    dvd_id INT NOT NULL,
    rental_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (dvd_id) REFERENCES dvds(id)
);
