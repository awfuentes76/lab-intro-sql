-- Lab | SQL Intro:
-- In this lab, you will be using the Sakila database of movie rentals. 
-- You can follow the steps listed here to get the data locally: Sakila sample database - installation. 
-- You can work with two sql query files - sakila-schema.sql (creates the schema) + sakila-data.sql which inserts the data.
-- The ERD is pictured below - not all tables are shown, but many of the key fields you will be using are visible:

-- 1. Use sakila database.
USE sakila;

-- 2. Get all the data from tables actor, film and customer.
SELECT
	*
FROM sakila.actor;

use sakila;
SELECT
	*
FROM sakila.film;

SELECT
	*
FROM sakila.customer;

-- 3. Get film titles.
SELECT title
FROM film;

-- 4. Get unique list of film languages under the alias language. 
-- Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
SELECT DISTINCT language_id AS language
FROM film;

-- 5.1. Find out how many stores does the company have?
SELECT 
	*
FROM sakila.store;

-- 5.2 Find out how many employees staff does the company have?
SELECT COUNT(DISTINCT staff_id) AS numb_employees
FROM staff;

-- 5.3 Return a list of employee first names only?
SELECT DISTINCT first_name
FROM staff;
