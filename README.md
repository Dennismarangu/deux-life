# Deux-Life Backend

This is the backend application for the Deux-Life app, which is a hotel management system. It provides the necessary APIs to manage customers, rooms, bookings, services, and customer services.

### Prerequisites

Before running the backend application, make sure you have the following installed:

- Ruby (version X.X.X)
- Ruby on Rails (version X.X.X)
- PostgreSQL (version X.X.X)

### Getting Started

Clone the repository:

1. git clone https://github.com/your-username/deux-life-backend.git

2. Install the dependencies:
cd deux-life-backend
bundle install

3. Set up the database:
rails db:create
rails db:migrate

4. Start the server:
rails server
The backend will now be running at http://localhost:3000.


### API Endpoints

- Customers
GET /customers: Fetch all registered customers.
GET /customers/:id: Fetch a specific customer by ID.
POST /customers: Create a new customer.
PATCH /customers/:id: Update an existing customer's information.
DELETE /customers/:id: Delete an existing customer.

- Rooms
GET /rooms: Fetch all rooms.
GET /rooms/:id: Fetch a specific room by ID.
PATCH /rooms/:id: Update the is_booked field for a room.

- Bookings
GET /bookings: Fetch all bookings.
GET /bookings/:id: Fetch a specific booking by ID.
POST /bookings: Create a new booking.
PATCH /bookings/:id: Update an existing booking's information.
DELETE /bookings/:id: Delete an existing booking.

- Services
GET /services: Fetch all services.
GET /services/:id: Fetch a specific service by ID.

- Customer Services
GET /customer_services: Fetch all customer services.
GET /customer_services/:id: Fetch a specific customer service by ID.
POST /customer_services: Create a new customer service.
PATCH /customer_services/:id: Update an existing customer service's information.
DELETE /customer_services/:id: Delete an existing customer service.

- Authentication and Authorization
PATCH /customers/:id: Requires the customer to be logged in to update their account.
DELETE /customers/:id: Requires the customer to be logged in to delete their account.
POST /bookings: Requires the customer to be logged in to book a room.
GET /services: Requires the customer to be logged in to view the offered services.
POST /customer_services: Requires the customer to be logged in to request a service.

### Database Schema
The backend application uses PostgreSQL as the database. The following is an overview of the database schema:

- Customers table:
id (primary key)
name
email
password_digest
created_at
updated_at

- Rooms table:
id (primary key)
number
is_booked
created_at
updated_at

- Bookings table:
id (primary key)
customer_id (foreign key referencing customers)
room_id (foreign key referencing rooms)
check_in_date
check_out_date
created_at
updated_at

- Services table:
id (primary key)
name
description
created_at
updated_at

- CustomerServices table:
id (primary key)
customer_id (foreign key referencing customers)
service_id (foreign key referencing services)
created_at
updated_at

The database associations are defined as follows:

- Customer has many Bookings
- Room has many Bookings
- Booking belongs to Customer and Room
- Customer has many Rooms through Bookings
- Room has many Customers through Bookings
- Customer has many CustomerServices
- Service has many CustomerServices
- Customer has many Services through CustomerServices
- Service has many Customers through CustomerServices

### Error Handling

The backend application handles various errors and returns appropriate responses. If an error occurs during the processing of a request, the response will include a JSON object with an error property providing more details about the error.

### Authentication

The backend supports customer authentication using JWT (JSON Web Tokens). When a customer logs in successfully, a JWT is generated and returned in the response. This token should be included in subsequent requests to authenticated routes by including it in the request headers.

## Authors

Dennis Mutuma Marangu
Alex Njagi
Carlton Kibe
Yazid Wako
Dominic Juma


### License

The Deux-Life backend is released under the MIT License.
