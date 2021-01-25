USE sakila;

DROP TABLE rental_may;

CREATE TABLE rental_may LIKE rental;
INSERT INTO rental_may SELECT * FROM rental
WHERE rental_date regexp '-05-';
#return 1156
#other date option. SELECT * FROM rental where MONTH(rental_date) = 5 and MONTH(return_date) =5;

DROP TABLE rental_june;

##Q3 Create a table rentals_june to store the data from rental table with information for the month of June.
##Q4 Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
CREATE TABLE rental_june LIKE rental;
INSERT INTO rental_june SELECT * FROM rental
WHERE rental_date regexp '-06-';


##Q5 Check the number of rentals for each customer for May.
SELECT *, count(rental_id) AS N_rental_May FROM rental_may
GROUP BY customer_id
ORDER BY N_rental_May DESC;


##Q6 Check the number of rentals for each customer for June.
SELECT *, count(rental_id) AS N_rental_June FROM rental_june
GROUP BY customer_id
ORDER BY N_rental_June DESC;


##Q7 Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:

##Q8 Check the number of rentals for each customer for May

##Q9 Check the number of rentals for each customer for June

#Hint: You can store the results from the two queries in two separate dataframes.

#10 Write a function that checks if customer borrowed more or less books in the month of June as compared to May.
#Hint: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes. Here is a link to the documentation for the merge function.