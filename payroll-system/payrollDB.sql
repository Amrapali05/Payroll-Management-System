-- ==============================
-- DATABASE
-- ==============================
CREATE DATABASE IF NOT EXISTS payroll_system;
USE payroll_system;

-- ==============================
-- USERS TABLE (Admin + Employee Login)
-- ==============================
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    role ENUM('admin','employee') NOT NULL
);

-- ==============================
-- EMPLOYEES TABLE
-- ==============================
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    department VARCHAR(50),
    address VARCHAR(255),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- ==============================
-- SALARY TABLE
-- ==============================
DROP TABLE IF EXISTS salary;

CREATE TABLE salary (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT NOT NULL,
    basic DOUBLE,
    hra DOUBLE,
    bonus DOUBLE,
    deduction DOUBLE,
    net_salary DOUBLE,
    month VARCHAR(20),

    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
    ON DELETE CASCADE
);

-- ==============================
-- ATTENDANCE TABLE
-- ==============================
CREATE TABLE IF NOT EXISTS attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    date DATE,
    status ENUM('Present','Absent','Leave'),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id) ON DELETE CASCADE
);

-- ==============================
-- PAYSLIP TABLE (OPTIONAL)
-- ==============================
CREATE TABLE IF NOT EXISTS payslip (
    payslip_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    month VARCHAR(20),
    total_salary DOUBLE,
    generated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id) ON DELETE CASCADE
);

-- ==============================
-- SAMPLE USERS (LOGIN)
-- ==============================
INSERT INTO users(name,email,password,role) VALUES
('Admin','admin@gmail.com','123','admin'),
('Abhishek','abhi@gmail.com','123','employee');

-- ==============================
-- SAMPLE EMPLOYEES
-- ==============================
INSERT INTO employees(name,email,phone,department,address) VALUES
('Abhishek','abhi@gmail.com','9876543210','IT','Pune'),
('Rahul','rahul@gmail.com','9123456780','HR','Mumbai');

-- ==============================
-- SAMPLE SALARY
-- ==============================
INSERT INTO salary(emp_id,basic,hra,bonus,deduction,net_salary) VALUES
(1,20000,5000,2000,1000,26000),
(2,25000,6000,3000,1500,32500);

-- ==============================
-- SAMPLE ATTENDANCE
-- ==============================
INSERT INTO attendance(emp_id,date,status) VALUES
(1,'2026-04-01','Present'),
(1,'2026-04-02','Absent'),
(2,'2026-04-01','Present');

-- ==============================
-- SAMPLE PAYSLIP
-- ==============================
INSERT INTO payslip(emp_id,month,total_salary) VALUES
(1,'April',26000),
(2,'April',32500);