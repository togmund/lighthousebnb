CREATE TABLE users (
  user_id SERIAL PRIMARY KEY NOT NULL,
  name,
  email,
  password
);

CREATE TABLE properties (
  property_id SERIAL PRIMARY KEY NOT NULL,
  title,
  description,
  thumbnamil_photo_url,
  cover_photo_url,
  street,
  parking_spaces,
  number_of_bathrooms,
  number_of_bedrooms,
  country,
  city,
  province,
  post_code,
  active,
  user_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE reservations (
  reservation_id SERIAL PRIMARY KEY NOT NULL,
  start_date,
  end_date,
  property_id INTEGER REFERENCES properties(property_id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE guest_reviews (
  guest_review_id SERIAL PRIMARY KEY NOT NULL,
  rating,
  message,
  guest_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
  owner_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(reservation_id) ON DELETE CASCADE
);

CREATE TABLE property_reviews (
  preperty_review_id SERIAL PRIMARY KEY NOT NULL,
  rating,
  message,
  guest_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
  property_id INTEGER REFERENCES properties(property_id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(reservation_id) ON DELETE CASCADE
);

CREATE TABLE rates (
  rate_id SERIAL PRIMARY KEY NOT NULL,
  start_date,
  end_date,
  cost_per_night,
  property_id INTEGER REFERENCES properties(property_id) ON DELETE CASCADE
);