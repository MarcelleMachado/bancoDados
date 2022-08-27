-- Tabela actor

-- Todos
select * from actor;
-- Coluna específica
select first_name from actor;
-- Todos de mesmo nome
select * from actor where first_name like 'Tom';
-- Nome e sobrenome com nome iniciando com a mesma letra
select first_name,last_name from actor where first_name like 'D%';
-- Listar todos com limite
select * from actor limit 10;

-- Tabela address

-- Todos
select * from address;
-- Coluna específica
select district from address;
-- Todos do mesmo distrito
select * from address where district like 'So Paulo';
-- Endereço, distrito e cidade de todos com o mesmo id
select address, district, city_id from address where city_id = 300;
-- Listar todos com limite
select * from address limit 15;

-- Tabela category

-- Todos
select * from category;
-- Coluna específica
select "name" from category;
-- Id e nome de todos com mesmo nome
select category_id, "name" from category where "name" like 'Comedy';
-- Todos com nome iciado com a mesma letra
select * from category where "name" like 'C%';
-- Listar com limite
select * from category where category_id between 3 and 5;

-- Tabela city

-- Todos
select * from city;
-- Coluna específica
select country_id from city;
-- Todos com mesmo id de país
select * from city where country_id = 44;
-- Todos com cidade terminado com a mesmo letra
select * from city where city like '%e';
-- Listar todos com limite
select * from city where country_id between 30 and 60;
-- Listar id e cidade com limite
select city_id, city from city limit 10;

-- Tabela country

-- Todos
select * from country;
-- Coluna específica
select country from country;
-- Todos com a mesma letra
select * from country where country like 'C%';
-- Listar países com limite
select country from country limit 15;

-- Tabela customer

-- Todos
select * from customer;
-- Coluna específica
select first_name, last_name from customer;
-- Todos com primeiro nome e último nome iniciados com a mesma letra
select * from customer where first_name like 'L%' and last_name like 'W%';
-- Listar todos com limite
select * from customer limit 5;

-- Tabela film

-- Todos
select * from film;
-- Coluna específica
select title from film;
-- Listar titulo e descrição de todos com titulo iniciado com a mesma letra
select title, description from film where title like 'F%';
-- Listar id, titulo e duração com limite
select film_id, title, rental_duration from film where film_id between 50 and 80;

-- Tabela film_actor

-- Todos
select * from film_actor;
-- Coluna específica
select last_update from film_actor;
-- Todos com o mesmo id de filme
select * from film_actor where film_id = 140;
-- Listar id do filme com limite
select film_id from film_actor limit 10;
-- Listar todos com limite
select * from film_actor where film_id between 100 and 110;

-- Tabela film_category

-- Todos
select * from film_category;
-- Coluna específica
select last_update from film_category;
-- Todos com id maior ou igual a 10
select * from film_category where category_id >= 10;
-- Todos com limite
select * from film_category limit 20;

-- Tabela inventory

-- Todos
select * from inventory;
-- Coluna específica
select inventory_id, film_id from inventory;
-- Todos com id maior ou igual a 30
select * from inventory where inventory_id <= 30;
-- Listar última atualização com limite
select last_update from inventory limit 12;

-- Tabela language

-- Todos
select * from "language";
-- Coluna específica
select language_id, "name" from "language";
-- Todos com nome igual
select * from "language" where "name" like 'Italian             ';
-- Todos com nome iniciados com a mesma letra
select * from "language" where "name" like 'J%';
-- Listar nome com limite
select "name" from "language" limit 3;

-- Tabela payment

-- Todos
select * from payment;
-- Coluna específica
select payment_id, amount from payment;
-- Todos com o mesmo id cliente
select * from payment where customer_id = 349;
-- Todos com id de pagamentos acima do mesmo valor
select * from payment where payment_id > 17555;
-- Listar id de pagamento com limite
select payment_id, rental_id from payment where rental_id between 1000 and 2000;

-- Tabela rental

-- Todos
select * from rental;
-- Coluna específica
select rental_id, return_date from rental;
-- Todos com o mesmo id staff
select * from rental where staff_id = 2;
-- Listar id, id do inventario e id do cliente com limite
select rental_id, inventory_id, customer_id from rental limit 11;

-- Tabela staff

-- Todos
select * from staff;
-- Coluna específica
select first_name from staff;
-- Todos com mesmo nome
select * from staff where first_name like 'Mike';
-- Listar id e email dos emails iniciados com as mesmas 3 letras
select staff_id, email from staff where email like 'Mik%';
-- Todos com limite 0 (ou seja, nada)
select * from staff limit 0;

-- Tabela store

-- Todos
select * from store;
-- Coluna específica
select manager_staff_id from store;
-- Todos com o mesmo endereço
select * from store where address_id = 1;
-- Todos com limite
select * from store limit 1;