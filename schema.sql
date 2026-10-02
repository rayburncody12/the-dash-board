PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS activities (
    id INTEGER PRIMARY KEY,

    source TEXT NOT NULL DEFAULT 'manual',
    source_activity_id TEXT,

    activity_date TEXT NOT NULL,
    name TEXT NOT NULL,

    category TEXT NOT NULL
        CHECK (category IN ('running', 'cycling', 'watersports')),

    activity_type TEXT,

    distance_meters REAL NOT NULL DEFAULT 0,
    moving_time_seconds INTEGER NOT NULL DEFAULT 0,
    elapsed_time_seconds INTEGER,
    elevation_gain_meters REAL,

    notes TEXT,

    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

    UNIQUE (source, source_activity_id)
);


CREATE TABLE IF NOT EXISTS race_results (
    id INTEGER PRIMARY KEY,

    source TEXT NOT NULL DEFAULT 'manual',
    source_result_id TEXT,

    race_name TEXT NOT NULL,
    race_date TEXT NOT NULL,

    distance_meters REAL NOT NULL,

    chip_time_seconds INTEGER,
    gun_time_seconds INTEGER,

    overall_place INTEGER,
    gender_place INTEGER,
    age_group_place INTEGER,

    bib_number TEXT,
    official_results_url TEXT,

    linked_activity_id INTEGER,

    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (linked_activity_id)
        REFERENCES activities(id),

    UNIQUE (source, source_result_id)
);