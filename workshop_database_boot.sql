DROP DATABASE IF EXISTS e_commerce; -- Tests if the database exists and drops it to prevent errors
CREATE DATABASE e_commerce; -- Create the database before creating the tables
USE e_commerce; -- Select the newly created database for subsequent operations

-- Creation of the Client table
CREATE TABLE Cliente (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each client
    nome VARCHAR(100) NOT NULL, -- Client's name
    endereco VARCHAR(255), -- Client's address
    telefone VARCHAR(15) UNIQUE -- Client's phone number
);

-- Creation of the Vehicle table
CREATE TABLE Veiculo (
    veiculo_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each vehicle
    placa VARCHAR(10) NOT NULL UNIQUE, -- License plate
    modelo VARCHAR(100) NOT NULL, -- Vehicle model
    marca VARCHAR(50) NOT NULL, -- Vehicle brand
    ano_fabricacao INT NOT NULL, -- Year of manufacture
    cliente_id INT NOT NULL, -- Foreign key linking the vehicle to a client
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

-- Creation of the Mechanic table
CREATE TABLE Mecanico (
    mecanico_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each mechanic
    nome VARCHAR(100) NOT NULL, -- Mechanic's name
    endereco VARCHAR(255), -- Mechanic's address
    especialidade VARCHAR(100) NOT NULL -- Mechanic's specialty
);

-- Creation of the Team table
CREATE TABLE Equipe (
    equipe_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each team
    nome_equipe VARCHAR(100) NOT NULL -- Team name
);

-- Creation of the Team_Mechanic table
CREATE TABLE Equipe_Mecanico (
    equipe_id INT NOT NULL, -- Foreign key linking to a team
    mecanico_id INT NOT NULL, -- Foreign key linking to a mechanic
    PRIMARY KEY (equipe_id, mecanico_id), -- Composite primary key to ensure unique assignment
    FOREIGN KEY (equipe_id) REFERENCES Equipe(equipe_id),
    FOREIGN KEY (mecanico_id) REFERENCES Mecanico(mecanico_id)
);

-- Creation of the Service Order table
CREATE TABLE Ordem_Servico (
    ordem_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each service order
    numero_os VARCHAR(20) NOT NULL UNIQUE, -- Service order number
    data_emissao DATE NOT NULL, -- Date the service order was issued
    data_conclusao DATE, -- Date the service order was completed
    valor_total DECIMAL(10, 2), -- Total value of the service order
    status ENUM('pendente', 'em_execucao', 'concluida') NOT NULL, -- Current status of the order
    veiculo_id INT NOT NULL, -- Foreign key linking to a vehicle
    equipe_id INT NOT NULL, -- Foreign key linking to a team
    FOREIGN KEY (veiculo_id) REFERENCES Veiculo(veiculo_id),
    FOREIGN KEY (equipe_id) REFERENCES Equipe(equipe_id)
);

-- Creation of the Service table
CREATE TABLE Servico (
    servico_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each service
    descricao VARCHAR(255) NOT NULL, -- Description of the service
    valor_mao_de_obra DECIMAL(10, 2) NOT NULL -- Cost of labor
);

-- Creation of the Part table
CREATE TABLE Peca (
    peca_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each part
    descricao VARCHAR(255) NOT NULL, -- Description of the part
    valor DECIMAL(10, 2) NOT NULL -- Cost of the part
);

-- Creation of the Service_Order_Service table
CREATE TABLE Ordem_Servico_Servico (
    os_servico_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for the service in an order
    ordem_id INT NOT NULL, -- Foreign key linking to a service order
    servico_id INT NOT NULL, -- Foreign key linking to a service
    quantidade INT NOT NULL, -- Quantity of the service performed
    subtotal DECIMAL(10, 2) NOT NULL, -- Total cost for the service
    FOREIGN KEY (ordem_id) REFERENCES Ordem_Servico(ordem_id),
    FOREIGN KEY (servico_id) REFERENCES Servico(servico_id)
);

-- Creation of the Service_Order_Part table
CREATE TABLE Ordem_Servico_Peca (
    os_peca_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for the part in an order
    ordem_id INT NOT NULL, -- Foreign key linking to a service order
    peca_id INT NOT NULL, -- Foreign key linking to a part
    quantidade INT NOT NULL, -- Quantity of the part used
    subtotal DECIMAL(10, 2) NOT NULL, -- Total cost for the part
    FOREIGN KEY (ordem_id) REFERENCES Ordem_Servico(ordem_id),
    FOREIGN KEY (peca_id) REFERENCES Peca(peca_id)
);
