
CREATE TABLE Customers
(
    IdCustomer      int             NOT NULL AUTO_INCREMENT,
    CustomerName    varchar(255)    NOT NULL,
    Address         varchar(255)    NOT NULL,
    Email           varchar(255)    NOT NULL,
    PRIMARY KEY (IdCustomer)
);

CREATE TABLE Products
(
    IdProduct      int             NOT NULL AUTO_INCREMENT,
    ProductName    varchar(255)    NOT NULL,
    Price          decimal(10,2)   NOT NULL,
    Seller         varchar(255)    NOT NULL,
    PRIMARY KEY (IdProduct)
);

CREATE TABLE Purchases
(
    IdPurchase     int   NOT NULL AUTO_INCREMENT,
    IdCustomer     int   NOT NULL,
    IdProduct      int   NOT NULL,
    Quantity       int   NOT NULL,
    PRIMARY KEY (IdPurchase),
    FOREIGN KEY (IdCustomer) REFERENCES Customers (IdCustomer),
    FOREIGN KEY (IdProduct) REFERENCES Products (IdProduct)
);

INSERT INTO Customers (CustomerName, Address, Email)
VALUES  ('Agustine Riviera', '123 SunnyDale', 'arivi5@sample.com'),
        ('Agustine Riviera', '422 Cruz Verde', 'agus.tino.riviera@example.com'),
        ('Rebecca Tonna', '5 Real Ortega', 'happyrio@example.com'),
        ('Sonia Riviera', '123 SunnyDale', 'sonia.riviera@sample.com'),
        ('Jaime Torres', '15 Sunnydale', 'prof.torres@sample.edu');

INSERT INTO Products (ProductName, Price, Seller)
VALUES  ('Electric Toothbrush', 15.15, 'Pitz'),
        ('Pencil', 3.12, 'Pitz'),
        ('Umbrella', 20.17, 'Hardy'),
        ('Cellphone', 512.00, 'Orange'),
        ('Camera', 327.99, 'Orange');

INSERT INTO Purchases (IdCustomer, IdProduct, Quantity)
VALUES  (1, 1, 5),
        (1, 2, 13),
        (1, 3, 1),
        (3, 2, 20),
        (4, 4, 1),
        (3, 4, 1),
        (5, 5, 1);

SELECT * FROM Customers;

SELECT * FROM Products;

SELECT * FROM Purchases;