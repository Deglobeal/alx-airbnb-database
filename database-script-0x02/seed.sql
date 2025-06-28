-- seed.sql
-- Sample data for Airbnb database

-- Insert sample users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('00000000-0000-0000-0000-000000000001', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '1234567890', 'guest'),
  ('00000000-0000-0000-0000-000000000002', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '0987654321', 'host'),
  ('00000000-0000-0000-0000-000000000003', 'Clara', 'Admin', 'admin@example.com', 'hashed_pw3', NULL, 'admin');

-- Insert sample properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Cozy Cabin', 'A peaceful cabin in the woods', 'Colorado, USA', 120.00),
  ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', 'Beach Bungalow', 'Relaxing beach house with ocean view', 'Lagos, Nigeria', 150.00);

-- Insert sample bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '2025-07-01', '2025-07-05', 480.00, 'confirmed'),
  ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', '2025-08-10', '2025-08-15', 750.00, 'pending');

-- Insert sample payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 480.00, 'credit_card');

-- Insert sample reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 5, 'Amazing stay, very cozy and clean!');

-- Insert sample messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('50000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Hi, is the cabin available for the weekend?'),
  ('50000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Yes, it is available. Feel free to book!');
