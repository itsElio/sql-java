SELECT id, nome FROM regioni ORDER BY nome

SELECT nome FROM province WHERE id_regione  = "12" OR id_regione  = "15" ORDER BY nome

SELECT comune, regione from comuni_italiani WHERE regione = 'Basilicata'

SELECT nome from comuni WHERE id_regione in(select id from regioni where nome = "Basilicata")

select "Regioni:" as "tipo", count(*) as conteggio from regioni
union
select "Province:", count(*) from province
union
select "Comuni:", count(*) from comuni
