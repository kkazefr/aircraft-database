SELECT p.passenger_id AS PassengerID, p.full_name AS PassengerName, 
       bp.boarding_pass_number, f.flight_number, 
       f.departure_time, f.arrival_time, bp.seat_number
FROM Passengers p
JOIN BoardingPasses bp ON p.passenger_id = bp.passenger_id
JOIN Flights f ON bp.flight_id = f.flight_id
ORDER BY p.full_name, f.departure_time;

SELECT s.employee_id AS StaffID, s.full_name AS StaffName, s.position AS Role,
       a.aircraft_type AS AircraftType, a.aircraft_id AS AircraftID
FROM AirportStaff s
LEFT JOIN Aircraft a ON s.aircraft_id = a.aircraft_id
ORDER BY s.full_name;

SELECT f.flight_id AS FlightID, f.departure_time, f.arrival_time,
       f.aircraft_id, da.airport_name AS DepartureAirport,
       aa.airport_name AS ArrivalAirport
FROM Flights f
JOIN Airports da ON f.departure_airport_id = da.airport_id
JOIN Airports aa ON f.arrival_airport_id = aa.airport_id
ORDER BY f.departure_time;

SELECT fc.crew_id AS CrewID, s.full_name AS StaffName, fc.position AS Role,
       fc.shift_schedule AS AssignedShift, a.aircraft_type AS AircraftType,
       a.aircraft_id AS AircraftID
FROM FlightCrew fc
JOIN AirportStaff s ON fc.employee_id = s.employee_id
JOIN Aircraft a ON fc.aircraft_id = a.aircraft_id
ORDER BY fc.shift_schedule, s.full_name;

SELECT bp.boarding_pass_number, p.full_name AS PassengerName,
       t.ticket_price AS Price, t.purchase_date AS SaleDate
FROM BoardingPasses bp
JOIN Passengers p ON bp.passenger_id = p.passenger_id
JOIN Tickets t ON bp.ticket_id = t.ticket_id
ORDER BY t.purchase_date;

SELECT aircraft_type, passenger_capacity, range_km, manufacturer
FROM AircraftTypes
ORDER BY aircraft_type;

SELECT fd.flight_id, fd.delay_minutes, fd.delay_reason,
       a.aircraft_type AS AircraftType, f.flight_number
FROM FlightDelays fd
JOIN Flights f ON fd.flight_id = f.flight_id
JOIN Aircraft a ON f.aircraft_id = a.aircraft_id
ORDER BY fd.delay_minutes DESC;

SELECT class_name, description, baggage_allowance, seat_pitch
FROM TravelClasses
ORDER BY class_name;

SELECT event_id, event_type, event_description, user_id,
       created_at AS EventTimestamp
FROM SystemEvents
ORDER BY created_at DESC;

SELECT f.flight_id AS FlightID, da.airport_code AS DepartureCode,
       aa.airport_code AS ArrivalCode, da.airport_name AS DepartureAirport,
       aa.airport_name AS ArrivalAirport, f.departure_time, f.arrival_time
FROM Flights f
JOIN Airports da ON f.departure_airport_id = da.airport_id
JOIN Airports aa ON f.arrival_airport_id = aa.airport_id
ORDER BY f.departure_time;

SELECT p.passenger_id, p.full_name, b.baggage_tag, b.weight_kg,
       b.checkin_time, f.flight_number, b.status AS BaggageStatus
FROM Baggage b
JOIN Passengers p ON b.passenger_id = p.passenger_id
JOIN Flights f ON b.flight_id = f.flight_id
ORDER BY b.checkin_time;

SELECT sc.screening_id, p.full_name AS PassengerName, sc.screening_time,
       sc.checkpoint_id, sc.result, sc.officer_id
FROM SecurityScreenings sc
JOIN Passengers p ON sc.passenger_id = p.passenger_id
ORDER BY sc.screening_time DESC;

SELECT a.aircraft_id, a.aircraft_type, ms.maintenance_type,
       ms.scheduled_date, ms.completion_date, ms.status,
       ms.cost_estimate
FROM MaintenanceSchedules ms
JOIN Aircraft a ON ms.aircraft_id = a.aircraft_id
ORDER BY ms.scheduled_date;

SELECT g.gate_number, f.flight_number, f.departure_time,
       f.arrival_time, a.aircraft_type, g.status AS GateStatus
FROM Gates g
JOIN Flights f ON g.flight_id = f.flight_id
LEFT JOIN Aircraft a ON f.aircraft_id = a.aircraft_id
WHERE g.assignment_date = CURRENT_DATE
ORDER BY g.gate_number;

SELECT f.flight_number, COUNT(DISTINCT p.passenger_id) AS PassengersCheckedIn,
       COUNT(b.baggage_id) AS BagsChecked, f.departure_time
FROM Flights f
LEFT JOIN BoardingPasses bp ON f.flight_id = bp.flight_id
LEFT JOIN Passengers p ON bp.passenger_id = p.passenger_id
LEFT JOIN Baggage b ON f.flight_id = b.flight_id AND p.passenger_id = b.passenger_id
WHERE f.departure_time >= NOW()
GROUP BY f.flight_number, f.departure_time
ORDER BY f.departure_time;
