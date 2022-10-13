INSERT INTO movies(ticket_id, movie_name, isGood, showing_time, rating)
VALUES (1, 'Enter the Dragon', TRUE, '12:00', 'R'),
(2, 'Enter the Dragon', TRUE, '14:00', 'R'),
(3, 'Ip Man', TRUE, '16:00', 'R'),
(4, 'The One', TRUE, '18:00', 'R');

INSERT INTO tickets(customer_id, movie_name, price, showing_time)
VALUES (2, 'Enter the Dragon', '12.50', '12:00'),
(1, 'Enter the Dragon', '12.50', '14:00'),
(1, 'Ip Man', '12.50', '16:00'),
(1, 'The One', '15.00', '18:00');

INSERT INTO customers(first_name, last_name, phone, email, isOver18)
VALUES ('Kamaree', 'Robinson', 5128643455, 'kamaree@kamaree.com', TRUE),
('Dany', 'Burke', 7035662189, 'dburke@yippy.com', TRUE);

INSERT INTO concessions(customer_id, product, size, price)
VALUES (1, 'popcorn', 'small', '8.00'),
(2, 'soft drink', 'medium', '11.50'),
(2, 'twizzlers', NULL, '6.00'),
(1, 'chocolate covered peanuts', NULL, '7.00');

SELECT * FROM movies;
SELECT * FROM concessions;
SELECT * FROM tickets;
SELECT * FROM customers;

SELECT movies.movie_name, movies.showing_time, tickets.price
FROM movies
JOIN tickets ON tickets.ticket_id = movies.ticket_id
JOIN customers ON tickets.customer_id = customers.customer_id
WHERE first_name = 'Kamaree';