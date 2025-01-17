# Build a Logical Database Project from Scratch

Car Workshop Database Project

This repository was created to build, populate, and query a relational database for a car workshop from scratch. The project demonstrates the logical modeling, implementation, and querying of data in a MySQL database.

## Project Overview
The project involves the following phases:

### Phase 1: Import Database Schema
The database schema is initially designed using DBML and provided in the file `car_workshop.dbml`. This file outlines the logical structure and relationships of entities within the database.

### Phase 2: Convert Schema to SQL
The schema is converted to a MySQL-compatible script named `workshop_database_boot.sql`. This script creates the database, its tables, and relationships as defined in the schema.

### Phase 3: Populate the Database
The `workshop_feed_data.sql` script populates the database with sample data. This step ensures functional testing of queries and showcases realistic use cases.

### Phase 4: Query Testing
Queries were designed to address practical questions and validate the usability of the populated database. These queries are organized into separate SQL scripts for ease of use and include:

- **`01_view_service_orders.sql`**: Lists all service orders, including details like status, dates, and associated vehicles.
- **`03_view_pending_orders.sql`**: Filters and displays only pending service orders.
- **`05_report_services_costs.sql`**: Reports total service costs for labor and parts.
- **`07_view_alfabetic_clients_list.sql`**: Displays a list of clients sorted alphabetically.
- **`09_check_team_workflow_plus3.sql`**: Identifies teams handling more than three orders.
- **`11_list_client_car_team.sql`**: Lists orders along with client, vehicle, and team details.
- **`12_list_clients_costs_report.sql`**: Summarizes costs for each client, including labor and parts.

## Setup Instructions

### Prerequisites
- MySQL server installed
- Access to a MySQL client or GUI

### Steps to Execute
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-repo/car_workshop
   ```

2. **Import the Database Schema:**
   ```bash
   mysql -u [your_user] -p < workshop_database_boot.sql
   ```

3. **Populate the Database:**
   ```bash
   mysql -u [your_user] -p < workshop_feed_data.sql
   ```

4. **Run Queries:**
   Execute individual query scripts to test the database. For example:
   ```bash
   mysql -u [your_user] -p < 01_view_service_orders.sql
   ``` 
5. You can also use the graphical user interface for MySQL to manage and run these files and queries.

## Contact
For questions or suggestions, feel free to say "Hello, friend!" at [rmjo.inbox@gmail.com] or at my GitHub Inbox.
