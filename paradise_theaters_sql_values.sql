insert into Tickets (
movie_choice,
price, 
screen_number,
seat_number
)
values
  ('Ambulance', 12.99, 1, 101),
  ('Nightcrawler', 12.99 , 2, 202),
  ('Southpaw', 12.99, 3, 303);

insert into Movies (
genre,
film_rating,
imdb_rating
)
values
  ('Crime', 'R', 6.1),
  ('Thriller', 'R', 7.8),
  ('Sport', 'R', 7.3);


insert into paradise_pass_customer (
rewards_points,
free_tickets
)
values
  ('100', '1'),
  ('200', '2'),
  ('300', '3');


insert into CONCESSIONS (
product_name,
price,
payment_info
)
values
  ('Popcorn', 5.99, 4875),
  ('Soda', 2.50, 7890),
  ('Candy', 3.75, 3471);
 select *
 from CONCESSIONS

insert into Customer (
age,
name,
payment_info
)
values
  ('16', 'Alexa Botram', '5555-1234-5678-9012'),
  ('25', 'Sally Seashore', '4111-2222-3333-4444'),
  ('30', 'Jessica Lovesalot', '6789-5678-1234-9012');
 select *
 from Customer
