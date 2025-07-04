# SQL Joins Queries – ALX Airbnb Clone

This task demonstrates the use of various SQL join types: `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN`.

## 🔄 Queries

### 1. INNER JOIN – Bookings and Users
Retrieves all bookings and the users who made them.

```sql
SELECT bookings.id, bookings.property_id, users.name, users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;
