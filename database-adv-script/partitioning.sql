-- 1. Create partitioned bookings table
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50)
) PARTITION BY RANGE (start_date);

-- 2. Create yearly partitions

CREATE TABLE bookings_2022 PARTITION OF bookings
FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE bookings_2023 PARTITION OF bookings
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- 3. Create index on each partition for filtering
CREATE INDEX idx_bookings_2022_user_id ON bookings_2022(user_id);
CREATE INDEX idx_bookings_2023_user_id ON bookings_2023(user_id);
CREATE INDEX idx_bookings_2024_user_id ON bookings_2024(user_id);

-- 4. Query to test performance
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
