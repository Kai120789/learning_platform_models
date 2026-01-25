CREATE TYPE subject_enum AS ENUM ('ЕГЭ', 'ОГЭ', 'повышение успеваемости');

CREATE TABLE IF NOT EXISTS subjects (
    id SERIAL PRIMARY KEY,
    code VARCHAR(10) UNIQUE NOT NULL,
    title VARCHAR(50) UNIQUE NOT NULL,
    type subject_enum
);