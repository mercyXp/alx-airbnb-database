
# Optimization Report

## Query Overview

The initial query retrieves all bookings along with corresponding user details, property details, and payment information. It uses two INNER JOINs (User and Property) and one LEFT JOIN (Payment), ordered by booking start date descending.

---

## Performance Analysis

Using `EXPLAIN ANALYZE`, the query showed the following characteristics:

* **JOIN Operations:**
  The query involves joining four tables, which increases complexity.
* **Index Usage:**
  If indexes on foreign keys (`Booking.user_id`, `Booking.property_id`, `Payment.booking_id`) are missing or incomplete, the database performs sequential scans, slowing performance.
* **Ordering:**
  The `ORDER BY b.start_date DESC` requires sorting all results, potentially expensive on large datasets without an index on `start_date`.

---

## Optimization Recommendations

1. **Add Indexes**

   * Index on `Booking.user_id`
   * Index on `Booking.property_id`
   * Index on `Payment.booking_id`
   * Index on `Booking.start_date` (to speed up ordering)

2. **Reduce Returned Columns**

   * Select only columns required by the application to reduce data transfer and processing overhead.

3. **Use Pagination**

   * Add `LIMIT` and `OFFSET` clauses for large datasets to avoid fetching all records at once.

4. **Query Refactoring**

   * Verify if LEFT JOIN on Payment is necessary for all bookings or if filtering only bookings with payments can improve performance.

---


