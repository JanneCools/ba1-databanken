INSERT INTO personen SELECT distinct persoon_email,voornaam,achternaam FROM super_activiteitreservaties;

INSERT INTO personen SELECT distinct persoon_email,voornaam,achternaam FROM super_hotelboekingen EXCEPT SELECT DISTINCT persoon_email,voornaam,achternaam FROM super_activiteitreservaties;

INSERT INTO reservatie SELECT distinct persoon_email,aantal_personen,boeking_bevestigd::boolean,boekingstijdstip FROM super_activiteitreservaties;

INSERT INTO reservatie SELECT distinct persoon_email,aantal_personen,boeking_bevestigd::boolean,boekingstijdstip FROM super_hotelboekingen;

INSERT INTO hotels SELECT distinct hotelid,hotelnaam,straat,huisnummer,postcode,gemeente,
minimumprijs,hotel_beschrijving,aantal_sterren,hotel_email,toeristische_regio FROM super_hotelboekingen;

INSERT INTO boeking SELECT distinct begindatum,einddatum,hotelid,persoon_email,boekingstijdstip FROM super_hotelboekingen;

INSERT INTO activiteit SELECT DISTINCT activiteitnaam,postcode,gemeente,straat,huisnummer,activiteit_website,
activiteit_telefoonnummer,toeristische_regio,activiteittype,beschrijving,activiteit_prijs FROM super_activiteitreservaties;

INSERT INTO openingsperiode SELECT DISTINCT activiteitnaam,postcode,duur,begintijdstip FROM super_activiteitreservaties;

INSERT INTO inschrijving SELECT DISTINCT activiteitnaam,postcode,begintijdstip,
persoon_email,boekingstijdstip FROM super_activiteitreservaties;

INSERT INTO activiteit_hotels SELECT DISTINCT hotelid,activiteitnaam,activiteit_postcode,percentage_korting FROM super_kortingen;

INSERT INTO beperking values ('doof');
INSERT INTO beperking values ('slechthorend');
INSERT INTO beperking values ('mentaal');
INSERT INTO beperking values ('motorisch');
INSERT INTO beperking values ('blind');
INSERT INTO beperking values ('slechtziend');
INSERT INTO beperking values ('autisme');

INSERT INTO activiteit_beperking SELECT DISTINCT activiteitnaam,postcode,'doof',activiteit_toegang_doof::boolean FROM super_activiteitreservaties;

INSERT INTO activiteit_beperking SELECT DISTINCT activiteitnaam,postcode,'slechthorend',activiteit_toegang_slechthorend::boolean FROM super_activiteitreservaties;

INSERT INTO activiteit_beperking SELECT DISTINCT activiteitnaam,postcode,'mentaal',activiteit_toegang_mentaal::boolean FROM super_activiteitreservaties;

INSERT INTO activiteit_beperking SELECT DISTINCT activiteitnaam,postcode,'motorisch',activiteit_toegang_motorisch::boolean FROM super_activiteitreservaties;

INSERT INTO activiteit_beperking SELECT DISTINCT activiteitnaam,postcode,'blind',activiteit_toegang_blind::boolean FROM super_activiteitreservaties;

INSERT INTO activiteit_beperking SELECT DISTINCT activiteitnaam,postcode,'slechtziend',activiteit_toegang_slechtziend::boolean FROM super_activiteitreservaties;

INSERT INTO activiteit_beperking SELECT DISTINCT activiteitnaam,postcode,'autisme',activiteit_toegang_autisme::boolean FROM super_activiteitreservaties;

INSERT INTO inschrijving_beperking SELECT DISTINCT 'doof',persoon_email,boekingstijdstip,persoon_doof::boolean FROM super_activiteitreservaties;

INSERT INTO inschrijving_beperking SELECT DISTINCT 'slechthorend',persoon_email,boekingstijdstip,persoon_slechthorend::boolean FROM super_activiteitreservaties;

INSERT INTO inschrijving_beperking SELECT DISTINCT 'mentaal',persoon_email,boekingstijdstip,persoon_mentaal::boolean FROM super_activiteitreservaties;

INSERT INTO inschrijving_beperking SELECT DISTINCT 'motorisch',persoon_email,boekingstijdstip,persoon_motorisch::boolean FROM super_activiteitreservaties;

INSERT INTO inschrijving_beperking SELECT DISTINCT 'blind',persoon_email,boekingstijdstip,persoon_blind::boolean FROM super_activiteitreservaties;

INSERT INTO inschrijving_beperking SELECT DISTINCT 'slechtziend',persoon_email,boekingstijdstip,persoon_slechtziend::boolean FROM super_activiteitreservaties;

INSERT INTO inschrijving_beperking SELECT DISTINCT 'autisme',persoon_email,boekingstijdstip,persoon_autisme::boolean FROM super_activiteitreservaties;



