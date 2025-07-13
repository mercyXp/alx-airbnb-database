-- Indexes for frequently used columns
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_review_property ON Review(property_id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_booking_dates ON Booking(start_date);
