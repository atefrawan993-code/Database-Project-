# Database-Project-

## Medical Laboratory System

##  Project Overview

This project is a **relational database system** for managing the operations of a **medical laboratory**, including laboratorians, patients, laboratory components, medical tests, and test results. It is designed to handle real-world scenarios such as:

- Recording patient test results.
- Managing inventory of lab components.
- Tracking laboratorians responsible for tests.
- Associating medical tests with required components.
- Generating insights like costly tests and patient history.

Built using **MySQL**, this schema supports the backend logic of a medical lab management application and can easily be integrated with a front-end GUI or API service.

---

## Repository Structure

medical-laboratory-system/
│
├── README.md                  # Project documentation
├── schema.sql                 # SQL script to create tables and insert initial data
├── views.sql                  # SQL for views and analytical queries
├── queries.sql                # Useful queries for analytics and operations
└── images/                    # Optional folder to store ER diagrams, screenshots, etc.


## How to Run the Project

###  Prerequisites

- A working **MySQL** server
- A database program like:
  - MySQL Workbench
  

###  Step-by-Step Setup

1. **copy the script**
   From the sql file project DB MLS

2. **Start your MySQL server**

 connect using your terminal
 
4. **Run the SQL script to create and populate the database**:
   ```sql
   SOURCE schema.sql;
   ```

5. **(Optional) Load predefined views and queries**:
   ```sql
   SOURCE views.sql;
   SOURCE queries.sql;
   ```

6. You're now ready to explore the database!

---

## Features & Queries

- **Patient-Test History**: Track which patients took which tests and when.
- **Test-Component Mapping**: Identify components needed for each test.
- **Inventory Monitoring**: Detect when a component's stock is below its minimum threshold.
- **Billing & Cost Insights**: Compute patient expenses for tests taken over time.
- **Expensive Test Reports**: Use a view to get results of tests priced over 100 units.

---

## Sample Queries

- List all patients who took the CBC test last year.
- Check components with insufficient quantity.
- Calculate the total cost of tests taken by a specific patient.
- View results of all expensive medical tests using the `Expensive_tests_results` view.

---

##  Technologies Used

- **SQL** (DDL & DML)
- **MySQL** 
- Optional integration: **C#**, **Visual Studio**, **ERD tools**

