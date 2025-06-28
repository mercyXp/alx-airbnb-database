# Entity Relationships (Crow’s Foot Notation)

This defines and explains the relationships between entities in the Airbnb Clone database using **Crow’s Foot Notation**.

---

## Crow’s Foot Symbols (Legend)
![img](https://github.com/mercyXp/alx-airbnb-database/blob/main/ERD/Crows-Foot.png)

---

## Entity Relationships

### 1. User – Property
- **Description**: One User (host) can have many Properties.  
- **Foreign Key**: `Property.host_id → User.user_id`

---

### 2. User – Booking
- **Description**: One User (guest) can make many Bookings. 
- **Foreign Key**: `Booking.user_id → User.user_id`

---

### 3. Property – Booking
- **Description**: One Property can have many Bookings. 
- **Foreign Key**: `Booking.property_id → Property.property_id`

---

### 4. Booking – Payment
- **Description**: One Booking has one Payment (1:1 assumed). 
- **Foreign Key**: `Payment.booking_id → Booking.booking_id`

> If partial payments are supported:
> ```
> Booking ||——{ Payment
> ```

---

### 5. User – Review
- **Description**: One User can write many Reviews.
- **Foreign Key**: `Review.user_id → User.user_id`

---

### 6. Property – Review
- **Description**: One Property can have many Reviews. 
- **Foreign Key**: `Review.property_id → Property.property_id`

---

### 7. User – Message (Sender)
- **Description**: One User can send many Messages.
- **Foreign Key**: `Message.sender_id → User.user_id`

### 8. User – Message (Recipient)
- **Description**: One User can receive many Messages.
- **Crow’s Foot**:  
- **Foreign Key**: `Message.recipient_id → User.user_id`

---

## 📌 Summary of Relationships

| Relationship              | Type      | Crow’s Foot               |
|---------------------------|-----------|----------------------------|
| User – Property           | 1 to many | `User ||——{ Property`     |
| User – Booking            | 1 to many | `User ||——{ Booking`      |
| Property – Booking        | 1 to many | `Property ||——{ Booking`  |
| Booking – Payment         | 1 to 1    | `Booking ||——|| Payment`  |
| User – Review             | 1 to many | `User ||——{ Review`       |
| Property – Review         | 1 to many | `Property ||——{ Review`   |
| User – Message (Sender)   | 1 to many | `User ||——{ Message`      |
| User – Message (Recipient)| 1 to many | `User ||——{ Message`      |

---

**Note:** You can use tools like [dbdiagram.io](https://dbdiagram.io), [draw.io](https://app.diagrams.net/), or Lucidchart to visualize this ERD.
