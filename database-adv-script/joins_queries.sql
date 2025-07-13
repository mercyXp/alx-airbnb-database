-- 1. INNER JOIN: Bookings and Users
SELECT 
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM 
    Booking b
INNER JOIN 
    User u ON b.user_id = u.user_id
ORDER BY 
    b.start_date DESC;


-- 2. LEFT JOIN: Properties and Reviews
SELECT 
    p.property_id,
    p.name AS property_name,
    r.review_id,
    r.rating,
    r.comment
FROM 
    Property p
LEFT JOIN 
    Review r ON p.property_id = r.property_id
ORDER BY 
    p.property_id, r.created_at DESC;


-- 3. FULL OUTER JOIN: All Users and Bookings
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.start_date,
    b.end_date
FROM 
    User u
FULL OUTER JOIN 
    Booking b ON u.user_id = b.user_id
ORDER BY 
    u.user_id NULLS LAST, b.start_date NULLS LAST;
