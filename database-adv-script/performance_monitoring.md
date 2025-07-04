# Database Performance Monitoring and Refinement – ALX Airbnb Clone

---

## 🎯 Objective

Monitor frequently used queries, identify performance bottlenecks, apply schema/index optimizations, and report improvements.

---

## 🔍 Step 1: Monitoring Queries with `EXPLAIN ANALYZE`

### Query 1: Fetch bookings for a user with filters
```sql
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 101 AND start_date >= '2024-01-01';
