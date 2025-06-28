# Airbnb Database – Sample Data Seed

##  File: seed.sql

This file contains SQL `INSERT` statements to seed the database with example data for development or testing purposes.

---

##  Sample Data Includes:

###  Users
- A guest, a host, and an admin with realistic info

###  Properties
- Two sample listings owned by the host

###  Bookings
- Two bookings made by the guest

###  Payments
- One confirmed payment for a booking

###  Reviews
- A review submitted by the guest for a property

###  Messages
- Direct conversation between a guest and host

---

##  Usage

To populate the database, run:

```bash
psql -U your_username -d your_database -f seed.sql
