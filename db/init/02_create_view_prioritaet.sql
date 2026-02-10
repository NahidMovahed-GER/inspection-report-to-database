-- View zur automatischen Berechnung der Priorität (S + V + D)

CREATE OR REPLACE VIEW schaden_prioritaet AS
SELECT
    id,
    bauteil,
    status,
    ort,
    s,
    v,
    d,
    (s + v + d) AS prioritaet
FROM schaden;
