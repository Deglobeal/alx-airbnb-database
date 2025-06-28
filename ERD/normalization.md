# 📘 Normalization Report – AirBnB Database Design

## 🎯 Objective

To review the database schema and ensure it adheres to the Third Normal Form (3NF) by eliminating redundancies and ensuring each field has a direct dependency on the primary key.

---

## ✅ First Normal Form (1NF)

1NF requires:
- Atomic values (no lists or arrays)
- No repeating groups

**Analysis**:  
All tables in the schema use atomic data types (VARCHAR, DATE, ENUM, etc.) and contain no repeating groups.

✅ **All tables meet 1NF.**

---

## ✅ Second Normal Form (2NF)

2NF requires:
- Being in 1NF
- No partial dependency on a composite primary key

**Analysis**:  
All tables use a **single-column primary key** (UUIDs). Therefore, partial dependency does not exist.

✅ **All tables meet 2NF.**

---

## ✅ Third Normal Form (3NF)

3NF requires:
- Being in 2NF
- No transitive dependency (non-key attributes depend only on the primary key)

**Analysis by Table**:

### 🔹 User
- All fields directly depend on `user_id`
- No derived data or indirect dependency

### 🔹 Property
- Attributes like `name`, `location`, `pricepernight` all depend solely on `property_id`

### 🔹 Booking
- `start_date`, `end_date`, `status` depend only on `booking_id`

### 🔹 Payment
- Each `payment` entry links to a `booking`, and all fields depend on `payment_id`

### 🔹 Review
- Rating and comment are dependent on `review_id` (and indirectly tied to property/user)

### 🔹 Message
- Message fields are related to `message_id`; sender and receiver are normalized using FK

✅ **All tables meet 3NF.**

---

## 📌 Conclusion

The AirBnB database design:
- Is normalized to **Third Normal Form (3NF)**
- Avoids redundancy and ensures data integrity
- No structural changes were required after review

---

## 📁 File Location

- Repository: `alx-airbnb-database`
- File: `normalization.md`
