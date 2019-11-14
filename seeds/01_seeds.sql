
INSERT INTO users (
  name,
  email,
  password
  )
VALUES (
  'Rene Descartes',
  'think@am.fr',
  '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
);

INSERT INTO users (
  name,
  email,
  password
  )
VALUES (
  'Burger Farm',
  'yum@yum.nom',
  '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
);

INSERT INTO users (
  name,
  email,
  password
  )
VALUES (
  'Kant Man',
  'mine@mine.man',
  '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
);

INSERT INTO reservations (
  start_date,
  end_date,
  property_id,
  guest_id
  )
VALUES (
  Now(-2d),
  Now(),
  1,
  2
);

INSERT INTO reservations (
  start_date,
  end_date,
  property_id,
  guest_id
  )
VALUES (
  Now(-2d),
  Now(),
  1,
  3
);

INSERT INTO reservations (
  start_date,
  end_date,
  property_id,
  guest_id
  )
VALUES (
  Now(-2d),
  Now(),
  3,
  2
);


INSERT INTO property_reviews (
  message,
  guest_id,
  property_id,
  reservation_id
  )
VALUES (
  "hello",
  1,
  1,
  1
);

INSERT INTO property_reviews (
  message,
  guest_id,
  property_id,
  reservation_id
  )
VALUES (
  "goodbye",
  1,
  2,
  2
);

INSERT INTO property_reviews (
  message,
  guest_id,
  property_id,
  reservation_id
  )
VALUES (
  "aloha",
  1,
  2,
  3
);
