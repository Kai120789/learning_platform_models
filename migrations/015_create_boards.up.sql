CREATE TABLE IF NOT EXISTS boards (
    id SERIAL PRIMARY KEY,
    snapshot_version INTEGER,
    group_id INTEGER REFERENCES groups(id) NOT NULL
)