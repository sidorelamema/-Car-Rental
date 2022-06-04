# Car Rental System Design 

# Description

CS631-RentACar  wishes  to  implement  a  database  to  control  all  aspects  of  its  operations, 
including  tracking  car  inventories,  rental  contracts,  and  billing.  The  following  statements  of 
business rules and relationships are used to construct a relational model:
1-	 Cars are assigned to locations, and each location has one or more cars. 
2-	A customer who wants to rent a car makes a reservation. The  reservation is made for 
pickup of a particular class of car at a specific location. The same customer may make 
more than one reservation over time. 
3-	In  the normal course of  events,  a  reservation  results  in  a  rental  agreement,  which  is 
established when the customer comes to the location to pick up the car. However, this is 
not  always  the  case,  since  a  reservation  may  be  canceled  or  the  customer  with  a 
reservation may not show up.
4-	A rental agreement is for a specific vehicle. At any point in time, a specific vehicle may 
have participated in zero, one, or more rental agreements.

# Deliverables:

1.	Use the Entity-Relationship Diagram (ERD) to model entities, relationships, attributes, cardinalities, and all necessary constraints. Use any tool you like to draw the ERD.
2.	Create the relational schema in ORACLE/SQLServer and insert a few records into the tables to test your queries below. You will have to hand in the CREATE TABLE statements.
3.	State that this relation is in 3NF. If a relation fails to meet the definition of a third normal form (e.g., it contains a partial-key dependency or it contains a transitive dependency), then split the relation into new relations. Begin the normalization process from the beginning with each of these new relations. 
4.	Write SQL code and test it to your data for the following queries: 

       1 contains GROUP BY  
       1 contains GROUP BY and HAVING  
       1 contains nested query with ALL  
       1 contains nested query with IN
5.  The application program design should have at least three web-pages to connect to the database. You may choose any language and platform for your application program. 


