drop table Instruktori_nudat_programa_za_trening;

drop table Instruktori_nudat_programa_za_ishrana;

drop table Programi_za_trening_sodrzhat_treninzi;

drop table Programi_za_ishrana_sodrzhat_obroci;

drop table Trening_sodrzhi_vezhba;

drop table Obrok_sodrzhi_suplement;

drop table Obrok_sodrzhi_pialok;

drop table Obrok_sodrzhi_hrana;

drop table Dnevnici_za_trchanje;

drop table Vezhbi;

drop table Dnevnici_za_trening;

drop table Treninzi;

drop table Sportovi;

drop table Suplementi;

drop table Pialoci;

drop table Hrana;

drop table Dnevnici_za_ishrana;

drop table Obroci;

drop table Korisnici;

drop table Programi_za_trening;

drop table programi_za_ishrana;

drop table Fitnes_instruktori;

create table Fitnes_instruktori(
	instruktor_id serial primary key,
	data_na_ragjanje date not null,
	username varchar(100) not null unique,
	password text not null,
	email varchar(400) not null unique constraint cool_email check (email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')
);

create table Programi_za_ishrana(
	programa_ishr_id serial primary key,
	ime_programa_ishr varchar(100) not null unique
);

create table Programi_za_trening(
	programa_trening_id serial primary key,
	ime_programa_trening varchar(100) not null unique,
	tezhina integer not null,
	potrebno_nivo integer not null
);

create table Korisnici(
	user_id serial primary key,
	username varchar(100) not null unique,
	password text not null,
	email varchar(400) not null unique constraint cool_email check (email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'),
	data_na_ragjanje date not null,
	visina real,
	tezina real,
	cel varchar(200),
	nivo integer,
	instruktor integer references Fitnes_instruktori(instruktor_id),
	programa_za_ishrana integer references Programi_za_ishrana(programa_ishr_id),
	programa_za_trening integer references Programi_za_trening(programa_trening_id)
);

create table Obroci(
	obrok_id serial primary key,
	opis_obrok varchar(400) not null unique
);

create table Dnevnici_za_ishrana(
	dnevnik_ishr_id serial primary key,
	datum date not null,
	chas varchar(50),
	korisnik integer references Korisnici(user_id) not null,
	obrok integer references Obroci(obrok_id) not null
);

create table Hrana(
	hrana_id serial primary key,
	naziv_hrana varchar(100) not null unique,
	kalorii real not null,
	proteini real,
	masti real
);

create table Pialoci(
	pialok_id serial primary key,
	naziv_pialok varchar(100) not null unique,
	alkohol bool not null,
	hranliva_vrednost integer not null
);

create table Suplementi(
	suplement_id serial primary key,
	naziv_supl varchar(100) not null unique,
	opis_supl varchar(400)
);

create table Sportovi(
	sport_id serial primary key,
	naziv_sport varchar(100) not null unique,
	tezhina_sport integer not null
);

create table Treninzi(
	trening_id serial primary key,
	sport integer references Sportovi(sport_id)
);

create table Dnevnici_za_trening(
	dnevnik_trening_id serial primary key,
	datum date not null,
	chas_start varchar(50),
	chas_end varchar(50),
	korisnik integer references Korisnici(user_id) not null,
	trening integer references Treninzi(trening_id) not null
);

create table Vezhbi(
	vezhba_id serial primary key,
	naziv_vezhba varchar(100) not null unique,
	tezhina_vezhba integer not null
);

create table Dnevnici_za_trchanje(
	dnevnik_run_id serial primary key,
	datum date not null,
	metri real not null,
	vreme_min real,
	korisnik integer references Korisnici(user_id) not null
);

create table Obrok_sodrzhi_hrana(
	obrok integer references Obroci(obrok_id) not null,
	hrana integer references Hrana(hrana_id) not null,
	kolichina real not null,
	primary key(obrok, hrana)
);

create table Obrok_sodrzhi_pialok(
	obrok integer references Obroci(obrok_id) not null,
	pialok integer references Pialoci(pialok_id) not null,
	kolichina_l real not null,
	primary key(obrok, pialok)
);

create table Obrok_sodrzhi_suplement(
	obrok integer references Obroci(obrok_id) not null,
	suplement integer references Suplementi(suplement_id) not null,
	primary key(obrok, suplement)
);

create table Trening_sodrzhi_vezhba(
	tsv_id serial primary key,
	trening integer references Treninzi(trening_id) not null,
	vezhba integer references Vezhbi(vezhba_id) not null,
	povtoruvanja integer not null
);

create table Programi_za_ishrana_sodrzhat_obroci(
	programa_ishr integer references Programi_za_ishrana(programa_ishr_id) not null,
	obrok integer references Obroci(obrok_id) not null,
	primary key(programa_ishr, obrok)
);

create table Programi_za_trening_sodrzhat_treninzi(
	programa_trening integer references Programi_za_trening(programa_trening_id) not null,
	trening integer references Treninzi(trening_id) not null,
	primary key(programa_trening, trening)
);

create table Instruktori_nudat_programa_za_ishrana(
	programa_ishr integer references Programi_za_ishrana(programa_ishr_id) not null,
	instruktor integer references Fitnes_instruktori(instruktor_id) not null,
	primary key(programa_ishr, instruktor)
);

create table Instruktori_nudat_programa_za_trening(
	programa_trening integer references Programi_za_trening(programa_trening_id) not null,
	instruktor integer references Fitnes_instruktori(instruktor_id) not null,
	primary key(programa_trening, instruktor)
);
















