
INSERT INTO customers (name, email, phone) VALUES
('Иван Иванов', 'ivan@example.com', '+71234567890'),
('Мария Петрова', 'maria@example.com', '+79876543210');

INSERT INTO dvds (title, genre, release_year) VALUES
('Матрица', 'Фантастика', 1999),
('Властелин колец', 'Фэнтези', 2001),
('Интерстеллар', 'Научная фантастика', 2014);


INSERT INTO rentals (customer_id, dvd_id, rental_date, return_date) VALUES
(1, 1, '2025-04-10', '2025-04-13'),
(2, 2, '2025-04-12', NULL); -- еще не вернули
