CREATE OR REPLACE VIEW dokument_prioritaet AS
SELECT
  d.dokument_id,
  d.bauwerksnummer,
  d.pruefdatum,
  d.pruefer,
  d.standort,
  d.version,
  s.id AS schadens_id,
  s.bauteil,
  s.status,
  s.s, s.v, s.d,
  (s.s + s.v + s.d) AS prioritaet
FROM dokument d
JOIN schaden s ON s.id = d.schadens_id;
