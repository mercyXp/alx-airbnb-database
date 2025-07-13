-- INNER JOIN: Bookings with Users
SELECT 
  b.booking_id,
  b.property_id,
  b.start_date,
  b.end_date,
  b.total_price,
  u.user_id,
  u.first_name,
  u.last_name,
  u.email
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id;

-- LEFT JOIN: Properties with Reviews (even if no reviews)
SELECT 
  p.property_id,
  p.name AS property_name,
  r.review_id,
  r.rating,
  r.comment
FROM Property p
LEFT JOIN Review r ON p.property_id = r.property_id;

-- FULL OUTER JOIN: All Users and All Bookings
SELECT 
  u.user_id,
  u.email,
  b.booking_id,
  b.property_id,
  b.start_date
FROM User u
FULL OUTER JOIN Booking b ON u.user_id = b.user_id;
