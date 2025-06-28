## 📊 Entities and Attributes

### User
- user_id (PK, UUID)
- first_name
- last_name
- email (UNIQUE, Indexed)
- password_hash
- phone_number
- role (guest, host, admin)
- created_at

### Property
- property_id (PK, UUID)
- host_id (FK → User)
- name
- description
- location
- pricepernight
- created_at
- updated_at

### Booking
- booking_id (PK, UUID)
- property_id (FK → Property)
- user_id (FK → User)
- start_date
- end_date
- total_price
- status (pending, confirmed, canceled)
- created_at

### Payment
- payment_id (PK, UUID)
- booking_id (FK → Booking)
- amount
- payment_date
- payment_method (credit_card, paypal, stripe)

### Review
- review_id (PK, UUID)
- property_id (FK → Property)
- user_id (FK → User)
- rating (1-5)
- comment
- created_at

### Message
- message_id (PK, UUID)
- sender_id (FK → User)
- recipient_id (FK → User)
- message_body
- sent_at

## 🔗 Relationships

- **User ↔ Property:** One host can list many properties.
- **User ↔ Booking:** One guest can make many bookings.
- **Property ↔ Booking:** One property can be booked many times.
- **Booking ↔ Payment:** Each booking has one payment.
- **User ↔ Review:** Users can leave multiple reviews.
- **Property ↔ Review:** Properties can have multiple reviews.
- **User ↔ Message:** Users can send messages to one another.

## 📌 Notes

- All primary keys are UUIDs and indexed.
- `email` is uniquely indexed in the User table.
- ENUM types ensure controlled input for roles, statuses, and payment methods.

## ✅ Status
ERD created and included in this directory.
