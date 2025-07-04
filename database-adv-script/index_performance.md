# Index Performance Optimization – ALX Airbnb Clone

## 🎯 Objective

Improve query performance by identifying high-usage columns and applying SQL indexes.

---

## 🧩 Identified High-Usage Columns

| Table      | Column          | Reason (Used in...)           |
|------------|------------------|-------------------------------|
| users      | id               | JOIN, WHERE                   |
| bookings   | user_id          | JOIN, WHERE                   |
| bookings   | property_id      | JOIN                          |
| bookings   | start_date       | WHERE, ORDER BY               |
| reviews    | property_id      | JOIN, WHERE                   |
| properties | name             | ORDER BY, LIKE search         |

---

## 🛠️ Index Creation

```sql
CREATE INDEX idx_users_id ON users(id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_properties_name ON properties(name);
