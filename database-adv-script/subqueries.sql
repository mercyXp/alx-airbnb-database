-- Subquery: Properties with average rating > 4.0
SELECT * FROM Property
WHERE property_id IN (
  SELECT property_id
  FROM Review
  GROUP BY property_id
  HAVING AVG(rating) > 4.0
);

-- Correlated Subquery: Users with more than 3 bookings
SELECT u.*
FROM User u
WHERE (
  SELECT COUNT(*)
  FROM Booking b
  WHERE b.user_id = u.user_id
) > 3;
