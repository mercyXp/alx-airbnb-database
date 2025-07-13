# Optimization Report

## Initial Query Issues:
- Used SELECT * (unnecessary columns)
- All joins, even when data may be null (e.g. Payment)
- No limit/filtering

## Optimized Query:
```sql
SELECT 
  b.booking_id,
  u.first_name, u.last_name,
  p.name AS property_name,
  pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;
