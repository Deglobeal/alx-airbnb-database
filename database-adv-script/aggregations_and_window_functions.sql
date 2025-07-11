-- 1. Aggregation: Total number of bookings made by each user
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    COUNT(bookings.id) AS total_bookings
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id
GROUP BY users.id, users.name
ORDER BY total_bookings DESC;

-- 2. Window Function: Use ROW_NUMBER() to rank properties by number of bookings
SELECT 
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_number_rank
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM bookings
    GROUP BY property_id
) AS booking_counts;

-- 3. Window Function: Use RANK() to rank properties by number of bookings (allows ties)
SELECT 
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank_with_ties
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM bookings
    GROUP BY property_id
) AS booking_counts;
