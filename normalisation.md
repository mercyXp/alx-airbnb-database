# 📘 Database Normalization Report – Airbnb Clone

## 🎯 Objective

The objective of this task is to apply **normalization principles** to ensure that the Airbnb clone database schema adheres to the **Third Normal Form (3NF)**, thereby reducing redundancy, ensuring data integrity, and improving performance.

---

## What is 3NF?

A table is in **Third Normal Form (3NF)** if:

1. It is in **Second Normal Form (2NF)**
2. It has **no transitive dependencies**, i.e., all non-key attributes are **only dependent on the primary key**.

---

## Normalization Process

### 🔹 Step 1: First Normal Form (1NF)
- Ensured **atomicity**: Each column contains only indivisible values.
- Removed repeating groups (e.g., multi-valued fields).
- All tables (User, Property, Booking, etc.) contain atomic fields only.

### 🔹 Step 2: Second Normal Form (2NF)
- Ensured **full functional dependency**: All non-key attributes depend on the whole primary key.
- Since all tables use **single-column primary keys (UUIDs)**, no partial dependencies exist.
- All tables meet 2NF.

### 🔹 Step 3: Third Normal Form (3NF)
- Verified that **no non-key attribute** depends on another non-key attribute.

## Analysis & Confirmation by Table:

---

### **User**
- No transitive dependencies.
- `role` is an atomic ENUM, and all fields depend on `user_id`.
- 3NF Compliant

---

### **Property**
- Each attribute (e.g., `name`, `location`, `pricepernight`) is directly related to `property_id`.
- `host_id` is a foreign key — not a transitive dependency.
- 3NF Compliant

---

### **Booking**
- Each field (e.g., `start_date`, `status`, `total_price`) depends only on `booking_id`.
- `property_id` and `user_id` are foreign keys, not functional dependencies.
- 3NF Compliant

---

### **Payment**
- Every attribute is functionally dependent on `payment_id`.
- `payment_method` is an ENUM, and `booking_id` is a foreign key.
- 3NF Compliant

---

### **Review**
- All non-key fields (`rating`, `comment`) are fully dependent on `review_id`.
- No derived or dependent fields among non-keys.
- 3NF Compliant

---

### **Message**
- All attributes (`sender_id`, `recipient_id`, `message_body`) depend directly on `message_id`.
- 3NF Compliant

---

## Result

All tables have been reviewed and verified to conform to **Third Normal Form (3NF)**. No structural changes were required.

---

## Key Takeaways

- The use of UUIDs as primary keys and proper foreign key constraints significantly simplifies normalization.
- ENUM fields are preferred over related lookup tables for small, fixed sets of values (e.g., `status`, `role`, `payment_method`).
- Normalization ensures:
  - Reduced redundancy
  - Improved data integrity
  - Better scalability for production systems

---

> This normalization report validates that the Airbnb database schema is designed following industry best practices and adheres fully to 3NF.
