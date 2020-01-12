insert into Fitnes_instruktori(data_na_ragjanje, username, password, email)
values
	(to_date('06071946', 'ddmmyy'), 'rambo_roki', 'brusLi8998', 'stalone.rambo@gmail.com'),
	(to_date('13121215', 'ddmmyy'), 'gerrald_z_rivie', 'richardgir', 'gerald_rivia@hotmail.com'),
	(to_date('10031940', 'ddmmyy'), 'chuk.norris', 'ramboecar', 'chuck-norris@live.com'),
	(to_date('07041954', 'ddmmyy'), 'jackie', 'chanmanajvan', 'jackiechan@yahoo.com'),
	(to_date('18071967', 'ddmmyy'), 'vin_dizel', 'brzibesni', 'paul_walker@hotmail.com');
	
insert into Programi_za_ishrana(ime_programa_ishr)
values
	('Edno, dve, maksimum tri'),
	('Suvi kebapi'),
	('Za siromashni'),
	('Strikno morska hrana'),
	('Badnikova trpeza'),
	('Carska gozba');
	
insert into Programi_za_trening(ime_programa_trening, tezhina, potrebno_nivo)
values
	('Skroz amater', 1, 0),
	('Za na plazha', 3, 1),
	('Za na instagram', 6, 2),
	('Me maltretirat u skolo', 1, 0),
	('John Wick style', 10, 10),
	('Sakam da rabotam u zhelezara', 4, 2);

insert into Korisnici(username, password, email, data_na_ragjanje, visina, tezina, cel, nivo, instruktor, programa_za_ishrana, programa_za_trening)
values
	('kicho_praska', 'bonpraska2', 'praska.kicho@hotmail.com', to_date('10071993', 'ddmmyy'), 165, 82, 'Orevche na trap', 5, 4, 2, 4),
	('angiejolie', 'bradpitt', 'angelina.jolie22@live.com', to_date('04061975', 'ddmmyy'), 179, 69, 'Gremi', 7, 5, 6, 2),
	('cigismall', 'rombombom', 'bakar32@outlook.com', to_date('23051996', 'ddmmyy'), 160, 52, 'Karton', 1, null, 3, 6),
	('mirkocar', 'lamja2356', 'mirko.vasov@outlook.com', to_date('22011992', 'ddmmyy'), 170, 80, 'To be fit', 3, 3, 4, 2);

insert into Obroci(opis_obrok)
values
	('Omlet'),
	('Posna sarma'),
	('Pomfrit'),
	('Happy Hamburger'),
	('Selska trpeza'),
	('Bon apeti'),
	('Grickaj si');

insert into Dnevnici_za_ishrana(datum, chas, korisnik, obrok)
values
	(to_date('01012020', 'ddmmyy'), '10:00', 1, 3),
	(to_date('01012020', 'ddmmyy'), '11:00', 1, 4),
	(to_date('01012020', 'ddmmyy'), '15:20', 1, 2),
	(to_date('01012020', 'ddmmyy'), null, 2, 6),
	(to_date('01012020', 'ddmmyy'), '09:15', 3, 7),
	(to_date('01012020', 'ddmmyy'), '10:00', 4, 1),
	(to_date('01012020', 'ddmmyy'), '20:00', 4, 4),
	(to_date('01012020', 'ddmmyy'), '22:00', 1, 5),	
	(to_date('02012020', 'ddmmyy'), '08:00', 3, 1),
	(to_date('02012020', 'ddmmyy'), '10:00', 2, 2),
	(to_date('02012020', 'ddmmyy'), '10:00', 4, 5),
	(to_date('02012020', 'ddmmyy'), '15:00', 4, 2);

insert into Hrana(naziv_hrana, kalorii, proteini, masti)
values
	('Graf', 100, null, null),
	('Jajce', 150, 20, 15),
	('Oriz', 120, 15, 80),
	('Meso meleno', 250, null, 70),
	('Kompir', 500, 10, 120),
	('Zelka', 5, null, null),
	('Meso svinsko', 850, 150, 200),
	('Pechurki', 25, 30, null),
	('Rebra svinski', 400, 80, 90),
	('Ligni', 80, null, null),
	('Pastrmka', 100, 15, 10),
	('Krap', 120, 36, null),
	('Morkov', 10, 5, null),
	('Semki', 1, 1, 2.5),
	('Chvarki', 650, 48, 270),
	('Orev', 15, 8, null);

insert into Pialoci(naziv_pialok, alkohol, hranliva_vrednost)
values
	('Pivo', true, 5),
	('Sok od sliva', false, 2),
	('Belo vino', true, 2),
	('Crveno vino', true, 2),
	('Coca-Cola', false, 0),
	('Fanta', false, 0),
	('Koktel', true, 0);

insert into Suplementi(naziv_supl, opis_supl)
values
	('Protein-k100', 'Nogu jak protein'),
	('KreatinSumo2', 'Nogu slab kreatin'),
	('JohnWickProTip', null);

insert into Sportovi(naziv_sport, tezhina_sport)
values
	('Kosharka', 8),
	('Fudbal', 6),
	('Odbojka', 7),
	('Golf', 9),
	('Tenis', 6),
	('Hokej', 9),
	('Pikado', 3),
	('Ragbi', 10);

insert into Treninzi(sport)
values
	(1),
	(null),
	(5),
	(4),
	(7),
	(1),
	(2),
	(null),
	(3),
	(1),
	(null);

insert into Dnevnici_za_trening(datum, chas_start, chas_end, korisnik, trening)
values
	(to_date('05012020', 'ddmmyy'), '10:00', '13:20', 1, 1),
	(to_date('05012020', 'ddmmyy'), '10:00', '13:20', 2, 3),
	(to_date('05012020', 'ddmmyy'), null, null, 2, 6),
	(to_date('05012020', 'ddmmyy'), null, null, 3, 4),
	(to_date('06012020', 'ddmmyy'), '12:00', '13:20', 1, 1),
	(to_date('06012020', 'ddmmyy'), null, null, 4, 5),
	(to_date('06012020', 'ddmmyy'), null, null, 3, 1),
	(to_date('06012020', 'ddmmyy'), null, null, 2, 2),
	(to_date('07012020', 'ddmmyy'), '10:00', '13:20', 1, 10),
	(to_date('07012020', 'ddmmyy'), '10:00', '13:20', 2, 11),
	(to_date('07012020', 'ddmmyy'), null, null, 1, 4),
	(to_date('07012020', 'ddmmyy'), null, null, 2, 3),
	(to_date('08012020', 'ddmmyy'), null, null, 3, 1),
	(to_date('08012020', 'ddmmyy'), '10:00', '13:20', 4, 9);

insert into Vezhbi(naziv_vezhba, tezhina_vezhba)
values
	('Sklek', 4),
	('Stomachni', 3),
	('Zgib-v1', 5),
	('Zgib-v2', 6),
	('Cucnev', 2),
	('Skok vo mesto', 1);

insert into Dnevnici_za_trchanje(datum, metri, vreme_min, korisnik)
values
	(to_date('03012020', 'ddmmyy'), 1200, 20, 1),
	(to_date('03012020', 'ddmmyy'), 1800, 24, 2),
	(to_date('04012020', 'ddmmyy'), 2000,28, 3),
	(to_date('04012020', 'ddmmyy'), 1500, 20, 4),
	(to_date('04012020', 'ddmmyy'), 1300, 19, 1),
	(to_date('05012020', 'ddmmyy'), 1100, 19, 2),
	(to_date('05012020', 'ddmmyy'), 1900, 22, 3),
	(to_date('05012020', 'ddmmyy'), 2100, 30, 4),
	(to_date('05012020', 'ddmmyy'), 1200, 15, 1),
	(to_date('06012020', 'ddmmyy'), 1650, 18, 2),
	(to_date('06012020', 'ddmmyy'), 2200, 27, 3);

insert into Obrok_sodrzhi_hrana(obrok, hrana, kolichina)
values
	(1, 2, 2),
	(2, 3, 1),
	(2, 6, 1),
	(3, 5, 5),
	(4, 4, 1),
	(4, 5, 1),
	(5, 1, 1),
	(5, 2, 1),
	(5, 3, 1),
	(5, 4, 1),
	(5, 5, 1),
	(5, 6, 1),
	(5, 7, 1),
	(5, 8, 5),
	(5, 9, 3),
	(6, 9, 4),
	(6, 10, 7),
	(6, 11, 1),
	(6, 12, 1),
	(7, 14, 20),
	(7, 15, 20),
	(7, 16, 20);

insert into Obrok_sodrzhi_pialok(obrok, pialok, kolichina_l)
values
	(1, 6, 0.5),
	(3, 1, 0.5),
	(4, 5, 0.5),
	(5, 3, 2),
	(5, 4, 2),
	(6, 7, 5),
	(7, 1, 1);

insert into Obrok_sodrzhi_suplement(obrok, suplement)
values
	(2, 1),
	(4, 1),
	(6, 2),
	(7, 3);

insert into Trening_sodrzhi_vezhba(trening, vezhba, povtoruvanja)
values
	(2, 2, 20),
	(2, 3, 30),
	(2, 2, 15),
	(2, 4, 25),
	(8, 1, 50),
	(8, 2, 30),
	(8, 5, 25),
	(11, 3, 35),
	(11, 1, 20);

insert into Programi_za_ishrana_sodrzhat_obroci(programa_ishr, obrok)
values
	(1, 1),
	(1, 2),
	(1, 7),
	(2, 3),
	(2, 4),
	(3, 7),
	(4, 6),
	(5, 5),
	(5, 6),
	(6, 1),
	(6, 2),
	(6, 5),
	(6, 6);

insert into Programi_za_trening_sodrzhat_treninzi(programa_trening, trening)
values
	(1, 2),
	(2, 2),
	(2, 4),
	(3, 1),
	(3, 2),
	(4, 2),
	(4, 8),
	(4, 1),
	(5, 1),
	(5, 2),
	(5, 4),
	(5, 5),
	(5, 8),
	(5, 10),
	(5, 11),
	(6, 2),
	(6, 8),
	(6, 9),
	(6, 11);

insert into Instruktori_nudat_programa_za_ishrana(programa_ishr, instruktor)
values
	(1, 1),
	(1, 3),
	(2, 5),
	(3, 2),
	(3, 3),
	(4, 4),
	(5, 3),
	(6, 1),
	(6, 5);

insert into Instruktori_nudat_programa_za_trening(programa_trening, instruktor)
values
	(1, 4),
	(1, 5),
	(2, 3),
	(3, 1),
	(4, 2),
	(4, 3),
	(5, 1),
	(6, 3);










