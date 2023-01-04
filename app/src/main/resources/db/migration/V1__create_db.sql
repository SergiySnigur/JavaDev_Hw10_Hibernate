CREATE TABLE client (
    id IDENTITY PRIMARY KEY,
    name VARCHAR(200)
    CONSTRAINT check_client_name
    CHECK(CHAR_LENGTH(name) >= 3 AND
    CHAR_LENGTH(name) <= 200) NOT NULL
);

CREATE TABLE planet (
    id VARCHAR(200) PRIMARY KEY,
    name VARCHAR(500)
    CONSTRAINT check_planet_name
    CHECK(CHAR_LENGTH(name) >= 1 AND
    CHAR_LENGTH(name) <= 500) NOT NULL
);

CREATE TABLE ticket (
    id IDENTITY PRIMARY KEY,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP(2),
    client_id BIGINT NOT NULL,
    from_planet_id VARCHAR(200),
    to_planet_id VARCHAR(200),
    FOREIGN KEY(client_id) REFERENCES client(id),
    FOREIGN KEY(from_planet_id) REFERENCES planet(id),
    FOREIGN KEY(to_planet_id) REFERENCES planet(id)
);

