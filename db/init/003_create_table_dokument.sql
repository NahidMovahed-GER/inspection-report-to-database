CREATE TABLE IF NOT EXISTS dokument (
    dokument_id SERIAL PRIMARY KEY,
    bauwerksnummer TEXT,
    pruefdatum DATE,
    pruefer TEXT,
    schadens_id INTEGER REFERENCES schaden(id),
    prioritaet INTEGER,
    standort TEXT,
    version INTEGER DEFAULT 1,
    erstellt_am TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
