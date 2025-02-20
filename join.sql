-- INNER JOIN ---> Only appear in both table
SELECT * FROM customer INNER JOIN payment ON customer.customer_id = payment.customer_id;

SELECT
    s.fare_conditions AS "Fare Conditions",
    COUNT(*) AS "Count"
FROM
    boarding_passes bp
INNER JOIN
    flights f ON bp.flight_id = f.flight_id
INNER JOIN
    seats s ON f.aircraft_code = s.aircraft_code AND bp.seat_no = s.seat_no
GROUP BY
    s.fare_conditions
ORDER BY 2 DESC;

FULL OUTER JOIN --> SHOW ALL DATA FROMM BOTH TABLES WITH NULL IF ONLY APPEAR IN A TABLE
SELECT * FROM customer c FULL OUTER JOIN  payment p ON  c.customer_id = p.customer_id;

SELECT * FROM customer c 
FULL OUTER JOIN  payment p ON  c.customer_id = p.customer_id
WHERE c.customer_id IS null;