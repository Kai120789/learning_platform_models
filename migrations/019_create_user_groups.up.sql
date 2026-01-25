CREATE TABLE IF NOT EXISTS user_groups (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    group_id INTEGER REFERENCES groups(id) NOT NULL,
    UNIQUE (user_id, group_id)
);