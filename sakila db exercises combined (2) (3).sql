use sakila;
-- Use basic queries to explore the tables before jumping into exercises 
select *
from actor;

select *
from film;

-- use reverse engineer to view the schema design



-- Display the first and last names of all actors from the table actor*/
select first_name, last_name
from  actor;


/* 2) You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, “Joe.” 
What is one query would you use to obtain this information? */
SELECT actor_id, first_name, last_name  
from actor
WHERE first_name = 'Joe';



/* 3) /Select specific columns from the films table that last 3 hours or longer. *
select film_id, film_title, film_length
from film
where length >= 180;



    
/* 4) Select all columns from the customer table for rows that have a last name beginning with "S" and a first name ending with "N". */
select *
from customer
where last_name like "s%" and first_name like "%N";

    
    
/* 5) Select specific columns from the payments table for payments made on or after 05/27/2005. */


    
/* 6) Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China: */
select *
from country
where country in ('afghanistan', 'bangladesh', 'china');



/* 7) Find all actors whose last name contain the letters GEN */
select *
from actor
where last_name like "%gen%";


    
/* 8) Find all actors whose last names contain the letters LI. This time, 
order the rows by last name and first name, in that order: */
select * 
from actor
where last_name like "li%" 
order by last_name, first_name;


    
/* 9) Which actors have the first name ‘Scarlett’ */
select *
from actor
where first_name like "scarlett%";



/* 10) Which actors have the last name ‘Johansson’ */
select *
from actor
where last_name like "%johansson";



/* 11) Select the following columns from the film table for rows where the description ends with the word "Boat"
and rental duration greater than 6. Title, Description, Rental Duration */
select title, description, rental_duration
from film
where description like "%boat" and rental_duration > 6;






/* 12) How many distinct actors last names are there? */
select count(distinct last_name) as last_name
from actor;




/* 13) When is ‘Academy Dinosaur’ due? */




/* 14) What is that average running time of all the films in the sakila DB? */




/* 15- Use `INNER JOIN` to display the first and last names, as well as the address, of each staff member. 
Use the tables `staff` and `address` */
select staff.first_name, staff.last_name, address.address
from staff
inner join address
on staff.address_id = address.address_id;

  
  
/* 16- Use `INNER JOIN` to display first name, last name and the amount for each staff member. 
Use tables `staff` and `payment*/
select staff.first_name, staff.first_name, payment.amount
from staff
inner join payment
on staff.staff_id = payment.staff_id;




/* 17- Use `INNER JOIN` to display first name, last name,  payment date and 
the amount for each staff member in  August of 2005. Use tables `staff` and `payment*/
select staff.



  
/* 18- Use `INNER JOIN` to display the total amount rung up by each staff member in August of 2005. 
Use tables `staff` and `payment`. */




/* 19) List each film and the number of actors who are listed for that film. Use tables `film_actor` and `film`. 
Use inner join, group by. */




/* 20) How many copies of the film `Hunchback Impossible` exist in the inventory system? 
Use tables `film` and `inventory`*/





/* 21) Using the tables `payment` and `customer` and the `INNER JOIN` command, list payments by each customer. 
List the customers alphabetically by last name */




/* 22) Using the tables `payment` and `customer` and the `INNER JOIN` command, list the total paid by each customer. 
List the customers alphabetically by last name. */






/* 23) Which actor has appeared in the most films? */
SELECT actor_id, COUNT(film_id) AS film_count
FROM film_actor
GROUP BY actor_id
ORDER BY film_count DESC
LIMIT 1;






/* 24) Find the most common actor surname from the Sakila database */




/* 25) List the last names of actors, as well as how many actors have that last name.*/




/* 26) Which last names are not repeated? (Please search for having clause for this exercises) */




/* 27) Which last names appear more than once? (Please search for having clause for this exercises) */




