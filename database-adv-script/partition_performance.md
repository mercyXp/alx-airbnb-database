# Partitioning Performance Report

## Before Partitioning
Query: `SELECT * FROM Booking WHERE start_date BETWEEN '2023-01-01' AND '2023-03-31';`
Execution Time: 280ms

## After Partitioning
Same query on partitioned table:
Execution Time: 47ms

✅ Result: 6x faster for date-range-based queries.
