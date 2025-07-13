# Task 0: Write Complex Queries with Joins

## Objective
Master SQL joins by writing complex queries using different types of joins.

## Queries Implemented
- `INNER JOIN`: Retrieves bookings with corresponding user details.
- `LEFT JOIN`: Retrieves all properties and their reviews, including properties with no reviews.
- `FULL OUTER JOIN`: Combines all users and bookings, showing unmatched records as well.

## File
- `joins_queries.sql`
```

---

# Task 1: Practice Subqueries

## Objective
Use correlated and non-correlated subqueries to filter and analyze data.

## Queries Implemented
- Subquery to find properties with an average rating greater than 4.0.
- Correlated subquery to find users who have made more than 3 bookings.

## File
- `subqueries.sql`
```

---

# Task 2: Apply Aggregations and Window Functions

## Objective
Use SQL aggregation functions and window functions to analyze booking data.

## Queries Implemented
- Count total bookings per user using `GROUP BY`.
- Rank properties by number of bookings using `RANK()` window function.

## File
- `aggregations_and_window_functions.sql`
```

---

# Task 3: Implement Indexes for Optimization

## Objective
Improve query performance by creating indexes on frequently queried columns.

## Actions Taken
- Created indexes on user email, booking fields, and property location.
- Measured performance with and without indexes.

## Files
- `database_index.sql`
- `index_performance.md`
```

---


# Task 4: Optimize Complex Queries

## Objective
Refactor slow SQL queries for performance gains.

## Actions Taken
- Wrote an unoptimized query combining booking, user, property, and payment.
- Used `EXPLAIN ANALYZE` to find bottlenecks.
- Refactored query for better performance.

## Files
- `perfomance.sql`
- `optimization_report.md`
```

---

# Task 5: Partitioning Large Tables

## Objective
Improve performance of large tables using partitioning.

## Actions Taken
- Partitioned `Booking` table by `start_date`.
- Measured improvements in query execution time.

## Files
- `partitioning.sql`
- `partition_performance.md`
```

---

# Task 6: Monitor and Refine Database Performance

## Objective
Use monitoring tools to detect and fix SQL performance issues.

## Actions Taken
- Used `EXPLAIN ANALYZE` to profile slow queries.
- Applied indexing and schema optimization.

## File
- `performance_monitoring.md`
```


