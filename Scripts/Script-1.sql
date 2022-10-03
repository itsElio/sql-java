-- Zona sismica di Rimini?

SELECT zona_sismica, comune
FROM comuni_italiani ci
WHERE comune = "rimini"

-- Voglio sapere se Rimini è capoluogo di provincia
	-- comuni italiani + comuni
SELECT ci.comune, c.nome, ci.provincia
FROM comuni c
join comuni_italiani ci
on  c.nome = ci.comune
WHERE ci.provincia = "Rimini"

SELECT ci.comune, c.nome, ci.provincia
FROM comuni c
join comuni_italiani ci
on  c.nome = ci.comune
WHERE ci.provincia = "Rimini"


alter table comuni_italiani add codice_comune int;

update comuni_italiani ci
inner join comuni c
on ci.istat = c.id
set codice_comune = c.id



update comuni_italiani ci
inner join comuni c
on ci.comune = c.nome
set codice_comune = c.id
where ci.codice_comune is null


