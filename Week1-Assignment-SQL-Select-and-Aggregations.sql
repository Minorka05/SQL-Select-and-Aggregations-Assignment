-- Assignment: SQL Select and Aggregations
-- Minorka Hassell

-- question1
 SELECT DISTINCT flight, origin, dest, distance AS 'furthest distance'
 FROM flights
 WHERE distance IN (select max(distance) from flights);
 
 -- question2
 SELECT engines, MAX(seats) FROM planes GROUP BY engines;
 
 -- question3
 SELECT COUNT(*) FROM flights;
 
 -- question4
 SELECT carrier, COUNT(*) FROM flights GROUP BY carrier;
 
 -- question5
 SELECT carrier, COUNT(*) AS FlightCount FROM flights GROUP BY carrier ORDER BY FlightCount DESC;
 
 -- question6 
 SELECT carrier, COUNT(*) AS FlightCount FROM flights GROUP BY carrier ORDER BY FlightCount DESC LIMIT 5;
 
 -- question7
 SELECT carrier, COUNT(*) AS FlightCount FROM flights WHERE distance >=1000 GROUP BY carrier ORDER BY FlightCount DESC LIMIT 5;
 
 -- quetion8
  SELECT carrier, COUNT(*) as FlightCount FROM flights WHERE MONTH = 10 GROUP BY carrier ORDER BY FlightCount DESC LIMIT 5;
  