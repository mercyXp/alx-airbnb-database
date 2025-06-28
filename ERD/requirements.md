# Database Specification – Airbnb Clone

This specification outlines the structure of the relational database powering the Airbnb-like application. It includes detailed entity definitions, attribute types, constraints, and indexing strategy.

---

## 🗃️ Entities and Attributes

### 👤 User
| Field           | Type                                         |
|----------------|----------------------------------------------|
| `user_id`       | UUID, Primary Key, Indexed                  |
| `first_name`    | VARCHAR, NOT NULL                           |
| `last_name`     | VARCHAR, NOT NULL                           |
| `email`         | VARCHAR, UNIQUE, NOT NULL                   |
| `password_hash` | VARCHAR, NOT NULL                           |
| `phone_number`  | VARCHAR, NULL                               |
| `role`          | ENUM(`guest`, `host`, `admin`), NOT NULL   |
| `created_at`    | TIMESTAMP, DEFAULT CURRENT_TIMESTAMP        |

---

### 🏡 Property
| Field           | Type                                                   |
|----------------|--------------------------------------------------------|
| `property_id`   | UUID, Primary Key, Indexed                            |
| `host_id`       | UUID, Foreign Key → User(`user_id`)                   |
| `name`          | VARCHAR, NOT NULL                                     |
| `description`   | TEXT, NOT NULL                                        |
| `location`      | VARCHAR, NOT NULL                                     |
| `pricepernight` | DECIMAL, NOT NULL                                     |
| `created_at`    | TIMESTAMP, DEFAULT CURRENT_TIMESTAMP                  |
| `updated_at`    | TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP                |

---

### 📅 Booking
| Field         | Type                                                        |
|--------------|-------------------------------------------------------------|
| `booking_id`  | UUID, Primary Key, Indexed                                 |
| `property_id` | UUID, Foreign Key → Property(`property_id`)               |
| `user_id`     | UUID, Foreign Key → User(`user_id`)                       |
| `start_date`  | DATE, NOT NULL                                             |
| `end_date`    | DATE, NOT NULL                                             |
| `total_price` | DECIMAL, NOT NULL                                          |
| `status`      | ENUM(`pending`, `confirmed`, `canceled`), NOT NULL        |
| `created_at`  | TIMESTAMP, DEFAULT CURRENT_TIMESTAMP                      |

---

### 💳 Payment
| Field           | Type                                                        |
|----------------|-------------------------------------------------------------|
| `payment_id`    | UUID, Primary Key, Indexed                                 |
| `booking_id`    | UUID, Foreign Key → Booking(`booking_id`)                 |
| `amount`        | DECIMAL, NOT NULL                                          |
| `payment_date`  | TIMESTAMP, DEFAULT CURRENT_TIMESTAMP                      |
| `payment_method`| ENUM(`credit_card`, `paypal`, `stripe`), NOT NULL         |

---

### 🌟 Review
| Field         | Type                                                                 |
|--------------|----------------------------------------------------------------------|
| `review_id`   | UUID, Primary Key, Indexed                                          |
| `property_id` | UUID, Foreign Key → Property(`property_id`)                        |
| `user_id`     | UUID, Foreign Key → User(`user_id`)                                |
| `rating`      | INTEGER, CHECK: rating BETWEEN 1 AND 5, NOT NULL                   |
| `comment`     | TEXT, NOT NULL                                                     |
| `created_at`  | TIMESTAMP, DEFAULT CURRENT_TIMESTAMP                               |

---

### 💬 Message
| Field          | Type                                                      |
|---------------|-----------------------------------------------------------|
| `message_id`   | UUID, Primary Key, Indexed                               |
| `sender_id`    | UUID, Foreign Key → User(`user_id`)                      |
| `recipient_id` | UUID, Foreign Key → User(`user_id`)                      |
| `message_body` | TEXT, NOT NULL                                           |
| `sent_at`      | TIMESTAMP, DEFAULT CURRENT_TIMESTAMP                     |

---

## 🔒 Constraints Summary

### User Table
- Unique constraint on `email`
- Non-null constraints on all required fields

### Property Table
- Foreign key on `host_id`
- Non-null constraints on essential fields

### Booking Table
- Foreign keys on `property_id` and `user_id`
- `status` limited to: `pending`, `confirmed`, `canceled`

### Payment Table
- Foreign key on `booking_id`

### Review Table
- Rating must be between 1 and 5
- Foreign keys on `property_id` and `user_id`

###  Message Table
- Foreign keys on `sender_id` and `recipient_id`

---

## 📌 Indexing Strategy

- **Primary Keys**: Automatically indexed
- **Additional Indexes**:
  - `email` in **User** table
  - `property_id` in **Property** and **Booking**
  - `booking_id` in **Booking** and **Payment**

---

> This database design ensures normalized structure, referential integrity, and optimized performance suitable for production-grade applications.
