-- Measure performance BEFORE creating indexes

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = '00000000-0000-0000-0000-000000000001';

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE property_id = '00000000-0000-0000-0000-000000000002';

EXPLAIN ANALYZE
SELECT * FROM Property WHERE host_id = '00000000-0000-0000-0000-000000000003';

EXPLAIN ANALYZE
SELECT * FROM User WHERE email = 'example@example.com';

-- Create indexes to optimize queries

CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_user_email ON User(email);

-- Measure performance AFTER creating indexes

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = '00000000-0000-0000-0000-000000000001';

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE property_id = '00000000-0000-0000-0000-000000000002';

EXPLAIN ANALYZE
SELECT * FROM Property WHERE host_id = '00000000-0000-0000-0000-000000000003';

EXPLAIN ANALYZE
SELECT * FROM User WHERE email = 'example@example.com';
