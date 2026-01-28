CREATE TYPE role_enum AS ENUM ('ADMIN', 'TUTOR', 'STUDENT');

CREATE TYPE status_enum AS ENUM ('ACTIVE', 'INACTIVE', 'BANNED');

CREATE TABLE IF NOT EXISTS user_info (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50),
    city VARCHAR(50),
    about VARCHAR(1000),
    role role_enum,
    status status_enum,
    class INTEGER
);