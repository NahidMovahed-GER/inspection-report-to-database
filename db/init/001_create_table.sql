CREATE TABLE IF NOT EXISTS schaden (
    id INTEGER PRIMARY KEY,
    quelle TEXT,
    raw_text TEXT,
    bauteil TEXT,
    status TEXT,
    ort TEXT,
    s INTEGER,
    v INTEGER,
    d INTEGER
);
