-- ========================
-- Users
-- ========================
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
    ('user-001', 'Alice', 'Johnson', 'alice@example.com', 'hashedpassword1', '1234567890', 'host'),
    ('user-002', 'Bob', 'Smith', 'bob@example.com', 'hashedpassword2', '2345678901', 'guest'),
    ('user-003', 'Charlie', 'Brown', 'charlie@example.com', 'hashedpassword3', '3456789012', 'host'),
    ('user-004', 'Diana', 'Ross', 'diana@example.com', 'hashedpassword4', '4567890123', 'guest');

-- ========================
-- Properties
-- ========================
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES 
    ('prop-001', 'user-001', 'Cozy Apartment', 'A cozy 2-bedroom apartment in the city center.', 'Lusaka, Zambia', 50.00),
    ('prop-002', 'user-003', 'Beach House', 'A beautiful beach house with ocean view.', 'Livingstone, Zambia', 120.00);

-- ========================
-- Bookings
-- ========================
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
    ('book-001', 'prop-001', 'user-002', '2025-07-05', '2025-07-10', 250.00, 'confirmed'),
    ('book-002', 'prop-002', 'user-004', '2025-07-12', '2025-07-15', 360.00, 'pending');

-- ========================
-- Payments
-- ========================
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES 
    ('pay-001', 'book-001', 250.00, 'credit_card'),
    ('pay-002', 'book-002', 360.00, 'paypal');

-- ========================
-- Reviews
-- ========================
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES 
    ('rev-001', 'prop-001', 'user-002', 5, 'Amazing apartment, very clean and central!'),
    ('rev-002', 'prop-002', 'user-004', 4, 'Beautiful view, but a bit noisy at night.');

-- ========================
-- Messages
-- ========================
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES 
    ('msg-001', 'user-002', 'user-001', 'Hi Alice, is the apartment available next week?'),
    ('msg-002', 'user-004', 'user-003', 'Hello, can I bring a pet to the beach house?');
