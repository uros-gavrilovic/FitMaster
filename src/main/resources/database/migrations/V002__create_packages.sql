CREATE TABLE packages
(
    id    BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name  VARCHAR(255),
    price DECIMAL,

    CONSTRAINT pk_packages PRIMARY KEY (id)
)