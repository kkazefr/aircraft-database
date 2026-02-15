-- Create database
CREATE DATABASE IF NOT EXISTS airport_management;
USE airport_management;

-- Table: Aircrafts
CREATE TABLE Aircrafts (
    aircraft_id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50),
    production_year YEAR,
    flight_hours INT,
    last_inspection_date DATE
);

-- Table: Maintenance
CREATE TABLE Maintenance (
    maintenance_id INT AUTO_INCREMENT PRIMARY KEY,
    aircraft_id INT NOT NULL,
    maintenance_type VARCHAR(50),
    description TEXT,
    cost DECIMAL(10,2),
    date DATE,
    FOREIGN KEY (aircraft_id) REFERENCES Aircrafts(aircraft_id)
);

-- Table: Employees
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role ENUM('Pilot', 'Attendant', 'Dispatcher', 'Technician', 'Cashier') NOT NULL,
    hire_date DATE,
    experience_years INT,
    medical_check BOOLEAN DEFAULT FALSE
);

-- Table: Flights
CREATE TABLE Flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    flight_number VARCHAR(10) UNIQUE NOT NULL,
    origin VARCHAR(50),
    destination VARCHAR(50),
    departure_time DATETIME,
    arrival_time DATETIME,
    flight_type ENUM('Domestic', 'International', 'Charter', 'Cargo') NOT NULL,
    status ENUM('Scheduled', 'Delayed', 'Cancelled', 'Departed', 'Arrived') DEFAULT 'Scheduled',
    aircraft_id INT,
    FOREIGN KEY (aircraft_id) REFERENCES Aircrafts(aircraft_id)
);

-- Table: Crew_Assignments
CREATE TABLE Crew_Assignments (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    flight_id INT NOT NULL,
    employee_id INT NOT NULL,
    role_on_flight VARCHAR(50),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Table: Passengers
CREATE TABLE Passengers (
    passenger_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    passport_number VARCHAR(20),
    nationality VARCHAR(50),
    date_of_birth DATE
);

-- Table: Bookings
CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    flight_id INT NOT NULL,
    passenger_id INT NOT NULL,
    booking_date DATETIME,
    ticket_number VARCHAR(20) UNIQUE,
    seat_number VARCHAR(10),
    status ENUM('Booked', 'Checked-in', 'Cancelled', 'Boarded') DEFAULT 'Booked',
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);

-- Table: Baggage
CREATE TABLE Baggage (
    baggage_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    weight DECIMAL(5,2),
    status ENUM('Checked', 'Loaded', 'Lost', 'Delivered') DEFAULT 'Checked',
    location VARCHAR(100),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

-- Table: Security_Logs
CREATE TABLE Security_Logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    passenger_id INT NOT NULL,
    flight_id INT NOT NULL,
    screening_result ENUM('Clear', 'Flagged') NOT NULL,
    screening_time DATETIME,
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

-- Table: Immigration_Records
CREATE TABLE Immigration_Records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    passenger_id INT NOT NULL,
    flight_id INT NOT NULL,
    passport_verified BOOLEAN DEFAULT FALSE,
    customs_status ENUM('Cleared', 'Held') DEFAULT 'Cleared',
    clearance_time DATETIME,
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

-- Indexes for performance
CREATE INDEX idx_flight_schedule ON Flights(departure_time, arrival_time);
CREATE INDEX idx_passenger_name ON Passengers(full_name);
CREATE INDEX idx_booking_status ON Bookings(status);


