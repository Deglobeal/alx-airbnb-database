# Airbnb Database Schema – SQL DDL

## 📁 File: schema.sql

This file contains SQL `CREATE TABLE` statements to define the database schema for an Airbnb-like application.

## 📦 Entities and Tables

- **users**: Stores guest, host, and admin data
- **properties**: Stores listings posted by hosts
- **bookings**: Contains guest booking data
- **payments**: Records payments made for bookings
- **reviews**: User-generated reviews on properties
- **messages**: Direct messages between users

## 🔐 Constraints & Integrity

- All primary keys are UUIDs
- Foreign key constraints ensure relational integrity
- ENUM-like validation through `CHECK` constraints
- Timestamps with default values

## ⚡ Indexes

- Indexed columns for search performance:
  - `users.email`
  - `bookings.property_id`
  - `bookings.user_id`
  - `reviews.property_id`
  - `messages.sender_id`, `messages.recipient_id`

## ✅ Requirements Met

- Proper data types and nullability
- Foreign keys and primary keys
- Constraints (UNIQUE, CHECK, DEFAULT)
- Normalized and optimized for 3NF

---