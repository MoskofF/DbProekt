insert into instruktori(instruktor_pw, instruktor_email, data_na_ragjanje, ime_instruktor, rate)
values
	('general', 'miki_love@live.com', to_date('12051987', 'ddmmyy'), 'Mihail', 3.7),
	('mashinka', 'koce.tri@gmail.com', to_date('04071990', 'ddmmyy'), 'Kosta', 4.1);
	
insert into programi_za_ishrana(ime_programa_ishrana)
values
	('kilo po kilo'),
	('zelena i zdrava');
	
insert into programi_za_vezhbanje(ime_programa_trening, tezhina, potrebno_nivo)
values
	('abs from hell', 4, 3);
	
insert into korisnici(korisnik_pw, data_na_ragjanje, nivo,  ime, prezime, korisnik_email, visina_cm, tezhina_kg, cel, instruktor, programa_ishrana, programa_vezbi)
values
	('skeleton', to_date('15041997', 'ddmmyy'), 4, 'Nikola', 'Semkov', 'semka_car@hotmail.com', 172, 94, 'muskuli', 2, 1, 1);
	
insert into dnevnici(datum, korisnik)
values
	(to_date('15112019', 'ddmmyy'), 1),
	(to_date('16112019', 'ddmmyy'), 1);

insert into dnevnici_za_ishrana(chas, dnevnik_fk)
values
	('12:00', 1),
	('16:35', 1),
	('20:20', 1),
	('10:45', 2),
	('18:30', 2);

insert into dnevnici_za_trchanje(metri, vreme_min, dnevnik_fk)
values
	(1500, 15, 1),
	(1700, 15.3, 2);

insert into sportovi(naziv_sport)
values
	('Kosharka'),
	('Fudbal'),
	('Ragbi'),
	('Tenis'),
	('Odbojka'),
	('Rakomet'),
	('Ping pong');

insert into vezhbi(naziv_vezhba)
values
	('Pull up'),
	('Push up'),
	('Stomachni');

insert into dnevnici_za_trening(chas_pochetok, chas_kraj, dnevnik_fk)
values
	('08:20', '09:30', 1),
	('15:30', '16:00', 1),
	('12:00', '13:00', 2);

insert into treninzi(dnevnik_trening)
values
	(1),
	(2),
	(3);

insert into sportuva(sport, trening,vreme_min)
values
	(1, 1, 90),
	(2, 3, 60);

insert into vezhba(vezba, trening, povtoruvanja)
values
	(1, 2, 50),
	(2, 2, 50),
	(3, 2, 25);

insert into hrana(naziv_hrana, kal_100g, proteini_100g, masti_100g)
values
	('tavche grafche', 30, 15, 20),
	('tava oriz', 25, 30, 15),
	('pechena kokoshka', 40, 15, 15),
	('puneni piperki', 20, 20, 20);

insert into pialoci(naziv_pialok, alkohol, hranliva_vrednost)
values
	('dzus', false, 1),
	('pivo', true, 4),
	('vino', true, 2),
	('vodka', true, 0),
	('rakija', true, 0),
	('pepsi', false, -1);

insert into suplementi(ime_suplement, opis_suplement)
values
	('amino plus', 'amino kiselini');

insert into Obroci(naziv_opis_obrok)
values
	('pojadok-pavlaka'),
	('pojadok-omlet'),
	('posna trpeza');

insert into konzumirani_obroci(dnevnik_hrana, obrok)
values
	(1, 3),
	(2, 3),
	(3, 3),
	(4, 3),
	(5, 3);

insert into sodrzhi_hrana(hrana, obrok, kolichina)
values
	(1, 3, 20),
	(2, 3, 15),
	(4, 2, 12),
	(3, 1, 23);

insert into sodrzhi_pialok(pialok, obrok, kolichina_litri)
values
	(1, 3, 5),
	(2, 3, 3),
	(5, 3, 6),
	(2, 2, 1),
	(4, 2, 2),
	(1, 1, 1.5),
	(3, 1, 3.2);

insert into ponuduva_prog_ishr(programa, instruktor)
values
	(1, 1),
	(2, 2);

insert into sodrzhi_obrok(obrok, programa)
values
	(3, 1),
	(3, 2),
	(1, 2);

insert into ponuduva_prog_vezhbi(programa, instruktor)
values
	(1, 2);

insert into sodrzhi_trening(trening, programa)
values
	(2, 1),
	(3, 1);


SELECT max(sum(metri) FROM dnevnici_za_trchanje
WHERE
dnevnici.dnevnik_i












