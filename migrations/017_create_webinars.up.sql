CREATE TYPE webinar_status_enum AS ENUM ('planned', 'active', 'ended');

CREATE TABLE IF NOT EXISTS webinars (
    id SERIAL PRIMARY KEY,
    group_id INTEGER REFERENCES groups(id) NOT NULL,
    subject_id INTEGER REFERENCES subjects(id) NOT NULL,
    schedule_slot_id INTEGER REFERENCES schedule_slots(id) NOT NULL,
    status webinar_status_enum,
    meet_link VARCHAR(150),
    board_id INTEGER REFERENCES boards(id) NOT NULL
)