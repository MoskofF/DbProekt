drop table Sodrzhi_trening;

drop table Ponuduva_prog_vezhbi;

drop table sodrzhi_obrok;

drop table Ponuduva_prog_ishr;

drop table Sodrzhi_Pialok;

drop table Sodrzhi_hrana;

drop table Koristi_suplement;

drop table Konzumirani_obroci;

drop table Obroci;

drop table Suplementi;

drop table Pialoci;

drop table Hrana;

drop table Vezhba;

drop table Sportuva;

drop table Treninzi;

drop table Dnevnici_za_trening;

drop table Vezhbi;

drop table Sportovi;

drop table Dnevnici_za_trchanje;

drop table Dnevnici_za_ishrana;

drop table Dnevnici;

drop table Korisnici;

drop table programi_za_vezhbanje;

drop table programi_za_ishrana;

drop table instruktori;

create table Instruktori(
	id_instruktor serial primary key,
	instruktor_pw text not null,
	instruktor_email varchar(400) not null unique constraint cool_email check (instruktor_email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'),
	data_na_ragjanje date not null,
	ime_instruktor varchar(100) not null,
	rate real
);

create table programi_za_ishrana(
	programa_ishr_id serial primary key,
	ime_programa_ishrana varchar(100) not null unique
);

create table programi_za_vezhbanje(
	programa_vez_id serial primary key,
	ime_programa_trening varchar(100) not null unique,
	tezhina integer not null,
	potrebno_nivo integer not null
);

create table Korisnici(
	korisnik_id serial primary key,
	korisnik_pw text not null,
	data_na_ragjanje date not null,
	nivo integer not null,
	ime varchar(100) not null,
	prezime varchar(100) not null,
	korisnik_email varchar(400) not null unique constraint cool_email check (korisnik_email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'),
	visina_cm real,
	tezhina_kg real,
	cel varchar(100),
	instruktor integer references Instruktori(id_instruktor),
	programa_ishrana integer references Programi_za_ishrana(programa_ishr_id),
	programa_vezbi integer references Programi_za_vezhbanje(programa_vez_id)
);

create table Dnevnici(
	dnevnik_id serial primary key,
	datum date not null,
	korisnik integer not null references korisnici(korisnik_id)
);

create table Dnevnici_za_ishrana(
	dnevnik_ishrana_id serial primary key,
	chas varchar(100) not null,
	dnevnik_fk integer not null references Dnevnici(dnevnik_id)
);

create table Dnevnici_za_trchanje(
	dnevnik_trchanje_id serial primary key,
	metri real not null,
	vreme_min real not null,
	dnevnik_fk integer not null references Dnevnici(dnevnik_id)
);

create table Sportovi(
	sport_id serial primary key,
	naziv_sport varchar(100) not null unique
);

create table Vezhbi(
	vezhba_id serial primary key,
	naziv_vezhba varchar(100) not null unique
);

create table Dnevnici_za_trening(
	dnevnik_trening_id serial primary key,
	chas_pochetok varchar(100) not null,
	chas_kraj varchar(100) not null,
	dnevnik_fk integer not null references Dnevnici(dnevnik_id)
);

create table Treninzi(
	trening_id serial primary key,
	dnevnik_trening integer not null references Dnevnici_za_trening(dnevnik_trening_id)
);

create table Sportuva(
	sport integer not null references sportovi(sport_id),
	trening integer not null references treninzi(trening_id),
	vreme_min real not null,
	primary key(sport, trening)
);

create table Vezhba(
	vezba integer not null references vezhbi(vezhba_id),
	trening integer not null references treninzi(trening_id),
	povtoruvanja integer not null,
	primary key(vezba, trening)
);

create table Hrana(
	hrana_id serial primary key,
	naziv_hrana varchar(100) not null unique,
	kal_100g real not null,
	proteini_100g real not null,
	masti_100g real not null
);

create table Pialoci(
	pialok_id serial primary key,
	naziv_pialok varchar(100) not null unique,
	alkohol bool not null,
	hranliva_vrednost real not null
);

create table Suplementi(
	suplement_id serial primary key,
	ime_suplement varchar(100) not null unique,
	opis_suplement varchar(1000)
);

create table Obroci(
	obrok_id serial primary key,
	naziv_opis_obrok varchar(400) not null unique
);

create table Konzumirani_obroci(
	dnevnik_hrana integer not null references dnevnici_za_ishrana(dnevnik_ishrana_id),
	obrok integer not null references Obroci(obrok_id),
	primary key(dnevnik_hrana, obrok)
);

create table Koristi_suplement(
	obrok integer not null references Obroci(obrok_id),
	suplement integer not null references Suplementi(suplement_id),
	primary key(obrok, suplement)
);

create table Sodrzhi_hrana(
	hrana integer not null references Hrana(hrana_id),
	obrok integer not null references Obroci(obrok_id),
	kolichina real not null,
	primary key(hrana, obrok)
);

create table Sodrzhi_Pialok(
	pialok integer not null references Pialoci(pialok_id),
	obrok integer not null references Obroci(obrok_id),
	kolichina_litri real not null,
	primary key(pialok, obrok)
);

create table Ponuduva_prog_ishr(
	programa integer not null references programi_za_ishrana(programa_ishr_id),
	instruktor integer not null references Instruktori(id_instruktor),
	primary key(programa, instruktor)
);

create table sodrzhi_obrok(
	obrok integer not null references Obroci(obrok_id),
	programa integer not null references Programi_za_ishrana(programa_ishr_id),
	primary key(obrok, programa)
);

create table Ponuduva_prog_vezhbi(
	programa integer not null references programi_za_vezhbanje(programa_vez_id),
	instruktor integer not null references Instruktori(id_instruktor),
	primary key(programa, instruktor)
);

create table Sodrzhi_trening(
	trening integer not null references Treninzi(trening_id),
	programa integer not null references programi_za_vezhbanje(programa_vez_id),
	primary key(trening, programa)
);















