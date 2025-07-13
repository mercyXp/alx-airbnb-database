# Performance Monitoring

## Tools Used:
- `EXPLAIN ANALYZE`
- PostgreSQL internal query planner

## Example Query
```sql
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'uuid-123';
