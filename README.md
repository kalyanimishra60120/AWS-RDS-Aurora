# AWS RDS Aurora, MySQL Demo

This project demonstrates how I created and tested an **AWS RDS Aurora MySQL database instance**, connected to it from **MySQL Workbench**, and performed basic SQL operations (create, insert, update, select). The instance was later deleted to avoid charges.

---

## 🚀 Project Overview
- Created an **Aurora MySQL database instance** on AWS RDS.
- Configured security group to allow external access (for demo).
- Connected to the database using **MySQL Workbench**.
- Created tables, inserted sample data, updated records, and displayed results.
- Deleted the RDS database after testing.

---

## 🛠️ Technologies Used
- **AWS RDS Aurora (MySQL engine)**
- **MySQL Workbench** (client)
- SQL (DDL & DML)

---

## 📌 Step-by-Step Process

### 1. Provision Aurora MySQL on AWS RDS
- Open AWS Console → RDS → **Create database**.  
- Select **Aurora (MySQL-Compatible)**.  
- Configure:
  - Engine: MySQL
  - Instance: Free-tier compatible (if available)
  - Storage: default
- Master username & password set.

### 2. Configure Connectivity
- Chose **Public access: Yes** (for demo).
- Modified **Security Group** to allow inbound on port `3306` from `0.0.0.0/0` (anywhere).  
  ⚠️ **Note**: This is insecure for production, but acceptable for learning.

### 3. Connect via MySQL Workbench
- Open MySQL Workbench → New Connection.  
- Enter:
  - Hostname = `<your-rds-endpoint>.rds.amazonaws.com`
  - Port = 3306
  - Username = `<master username>`
  - Password = (saved/entered when connecting)
- Test connection → Success.

### 4. Run SQL Commands
Inside Workbench, executed:sample data 

```sql
-- Create a new database
CREATE DATABASE company;

-- Use database
USE company;

-- Create table
CREATE TABLE employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  role VARCHAR(50),
  salary DECIMAL(10,2)
);

-- Insert data
INSERT INTO employees (name, role, salary)
VALUES ('Amit Kumar', 'Manager', 75000.00),
       ('Kalyani Mishra', 'Cloud Engineer', 55000.00);

-- Update data
UPDATE employees SET salary = 60000.00 WHERE name = 'Kalyani Mishra';

-- 
SELECT * FROM employees;

