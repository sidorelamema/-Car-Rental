##Query 1:  Show the reservation number and the pickup location ID of all rentals in 5/20/2015

SELECT reservation_ID AS Reservation_Number, Location_ID AS Pickup_Location
FROM reservation
WHERE Date_in = '2015-05-01';

##Query 2: Show the total amount of rentals per location ID (pick up)

SELECT Location_ID, count(VID)
FROM reservation 
GROUP BY Location_ID;

##Query 3: Show the first and the last name and the mobile phone number of those customers that have rented a car in the category that has label = 'luxury'

SELECT distinct c.FName, c.LName, c.phone
FROM customers as c, reservation as r, rental_agreement as ra, car 
WHERE c.license_number=r.license_number and r.reservation_ID=ra.reservation_ID and ra.VID=car.VID and car.car_class='Luxury';

##Query 4: Show the total amount of rentals per car's category ID and month

SELECT car.car_class, extract(year from r.current_date) "Year", extract(month from r.current_date) "Month", count(r.VID) "No. of Cars"
FROM rental_agreement as r, car
WHERE r.VID=car.VID 
GROUP BY car.car_class, year, month
ORDER BY car.car_class ASC, year ASC, month ASC;

##Query5: List the VIN and the city when it is located, if ALL the records in the Rental location table has city equal to Dallas.

SELECT VIN,city
FROM Car NATURAL JOIN Rental_location
WHERE city= ALL
 (SELECT city
 FROM rental_location
 WHERE city = 'Dallas');
 
 ##Query 6: List VID, customer’s first name and licencse number wherecustomer’s last name is Harper.
 
SELECT VID, license_number, Fname
FROM Car NATURAL JOIN Customer
WHERE license_number IN (
 SELECT license_number
 FROM Customer
 WHERE Lname= ‘Harper’);
 
 ##Query 7: List the number of cars in each location, sorted high to low (Only include locations with more than 1 car).
SELECT COUNT(VID), location_id
FROM Car
GROUP BY location_id
HAVING COUNT(location_id) > 1
ORDER BY COUNT(location_id) DESC;
 
 
