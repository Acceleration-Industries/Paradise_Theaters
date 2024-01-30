CREATE TABLE Tickets (
  ticket_number SERIAL PRIMARY KEY,
  movie_choice VARCHAR(50),
  price NUMERIC(5,2),
  screen_number NUMERIC(15),
  seat_number NUMERIC(5,0)
);

CREATE INDEX Tickets_Key ON Tickets (movie_choice, price, screen_number, seat_number);

CREATE TABLE Movies (
  movie_menu SERIAL PRIMARY KEY,
  genre VARCHAR(20),
  film_rating VARCHAR(10),
  imdb_rating NUMERIC(3,1),
  CONSTRAINT FK_Movies_ticket_number
    FOREIGN KEY (movie_menu) REFERENCES Tickets(ticket_number)
);

CREATE INDEX Movies_Key ON Movies (genre, film_rating, imdb_rating);

CREATE TABLE paradise_pass_customer (
  paradise_pass_id SERIAL PRIMARY KEY,
  rewards_points VARCHAR(10),
  free_tickets VARCHAR(10),
  CONSTRAINT FK_paradise_pass_customer_ticket_number
    FOREIGN KEY (paradise_pass_id) REFERENCES Tickets(ticket_number)
);

CREATE INDEX paradise_pass_customer_Key ON paradise_pass_customer (rewards_points, free_tickets);

CREATE TABLE CONCESSIONS (
  transaction_id SERIAL PRIMARY KEY,
  product_name VARCHAR(50),
  price NUMERIC(5,2),
  payment_info NUMERIC(15)
);

CREATE INDEX CONCESSIONS_Key ON CONCESSIONS (product_name, price, payment_info);

CREATE TABLE Customer (
  customer_number SERIAL PRIMARY KEY,
  age VARCHAR(10),
  name VARCHAR(30),
  payment_info VARCHAR(30),
  CONSTRAINT FK_Customer_ticket_number
    FOREIGN KEY (customer_number) REFERENCES Tickets(ticket_number)
);

CREATE INDEX Customer_Key ON Customer (age, name, payment_info);
