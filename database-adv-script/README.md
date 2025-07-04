# SQL Joins Queries – ALX Airbnb Clone

This task demonstrates the use of various SQL join types: `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN`.

## 🔄 Queries

### 1. INNER JOIN – Bookings and Users
Retrieves all bookings and the users who made them.

```sql
SELECT bookings.id, bookings.property_id, users.name, users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;


# SQL Subqueries – ALX Airbnb Clone

This task practices writing **non-correlated** and **correlated** subqueries.

---

## Queries

### 1. Properties with Average Rating Greater Than 4.0 (Non-Correlated Subquery)

This query selects properties where the average rating from their reviews exceeds 4.0.

```sql
SELECT p.id, p.name
FROM properties p
WHERE (
    SELECT AVG(r.rating)
    FROM reviews r
    WHERE r.property_id = p.id
) > 4.0;



# Aggregations and Window Functions – ALX Airbnb Clone

This task demonstrates the use of SQL aggregation and window functions to analyze booking data.

---

## ✅ Queries

### 1. Total Number of Bookings Per User (Aggregation)

This query counts the total number of bookings each user has made.

```sql
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    COUNT(bookings.id) AS total_bookings
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id
GROUP BY users.id, users.name
ORDER BY total_bookings DESC;
