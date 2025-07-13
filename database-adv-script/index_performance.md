# Index Performance Report

## Indexed Columns
- `User.email` – For fast login/email-based lookups.
- `Booking.user_id`, `Booking.property_id` – Used in joins.
- `Review.property_id` – For property review joins.
- `Property.location` – Improves location-based searches.
- `Booking.start_date` – Optimized date filtering.

## Performance Comparison

Query:
```sql
SELECT * FROM Booking WHERE user_id = 'uuid-here';
