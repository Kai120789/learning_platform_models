CREATE TABLE IF NOT EXISTS groups (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    description VARCHAR(1000) NOT NULL,
    subject_id INTEGER REFERENCES subjects(id) NOT NULL,
    tutor_id INTEGER REFERENCES users(id) NOT NULL,
    tg_group_link VARCHAR(100),
    tg_chat_id INTEGER
)