-- Add foreign key constraints for the Aircrafts table
ALTER TABLE Flights
    ADD CONSTRAINT FK_Aircrafts
    FOREIGN KEY (aircraft_id) REFERENCES Aircrafts(aircraft_id);

-- Add foreign key constraints for the Crew_Assignments table
ALTER TABLE Crew_Assignments
    ADD CONSTRAINT FK_Flights
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    ADD CONSTRAINT FK_Employees
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id);

-- Add foreign key constraints for the Bookings table
ALTER TABLE Bookings
    ADD CONSTRAINT FK_Flights_Bookings
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    ADD CONSTRAINT FK_Passengers_Bookings
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id);

-- Add foreign key constraints for the Baggage table
ALTER TABLE Baggage
    ADD CONSTRAINT FK_Bookings_Baggage
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id);

-- Add foreign key constraints for the Security_Logs table
ALTER TABLE Security_Logs
    ADD CONSTRAINT FK_Passengers_Security_Logs
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    ADD CONSTRAINT FK_Flights_Security_Logs
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id);

-- Add foreign key constraints for the Immigration_Records table
ALTER TABLE Immigration_Records
    ADD CONSTRAINT FK_Passengers_Immigration_Records
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    ADD CONSTRAINT FK_Flights_Immigration_Records
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id);
