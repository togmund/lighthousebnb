DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS guest_reviews CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;
DROP TABLE IF EXISTS rates CASCADE;

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE properties (
  property_id SERIAL PRIMARY KEY NOT NULL,
  title VARCHAR(255),
  description TEXT,
  thumbnamil_photo_url VARCHAR(255),
  cover_photo_url VARCHAR(255),
  street SMALLINT,
  parking_spaces SMALLINT,
  number_of_bathrooms SMALLINT,
  number_of_bedrooms SMALLINT,
  country VARCHAR(255),
  city VARCHAR(255),
  province VARCHAR(255),
  post_code VARCHAR(255),
  active boolean,
  user_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE reservations (
  reservation_id SERIAL PRIMARY KEY NOT NULL,
  start_date DATE,
  end_date DATE,
  property_id INTEGER REFERENCES properties(property_id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE guest_reviews (
  guest_review_id SERIAL PRIMARY KEY NOT NULL,
  rating SMALLINT,
  message TEXT,
  guest_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
  owner_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(reservation_id) ON DELETE CASCADE
);

CREATE TABLE property_reviews (
  preperty_review_id SERIAL PRIMARY KEY NOT NULL,
  rating SMALLINT,
  message TEXT,
  guest_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
  property_id INTEGER REFERENCES properties(property_id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(reservation_id) ON DELETE CASCADE
);

CREATE TABLE rates (
  rate_id SERIAL PRIMARY KEY NOT NULL,
  start_date DATE,
  end_date DATE,
  cost_per_night INTEGER,
  property_id INTEGER REFERENCES properties(property_id) ON DELETE CASCADE
);