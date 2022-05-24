INSERT INTO aeroport(nom, ville) values 
("Aérodrome d'Anaa", "Anaa"),
("Aéroport d'Arrabury", "Arrabury"),
("Aérodrome d'El-Arich", "El-Arich"),
("Aérodrome d'Adado", "Adado"),
("Aérodrome d'Anaa - Rabah-Bitat", "Rabah-Bitat"),
("Aéroport municipal d'Apalachicola", "Apalachicola"),
("Aéroport Avelino Viera", "Arapoti"),
("Aéroport d'Aachen-Merzbruck", "Aix-la-Chapelle"),
("Aéroport d'Arraias", "Arraias"),
("Aérodrome de Cayana", " Awaradam"),
("Aéroport international d'Atâr", "Atar"),
("Aérodrome d'Aranuka", "Buariki"),
("Aéroport d'Aalborg", "Aalborg"),
("Aérodrome de Fazenda Tucunare", "Sapezal"),
("Aéroport de Xanxerê", "Xanxerê");

INSERT INTO user(nom, prenom, telephone, username, password) values 
("Zurie  ", "Bélanger", "05.11.07.88.84", "ZurieBelanger@jourrapide.com", "de3UchaW"),
("Christien ", "Melanson", "02.86.37.60.97", "ChristienMelanson@dayrep.com", "Eis9sahfae"),
("Alexandrie ", "Majory", "02.63.71.76.02", "AlexandrieMajory@jourrapide.com", "mahl9Mus"),
("Algernon ", "Rousseau", "01.88.12.94.37", "AlgernonRousseau@armyspy.com", "aeB2oiWu0A"),
("Marguerite ", "Courtemanche", "01.09.18.74.54", "MargueriteCourtemanche@dayrep.com", "Ohpois7vo"),
("Vick ", "Lavoie", "03.87.06.76.43", "VickLavoie@armyspy.com", "eiLeanae6zie"),
("Josephe ", "Étoile", "01.59.64.85.11", "JosepheEtoile@dayrep.com", "ahY2Leth"),
("Andrée ", "Laderoute", "03.67.33.75.30", "AndreeLaderoute@armyspy.com", "ohPe9ooxuNai"),
("Renée ", "Turcotte", "04.96.28.43.72", "ReneeTurcotte@armyspy.com", "Sheegio4eiz"),
("Troy ", "Guimond", "01.22.29.99.78", "TroyGuimond@jourrapide.com", "Tahph1wech"),
("Troy ", "Dandonneau", "01.28.49.64.04", "TroyDandonneau@rhyta.com", "eiTai2Wee"),
("Landers ", "Mercure", "01.84.94.01.53", "LandersMercure@rhyta.com", "aij1iugahPh"),
("Gill ", "Duperré", "01.68.52.49.71", "GillDuperre@dayrep.com", "nohu8weCoo"),
("Yolande ", "Devoe", "03.82.56.90.94", "YolandeDevoe@teleworm.us", "Gie3jeengoo"),
("Fifi ", "Trépanier", "04.32.28.44.02", "FifiTrepanier@rhyta.com", "Dieh1sahw");

INSERT INTO compagnie_aerienne(nom) values 
("Air France"), ("Air Corsica"), ("Air Senegal"), ("Air Caraibes"), ("Aegean Airlines"), ("ASL Airlines France"),
("Austrian Airlines"), ("Alitalia Air Canada"), ("Air Europa"), ("Air Arabia Maroc"), ("Air Malta"),
("Air Austral"), ("Air Serbia"), ("Air Algerie"), ("Aeromexico"), ("Aer Lingus"), ("Aeroflot
Air"), ("Antilles Express"), ("Air Moldova ASKY"), ("Air Tanzania"), ("Air Tahiti Nui"), ("airBaltic"),
("Air Burkina Avianca"), ("American Airlines"), ("Azul Linhas Aereas Brasileiras"), ("Air Transat"), ("Aeromar"),
("Air India Albastar"), ("Air Kbz Aircalin"), ("Air Cairo Arkia"),
("Alaska Airlines"), ("Albawings AtlasGlobal"), ("Air Mediterranean"),
("All Nippon Airways");

/*INSERT INTO passager(nom, prenom) values
("Zurie  ", "Bélanger"),
("Christien ", "Melanson"),
("Alexandrie ", "Majory"),
("Algernon ", "Rousseau"),
("Marguerite ", "Courtemanche"),
("Vick ", "Lavoie"),
("Josephe ", "Étoile"),
("Andrée ", "Laderoute"),
("Renée ", "Turcotte"),
("Troy ", "Guimond"),
("Troy ", "Dandonneau"),
("Landers ", "Mercure"),
("Gill ", "Duperré"),
("Yolande ", "Devoe"),
("Fifi ", "Trépanier");*/

INSERT INTO vol(date_depart, date_arrivee, heure_depart, heure_arrivee, aeroport_arrivee, aeroport_depart, prix) values
('2025-03-09', '2025-03-10', "09:31:15", "06:37:31", 1,3,644),
('2022-05-04', '2022-05-06', "06:24:56", "17:57:23", 2,4,520),
('1927-04-30', '1927-05-01', "12:29:08", "13:56:49", 3,5,450),
('1962-11-05', '1962-11-06', "20:00:39", "14:29:59", 4,6,580),
('2062-04-14', '2062-04-16', "11:44:17", "06:20:23", 5,7,332),
('2063-06-24', '2063-06-25', "14:43:57", "12:57:53", 6,8,840),
('2009-11-03', '2009-11-04', "02:24:40", "22:18:50", 7,9,487),
('1935-01-22', '1935-01-23', "23:50:28", "02:30:57", 8,10,682),
('2089-06-15', '2089-06-16', "11:06:04", "22:37:19", 9,1,726),
('2046-07-19', '2046-07-20', "09:46:32", "10:26:23", 10,2,654);

INSERT INTO vol_compagnie_aerienne(id, idCA) values
(4,23),
(6,16),
(8,11),
(9,14),
(1,6),
(2,9),
(3,34),
(3,6),
(1,5),
(8,8),
(6,4),
(8,4),
(5,16),
(8,20),
(10,15);