# Airbnb Clone – Seed Data

This directory contains the SQL script to seed the database for the Airbnb-like application.

## Files

- `seed.sql`: Populates the database with sample data for all tables.
- `README.md`: This file.

## Included Sample Data

- **Users**: 3 users (1 host, 2 guests)
- **Properties**: 2 properties listed by the host
- **Bookings**: 2 bookings made by the guests
- **Payments**: 1 payment for a confirmed booking
- **Reviews**: Each guest leaves a review
- **Messages**: Example communication between host and guest

## Usage

Make sure your schema is already created using the `schema.sql` file. Then run:

```bash
psql -U your_user -d your_database -f seed.sql
