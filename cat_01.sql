CREATE TABLE CATEGORIA(
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    id_cat INT,
    FOREIGN KEY(id_cat)REFERENCES CATEGORIA(id)
);