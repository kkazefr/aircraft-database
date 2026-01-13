-- Aircrafts
INSERT INTO Aircrafts (model, manufacturer, production_year, flight_hours, last_inspection_date) VALUES
('Boeing 737 MAX', 'Boeing', 2020, 12000, '2025-04-15'),
('Airbus A321neo', 'Airbus', 2021, 10000, '2025-04-20'),
('Bombardier Q400', 'Bombardier', 2018, 8000, '2025-04-10'),
('Comac C919', 'COMAC', 2023, 500, '2025-05-20');  -- future aircraft

-- Employees (15 total)
INSERT INTO Employees (name, role, hire_date, experience_years, medical_check) VALUES
('Mark Jensen', 'Pilot', '2012-03-12', 12, TRUE),
('Lara Bright', 'Pilot', '2015-08-19', 9, TRUE),
('Sam Ortega', 'Attendant', '2019-01-02', 5, TRUE),
('Tina Gold', 'Attendant', '2020-06-14', 4, TRUE),
('Nina Redford', 'Attendant', '2021-11-22', 3, TRUE),
('Rico Nash', 'Dispatcher', '2010-05-05', 14, TRUE),
('Kayla Voss', 'Technician', '2016-07-30', 8, TRUE),
('James Wood', 'Technician', '2014-09-10', 10, TRUE),
('Haley Storm', 'Technician', '2022-03-17', 2, TRUE),
('Paul Green', 'Cashier', '2017-04-01', 7, TRUE),
('Anna Cruz', 'Pilot', '2013-12-04', 11, TRUE),
('Olga Petrova', 'Attendant', '2022-05-10', 2, TRUE),
('Victor Yates', 'Dispatcher', '2011-11-11', 13, TRUE),
('Drew Kinney', 'Technician', '2018-10-10', 6, TRUE),
('Jill Carter', 'Cashier', '2016-06-06', 9, TRUE);

-- Passengers (IDs 1–30)
INSERT INTO Passengers (full_name, passport_number, nationality, date_of_birth) VALUES
('Alice Walker', 'A00000001', 'USA', '1990-05-10'),
('Robert Brown', 'A00000002', 'UK', '1985-09-23'),
('Linda Nguyen', 'A00000003', 'Germany', '1992-12-05'),
('Daniel Smith', 'A00000004', 'Canada', '1991-02-18'),
('Nina Lopez', 'A00000005', 'Spain', '1989-11-22'),
('Tomislav Jovic', 'A00000006', 'Serbia', '1987-08-10'),
('Ella Fitzgerald', 'A00000007', 'USA', '1995-06-30'),
('Farid Khan', 'A00000008', 'Pakistan', '1993-03-12'),
('Yuna Kim', 'A00000009', 'South Korea', '1997-09-09'),
('Lars Andersen', 'A00000010', 'Denmark', '1990-04-04'),

('Kevin White', 'B00000011', 'USA', '1982-07-07'),
('Maya Patel', 'B00000012', 'India', '1996-12-12'),
('Kenji Sato', 'B00000013', 'Japan', '1994-05-15'),
('Olivia Zane', 'B00000014', 'Australia', '1986-03-03'),
('Carlos Silva', 'B00000015', 'Brazil', '1983-02-02'),
('Youssef Ali', 'B00000016', 'Egypt', '1988-10-10'),
('Marie Curie', 'B00000017', 'France', '1991-01-01'),
('Chen Wei', 'B00000018', 'China', '1990-06-06'),
('Mikhail Ivanov', 'B00000019', 'Russia', '1985-08-08'),
('Fatima Zahra', 'B00000020', 'Morocco', '1989-11-11'),

('Jan Novak', 'C00000021', 'Czech Republic', '1993-09-09'),
('Pedro Martinez', 'C00000022', 'Mexico', '1992-02-02'),
('Aria Gold', 'C00000023', 'Israel', '1995-04-04'),
('William Black', 'C00000024', 'USA', '1986-06-06'),
('Chen Lee', 'C00000025', 'Taiwan', '1987-07-07'),
('Sasha Ivanova', 'C00000026', 'Ukraine', '1994-08-08'),
('Hassan Abdi', 'C00000027', 'Kenya', '1990-10-10'),
('Mei Wang', 'C00000028', 'China', '1988-12-12'),
('Ravi Kumar', 'C00000029', 'India', '1983-11-11'),
('Sarah Dean', 'C00000030', 'Canada', '1996-03-03');

-- Flights (IDs 1–3)
INSERT INTO Flights (flight_number, origin, destination, departure_time, arrival_time, flight_type, status, aircraft_id) VALUES
('NYL123', 'New York', 'London', '2025-06-15 08:00:00', '2025-06-15 20:00:00', 'International', 'Scheduled', 1),
('LAX789', 'Los Angeles', 'Chicago', '2025-06-16 10:00:00', '2025-06-16 14:30:00', 'Domestic', 'Scheduled', 2),
('BER321', 'Berlin', 'Dubai', '2025-06-17 22:00:00', '2025-06-18 06:00:00', 'Charter', 'Scheduled', 3);

-- Crew Assignments
INSERT INTO Crew_Assignments (flight_id, employee_id, role_on_flight) VALUES
-- Flight 1 (NYL123)
(1, 1, 'Pilot'),
(1, 3, 'Attendant'),
(1, 4, 'Attendant'),
(1, 6, 'Dispatcher'),
-- Flight 2 (LAX789)
(2, 2, 'Pilot'),
(2, 5, 'Attendant'),
(2, 12, 'Attendant'),
(2, 13, 'Dispatcher'),
-- Flight 3 (BER321)
(3, 11, 'Pilot'),
(3, 9, 'Technician'),
(3, 7, 'Technician'),
(3, 14, 'Technician');

-- Bookings for Flights 1–3
-- Flight 1: passengers 1–10
INSERT INTO Bookings (flight_id, passenger_id, booking_date, ticket_number, seat_number, status) VALUES
(1, 1, '2025-06-01', 'TKT1001', '1A', 'Booked'),
(1, 2, '2025-06-01', 'TKT1002', '1B', 'Booked'),
(1, 3, '2025-06-01', 'TKT1003', '2A', 'Booked'),
(1, 4, '2025-06-02', 'TKT1004', '2B', 'Checked-in'),
(1, 5, '2025-06-02', 'TKT1005', '3A', 'Booked'),
(1, 6, '2025-06-03', 'TKT1006', '3B', 'Booked'),
(1, 7, '2025-06-03', 'TKT1007', '4A', 'Booked'),
(1, 8, '2025-06-04', 'TKT1008', '4B', 'Cancelled'),
(1, 9, '2025-06-05', 'TKT1009', '5A', 'Booked'),
(1,10, '2025-06-06', 'TKT1010', '5B', 'Checked-in');

-- Flight 2: passengers 11–20
INSERT INTO Bookings (flight_id, passenger_id, booking_date, ticket_number, seat_number, status) VALUES
(2,11, '2025-06-01', 'TKT1011', '6A', 'Booked'),
(2,12, '2025-06-01', 'TKT1012', '6B', 'Booked'),
(2,13, '2025-06-02', 'TKT1013', '7A', 'Booked'),
(2,14, '2025-06-02', 'TKT1014', '7B', 'Checked-in'),
(2,15, '2025-06-03', 'TKT1015', '8A', 'Booked'),
(2,16, '2025-06-03', 'TKT1016', '8B', 'Booked'),
(2,17, '2025-06-04', 'TKT1017', '9A', 'Cancelled'),
(2,18, '2025-06-04', 'TKT1018', '9B', 'Booked'),
(2,19, '2025-06-05', 'TKT1019', '10A', 'Booked'),
(2,20, '2025-06-06', 'TKT1020', '10B', 'Booked');

-- Flight 3: passengers 21–30
INSERT INTO Bookings (flight_id, passenger_id, booking_date, ticket_number, seat_number, status) VALUES
(3,21, '2025-06-01', 'TKT1021', '11A', 'Booked'),
(3,22, '2025-06-01', 'TKT1022', '11B', 'Booked'),
(3,23, '2025-06-02', 'TKT1023', '12A', 'Checked-in'),
(3,24, '2025-06-02', 'TKT1024', '12B', 'Booked'),
(3,25, '2025-06-03', 'TKT1025', '13A', 'Booked'),
(3,26, '2025-06-03', 'TKT1026', '13B', 'Booked'),
(3,27, '2025-06-04', 'TKT1027', '14A', 'Booked'),
(3,28, '2025-06-04', 'TKT1028', '14B', 'Booked'),
(3,29, '2025-06-05', 'TKT1029', '15A', 'Cancelled'),
(3,30, '2025-06-06', 'TKT1030', '15B', 'Booked');

-- Bookings for aircraft_id=4 (not scheduled yet)
-- We'll simulate a future flight (e.g., flight_id=4 to be added later)
-- Assume flight_id 4 temporarily for placeholder
INSERT INTO Flights (flight_number, origin, destination, departure_time, arrival_time, flight_type, status, aircraft_id) 
VALUES ('FUT001', 'Rome', 'Cairo', '2025-07-01 09:00:00', '2025-07-01 12:00:00', 'International', 'Scheduled', 4);

-- Bookings for future flight_id=4 using passengers 1–10 again (repeat bookings)
INSERT INTO Bookings (flight_id, passenger_id, booking_date, ticket_number, seat_number, status) VALUES
(4, 1, '2025-06-10', 'TKT2001', '1C', 'Booked'),
(4, 2, '2025-06-10', 'TKT2002', '1D', 'Booked'),
(4, 3, '2025-06-11', 'TKT2003', '2C', 'Booked'),
(4, 4, '2025-06-11', 'TKT2004', '2D', 'Booked'),
(4, 5, '2025-06-12', 'TKT2005', '3C', 'Booked'),
(4, 6, '2025-06-12', 'TKT2006', '3D', 'Booked'),
(4, 7, '2025-06-13', 'TKT2007', '4C', 'Booked'),
(4, 8, '2025-06-13', 'TKT2008', '4D', 'Booked'),
(4, 9, '2025-06-14', 'TKT2009', '5C', 'Booked'),
(4,10, '2025-06-14', 'TKT2010', '5D', 'Booked');


-- Maintenance Records (for all 4 aircrafts)
INSERT INTO Maintenance (aircraft_id, maintenance_type, description, cost, date) VALUES
(1, 'Inspection', 'Routine inspection and oil check', 2500.00, '2025-04-10'),
(1, 'Repair', 'Replaced hydraulic component', 7500.00, '2025-05-02'),
(2, 'Inspection', 'Engine diagnostics', 3000.00, '2025-05-15'),
(3, 'Repair', 'Landing gear adjustment', 5200.00, '2025-03-18'),
(4, 'Inspection', 'Initial delivery inspection', 1500.00, '2025-05-22');


-- Baggage Records (10 bookings)
INSERT INTO Baggage (booking_id, weight, status, location) VALUES
(1, 23.5, 'Checked', 'NY Terminal A'),
(2, 18.0, 'Loaded', 'NY Terminal A'),
(3, 21.2, 'Checked', 'NY Terminal A'),
(4, 19.8, 'Checked', 'NY Terminal B'),
(5, 25.0, 'Checked', 'NY Terminal B'),
(6, 20.0, 'Checked', 'NY Terminal C'),
(7, 22.3, 'Lost', 'Last seen at Gate 6'),
(8, 18.7, 'Checked', 'NY Terminal C'),
(9, 24.1, 'Delivered', 'London Arrival 2'),
(10, 20.4, 'Checked', 'NY Terminal D');
