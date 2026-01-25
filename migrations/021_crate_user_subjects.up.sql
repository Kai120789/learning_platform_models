CREATE TABLE IF NOT EXISTS user_subjects (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    subject_id INTEGER REFERENCES subjects(id) NOT NULL,
    UNIQUE (user_id, subject_id)
);