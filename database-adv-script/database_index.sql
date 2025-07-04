-- Index for fast lookup in WHERE/JOIN on users.id
CREATE INDEX idx_users_id ON users(id);

-- Index for filtering/joining on bookings.user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index for filtering/joining on bookings.property_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index for filtering/sorting on bookings.start_date
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Index for filtering/joining on reviews.property_id
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Index for sorting properties by name
CREATE INDEX idx_properties_name ON properties(name);
