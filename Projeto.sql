CREATE TABLE Editora (
ID_Editora VARCHAR(10) PRIMARY KEY,
CNPJ VARCHAR(10)
);

CREATE TABLE Manga (
ID_Produto VARCHAR(10) PRIMARY KEY,
Prod_Nome VARCHAR(10),
Prod_Valor VARCHAR(10),
Prod_Ano_de_Pub VARCHAR(10),
Pro_Qtd VARCHAR(10),
Prod_Qtd_Pag VARCHAR(10),
ID_Editora VARCHAR(10),
FOREIGN KEY(ID_Editora) REFERENCES Editora (ID_Editora)
);

CREATE TABLE Escritor (
ID_Autores VARCHAR(10) PRIMARY KEY,
Nome VARCHAR(10)
);

CREATE TABLE Usuario (
Nome VARCHAR(10),
Data_de_Nascimento VARCHAR(10),
CPF VARCHAR(10),
Endereco VARCHAR(10),
Email VARCHAR(10),
ID_Usuario VARCHAR(10) PRIMARY KEY
);

CREATE TABLE Compra (
DT_Compra VARCHAR(10),
Qtde VARCHAR(10),
ID_Produto VARCHAR(10),
ID_Usuario VARCHAR(10),
FOREIGN KEY(ID_Produto) REFERENCES Manga (ID_Produto),
FOREIGN KEY(ID_Usuario) REFERENCES Usuario (ID_Usuario)
);

CREATE TABLE Escreve (
ID_Produto VARCHAR(10),
ID_Autores VARCHAR(10),
FOREIGN KEY(ID_Produto) REFERENCES Manga (ID_Produto),
FOREIGN KEY(ID_Autores) REFERENCES Escritor (ID_Autores)
);