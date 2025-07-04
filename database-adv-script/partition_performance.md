# Partitioning Performance Report – Bookings Table

---

## 🎯 Objective

Optimize the large `bookings` table using **range partitioning** by `start_date` and observe query performance improvements.

---

## 🧱 Partitioning Strategy

We partitioned the `bookings` table by year using:

```sql
PARTITION BY RANGE (start_date)
