CREATE TYPE weekday_enum AS ENUM (
    'monday',
    'tuesday',
    'wednesday'
    'thursday',
    'friday',
    'saturday',
    'sunday'
);

CREATE TABLE IF NOT EXISTS schedule_slots (
    id SERIAL PRIMARY KEY,
    schedule_id INTEGER REFERENCES schedules(id) NOT NULL,
    weekday weekday_enum,
    start_time TIMESTAMPTZ DEFAULT NOW() NOT NULL,
    end_time TIMESTAMPTZ DEFAULT NOW() NOT NULL,
    duration INTEGER
)