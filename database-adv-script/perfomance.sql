-- Initial complex query: Fetch bookings + user + property + payment details with WHERE and AND
EXPLAIN
SELECT 
    bookings.id AS booking_id,
    users.name AS user_name,
    users.email,
    properties.name AS property_name,
    properties.location,
    payments.amount,
    payments.status,
    bookings.start_date,
    bookings.end_date
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON payments.booking_id = bookings.id
WHERE payments.status = 'confirmed' AND bookings.start_date >= '2023-01-01';

-- Optimized version using table aliases and assuming indexes exist
EXPLAIN
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    u.email,
    p.name AS property_name,
    p.location,
    pay.amount,
    pay.status,
    b.start_date,
    b.end_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id
WHERE pay.status = 'confirmed' AND b.start_date >= '2023-01-01';
-- This query fetches bookings along with user, property, and payment details
-- where the payment status is 'confirmed' and the booking start date is on or after January 1, 2023.