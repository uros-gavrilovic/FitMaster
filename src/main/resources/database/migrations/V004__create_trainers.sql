CREATE TABLE trainers
(
    id          BIGINT,
    firstName   VARCHAR(255),
    lastName    VARCHAR(255),
    gender      VARCHAR(32),
    username    VARCHAR(255),
    password    VARCHAR(255),
    phoneNumber VARCHAR(255),
    address     VARCHAR(255),
    hireDate    DATE,

    CONSTRAINT pk_trainers PRIMARY KEY (id)
)