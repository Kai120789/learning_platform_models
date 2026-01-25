CREATE TABLE IF NOT EXISTS user_settings (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    is_2fa_enabled BOOLEAN NOT NULL,
    is_notifications_enabled BOOLEAN NOT NULL
);