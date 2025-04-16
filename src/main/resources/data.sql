DROP TABLE IF EXISTS rentals;
DROP TABLE IF EXISTS dvds;
DROP TABLE IF EXISTS customers;


CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE dvds (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(100),
    release_year INT
);

CREATE TABLE rentals (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    dvd_id INT REFERENCES dvds(id),
    rental_date DATE,
    return_date DATE
);

INSERT INTO customers (name, email, phone) VALUES
('Иван Иванов', 'ivan1@example.com', '+71234567890'),
('Мария Петрова', 'maria1@example.com', '+79876543210'),
('Алексей Смирнов', 'aleksey1@example.com', '+79123456789'),
('Елена Кузнецова', 'elena1@example.com', '+79012345678'),
('Дмитрий Васильев', 'dmitriy1@example.com', '+79987654321'),
('Татьяна Белова', 'tatiana1@example.com', '+79876543212'),
('Сергей Федоров', 'sergey1@example.com', '+79771234567'),
('Наталья Соколова', 'natalya1@example.com', '+79012347890'),
('Петр Сидоров', 'petr1@example.com', '+79123456700'),
('Анастасия Морозова', 'anastasia1@example.com', '+79012347654'),
('Кирилл Орлов', 'kirill1@example.com', '+79123456890'),
('Ольга Никитина', 'olga1@example.com', '+79991234567'),
('Виктор Григорьев', 'victor1@example.com', '+79087654321'),
('Ирина Крылова', 'irina1@example.com', '+79123457901'),
('Михаил Новиков', 'mikhail1@example.com', '+79234567890'),
('Юлия Романова', 'yulia1@example.com', '+79123456123'),
('Роман Ковалев', 'roman1@example.com', '+79778901234'),
('Лариса Дьякова', 'larisa1@example.com', '+79012345987'),
('Константин Павлов', 'konstantin1@example.com', '+79996543210'),
('Марина Захарова', 'marina1@example.com', '+79876543321'),
('Андрей Дорофеев', 'andrey1@example.com', '+79124567890'),
('Юрий Фомин', 'yuriy1@example.com', '+79014567890'),
('Валентина Шарова', 'valentina1@example.com', '+79123456156'),
('Станислав Карпов', 'stanislav1@example.com', '+79994561234'),
('Вера Морозова', 'vera1@example.com', '+79012346789'),
('Владимир Ушаков', 'vladimir1@example.com', '+79234567012'),
('Екатерина Давыдова', 'ekaterina1@example.com', '+79012349876'),
('Артем Зуев', 'artem1@example.com', '+79771234987'),
('Алена Макарова', 'alena1@example.com', '+79123456755'),
('Игорь Борисов', 'igor1@example.com', '+79012345600'),
('Олеся Чернова', 'olesya1@example.com', '+79999887766'),
('Александр Колесников', 'alexandr1@example.com', '+79876543244'),
('Дарина Седова', 'darina1@example.com', '+79234567810'),
('Геннадий Петров', 'gennadiy1@example.com', '+79123457423'),
('Анатолий Белов', 'anatoliy1@example.com', '+79012345899'),
('Николай Самсонов', 'nikolay1@example.com', '+79123457899'),
('Евгения Степанова', 'evgeniya1@example.com', '+79876543255'),
('Леонид Гусев', 'leonid1@example.com', '+79123456987'),
('Ксения Матвеева', 'kseniya1@example.com', '+79998765432'),
('Тимофей Фролов', 'timofey1@example.com', '+79012345921'),
('Маргарита Шевченко', 'margarita1@example.com', '+79771234901'),
('Тимур Поляков', 'timur1@example.com', '+79123456234'),
('Евгений Кузьмин', 'evgeniy1@example.com', '+79012345321'),
('Вероника Михайлова', 'veronika1@example.com', '+79996543321'),
('Денис Савельев', 'denis1@example.com', '+79876543432'),
('Светлана Головина', 'svetlana1@example.com', '+79123457867'),
('Артур Куликов', 'artur1@example.com', '+79012347268'),
('Ольга Кириллова', 'olga2@example.com', '+79123456145'),
('Денис Федоров', 'denis2@example.com', '+79234567834'),
('Павел Лавров', 'pavel1@example.com', '+79012347001'),
('Яна Калашникова', 'yana1@example.com', '+79771234956'),
('Анна Гончарова', 'anna1@example.com', '+79012346700');


INSERT INTO dvds (title, genre, release_year) VALUES
('Титаник', 'Драма', 1997),
('Начало', 'Научная фантастика', 2010),
('Матрица', 'Научная фантастика', 1999),
('Темный рыцарь', 'Экшн', 2008),
('Побег из Шоушенка', 'Драма', 1994),
('Семь', 'Триллер', 1995),
('Шерлок Холмс', 'Детектив', 2009),
('Интерстеллар', 'Научная фантастика', 2014),
('Криминальное чтиво', 'Криминал', 1994),
('Властелин колец: Братство кольца', 'Фэнтези', 2001),
('Гарри Поттер и философский камень', 'Фэнтези', 2001),
('Гладиатор', 'Драма', 2000),
('Аватар', 'Научная фантастика', 2009),
('Темный рыцарь: Возрождение легенды', 'Экшн', 2012),
('Бойцовский клуб', 'Драма', 1999),
('Зеленая миля', 'Драма', 1999),
('Король Лев', 'Мультфильм', 1994),
('Челюсти', 'Ужасы', 1975),
('В поисках Немо', 'Мультфильм', 2003),
('Трансформеры', 'Экшн', 2007),
('Парк Юрского периода', 'Научная фантастика', 1993),
('Звездные войны: Эпизод IV', 'Фантастика', 1977),
('День независимости', 'Научная фантастика', 1996),
('Революционный путь', 'Драма', 2008),
('Время', 'Научная фантастика', 2011),
('Реквием по мечте', 'Драма', 2000),
('Человек-паук', 'Экшн', 2002),
('Крестный отец', 'Криминал', 1972),
('Сияние', 'Ужасы', 1980),
('Планета обезьян', 'Научная фантастика', 1968),
('Волк с Уолл-стрит', 'Криминал', 2013),
('Игра на понижение', 'Драма', 2015),
('Зодиак', 'Триллер', 2007),
('Призрак оперы', 'Мюзикл', 2004),
('Остаться в живых', 'Драма', 2013),
('Матрица: Перезагрузка', 'Научная фантастика', 2003),
('Леон', 'Криминал', 1994),
('Список Шиндлера', 'Драма', 1993),
('Человек-слон', 'Драма', 1980),
('Ангелы и демоны', 'Триллер', 2009),
('Блестящие', 'Криминал', 1996),
('Молчание ягнят', 'Триллер', 1991),
('Борн идентификация', 'Экшн', 2002),
('Реквием по мечте', 'Драма', 2000),
('Храброе сердце', 'Драма', 1995),
('Знакомьтесь, Джо Блэк', 'Драма', 1998),
('В поисках капитана Гранта', 'Приключения', 1969),
('Невероятная жизнь Уолтера Митти', 'Комедия', 2013),
('Викинг', 'Исторический', 2016),
('Отель Гранд Будапешт', 'Комедия', 2014),
('Достучаться до небес', 'Драма', 1997),
('Мечтатели', 'Драма', 2003),
('Ночи на Земле', 'Драма', 1991),
('Секреты Лос-Анджелеса', 'Криминал', 1997),
('Терминатор 2', 'Научная фантастика', 1991),
('Гроза', 'Драма', 1980),
('Ариэль', 'Драма', 1988),
('Мистер Бин', 'Комедия', 1997),
('Джеймс Бонд: Голдфингер', 'Экшн', 1964),
('День сурка', 'Комедия', 1993),
('Гарри Поттер и тайная комната', 'Фэнтези', 2002),
('Призрак', 'Драма', 1990),
('Вампиры средней полосы', 'Фэнтези', 2005),
('Достучаться до небес', 'Драма', 1997),
('Последний самурай', 'Военный', 2003),
('Путь кардинала', 'Драма', 1988);


INSERT INTO rentals (customer_id, dvd_id, rental_date, return_date) VALUES
(1, 1, '2025-04-01', '2025-04-05'),
(1, 2, '2025-04-01', '2025-04-06'),
(2, 3, '2025-04-01', '2025-04-07'),
(3, 4, '2025-04-02', '2025-04-08'),
(4, 5, '2025-04-03', '2025-04-09'),
(5, 6, '2025-04-04', '2025-04-10'),
(6, 7, '2025-04-05', '2025-04-11'),
(7, 8, '2025-04-06', '2025-04-12'),
(8, 9, '2025-04-07', '2025-04-13'),
(9, 10, '2025-04-08', '2025-04-14'),
(10, 11, '2025-04-09', '2025-04-15'),
(11, 12, '2025-04-10', '2025-04-16'),
(12, 13, '2025-04-11', '2025-04-17'),
(13, 14, '2025-04-12', '2025-04-18'),
(14, 15, '2025-04-13', '2025-04-19'),
(15, 16, '2025-04-14', '2025-04-20'),
(16, 17, '2025-04-15', '2025-04-21'),
(17, 18, '2025-04-16', '2025-04-22'),
(18, 19, '2025-04-17', '2025-04-23'),
(19, 20, '2025-04-18', '2025-04-24'),
(20, 21, '2025-04-19', '2025-04-25'),
(21, 22, '2025-04-20', '2025-04-26'),
(22, 23, '2025-04-21', '2025-04-27'),
(23, 24, '2025-04-22', '2025-04-28'),
(24, 25, '2025-04-23', '2025-04-29'),
(25, 26, '2025-04-24', '2025-04-30'),
(26, 27, '2025-04-25', '2025-05-01'),
(27, 28, '2025-04-26', '2025-05-02'),
(28, 29, '2025-04-27', '2025-05-03'),
(29, 30, '2025-04-28', '2025-05-04'),
(30, 31, '2025-04-29', '2025-05-05'),
(31, 32, '2025-04-30', '2025-05-06'),
(32, 33, '2025-05-01', '2025-05-07'),
(33, 34, '2025-05-02', '2025-05-08'),
(34, 35, '2025-05-03', '2025-05-09'),
(35, 36, '2025-05-04', '2025-05-10'),
(36, 37, '2025-05-05', '2025-05-11'),
(37, 38, '2025-05-06', '2025-05-12'),
(38, 39, '2025-05-07', '2025-05-13'),
(39, 40, '2025-05-08', '2025-05-14'),
(40, 41, '2025-05-09', '2025-05-15'),
(41, 42, '2025-05-10', '2025-05-16'),
(42, 43, '2025-05-11', '2025-05-17'),
(43, 44, '2025-05-12', '2025-05-18'),
(44, 45, '2025-05-13', '2025-05-19'),
(45, 46, '2025-05-14', '2025-05-20'),
(46, 47, '2025-05-15', '2025-05-21'),
(47, 48, '2025-05-16', '2025-05-22'),
(48, 49, '2025-05-17', '2025-05-23'),
(49, 50, '2025-05-18', '2025-05-24'),
(50, 1, '2025-05-19', '2025-05-25'),
(1, 3, '2025-05-20', '2025-05-26'),
(2, 5, '2025-05-21', '2025-05-27'),
(3, 7, '2025-05-22', '2025-05-28'),
(4, 9, '2025-05-23', '2025-05-29'),
(5, 11, '2025-05-24', '2025-05-30'),
(6, 13, '2025-05-25', '2025-06-01'),
(7, 15, '2025-05-26', '2025-06-02'),
(8, 17, '2025-05-27', '2025-06-03'),
(9, 19, '2025-05-28', '2025-06-04'),
(10, 21, '2025-05-29', '2025-06-05'),
(11, 23, '2025-05-30', '2025-06-06'),
(12, 25, '2025-05-31', '2025-06-07'),
(13, 27, '2025-06-01', '2025-06-08'),
(14, 29, '2025-06-02', '2025-06-09'),
(15, 31, '2025-06-03', '2025-06-10'),
(16, 33, '2025-06-04', '2025-06-11'),
(17, 35, '2025-06-05', '2025-06-12'),
(18, 37, '2025-06-06', '2025-06-13'),
(19, 39, '2025-06-07', '2025-06-14'),
(20, 41, '2025-06-08', '2025-06-15'),
(21, 43, '2025-06-09', '2025-06-16'),
(22, 45, '2025-06-10', '2025-06-17'),
(23, 47, '2025-06-11', '2025-06-18'),
(24, 49, '2025-06-12', '2025-06-19'),
(25, 1, '2025-06-13', '2025-06-20'),
(26, 3, '2025-06-14', '2025-06-21'),
(27, 5, '2025-06-15', '2025-06-22'),
(28, 7, '2025-06-16', '2025-06-23'),
(29, 9, '2025-06-17', '2025-06-24'),
(30, 11, '2025-06-18', '2025-06-25'),
(31, 13, '2025-06-19', '2025-06-26'),
(32, 15, '2025-06-20', '2025-06-27'),
(33, 17, '2025-06-21', '2025-06-28'),
(34, 19, '2025-06-22', '2025-06-29'),
(35, 21, '2025-06-23', '2025-06-30'),
(36, 23, '2025-06-24', '2025-07-01'),
(37, 25, '2025-06-25', '2025-07-02'),
(38, 27, '2025-06-26', '2025-07-03'),
(39, 29, '2025-06-27', '2025-07-04');
