/*show databases;*/

CREATE DATABASE IF NOT EXISTS msisdb;
USE msisdb;

DROP TABLE IF EXISTS book;
CREATE TABLE book (
	id int PRIMARY KEY AUTO_INCREMENT ,
    bookname varchar(24) UNIQUE NOT NULL,
    author varchar(48),
    yearpub numeric(20),
    publisher varchar(48),
    pgcount numeric (10),
    mrsp numeric(10),
    genre varchar(20)
);

INSERT INTO book (id, bookname, author, yearpub, publisher, pgcount, mrsp, genre ) VALUES 
(1, 'The Handmaids Tale', 'Margaret Atwood', 1985, 'McClelland & Stewart', 311, 7.99, 'Dystopian'),
(2, 'Pride and Prejudice', 'Jane Austen', 1813, 'Tegerton, White Hall', 480, 6.99, 'Romance'),
(3, 'The War of the Worlds', 'H.G.Wells', 1989, 'Independently Published', 120, 6.98, 'Sci-Fi'),
(4, 'All the light We Cannot See', 'Anthony Doerr', 2017, 'Scribner', 544, 8.53, 'Historical Fiction'),
(5, '1984', 'George Orwell', 1961, 'Signet Classic', 328, 7.45, 'Dystopian'),
(6, 'To Kill a Mockingbird', 'Harper Lee', 1985, 'Arrow Books', 309, 9.99, 'Southern Gothic fiction');

-- SELECT * FROM students;

-- DROP TABLE IF EXISTS offer;
-- CREATE TABLE offer (
-- 	id int PRIMARY KEY AUTO_INCREMENT,
--     studentId int NOT NULL REFERENCES student(id) 
--         ON DELETE CASCADE ON UPDATE CASCADE,
-- 	companyName VARCHAR(24) NOT NULL DEFAULT '',
--     salary int NOT NULL DEFAULT 0,
--     bonus int NOT NULL DEFAULT 0,
-- 	offerDate date NOT NULL DEFAULT(CURRENT_DATE)
-- );

-- -- Student 1 has no offers, Student 2 has 3 offers, Student 3 has one offer
-- INSERT INTO offer(id, studentId, companyName, salary, bonus, offerDate) VALUES
--   (1, 2, 'KPMG', 95000, 7000, '2021-09-30'),
--   (2, 2, 'Deloitte Digital', 94000, 12000, '2021-10-03'),
--   (3, 2, 'IU, ISGP', 54000, 0, '2021-10-05'),
--   (4, 3, 'Amazon', 122000, 11000, '2021-10-15')
-- ;

-- COMMIT;

-- -- CREATE USER 'msisreader'@'%' IDENTIFIED BY 'msisreadonly';
-- -- GRANT SELECT ON * . * TO 'msisreader'@'%';