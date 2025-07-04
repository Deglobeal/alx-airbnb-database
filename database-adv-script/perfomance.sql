-- Initial complex query: Fetch bookings + user + property + payment details

-- ⚠️ Initial version (unoptimized):
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
JOIN payments ON payments.booking_id = bookings.id;

-- ✅ Optimized version using selected fields and assuming indexes already created

-- Using SELECT fields we actually need, reducing JOIN cost and avoiding SELECT *
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
JOIN payments pay ON pay.booking_id = b.id;
-- This query selects only the necessary fields, which can significantly reduce the amount of data processed and improve performance.