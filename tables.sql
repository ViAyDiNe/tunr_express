CREATE TABLE IF NOT EXISTS artists (
    id SERIAL PRIMARY KEY,
    name TEXT,
    photo_url TEXT,
    nationality TEXT
);

CREATE TABLE IF NOT EXISTS songs (
    id SERIAL PRIMARY KEY,
    title TEXT,
    album TEXT,
    preview_link TEXT,
    artwork TEXT,
    artist_id INTEGER REFERENCES artists(id)
);

-- psql -d tunr_db -U neelaugusthy -f tables.sql
-- psql -d tunr_db -U neelaugusthy -f artist_data.sql
-- psql -d tunr_db -U neelaugusthy -f songs.sql