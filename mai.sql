
/* Create Database */
CREATE DATABASE CarRentalSystem;
USE CarRentalSystem;

/* Create Tables */
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Phone VARCHAR(15),
    Address VARCHAR(100),
    LicenseNumber VARCHAR(20)
);

CREATE TABLE Cars (
    CarID INT PRIMARY KEY,
    Model VARCHAR(50),
    Type VARCHAR(20),
    DailyPrice DECIMAL(10, 2),
    Status VARCHAR(20)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    JobTitle VARCHAR(50)
);

CREATE TABLE Contracts (
    ContractID INT PRIMARY KEY,
    StartDate DATE,
    EndDate DATE,
    TotalPrice DECIMAL(10, 2),
    CustomerID INT,
    CarID INT,
    EmployeeID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    ContractID INT,
    Amount DECIMAL(10, 2),
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (ContractID) REFERENCES Contracts(ContractID)
);

/* Insert Data for Customers */
INSERT INTO Customers (CustomerID, Name, Phone, Address, LicenseNumber) VALUES 
(1, 'Ali Ahmed', '0123456789', 'Cairo', 'L12345'),
(2, 'Sara Mohamed', '0112233445', 'Giza', 'L54321'),
(3, 'Mona Samir', '0109876543', 'Alexandria', 'L67890'),
(4, 'Hassan Ali', '0123344556', 'Mansoura', 'L98765'),
(5, 'Hend Khaled', '0116677889', 'Aswan', 'L55678'),
(6, 'Omar Nabil', '0101122334', 'Luxor', 'L99887'),
(7, 'Mai Fathy', '0122233445', 'Suez', 'L33445'),
(8, 'Nour Salama', '0115566778', 'Ismailia', 'L22110'),
(9, 'Khaled Magdy', '0107788990', 'Zagazig', 'L55667'),
(10, 'Aya Youssef', '0123456781', 'Port Said', 'L11000');

/* Insert Data for Cars */
INSERT INTO Cars (CarID, Model, Type, DailyPrice, Status) VALUES 
(1, 'Toyota Corolla', 'Sedan', 250.00, 'Available'),
(2, 'Honda Civic', 'Sedan', 300.00, 'Rented'),
(3, 'BMW X5', 'SUV', 500.00, 'Maintenance'),
(4, 'Nissan Altima', 'Sedan', 270.00, 'Available'),
(5, 'Ford Focus', 'Compact', 220.00, 'Rented'),
(6, 'Chevrolet Tahoe', 'SUV', 600.00, 'Available'),
(7, 'Hyundai Elantra', 'Sedan', 280.00, 'Rented'),
(8, 'Kia Sportage', 'SUV', 450.00, 'Maintenance'),
(9, 'Mazda CX-5', 'SUV', 480.00, 'Available'),
(10, 'Mercedes C-Class', 'Sedan', 550.00, 'Rented');

/* Insert Data for Employees */
INSERT INTO Employees (EmployeeID, Name, JobTitle) VALUES 
(1, 'Ahmed Khaled', 'Manager'),
(2, 'Fatma Salem', 'Sales Representative'),
(3, 'Tarek Amin', 'Mechanic'),
(4, 'Omar Said', 'Customer Service'),
(5, 'Rana Hany', 'Accountant'),
(6, 'Mahmoud Yasser', 'Cleaner'),
(7, 'Salma Fathy', 'Mechanic'),
(8, 'Hassan Zaki', 'Receptionist'),
(9, 'Eman Adel', 'Manager'),
(10, 'Mostafa Kamal', 'Security');



INSERT INTO Contracts (ContractID, StartDate, EndDate, TotalPrice, CustomerID, CarID, EmployeeID) VALUES 
(1, '2025-05-01', '2025-05-10', 2500.00, 1, 2, 2),
(2, '2025-05-05', '2025-05-12', 3000.00, 2, 5, 5),
(3, '2025-05-03', '2025-05-08', 4000.00, 3, 3, 3),
(4, '2025-05-07', '2025-05-15', 3500.00, 4, 4, 1),
(5, '2025-05-10', '2025-05-20', 2200.00, 5, 1, 6),
(6, '2025-05-11', '2025-05-15', 6000.00, 6, 6, 7),
(7, '2025-05-13', '2025-05-20', 2800.00, 7, 7, 8),
(8, '2025-05-15', '2025-05-22', 5500.00, 8, 8, 9),
(9, '2025-05-16', '2025-05-21', 1800.00, 9, 9, 10),
(10, '2025-05-18', '2025-05-25', 7000.00, 10, 10, 4);






INSERT INTO Invoices (InvoiceID, ContractID, Amount, PaymentStatus) VALUES 
(1, 1, 2500.00, 'Paid'),
(2, 2, 3000.00, 'Unpaid'),
(3, 3, 4000.00, 'Paid'),
(4, 4, 3500.00, 'Paid'),
(5, 5, 2200.00, 'Unpaid'),
(6, 6, 6000.00, 'Paid'),
(7, 7, 2800.00, 'Paid'),
(8, 8, 5500.00, 'Unpaid'),
(9, 9, 1800.00, 'Paid'),
(10, 10, 7000.00, 'Paid');




INSERT INTO Maintenance (MaintenanceID, CarID, MaintenanceDate, MaintenanceType, Cost) VALUES 
(1, 3, '2025-05-02', 'Engine Repair', 1500.00),
(2, 6, '2025-05-06', 'Oil Change', 300.00),
(3, 7, '2025-05-08', 'Brake Check', 500.00),
(4, 2, '2025-05-10', 'Tire Replacement', 800.00),
(5, 4, '2025-05-12', 'Battery Replacement', 450.00),
(6, 9, '2025-05-14', 'Interior Cleaning', 200.00),
(7, 8, '2025-05-16', 'Transmission Repair', 2000.00),
(8, 5, '2025-05-18', 'Air Filter Replacement', 250.00),
(9, 10, '2025-05-20', 'Suspension Repair', 1800.00),
(10, 1, '2025-05-22', 'General Checkup', 500.00);




INSERT INTO Reservations (ReservationID, CustomerID, CarID, ReservationDate, StartDate, EndDate) VALUES 
(1, 1, 1, '2025-04-30', '2025-05-01', '2025-05-10'),
(2, 2, 5, '2025-05-01', '2025-05-05', '2025-05-12'),
(3, 3, 3, '2025-05-02', '2025-05-03', '2025-05-08'),
(4, 4, 4, '2025-05-04', '2025-05-07', '2025-05-15'),
(5, 5, 2, '2025-05-05', '2025-05-10', '2025-05-20'),
(6, 6, 6, '2025-05-06', '2025-05-11', '2025-05-15'),
(7, 7, 7, '2025-05-07', '2025-05-13', '2025-05-20'),
(8, 8, 8, '2025-05-08', '2025-05-15', '2025-05-22'),
(9, 9, 9, '2025-05-09', '2025-05-16', '2025-05-21'),
(10, 10, 10, '2025-05-10', '2025-05-18', '2025-05-25');






INSERT INTO Penalties (PenaltyID, ContractID, Reason, Amount) VALUES 
(1, 1, 'Late Return', 300.00),
(2, 2, 'Damage to Car', 1500.00),
(3, 3, 'Extra Mileage', 200.00),
(4, 4, 'Unpaid Fees', 500.00),
(5, 5, 'Fuel Shortage', 100.00),
(6, 6, 'Late Return', 250.00),
(7, 7, 'Damage to Car', 700.00),
(8, 8, 'Extra Mileage', 300.00),
(9, 9, 'Unpaid Fees', 400.00),
(10, 10, 'Fuel Shortage', 150.00);




INSERT INTO Insurance (InsuranceID, CarID, InsuranceType, StartDate, EndDate) VALUES 
(1, 1, 'Full Coverage', '2025-01-01', '2025-12-31'),
(2, 2, 'Third Party', '2025-03-01', '2025-09-30'),
(3, 3, 'Collision', '2025-05-01', '2025-11-30'),
(4, 4, 'Comprehensive', '2025-02-15', '2025-08-15'),
(5, 5, 'Full Coverage', '2025-04-01', '2025-10-31'),
(6, 6, 'Third Party', '2025-05-01', '2025-11-30'),
(7, 7, 'Collision', '2025-06-01', '2025-12-31'),
(8, 8, 'Comprehensive', '2025-01-01', '2025-12-31'),
(9, 9, 'Full Coverage', '2025-03-15', '2025-09-15'),
(10, 10, 'Third Party', '2025-05-10', '2025-11-10');





INSERT INTO DrivingRecords (RecordID, ContractID, DriverName, LicenseNumber, Notes) VALUES 
(1, 1, 'Ali Ahmed', 'L12345', 'No issues reported'),
(2, 2, 'Sara Mohamed', 'L54321', 'Minor scratch on rear'),
(3, 3, 'Mona Samir', 'L67890', 'Late return'),
(4, 4, 'Hassan Ali', 'L11223', 'Excessive mileage'),
(5, 5, 'Hend Khaled', 'L55678', 'Fuel shortage'),
(6, 6, 'Omar Nabil', 'L99887', 'Brake issue reported'),
(7, 7, 'Mai Fathy', 'L33445', 'No issues reported'),
(8, 8, 'Nour Salama', 'L22110', 'Minor scratch on door'),
(9, 9, 'Khaled Magdy', 'L55667', 'Excessive mileage'),
(10, 10, 'Aya Youssef', 'L11000', 'Late return and damage');


/* User Privileges */
CREATE USER 'readonly'@'localhost' IDENTIFIED BY 'readonly123';
GRANT SELECT ON CarRentalSystem.* TO 'readonly'@'localhost';

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin123';
GRANT ALL PRIVILEGES ON CarRentalSystem.* TO 'admin'@'localhost';
