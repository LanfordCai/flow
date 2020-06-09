DROP TABLE IF EXISTS users_master;

--

CREATE TABLE users_master (
    id SERIAL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    active SMALLINT NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (email)
);
