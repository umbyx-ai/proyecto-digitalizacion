-- TABLE 'clients'
CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    telefon VARCHAR(20),
    correu VARCHAR(100)
);

-- INSERTS into table 'clients'
INSERT INTO clients (nom, telefon, correu) VALUES
('Izan Barrasa', '678670234', 'izan@gmail.com'),
('Marti Pino', '636290417', 'marti@gmail.com'),
('Carlos Clavero', '673279843', 'carlos@gmail.com');

-- TABLE 'vehicles'
CREATE TABLE vehicles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    matricula VARCHAR(20),
    model VARCHAR(50),
    any_fabricacio INT,
    quilometres INT,
    FOREIGN KEY (client_id) REFERENCES clients(id)
);

-- INSERTS into table 'vechicles'
INSERT INTO vehicles (client_id, matricula, model, any_fabricacio, quilometres) VALUES
(1, '4523 BKT', 'Toyota Corolla', 2018, 87000),
(2, '7891 MNP', 'Ford Focus', 2015, 124000),
(3, '2034 XRZ', 'Seat Ibiza', 2020, 43000);

-- TABLE 'cites'
CREATE TABLE cites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT,
    data_cita DATE,
    servei_sollicitat VARCHAR(100),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(id)
);

-- INSERTS into table 'cites'
INSERT INTO cites (vehicle_id, data_cita, servei_sollicitat) VALUES
(1, '2025-06-10', "Canvi d'oli"),
(2, '2025-06-12', 'Revisió de frens'),
(3, '2025-06-15', 'Canvi de pneumàtics');
