CREATE TABLE IF NOT EXISTS member
(
    id             BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    first_name     VARCHAR(255) NOT NULL,
    last_name      VARCHAR(255),
    gender         VARCHAR(32),
    address        VARCHAR(255),
    phone_number   VARCHAR(255),
    birth_date     DATE,
    is_banned      BOOLEAN NOT NULL DEFAULT FALSE,
    email          VARCHAR(255) UNIQUE,
    email_verified BOOLEAN NOT NULL DEFAULT FALSE,
    avatar         BYTEA,
    username       VARCHAR(255) NOT NULL UNIQUE,
    password       VARCHAR(255) NOT NULL,

    CONSTRAINT pk_member PRIMARY KEY (id),

    CONSTRAINT password_check CHECK (password ~ '^\$2a\$10\$[./A-Za-z0-9]{22}[./A-Za-z0-9]{31}$'),
    CONSTRAINT phone_number_check CHECK (phone_number ~ '^\\+\\(\\d{3}\\) \\d{2}-\\d{3}-\\d{4}$')
);
