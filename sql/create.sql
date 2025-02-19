CREATE TABLE Routes (
    id INT NOT NULL AUTOINCREMENT,
    routeId INT,
    agencyId INT NOT NULL,
    shortName VARCHAR(255) NOT NULL,
    longName VARCHAR(255) NOT NULL,
    activationDate DATE NOT NULL,
    routeType ENUM('BUS', 'TRAM', 'UNKNOWN', 'FERRY') NOT NULL,
    PRIMARY KEY(id)
);

-- generated is a keyword in mysql so i settled for gen
create table Bus(
  id INT NOT NULL AUTOINCREMENT,
  gen VARCHAR(32), -- generated is a keyword in mysql so i settled for gen
  routeShortName VARCHAR(64),
  tripId INT,
  routeId INT,
  headsign VARCHAR(64),
  vehicleCode VARCHAR(16),
  vehicleService VARCHAR(32),
  vehicleId INT,
  speed INT,
  direction INT,
  delay INT,
  scheduledTripStartTime VARCHAR(32),
  lat FLOAT,
  lon FLOAT,
  gpsQuality INT,
  PRIMARY KEY(id)
);

CREATE TABLE Sessions(
    id INT NOT NULL,
    userId int NOT NULL,
    token varchar(32),
    expires date not null,
    primary key (id),
    foreign key (userId) references User(id)
);

CREATE TABLE ExtendedInfo(
    photo VARCHAR(255),
    vehicleCode VARCHAR(255) PRIMARY KEY,
    carrier VARCHAR(255),
    transportationType VARCHAR(255),
    vehicleCharacteristics VARCHAR(255),
    bidirectional BOOLEAN,
    historicVehicle BOOLEAN,
    length FLOAT,
    brand VARCHAR(255),
    model VARCHAR(255),
    productionYear INT,
    seats INT,
    standingPlaces INT,
    airConditioning BOOLEAN,
    monitoring BOOLEAN,
    internalMonitor BOOLEAN,
    floorHeight VARCHAR(255),
    kneelingMechanism BOOLEAN,
    wheelchairsRamp BOOLEAN,
    usb BOOLEAN,
    voiceAnnouncements BOOLEAN,
    aed BOOLEAN,
    bikeHolders INT,
    ticketMachine BOOLEAN,
    patron VARCHAR(255),
    url VARCHAR(255),
    passengersDoors INT
);
CREATE TABLE Vehicles (
    Photo VARCHAR(50) NOT NULL,
    VehicleCode VARCHAR(10) NOT NULL PRIMARY KEY,
    Carrier VARCHAR(100) NOT NULL,
    TransportationType VARCHAR(50) NOT NULL,
    VehicleCharacteristics VARCHAR(50) NOT NULL,
    Bidirectional BOOLEAN NOT NULL,
    HistoricVehicle BOOLEAN NOT NULL,
    Length DECIMAL(5, 2) NOT NULL,
    Brand VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    ProductionYear INT NOT NULL,
    Seats INT NOT NULL,
    StandingPlaces INT NOT NULL,
    AirConditioning BOOLEAN NOT NULL,
    Monitoring BOOLEAN NOT NULL,
    InternalMonitor BOOLEAN NOT NULL,
    FloorHeight VARCHAR(50) NOT NULL,
    KneelingMechanism BOOLEAN NOT NULL,
    WheelchairsRamp BOOLEAN NOT NULL,
    USB BOOLEAN NOT NULL,
    VoiceAnnouncements BOOLEAN NOT NULL,
    AED BOOLEAN NOT NULL,
    BikeHolders INT NOT NULL,
    TicketMachine BOOLEAN NOT NULL,
    Patron VARCHAR(100) NOT NULL,
    URL VARCHAR(255) NOT NULL,
    PassengersDoors INT NOT NULL
);
