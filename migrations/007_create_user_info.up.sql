CREATE TYPE role_enum AS ENUM ('admin', 'tutor', 'student');

CREATE TYPE status_enum AS ENUM ('active', 'inactive', 'banned');

CREATE TABLE IF NOT EXISTS user_info (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    about VARCHAR(1000) NOT NULL,
    role role_enum,
    status status_enum,
    class INTEGER
);