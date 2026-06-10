CREATE TABLE tbl_collection (
    id INT AUTO_INCREMENT PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,
    TotalCardsInCollection SMALLINT
) ENGINE=InnoDB;

CREATE TABLE tbl_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    typeName VARCHAR(30) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE tbl_stage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    stageName VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE tbl_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hp SMALLINT,
    name VARCHAR(80) NOT NULL,
    info TEXT,
    attack VARCHAR(60),
    dammage VARCHAR(10),
    weak VARCHAR(30),
    resis VARCHAR(30),
    retreat VARCHAR(20),
    CardsInCollection SMALLINT,
    fk_collection_id INT,
    fk_type_id INT,
    fk_stage_id INT,
    CONSTRAINT fk_collection FOREIGN KEY (fk_collection_id)
        REFERENCES tbl_collection (id)
        ON DELETE CASCADE,
    CONSTRAINT fk_type FOREIGN KEY (fk_type_id)
        REFERENCES tbl_types (id)
        ON DELETE SET NULL,
    CONSTRAINT fk_stage FOREIGN KEY (fk_stage_id)
        REFERENCES tbl_stage (id)
        ON DELETE SET NULL
) ENGINE=InnoDB;
