SELECT sum(tabel1.aantal) from (select count(DISTINCT tijdstip) as aantal from reservatie group by email) as tabel1;

SELECT count(DISTINCT email) from reservatie where aantal_personen > 1;

SELECT count(DISTINCT hotelid) from hotels;

SELECT sum(tabel1.aantal) from (SELECT count(DISTINCT postcode) as aantal from activiteit_beperking where toegang = true group by activiteitsnaam) as tabel1;

SELECT sum(tabel1.aantal) from (select count(distinct tijdstip) as aantal from boeking where einddatum - begindatum >= 2 group by email) as tabel1;

SELECT count(DISTINCT begintijdstip) from openingsperiode;