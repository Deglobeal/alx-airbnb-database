# Query Optimization Report – ALX Airbnb Clone

---

## 🔍 Objective

Optimize a complex query that retrieves booking details along with related user, property, and payment data.

---

## 🧪 Initial Query (Unoptimized)

```sql
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
