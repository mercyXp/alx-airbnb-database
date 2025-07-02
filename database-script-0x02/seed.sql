-- ========================
-- Seeding Users
-- ========================
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
    ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashedpassword1', '1234567890', 'host'),
    ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashedpassword2', '2345678901', 'guest'),
    ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Brown', 'charlie@example.com', 'hashedpassword3', '3456789012', 'host'),
    ('44444444-4444-4444-4444-444444444444', 'Diana', 'Ross', 'diana@example.com', 'hashedpassword4', '4567890123', 'guest');

-- ========================
-- Seeding Properties
-- ========================
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES 
    ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 'Cozy Apartment', 'A cozy 2-bedroom apartment in the city center.', 'Lusaka, Zambia', 50.00),
    ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '33333333-3333-3333-3333-333333333333', 'Beach House', 'A beautiful beach house with ocean view.', 'Livingstone, Zambia', 120.00);

-- ========================
-- Seeding Bookings
-- ========================
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
    ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', '2025-07-05', '2025-07-10', 250.00, 'confirmed'),
    ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '44444444-4444-4444-4444-444444444444', '2025-07-12', '2025-07-15', 360.00, 'pending');

-- ========================
-- Seeding Payments
-- ========================
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES 
    ('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 250.00, 'credit_card'),
    ('ccccccc2-cccc-cccc-cccc-ccccccccccc2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 360.00, 'paypal');

-- ========================
-- Seeding Reviews
-- ========================
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES 
    ('ddddddd1-dddd-dddd-dddd-ddddddddddd1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 5, 'Amazing apartment, very clean and central!'),
    ('ddddddd2-dddd-dddd-dddd-ddddddddddd2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '44444444-4444-4444-4444-444444444444', 4, 'Beautiful view, but a bit noisy at night.');

-- ========================
-- Seeding Messages
-- ========================
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES 
    ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice, is the apartment available next week?'),
    ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2', '44444444-4444-4444-4444-444444444444', '33333333-3333-3333-3333-333333333333', 'Hello, can I bring a pet to the beach house?');
