CREATE OR REPLACE VIEW schaden_prioritaet AS
SELECT
    id,
    bauteil,
    status,
    ort,
    s,
    v,
    d,
    (COALESCE(s,0) + COALESCE(v,0) + COALESCE(d,0)) AS prioritaet
FROM schaden
ORDER BY prioritaet DESC;
