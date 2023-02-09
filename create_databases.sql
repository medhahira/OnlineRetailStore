DROP DATABASE IF EXISTS `online retail store`;
CREATE DATABASE `online retail store`; 
USE `online retail store`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `Admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
);

INSERT INTO `Admin` VALUES ('Parisha','2021270');
INSERT INTO `Admin` VALUES ('Medha','2021265');


CREATE TABLE `Category` (
  `categoryID` INT NOT NULL auto_increment,
  `category_name` varchar(50) NOT NULL,
  `category_discount` DOUBLE DEFAULT 0,
  PRIMARY KEY(categoryID),
  CONSTRAINT `Category_chk_1` CHECK ((0 <= `category_discount` < 100))
);

INSERT INTO `Category` VALUES (1,'Fruits and Vegetables',5);
INSERT INTO `Category` VALUES (2,'Beverages',10);
INSERT INTO `Category` VALUES (3,'Clothing',15);
INSERT INTO `Category` VALUES (4,'Footwear',10);
INSERT INTO `Category` VALUES (5,'Electronics',20);


CREATE TABLE `Licence` (
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `licence_number` int(10) NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  PRIMARY KEY (`licence_number`)
);
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Ellissa', 'Tomaszynski', 649808, '1982-06-03 21:59:56');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Jayson', 'Farden', 544574, '1977-03-06 22:45:22');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Kathie', 'MacLoughlin', 296089, '1985-05-11 13:54:12');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Christie', 'Drayn', 954697, '1990-01-19 11:36:37');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Laure', 'Swinfen', 798031, '1976-01-05 16:53:26');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Laverna', 'Greenman', 350150, '1992-07-26 04:40:33');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Kaia', 'Braiden', 363225, '1985-11-07 08:06:42');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Gretna', 'Kermitt', 18532, '1994-03-18 05:22:53');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Deana', 'Medwell', 98152, '1985-03-24 12:47:03');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Natty', 'Stag', 366023, '1987-08-07 15:29:55');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Robbin', 'Kleimt', 279342, '1974-02-18 07:36:57');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Lurette', 'Bagshawe', 329546, '1999-03-01 18:09:28');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Rodina', 'Gahan', 995058, '1976-11-03 09:52:18');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Gawain', 'Kobieriecki', 837210, '1974-12-03 10:30:57');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Desi', 'Alfonso', 979295, '1989-07-29 12:38:27');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Andrey', 'Muldoon', 983006, '1992-02-23 13:40:23');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Christoph', 'Northam', 657511, '1992-08-29 17:15:47');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Caye', 'Clive', 893452, '1987-08-21 19:58:32');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Kenton', 'Feitosa', 312185, '1994-01-31 22:29:04');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Madlen', 'Lynett', 822046, '1993-01-06 22:36:01');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Rhona', 'Bayle', 589576, '1995-02-24 15:10:38');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Leanna', 'Brezlaw', 720297, '1989-12-15 10:20:05');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Fedora', 'Canniffe', 481472, '1976-08-11 04:24:17');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Carolus', 'Hann', 97656, '1984-10-25 00:06:32');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Ernie', 'Deaton', 482548, '1984-09-18 07:36:39');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Dermot', 'Creffeild', 442685, '1978-10-01 17:48:34');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Letitia', 'Snoding', 71662, '1980-06-27 17:07:12');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Dana', 'Powe', 538286, '1997-05-31 16:26:25');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Carlotta', 'Woodger', 255230, '1983-01-12 01:26:31');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Corabella', 'McCritchie', 495957, '1985-09-20 18:02:05');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Inge', 'Hitzke', 337671, '1999-07-21 02:25:02');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Imelda', 'Carwithen', 577587, '1988-01-21 02:42:16');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Ernie', 'Ashment', 40035, '1999-04-05 00:32:40');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Pierrette', 'Brinkler', 126453, '1992-02-24 03:28:04');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Anabella', 'Hatley', 166284, '1983-07-14 17:47:10');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Adriane', 'Cantera', 445260, '1979-03-24 09:49:39');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Selma', 'Petegre', 842140, '1980-07-20 06:17:19');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Colene', 'Goucher', 613835, '1987-04-18 03:48:53');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Joann', 'Hitzschke', 721144, '1976-02-12 02:30:39');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Page', 'Cantillion', 990874, '1995-02-15 01:16:55');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Francisco', 'Deinhard', 116104, '1979-12-09 16:53:44');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Lewes', 'Safont', 622907, '1985-01-10 11:01:46');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Jeniffer', 'Middell', 840568, '1981-06-20 04:52:13');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Hilliary', 'Steward', 712961, '1979-03-02 16:58:01');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Raynard', 'Sallan', 315113, '1992-05-01 17:43:35');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Rachele', 'Pieper', 806977, '1986-10-19 08:28:24');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Keeley', 'Readshaw', 841715, '1987-09-04 13:56:04');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Ferdinand', 'Tytherton', 436988, '1994-09-24 14:21:25');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Chrystal', 'Cufley', 287045, '1978-03-28 01:40:06');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Evvy', 'Motherwell', 850601, '1990-12-19 20:05:53');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Janean', 'Ambrogi', 689259, '1986-06-08 03:05:58');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Lek', 'Danko', 532401, '1986-06-27 02:56:18');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Silvia', 'Spinley', 846651, '1981-07-03 14:17:48');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Sylvan', 'Milesap', 961225, '1997-12-31 09:07:26');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Gunar', 'Gallyhaock', 751640, '1987-04-05 00:29:27');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Cymbre', 'Mizzen', 288115, '1975-07-24 02:49:41');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Klaus', 'Farman', 644058, '1987-07-13 23:16:02');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Ronnie', 'Kupke', 756472, '1974-10-12 22:55:03');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Gaston', 'Purdom', 722399, '1977-01-03 17:47:28');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Christina', 'Awcock', 741433, '1988-10-31 07:44:34');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Hastings', 'Crozier', 354393, '1983-01-05 07:35:27');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Manon', 'MacCambridge', 946726, '1991-12-27 11:37:41');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Abram', 'Joseland', 540178, '1976-10-27 13:01:20');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Culley', 'Joicey', 293878, '1998-06-30 23:26:47');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Cob', 'Luty', 657134, '1978-11-07 19:47:56');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Kale', 'Argontt', 122187, '1989-08-16 15:10:35');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Izzy', 'Fredy', 731716, '1984-08-12 18:47:52');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Jacqui', 'Innot', 841001, '1977-08-10 20:38:23');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Bartram', 'Stive', 429617, '1997-11-07 01:55:56');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Griz', 'Casine', 963124, '1974-06-11 17:14:22');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Rozina', 'MacTrustey', 837583, '1990-05-08 13:25:14');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Horatia', 'Wiseman', 763539, '1990-12-03 00:32:32');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Simeon', 'Morhall', 967580, '1974-03-09 12:27:18');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Devy', 'Alder', 103979, '1996-08-08 18:04:21');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Manuel', 'Peart', 64613, '1999-08-27 01:57:07');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Kerri', 'Matskevich', 638842, '1989-04-29 00:34:11');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Anne-corinne', 'Kittredge', 339284, '1974-11-01 22:50:09');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Matty', 'Sowten', 575371, '1981-06-17 00:01:34');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Wenona', 'Gething', 553405, '1976-11-20 18:36:39');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Raynor', 'Reaper', 42451, '1992-02-11 19:10:39');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Errol', 'Crewther', 274927, '1974-06-30 12:03:08');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Geralda', 'Nissle', 740653, '1976-12-12 21:27:33');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Alard', 'Sainthill', 660389, '1981-02-08 03:37:46');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Marillin', 'Dunabie', 293972, '1985-10-05 04:02:54');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Rosalinda', 'Baldrick', 708009, '1976-03-08 19:36:14');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Burg', 'Tatton', 221438, '1998-08-01 11:38:01');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Quill', 'Roblin', 295396, '1993-04-17 02:31:25');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Nickolas', 'Grzelczak', 913700, '1998-11-17 10:34:37');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Edgardo', 'Biss', 873903, '1980-09-16 06:43:29');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Janice', 'Attril', 644422, '1980-12-12 01:20:48');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Florance', 'Poe', 413379, '1998-11-02 16:30:47');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Pammie', 'Screeton', 190762, '1985-09-01 14:41:22');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Tedman', 'McCaffrey', 823252, '1997-10-11 06:49:19');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Xavier', 'Cleaton', 128155, '1980-03-14 17:35:15');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Hubey', 'Rubenchik', 591146, '1993-04-02 13:36:02');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Clarie', 'Devonshire', 876603, '1977-10-21 13:49:09');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Angelle', 'Corro', 698082, '1991-12-30 13:49:03');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Cos', 'Nani', 914299, '1981-10-05 09:02:01');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Erminie', 'Ferriday', 117598, '1982-08-19 05:40:22');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Shelia', 'Maypes', 479081, '1987-09-24 09:51:58');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Nessy', 'Benallack', 251207, '1981-06-22 19:48:54');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Lowell', 'Morrant', 485073, '1996-02-10 19:22:39');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Francesca', 'Deerness', 592416, '1981-03-07 20:46:24');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Lorne', 'Planke', 720810, '1978-10-11 01:55:11');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Clemente', 'Drieu', 311678, '1989-05-21 02:30:08');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Egan', 'Gromley', 851498, '1995-01-27 02:59:19');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Tod', 'Standingford', 711855, '1979-04-24 07:20:08');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Janna', 'Gowenlock', 380686, '1999-03-25 08:27:49');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Ollie', 'De-Ville', 851456, '1985-08-31 02:55:13');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Denys', 'Flewan', 805144, '1984-01-19 03:06:38');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Alanson', 'O'' Kelleher', 97561, '1980-03-24 17:15:59');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Micky', 'Whate', 349604, '1994-11-06 07:39:30');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Filia', 'Leadley', 131878, '1997-06-03 21:18:26');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Augustine', 'Cosgry', 722834, '1991-11-01 10:20:01');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Noami', 'Shilladay', 983672, '1988-02-07 00:56:43');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Dall', 'Dugdale', 144680, '1992-03-22 17:26:32');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Rorie', 'McKelvie', 605819, '1976-04-21 17:00:50');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Sheila', 'Bowles', 531869, '1999-09-21 16:38:20');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Othello', 'Wellman', 322747, '1987-11-05 22:43:32');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Ody', 'Sherrin', 756735, '1976-03-02 05:15:40');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Loraine', 'Korpal', 515781, '1994-07-19 18:34:36');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Franny', 'Nancarrow', 171510, '1983-11-22 14:22:47');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Licha', 'Scholtz', 531876, '1990-03-29 13:48:49');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Coralyn', 'Van Bruggen', 26116, '1989-12-06 13:30:09');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Reina', 'Sapson', 750669, '1989-05-07 06:19:22');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Amos', 'Fraine', 906289, '1988-10-20 16:37:52');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Clive', 'Riba', 233967, '1990-11-30 07:49:07');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Ursola', 'Ilchenko', 519389, '1997-03-29 12:56:02');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Johannes', 'Rollin', 896495, '1981-01-10 06:05:34');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Delbert', 'Champe', 84210, '1996-09-28 04:16:38');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Morgen', 'Filewood', 154619, '1979-01-15 16:53:29');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Kiele', 'Brennand', 754234, '1976-09-28 05:55:30');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Jermain', 'Harrald', 819284, '1984-05-17 00:29:09');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Randolph', 'Norwood', 672864, '1994-08-07 00:29:37');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Shane', 'Scurfield', 41229, '1990-12-01 20:46:51');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Mavra', 'Stimpson', 388382, '1994-02-27 23:45:55');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Eydie', 'Gislebert', 883947, '1977-07-21 19:34:12');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Reynolds', 'Gallier', 221329, '1982-06-12 07:26:13');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Carita', 'Sample', 330813, '1974-06-04 00:10:29');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Trip', 'Clover', 787693, '1975-05-20 06:35:37');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Petronia', 'Overstall', 431075, '1991-01-22 11:00:35');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Rosco', 'Kattenhorn', 43999, '1981-05-04 21:04:55');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Kial', 'Theunissen', 850166, '1985-10-14 13:01:17');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Odo', 'Iglesias', 808523, '1977-06-08 22:18:50');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Micaela', 'Smallpeace', 723770, '1974-09-18 16:55:57');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Tasia', 'Lampaert', 359740, '1991-06-04 04:49:06');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Sherwynd', 'Loughran', 483363, '1999-12-01 19:37:42');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Robena', 'McMylor', 646842, '1994-07-16 16:32:34');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Baxy', 'Airey', 710964, '1984-08-13 17:22:16');
insert into Licence (first_name, last_name, licence_number, date_of_birth) values ('Siegfried', 'Zelner', 896157, '1985-11-15 16:24:28');


CREATE TABLE `Customer` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone_number` char(10) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `subscription_type` varchar(20) DEFAULT NULL,
  `couponID` INT NOT NULL,
  `house_number` varchar(10) NOT NULL,
  `street_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `pincode` char(6) NOT NULL,
  PRIMARY KEY(username)
);

insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('jmcmorran0', 'pEisQQ', 'Joshua', 'McMorran', '3755437110', 'jmcmorran0@cnet.com', 'regular', 92312, 85939, 'Butterfield', 'Majennang', 241268);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('asibbson1', 'Q4DrVI6gKCn', 'Alejoa', 'Sibbson', '6212742931', 'asibbson1@unc.edu', 'regular', 88565, 69073, 'Hansons', 'Lengkeng', 235715);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('fmilne2', 'Go78UIIBz1', 'Flora', 'Milne', '5064450689', 'fmilne2@deviantart.com', 'regular', 82683, 58261, 'Burrows', 'Horta', 683406);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('kdowall3', '7wT19Zt28US', 'Kathy', 'Dowall', '8739633885', 'kdowall3@blinklist.com', 'regular', 28449, 90766, 'Arapahoe', 'Niwiska', 776508);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('eagus4', 'vVyc4IYs', 'Edgard', 'Agus', '7781327498', 'eagus4@mit.edu', 'regular', 30339, 48334, 'Drewry', 'Kusŏng', 661835);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('abonson5', 'rxTzdexltqBl', 'Alejandra', 'Bonson', '6601582245', 'abonson5@msu.edu', 'regular', 40263, 37998, 'Carberry', 'Bairro de Santo António', 560391);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('tbinch6', 'IxI3S1PNxXVN', 'Toddie', 'Binch', '1586487917', 'tbinch6@who.int', 'regular', 65147, 58882, 'Swallow', 'Bárrio', 931889);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('stsar7', 'a9pWL9J', 'Shelby', 'Tsar', '3499610185', 'stsar7@furl.net', 'regular', 71815, 39105, '3rd', 'Pakemitan', 445179);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('rbrownlie8', 'cR6yhh6', 'Rock', 'Brownlie', '9756876045', 'rbrownlie8@ow.ly', 'regular', 40852, 42568, 'Surrey', 'Devesa', 728465);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('jliddell9', 'lNrM8zn', 'Jere', 'Liddell', '3518289582', 'jliddell9@cam.ac.uk', 'regular', 17458, 55594, 'Luster', 'Ciusul', 373709);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('nvenneura', 'oSWpMLn', 'Natale', 'Venneur', '8873658244', 'nvenneura@hhs.gov', 'regular', 43299, 55206, 'Anthes', 'Habana del Este', 123989);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('wfalckb', 'P8vNEE', 'Winslow', 'Falck', '6809039106', 'wfalckb@discovery.com', 'regular', 61711, 74833, 'Marcy', 'Peterhof', 438190);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mlantc', 'jj0euhS', 'Mandy', 'Lant', '2231205081', 'mlantc@photobucket.com', 'regular', 27944, 56768, 'Bartelt', 'Nybro', 844288);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('dbickersd', 'AKGEsF6', 'Dorolice', 'Bickers', '3906530962', 'dbickersd@edublogs.org', 'regular', 92139, 87708, 'Milwaukee', 'Brodósqui', 544043);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('rchaperlinge', 'YYFbOHEqZCWp', 'Rubie', 'Chaperling', '1751313676', 'rchaperlinge@sciencedaily.com', 'regular', 51462, 54759, 'Anthes', 'Hassi Berkane', 362598);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('phuygensf', 'xAseQO08bl', 'Paulina', 'Huygens', '7206802571', 'phuygensf@netlog.com', 'regular', 99557, 39643, 'Monument', 'Sandayong Sur', 214502);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('cfrippg', 'a5elg5', 'Coral', 'Fripp', '5085186895', 'cfrippg@cmu.edu', 'regular', 51919, 7722, 'Hoffman', 'Shtip', 791283);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('rdederichh', 'dxKp3rtG0G', 'Robinette', 'Dederich', '1369458251', 'rdederichh@craigslist.org', 'regular', 62439, 49279, 'Nelson', 'Qianxu Zhen', 855275);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('dstemsoni', 'NXgAuc', 'Decca', 'Stemson', '6806657915', 'dstemsoni@cafepress.com', 'regular', 91232, 30775, 'Reindahl', 'Siekierczyn', 494134);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('vbaudetj', 'GSSOlp5e68G', 'Valencia', 'Baudet', '8754343684', 'vbaudetj@nsw.gov.au', 'regular', 39535, 11541, 'Parkside', 'Sempu', 366565);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('rspracklink', '7yq1e5tmls', 'Rufe', 'Spracklin', '5799874010', 'rspracklink@woothemes.com', 'regular', 20269, 41588, 'Garrison', 'Skaryszew', 154490);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('ncoulmanl', 'XkrpuXQ1pNbx', 'Neel', 'Coulman', '6723668280', 'ncoulmanl@opensource.org', 'regular', 83144, 50913, 'Calypso', 'Pickering', 843880);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('tabramskim', 'J0kAfU4', 'Tomkin', 'Abramski', '4546266654', 'tabramskim@tamu.edu', 'regular', 31510, 71615, 'Harbort', 'Vrbovec', 495282);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('lkemmeyn', 'GGinD8XwEkB', 'Luciana', 'Kemmey', '3483745995', 'lkemmeyn@si.edu', 'regular', 61495, 24618, 'Lotheville', 'Cielmice', 378432);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mdethloffo', 'gUNosw02XXz', 'Maud', 'Dethloff', '3276441434', 'mdethloffo@cafepress.com', 'regular', 85394, 60866, 'Tomscot', 'Juhaynah', 470706);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mpudanp', 'oNLb6kZ2O', 'Meredith', 'Pudan', '1806600211', 'mpudanp@geocities.jp', 'regular', 95470, 59894, 'Cordelia', 'Gabao', 162048);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('rgoodnowq', '4clOSRuu2QCE', 'Rebbecca', 'Goodnow', '6633489746', 'rgoodnowq@tripadvisor.com', 'regular', 33693, 61507, 'Waywood', 'Plymouth', 857657);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('cfarrellr', '4FvaPuxwelc', 'Celinda', 'Farrell', '2764106611', 'cfarrellr@psu.edu', 'regular', 12496, 4256, 'Hauk', 'København', 510198);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mdouches', 'V1YuOheLow', 'Maurie', 'Douche', '1944531241', 'mdouches@fda.gov', 'regular', 53182, 17195, 'Pearson', 'Pentre', 564789);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('sklast', 'GqNQCr', 'Shaughn', 'Klas', '9373334707', 'sklast@dedecms.com', 'regular', 75297, 13955, 'Warbler', 'Enyerhyetykaw', 379311);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mdargieu', 'uDRcs70l', 'Marsha', 'Dargie', '5892515956', 'mdargieu@nationalgeographic.com', 'regular', 32078, 89980, 'Southridge', 'Dongming', 729502);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('ddaubenyv', 'UETEwjQTR', 'Donal', 'Daubeny', '5423125805', 'ddaubenyv@pbs.org', 'regular', 21052, 77377, 'Bay', 'Cergy-Pontoise', 972874);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('trigbyw', 'DLgQWy0pur', 'Tamarah', 'Rigby', '4586859301', 'trigbyw@example.com', 'regular', 24651, 3772, 'Saint Paul', 'Frösön', 680591);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mdirandx', 'NyuPL7Q', 'Mayer', 'Dirand', '6541394210', 'mdirandx@sogou.com', 'regular', 43173, 90869, 'Stoughton', 'Wilwerwiltz', 941804);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('zsmedmorey', 'FLEnsxf1', 'Zebulon', 'Smedmore', '9723591039', 'zsmedmorey@tripadvisor.com', 'regular', 68674, 24199, 'Dwight', 'Xueshan', 326027);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mreasonz', 'Jn3uL7TIo1b', 'Mellie', 'Reason', '1971997356', 'mreasonz@github.io', 'regular', 35350, 47223, 'Hoard', 'Kanchanaburi', 947953);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mmonsey10', '2k1deYQUgT', 'Mair', 'Monsey', '8106265086', 'mmonsey10@bravesites.com', 'regular', 56777, 38071, 'Southridge', 'Kusŏng', 218038);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('rastall11', 'lfKX9h', 'Rosetta', 'Astall', '7511468781', 'rastall11@hc360.com', 'regular', 51278, 16038, 'Independence', 'Chacabuco', 583907);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('hchristofle12', '9lY2zcsTFkB1', 'Hayley', 'Christofle', '9223595043', 'hchristofle12@washingtonpost.com', 'regular', 24512, 77585, 'Golden Leaf', 'Vale Covo', 339626);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('bgopsell13', 'HrwCnYbgv', 'Bearnard', 'Gopsell', '9106372151', 'bgopsell13@wikipedia.org', 'regular', 37608, 26454, 'Little Fleur', 'Jales', 726154);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('cvasilenko14', 'rcPuIDLO6', 'Cesar', 'Vasilenko', '1677825574', 'cvasilenko14@boston.com', 'regular', 65286, 43981, 'Fairfield', 'Darkovice', 753469);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mcretney15', '406gf2AP', 'Mellisent', 'Cretney', '1931862168', 'mcretney15@exblog.jp', 'regular', 47096, 52188, 'Hollow Ridge', 'Sobral da Abelheira', 719136);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('rswatheridge16', '91aqXb6B', 'Rhianon', 'Swatheridge', '6655977858', 'rswatheridge16@hud.gov', 'regular', 29615, 60212, 'Oriole', 'Quiruvilca', 566165);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mconahy17', '6W4WiYtpE7', 'Mordecai', 'Conahy', '1528996077', 'mconahy17@addtoany.com', 'regular', 98418, 13023, 'Tennessee', 'Abakaliki', 670989);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('cnorledge18', 'ncJENNg', 'Conrado', 'Norledge', '5689012839', 'cnorledge18@fda.gov', 'regular', 14721, 59487, 'Corben', 'Bcharré', 116008);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('vifill19', '63wC3XgdWVn', 'Vite', 'Ifill', '9815341365', 'vifill19@japanpost.jp', 'regular', 21176, 31744, 'North', 'Igir-igir', 323220);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('tshovlin1a', 'yJSgA3XRGUc', 'Tracey', 'Shovlin', '5037338978', 'tshovlin1a@sourceforge.net', 'regular', 15300, 46249, 'Lakeland', 'Fukuyama', 676650);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('ldarridon1b', 'er1ZhAIlJ', 'Letty', 'Darridon', '3089579403', 'ldarridon1b@desdev.cn', 'regular', 33940, 50306, 'Vera', 'Senovo', 512694);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('kbrimm1c', 'bg4lGIm', 'Kendall', 'Brimm', '7236201616', 'kbrimm1c@guardian.co.uk', 'regular', 16484, 76210, 'Stoughton', 'San Juan', 833245);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('rkalinovich1d', 'ZdI8aScW3XT', 'Ruthi', 'Kalinovich', '5994415285', 'rkalinovich1d@geocities.com', 'regular', 87504, 32940, 'Butterfield', 'Libacao', 752726);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('trosettini1e', 'ZpSPghv4qWMD', 'Teresina', 'Rosettini', '1855816758', 'trosettini1e@jimdo.com', 'regular', 27764, 49247, 'Schiller', 'Villa Elisa', 649889);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('vbradley1f', 'Ui1XkqcF', 'Venus', 'Bradley', '9026625838', 'vbradley1f@hatena.ne.jp', 'regular', 92380, 29533, 'Petterle', 'Meipu', 537615);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('lthacke1g', '4LtWhUZCK', 'Liane', 'Thacke', '3272850160', 'lthacke1g@globo.com', 'regular', 18534, 5800, 'Donald', 'Hebei', 715473);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('cwogdon1h', 'Gq9OBkoLGbl5', 'Caz', 'Wogdon', '8179333811', 'cwogdon1h@europa.eu', 'regular', 68244, 22427, 'Truax', 'Żychlin', 459359);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('aawin1i', 'Wbukyj', 'Aldon', 'Awin', '5397887520', 'aawin1i@icq.com', 'regular', 94374, 6689, 'Jay', 'Hecun', 906650);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mronaldson1j', 'oAcc2V', 'Matthew', 'Ronaldson', '2043347028', 'mronaldson1j@istockphoto.com', 'regular', 34638, 86756, 'Mcbride', 'Changmaoling', 674259);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('dacory1k', 'FvCZ1Icu', 'Dino', 'Acory', '8733335976', 'dacory1k@soundcloud.com', 'regular', 82771, 78620, 'Towne', 'Hetou', 579356);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('sratt1l', 'Z8B7gAlsF', 'Stefania', 'Ratt', '9106996407', 'sratt1l@cloudflare.com', 'regular', 25307, 28637, 'Moose', 'Tomakomai', 588038);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('trockey1m', 'xgBhh37iF', 'Teador', 'Rockey', '4797448243', 'trockey1m@yellowpages.com', 'regular', 26592, 66439, 'Waxwing', 'Murom', 740715);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('farens1n', 'Op1Bwgn62', 'Fulvia', 'Arens', '7106095870', 'farens1n@topsy.com', 'regular', 71361, 49575, 'Bellgrove', 'Aristóbulo del Valle', 363153);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('otills1o', 'OKvm17', 'Orion', 'Tills', '5755565125', 'otills1o@tinypic.com', 'regular', 20090, 84302, 'Golf', 'Lozova', 450885);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('lsquirrel1p', 'zNAksCs', 'Leoline', 'Squirrel', '1381285190', 'lsquirrel1p@networksolutions.com', 'regular', 11318, 86598, 'Jenna', 'Gostivar', 989304);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('icorry1q', 'C5POcGLpkyr', 'Ingmar', 'Corry', '9972739678', 'icorry1q@ebay.com', 'regular', 52542, 90240, 'Jackson', 'Popovo', 615369);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('jmcclements1r', 'kMwX2A39Ik', 'Jervis', 'McClements', '4277942408', 'jmcclements1r@opera.com', 'regular', 47817, 54389, 'Garrison', 'Libertad', 562033);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('fspours1s', 'k3pvPP3eEW', 'Frank', 'Spours', '2435247419', 'fspours1s@fastcompany.com', 'regular', 74301, 26850, 'Sheridan', 'Cedynia', 907026);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('sfancy1t', 'AasGo9', 'Sal', 'Fancy', '7912403892', 'sfancy1t@earthlink.net', 'regular', 39524, 13329, 'Sachtjen', 'Repki', 229426);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('bstanlike1u', 'pZwEYX', 'Berrie', 'Stanlike', '4177572240', 'bstanlike1u@dmoz.org', 'regular', 66841, 42483, '4th', 'Huanglong', 880829);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('ejupe1v', 'O4dR1qy', 'Ernie', 'Jupe', '3662608638', 'ejupe1v@boston.com', 'regular', 17925, 72580, 'Pleasure', 'Saint-Amand-les-Eaux', 170280);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('kflay1w', 'X8yCbocm', 'Kessia', 'Flay', '5876977158', 'kflay1w@php.net', 'regular', 47386, 13742, 'Sauthoff', 'Arai', 803607);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('ckillough1x', 't9vOwa', 'Cherlyn', 'Killough', '2323526772', 'ckillough1x@hc360.com', 'regular', 87165, 6934, 'Helena', 'Santa Lucía', 837918);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('cvacher1y', 's7q2DiqB', 'Catharina', 'Vacher', '4258332132', 'cvacher1y@arizona.edu', 'regular', 89331, 14652, 'Arkansas', 'Gapluk', 966318);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('cmackeller1z', 'H6osrS38E6B', 'Charil', 'MacKeller', '4498142880', 'cmackeller1z@e-recht24.de', 'regular', 82066, 6693, 'Prentice', 'Perelyub', 928878);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('jjellett20', 'XLnZyuzR', 'Jacenta', 'Jellett', '9549715927', 'jjellett20@fema.gov', 'regular', 11817, 82796, 'Forest Run', 'Rakek', 739644);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mpaice21', '03lgXWdOsxNt', 'Marv', 'Paice', '2414240470', 'mpaice21@skyrock.com', 'regular', 75606, 78568, 'Gale', 'Albertville', 689036);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('elomax22', 'OGwyMstdYKZ', 'Elke', 'Lomax', '8907958339', 'elomax22@netscape.com', 'regular', 72167, 27774, 'Marquette', 'Tula', 824799);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mhounsome23', 'pM9TmeU', 'Madel', 'Hounsome', '6286937548', 'mhounsome23@google.com.hk', 'regular', 59304, 5615, 'Spaight', 'Melaka', 441085);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('cdeshon24', 'j8TsCHec', 'Cori', 'Deshon', '9155076364', 'cdeshon24@barnesandnoble.com', 'regular', 65756, 65784, 'Clove', 'Qibu', 231127);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('hbeed25', 'dIxSBL5BnW', 'Helen-elizabeth', 'Beed', '7366007244', 'hbeed25@admin.ch', 'regular', 96112, 42258, 'Elka', 'Sidomulyo', 706465);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('csouch26', '1L8L2Q3', 'Carole', 'Souch', '6982925690', 'csouch26@pinterest.com', 'regular', 51659, 59622, 'Arizona', 'Wangzha', 448544);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('fmacalister27', '2gpuF3', 'Ferrel', 'MacAlister', '1314355666', 'fmacalister27@nih.gov', 'regular', 74733, 93448, 'Sunnyside', 'Dongyuan', 120380);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('tcordery28', 'nu5dh9bU', 'Tonye', 'Cordery', '8026279553', 'tcordery28@theguardian.com', 'regular', 86535, 23037, 'Birchwood', 'Liren', 700346);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('menrico29', 'XIXdSW3vEByb', 'Marcia', 'Enrico', '2485566286', 'menrico29@slideshare.net', 'regular', 98306, 72459, 'Quincy', 'Ipís', 767001);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('zkenward2a', 'QvSVRLlFtY', 'Zuzana', 'Kenward', '6656566422', 'zkenward2a@jiathis.com', 'regular', 81084, 77574, 'American', 'Banxi', 303832);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('hcosker2b', '8oTu1eBPk', 'Harlen', 'Cosker', '1812734010', 'hcosker2b@slashdot.org', 'regular', 48100, 93141, 'Eggendart', 'Yangqiaodian', 949127);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('arickword2c', 'vmOu6p', 'Alvie', 'Rickword', '5238544562', 'arickword2c@utexas.edu', 'regular', 46945, 13975, 'Marquette', 'Jiqu', 593452);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('bbagworth2d', 'WGH8vnvqJMw', 'Bianka', 'Bagworth', '2042516994', 'bbagworth2d@amazon.com', 'regular', 81734, 85546, 'Spaight', 'Beiquan', 386756);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('wbowkett2e', '4h0x5dnMPZh', 'Wenona', 'Bowkett', '5167391394', 'wbowkett2e@de.vu', 'regular', 40466, 3810, 'Division', 'Nanto-shi', 881274);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('eraffles2f', 'NvFf6xmhJ', 'Ellynn', 'Raffles', '5271358358', 'eraffles2f@nymag.com', 'regular', 28255, 56512, 'Sundown', 'Buzdyak', 443856);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mnast2g', '0bid7YYAs', 'Michele', 'Nast', '3875602796', 'mnast2g@51.la', 'regular', 61622, 60725, 'Michigan', 'Singgit', 113954);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mflanagan2h', '5VZC6UcPAYiz', 'Mozes', 'Flanagan', '5546755061', 'mflanagan2h@nature.com', 'regular', 36375, 24773, 'Weeping Birch', 'Chedao', 769217);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('swhaites2i', 'jeGufdxfJ', 'Stavro', 'Whaites', '2963896825', 'swhaites2i@technorati.com', 'regular', 12413, 79296, 'Kipling', 'Lionel Town', 699902);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('abenallack2j', 'mXh2TfO', 'Alan', 'Benallack', '7342403227', 'abenallack2j@flavors.me', 'regular', 97888, 66011, 'Basil', 'Drammen', 749839);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('acheetham2k', '8xkYu4Jfx6', 'Ansley', 'Cheetham', '5223005664', 'acheetham2k@uol.com.br', 'regular', 83514, 6955, 'Ryan', 'Pak Chong', 947096);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mkimbling2l', 'I03JSvHivBk', 'Maia', 'Kimbling', '1251620035', 'mkimbling2l@berkeley.edu', 'regular', 31472, 91542, '8th', 'Guodu', 746864);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('wloch2m', 'MW0dp4', 'Wini', 'Loch', '1522352861', 'wloch2m@multiply.com', 'regular', 27702, 5424, 'Westerfield', 'Włoszczowa', 596012);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('nantoni2n', 'LB7iF64cUiRB', 'Nadya', 'Antoni', '4956837877', 'nantoni2n@utexas.edu', 'regular', 35053, 11035, 'Lakewood Gardens', 'Shuangxi', 958985);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('hhearnden2o', 'MT0liBcc3p', 'Hetty', 'Hearnden', '5965506342', 'hhearnden2o@spotify.com', 'regular', 73030, 34850, 'Gateway', 'Sonzacate', 793270);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('kskerm2p', '2Bsd8tk', 'Kearney', 'Skerm', '3873192650', 'kskerm2p@istockphoto.com', 'regular', 73103, 51555, 'Transport', 'Dubá', 244955);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('jklimshuk2q', 'gzATqYe5ZYFR', 'Jacinta', 'Klimshuk', '1558983874', 'jklimshuk2q@altervista.org', 'regular', 33849, 8556, 'Rowland', 'Kharabali', 373633);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('gfurphy2r', 'ZTxXWGWJ', 'Garv', 'Furphy', '7012557748', 'gfurphy2r@nasa.gov', 'regular', 16084, 23991, 'Hooker', 'Grand Forks', 233041);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('sferrar2s', 'ZSDr0KsKbIyt', 'Shem', 'Ferrar', '9142760240', 'sferrar2s@51.la', 'regular', 31504, 16783, 'Mendota', 'Xindian', 684542);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('lmcgerraghty2t', 'ijG0kR4', 'Lucila', 'McGerraghty', '2318779980', 'lmcgerraghty2t@nyu.edu', 'regular', 85390, 96052, 'Bunker Hill', 'Agogo', 142190);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('tyakovl2u', 'ajlcfw9Xt', 'Toby', 'Yakovl', '4251776783', 'tyakovl2u@youku.com', 'regular', 70180, 38207, 'Anniversary', 'Morfovoúni', 833326);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('oabelevitz2v', '6ncdeJf', 'Oona', 'Abelevitz', '3806265556', 'oabelevitz2v@artisteer.com', 'regular', 50063, 29838, 'Namekagon', 'Gradizhsk', 918298);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('tsandeson2w', 'BEUu8Bni035', 'Tom', 'Sandeson', '8184478300', 'tsandeson2w@flavors.me', 'regular', 59671, 72298, 'Anhalt', 'Yuezhao', 340902);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('npapierz2x', '9oHwKL0t', 'Nelie', 'Papierz', '8703092662', 'npapierz2x@hp.com', 'regular', 63559, 86638, 'Golf', 'Hudlice', 825854);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('lbiscomb2y', 'knWIgISWWk7', 'Latrina', 'Biscomb', '4027097234', 'lbiscomb2y@unc.edu', 'regular', 71426, 90056, 'Michigan', 'Omaha', 258051);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('sgregoletti2z', 'qIam1cr8', 'Sonny', 'Gregoletti', '2034378448', 'sgregoletti2z@paypal.com', 'regular', 44114, 34510, 'Shopko', 'Wulan', 554268);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('qwrittle30', 'D6WXQ3mMl', 'Querida', 'Writtle', '4655655144', 'qwrittle30@163.com', 'regular', 80145, 95657, 'Crowley', 'Tuanjie', 263012);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('zmcdermid31', 'sQl3cYYUY', 'Zackariah', 'Mc Dermid', '2049297120', 'zmcdermid31@gravatar.com', 'regular', 79321, 79638, 'Waywood', 'Longuita', 832526);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('ewayman32', 'ZpN88v3', 'Erhart', 'Wayman', '5373871044', 'ewayman32@microsoft.com', 'regular', 99538, 85338, 'Maryland', 'Kasugai', 714930);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('dpapierz33', 'Locs7zJN4q', 'Davy', 'Papierz', '8218901043', 'dpapierz33@guardian.co.uk', 'regular', 94995, 98381, '8th', 'Shenwan', 418177);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('mgonet34', 'eJAwPOSt', 'Merlina', 'Gonet', '3586083370', 'mgonet34@scribd.com', 'regular', 33573, 35663, 'Stone Corner', 'Sumurber', 944222);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('htideswell35', 'iyTmhQiM', 'Harman', 'Tideswell', '8956735349', 'htideswell35@nymag.com', 'regular', 90047, 4484, 'Erie', 'Jejkowice', 779805);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('dborley36', 'TesODp', 'Domenico', 'Borley', '6208267428', 'dborley36@paginegialle.it', 'regular', 29556, 53284, 'Northland', 'Huangzhu', 348768);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('gredfield37', 'R1k5qNGyUn2', 'Gussi', 'Redfield', '4751025737', 'gredfield37@berkeley.edu', 'regular', 89714, 45506, 'Waxwing', 'Lahad Datu', 155107);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('sbryde38', 'ky34Z3N0zG1x', 'Sheffield', 'Bryde', '2387732324', 'sbryde38@instagram.com', 'regular', 61644, 41357, 'Chive', 'Jiangtou', 132845);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('aaloshkin39', '5wrNcyFQa', 'Alvan', 'Aloshkin', '3136504081', 'aaloshkin39@smh.com.au', 'regular', 25812, 96679, 'Quincy', 'Charras', 891499);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('bavard3a', 'g3nT3NFp', 'Bonny', 'Avard', '9679767865', 'bavard3a@admin.ch', 'regular', 75680, 92977, 'Old Shore', 'Rancaseneng', 911020);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('ebraime3b', 'lJLBcMLVt', 'Edmon', 'Braime', '4306206604', 'ebraime3b@eepurl.com', 'regular', 55147, 38595, '2nd', 'Wysokie Mazowieckie', 263178);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('jmccauley3c', '1GkD1Ly', 'Johann', 'McCauley', '6358298209', 'jmccauley3c@businessweek.com', 'regular', 25818, 39881, 'Farragut', 'Damanhūr', 966360);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('jwinson3d', 'jucaslXAQtEw', 'Jeffry', 'Winson', '1653100315', 'jwinson3d@hud.gov', 'regular', 13447, 71371, 'Morrow', 'Rongxiang', 508625);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('lboucher3e', 'Qta0Bh4h', 'Lorelle', 'Boucher', '1272270415', 'lboucher3e@samsung.com', 'regular', 12973, 27548, 'Jenifer', 'Jiangxigou', 146958);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('sspeake3f', 'IiLxzJGcz', 'Susannah', 'Speake', '4138339919', 'sspeake3f@4shared.com', 'regular', 89871, 30982, 'Graedel', 'Tišina', 145954);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values ('painsby3g', 'mdiFBEvz', 'Pearline', 'Ainsby', '8566827612', 'painsby3g@upenn.edu', 'regular', 98387, 11157, 'Blackbird', 'Puchong', 942735);


CREATE TABLE `Coupon` (
  `couponID` INT NOT NULL auto_increment,
  `amount` decimal(9,2) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `status_of_use` INT DEFAULT 0,
  `categoryID` INT NOT NULL,
  PRIMARY KEY(couponID),
  CONSTRAINT `Coupon_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `Category` (`categoryID`) on UPDATE CASCADE,
  CONSTRAINT `Coupon_chk_1` CHECK ((0 <= `amount`))
);

insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (1, 51.12, '2023-01-03 11:33:18', 1, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (2, 63.43, '2022-04-22 20:06:16', 1, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (3, 101.71, '2022-11-07 16:39:11', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (4, 167.55, '2022-09-17 06:54:30', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (5, 31.26, '2023-03-01 18:18:14', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (6, 139.93, '2022-07-21 21:51:18', 1, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (7, 56.63, '2023-01-10 04:55:39', 1, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (8, 28.56, '2022-11-16 18:41:51', 1, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (9, 174.31, '2022-07-04 16:15:28', 1, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (10, 190.79, '2023-01-24 06:29:00', 1, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (11, 110.09, '2022-04-20 07:10:51', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (12, 38.31, '2022-11-23 06:18:12', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (13, 166.94, '2022-07-15 17:46:28', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (14, 92.48, '2022-04-20 03:25:44', 1, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (15, 171.46, '2023-01-06 03:38:06', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (16, 157.19, '2022-09-25 11:13:27', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (17, 167.83, '2022-03-05 19:28:34', 0, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (18, 88.15, '2022-04-18 08:05:58', 1, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (19, 83.74, '2022-08-28 00:32:33', 1, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (20, 122.81, '2022-07-30 15:25:02', 1, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (21, 197.08, '2022-09-03 22:00:52', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (22, 97.05, '2022-08-18 05:35:52', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (23, 125.66, '2022-10-21 17:17:18', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (24, 194.33, '2022-12-06 11:07:20', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (25, 88.87, '2022-07-05 16:42:00', 1, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (26, 74.33, '2022-04-07 19:47:47', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (27, 138.93, '2022-12-09 09:38:52', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (28, 62.01, '2022-10-28 22:05:11', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (29, 62.39, '2022-09-09 01:01:14', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (30, 66.59, '2023-01-21 07:13:55', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (31, 135.17, '2022-08-06 15:11:46', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (32, 25.97, '2022-11-11 08:50:22', 1, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (33, 165.56, '2023-02-17 14:45:44', 1, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (34, 61.67, '2022-09-14 04:37:41', 1, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (35, 162.07, '2022-11-28 12:00:30', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (36, 184.48, '2023-02-18 05:55:51', 1, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (37, 60.84, '2022-05-29 00:23:03', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (38, 115.24, '2022-10-29 15:13:00', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (39, 50.65, '2022-04-03 21:53:29', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (40, 82.6, '2023-02-23 10:07:40', 1, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (41, 125.4, '2022-08-03 07:25:22', 1, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (42, 142.25, '2022-12-08 22:12:59', 1, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (43, 111.11, '2022-12-26 20:38:11', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (44, 83.24, '2022-03-15 00:50:00', 1, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (45, 90.09, '2022-08-19 08:00:57', 0, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (46, 166.08, '2022-05-10 12:02:09', 0, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (47, 138.53, '2022-04-24 14:54:01', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (48, 84.73, '2022-11-17 04:27:38', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (49, 115.13, '2022-05-30 20:55:55', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (50, 125.39, '2022-05-25 12:29:09', 1, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (51, 109.09, '2022-07-10 06:59:09', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (52, 98.64, '2022-09-25 19:57:13', 1, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (53, 189.26, '2022-12-31 21:33:20', 1, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (54, 119.57, '2022-10-16 08:21:37', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (55, 130.24, '2022-03-13 21:00:09', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (56, 34.24, '2023-01-02 23:52:27', 1, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (57, 181.26, '2023-01-30 16:51:52', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (58, 56.72, '2022-04-24 22:25:57', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (59, 110.91, '2022-04-08 08:38:03', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (60, 185.71, '2022-07-27 19:10:19', 1, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (61, 105.84, '2022-04-16 07:12:31', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (62, 35.44, '2022-08-13 00:07:58', 1, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (63, 173.02, '2022-07-12 18:16:45', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (64, 47.16, '2022-10-15 11:46:28', 1, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (65, 40.63, '2022-11-23 09:38:22', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (66, 128.28, '2022-06-12 15:59:26', 1, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (67, 75.27, '2023-03-02 15:32:20', 1, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (68, 171.78, '2022-06-04 06:33:22', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (69, 190.64, '2022-05-19 02:07:18', 1, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (70, 157.85, '2022-07-15 10:22:41', 1, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (71, 171.95, '2022-06-17 17:04:57', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (72, 164.41, '2022-03-24 07:46:58', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (73, 104.3, '2022-05-07 21:57:37', 1, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (74, 34.11, '2022-09-19 03:05:22', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (75, 157.61, '2022-05-27 20:56:40', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (76, 58.72, '2022-05-01 20:23:39', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (77, 126.17, '2022-08-08 13:59:48', 1, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (78, 176.23, '2022-03-23 05:29:03', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (79, 141.35, '2022-06-19 03:33:52', 0, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (80, 116.61, '2022-08-05 21:18:00', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (81, 93.9, '2023-01-09 15:38:15', 1, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (82, 109.89, '2022-11-16 15:54:47', 0, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (83, 107.39, '2022-11-02 15:53:57', 1, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (84, 89.44, '2023-01-15 16:20:18', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (85, 194.09, '2022-06-18 22:17:50', 0, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (86, 32.94, '2022-09-07 19:36:22', 1, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (87, 171.9, '2022-11-28 19:45:44', 1, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (88, 134.34, '2022-10-18 04:53:13', 0, 2);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (89, 106.2, '2022-05-27 02:49:27', 0, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (90, 163.24, '2022-09-26 16:53:27', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (91, 84.9, '2022-09-27 12:47:18', 0, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (92, 174.61, '2022-11-09 18:22:54', 1, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (93, 192.03, '2022-07-23 17:46:46', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (94, 40.11, '2022-12-11 19:17:41', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (95, 125.93, '2023-01-04 10:27:49', 1, 4);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (96, 109.25, '2022-07-23 10:58:00', 0, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (97, 43.94, '2023-03-19 15:56:08', 0, 5);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (98, 57.74, '2022-05-22 21:18:25', 1, 3);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (99, 184.23, '2022-10-24 19:28:50', 1, 1);
insert into Coupon (couponID, amount, expiry_date, status_of_use, categoryID) values (100, 198.1, '2023-01-01 07:57:19', 0, 1);


CREATE TABLE `Product` (
  `productID` INT NOT NULL auto_increment,
  `categoryID` INT NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `quantity_in_stock` INT DEFAULT 0,
  `discount` DOUBLE DEFAULT 0,
  `storage_type` varchar(50) NOT NULL,
  `rating` INT DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY(productID),
  CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `Category` (`categoryID`)  on UPDATE CASCADE,
  CONSTRAINT `Product_chk_1` CHECK ((0 <= `quantity_in_stock`)),
  CONSTRAINT `Product_chk_2` CHECK ((0 <= `discount` < 100)),
  CONSTRAINT `Product_chk_3` CHECK ((1 <= `rating` <= 5))
);

insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (1, 1, 'Apple', 61, 16.19, 'in freezer', 4, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (2, 1, 'Orange', 16, 16.84, 'in freezer', 2, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (3, 1, 'Mango', 81, 2.84, 'away from sun', 4, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (4, 1, 'Banana', 63, 13.96, 'away from sun', 2, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (5, 1, 'Guava', 92, 0.45, 'away from sun', 5, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (6, 1, 'Apricots', 73, 11.97, 'in freezer', 3, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (7, 1, 'Broccoli', 77, 18.12, 'in freezer', 2, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (8, 1, 'Cabbage', 95, 1.76, 'away from sun', 4, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (9, 1, 'Carrots', 96, 7.99, 'in refrigirator', 2, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (10, 1, 'Collards', 54, 13.97, 'away from sun', 4, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (11, 1, 'Corn', 76, 2.07, 'in refrigirator', 1, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (12, 1, 'Cucumber', 43, 10.0, 'in refrigirator', 5, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (13, 1, 'Lemons', 25, 11.77, 'away from sun', 2, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (14, 1, 'Lettuce', 99, 17.65, 'in refrigirator', 5, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (15, 1, 'Melons', 4, 12.68, 'away from sun', 1, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (16, 1, 'Mushrooms', 73, 2.35, 'in refrigirator', 2, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (17, 1, 'Mustard', 92, 9.65, 'in refrigirator', 5, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (18, 1, 'Peppers', 91, 6.6, 'away from sun', 5, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (19, 1, 'Persimmons', 93, 2.97, 'in refrigirator', 1, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (20, 1, 'Plums', 47, 11.67, 'in freezer', 5, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (21, 1, 'Potatoes', 45, 10.45, 'in refrigirator', 3, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (22, 1, 'Raspberries', 81, 15.15, 'in freezer', 2, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (23, 1, 'Sapote', 87, 7.69, 'in refrigirator', 5, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (24, 1, 'Spinach', 59, 1.29, 'in freezer', 1, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (25, 1, 'Strawberries', 20, 6.08, 'in freezer', 4, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (26, 1, 'Summer Squash', 34, 0.49, 'away from sun', 4, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (27, 1, 'Tomatillos', 71, 10.42, 'in freezer', 1, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (28, 1, 'Tomatoes', 54, 12.09, 'in freezer', 1, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (29, 1, 'Turnips', 19, 10.29, 'in freezer', 3, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (30, 1, 'Green Apple', 22, 19.43, 'in freezer', 1, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (31, 2, 'Green Tea', 61, 2.15, 'away from sun', 4, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (32, 2, 'Black Tea', 19, 2.5, 'in freezer', 4, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (33, 2, 'Apple Juice', 28, 8.85, 'in freezer', 2, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (34, 2, 'Orange Juice', 14, 8.39, 'away from sun', 1, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (35, 2, 'Mango Shake', 53, 17.77, 'in freezer', 5, 'liked from generations');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (36, 2, 'Banana Shake', 98, 7.08, 'in refrigirator', 2, 'fruity flavor');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (37, 2, 'Coka cola', 84, 13.54, 'away from sun', 4, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (38, 2, 'Fanta', 62, 17.75, 'in freezer', 5, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (39, 2, 'Limca', 94, 19.78, 'in freezer', 2, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (40, 2, 'Mountain Dew', 87, 4.94, 'in freezer', 4, 'liked from generations');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (41, 2, 'Mazza', 83, 13.3, 'in freezer', 1, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (42, 2, 'Fruity', 73, 4.87, 'in refrigirator', 3, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (43, 2, 'Pepsi', 39, 1.26, 'away from sun', 5, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (44, 2, 'Pomegranate juice', 26, 7.34, 'in freezer', 5, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (45, 2, 'Mixed-fruit Juice', 79, 4.68, 'in refrigirator', 3, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (46, 2, 'Mango Shake', 83, 0.52, 'in refrigirator', 4, 'liked from generations');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (47, 2, 'Chocolate Milk', 33, 6.87, 'in freezer', 3, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (48, 2, 'Jaljeera', 38, 4.56, 'in freezer', 1, 'fruity flavor');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (49, 2, 'Masala Soda', 15, 7.55, 'in freezer', 4, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (50, 2, 'Nimbuz', 33, 10.93, 'away from sun', 5, 'fruity flavor');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (51, 3, 'Black T-shirt', 46, 17.99, 'on racks', 3, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (52, 3, 'Blue T-shirt', 48, 12.99, 'on racks', 1, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (53, 3, 'Green T-shirt', 80, 14.2, 'away from sun', 3, 'easy wash');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (54, 3, 'Pink T-shirt', 34, 0.26, 'away from sun', 2, 'elastic');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (55, 3, 'Grey T-shirt', 27, 0.82, 'away from sun', 1, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (56, 3, 'Red T-shirt', 34, 10.9, 'away from sun', 5, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (57, 3, 'Black sweater', 34, 19.21, 'away from sun', 1, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (58, 3, 'Blue sweater', 2, 17.87, 'on racks', 5, 'can be washed in washing machine');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (59, 3, 'Grey sweater', 61, 6.2, 'away from sun', 2, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (60, 3, 'White sweater', 8, 2.67, 'on racks', 1, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (61, 3, 'Mustard cardigan', 15, 9.88, 'away from sun', 3, 'elastic');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (62, 3, 'Black jacket', 28, 8.41, 'away from sun', 3, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (63, 3, 'Red jacket', 23, 15.76, 'away from sun', 1, 'can be washed in washing machine');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (64, 3, 'Blue jacket', 77, 8.03, 'on racks', 1, 'elastic');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (65, 3, 'Black biker jacket', 54, 6.01, 'away from sun', 3, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (66, 3, 'Black coat', 43, 6.34, 'in shelves', 1, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (67, 3, 'Brown coat', 85, 5.82, 'in shelves', 5, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (68, 3, 'White coat', 12, 19.68, 'in shelves', 2, 'easy wash');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (69, 3, 'Black jeans', 44, 6.05, 'on racks', 5, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (70, 3, 'Blue jeans', 25, 15.81, 'on racks', 2, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (71, 3, 'Grey jeans', 86, 4.73, 'in shelves', 2, 'elastic');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (72, 3, 'White jeans', 98, 14.15, 'in shelves', 2, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (73, 3, 'black socks', 19, 6.28, 'in shelves', 5, 'easy wash');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (74, 3, 'grey socks', 73, 2.08, 'away from sun', 3, 'easy wash');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (75, 3, 'black dress', 100, 12.74, 'in shelves', 1, 'easy wash');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (76, 3, 'red dress', 55, 14.63, 'in shelves', 4, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (77, 3, 'blue dress', 13, 5.38, 'in shelves', 1, 'can be washed in washing machine');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (78, 3, 'low-cut red top', 86, 14.66, 'on racks', 5, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (79, 3, 'shorts', 77, 17.6, 'in shelves', 3, 'elastic');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (80, 3, 'tracksuit', 17, 10.18, 'in shelves', 4, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (81, 4, 'Black Boots', 97, 6.54, 'on racks', 3, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (82, 4, 'Red Boots', 85, 8.37, 'on racks', 5, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (83, 4, 'White Boots', 71, 4.15, 'in boxes', 4, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (84, 4, 'Pink Boots', 49, 0.35, 'on racks', 3, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (85, 4, 'Green Boots', 66, 10.56, 'on racks', 2, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (86, 4, 'Blue Boots', 13, 7.78, 'on shelves', 5, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (87, 4, 'Black Shoes', 41, 12.2, 'in boxes', 1, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (88, 4, 'Red Shoes', 76, 7.09, 'on racks', 2, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (89, 4, 'White Shoes', 6, 12.23, 'on shelves', 1, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (90, 4, 'Pink Shoes', 69, 1.54, 'on racks', 5, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (91, 4, 'Green Shoes', 47, 11.78, 'on shelves', 4, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (92, 4, 'Blue Shoes', 1, 14.2, 'on racks', 1, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (93, 4, 'Black Sandals', 40, 14.81, 'in boxes', 1, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (94, 4, 'Pink Sandals', 97, 10.96, 'in boxes', 1, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (95, 4, 'Grey Sandals', 40, 7.43, 'on racks', 4, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (96, 4, 'Red Sandals', 76, 9.14, 'on racks', 2, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (97, 4, 'Blue Slipper', 21, 0.69, 'on shelves', 1, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (98, 4, 'blue beach slippers', 79, 13.47, 'on racks', 1, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (99, 4, 'red beach slippers', 46, 12.48, 'on shelves', 4, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (100, 4, 'pink beach slippers', 67, 12.04, 'on shelves', 3, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (101, 5, 'Black Mouse', 19, 4.75, 'in insulated boxes', 1, 'solid surface');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (102, 5, 'Grey Mouse', 7, 0.71, 'in insulated boxes', 2, 'not easily breakable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (103, 5, 'Light Blue Mouse', 63, 19.99, 'in insulated boxes', 5, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (104, 5, 'MP3 player', 51, 1.54, 'in insulated boxes', 5, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (105, 5, 'Webcam', 71, 19.83, 'in insulated boxes', 3, 'waterproof');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (106, 5, '16 GB Hard drive', 88, 0.05, 'in insulated boxes', 2, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (107, 5, '32 GB Hard drive', 45, 0.29, 'in insulated boxes', 5, 'solid surface');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (108, 5, '8 GB Pendrive', 36, 10.09, 'in insulated boxes', 2, 'solid surface');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (109, 5, '16 GB Pendrive', 16, 16.83, 'on shelves', 5, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (110, 5, 'Microphone', 55, 4.14, 'in insulated boxes', 5, 'waterproof');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (111, 5, 'Digital camera', 31, 11.75, 'in insulated boxes', 5, 'solid surface');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (112, 5, 'Headphones', 52, 15.81, 'in insulated boxes', 2, 'waterproof');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (113, 5, 'Realme 4G Mobile', 9, 9.34, 'in insulated boxes', 1, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (114, 5, 'Realme 5G Mobile', 31, 4.32, 'on shelves', 5, 'not easily breakable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (115, 5, 'Oppo 5G Mobile', 96, 10.8, 'in insulated boxes', 5, 'not easily breakable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (116, 5, 'Oppo 4G Mobile', 23, 11.71, 'on shelves', 5, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (117, 5, 'Type B charging cable', 40, 9.7, 'in insulated boxes', 4, 'not easily breakable');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (118, 5, 'Type C charging cable', 100, 12.73, 'in insulated boxes', 2, 'waterproof');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (119, 5, 'HP black Laptop', 80, 12.5, 'on shelves', 2, 'solid surface');
insert into Product (productID, categoryID, name, quantity_in_stock, discount, storage_type, rating, description) values (120, 5, 'Macbook Pro', 26, 5.54, 'in insulated boxes', 2, 'not easily breakable');


CREATE TABLE `Inventory` (
  `productID` INT NOT NULL,
  `quantity` INT DEFAULT 0,
  `storage_type` varchar(50) NOT NULL,
  CONSTRAINT `Inventory_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `Product` (`productID`)  on UPDATE CASCADE,
  CONSTRAINT `Inventory_chk_1` CHECK ((0 <= `quantity`))
);

insert into Inventory (productID, quantity, storage_type) values (1, 61, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (2, 16, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (3, 81, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (4, 63, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (5, 92, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (6, 73, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (7, 77, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (8, 95, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (9, 96, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (10, 54, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (11, 76, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (12, 43, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (13, 25, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (14, 99, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (15, 4, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (16, 73, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (17, 92, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (18, 91, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (19, 93, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (20, 47, 'in freezer');	-- exact till here
insert into Inventory (productID, quantity, storage_type) values (21, 76, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (22, 56, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (23, 52, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (24, 44, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (25, 94, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (26, 75, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (27, 52, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (28, 19, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (29, 15, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (30, 24, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (31, 54, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (32, 13, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (33, 46, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (34, 67, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (35, 34, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (36, 53, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (37, 26, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (38, 80, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (39, 5, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (40, 60, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (41, 63, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (42, 60, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (43, 53, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (44, 45, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (45, 57, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (46, 12, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (47, 74, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (48, 100, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (49, 87, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (50, 84, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (51, 28, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (52, 64, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (53, 68, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (54, 58, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (55, 100, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (56, 14, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (57, 34, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (58, 81, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (59, 45, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (60, 17, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (61, 1, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (62, 89, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (63, 58, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (64, 84, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (65, 20, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (66, 53, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (67, 39, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (68, 60, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (69, 46, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (70, 62, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (71, 73, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (72, 38, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (73, 49, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (74, 91, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (75, 97, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (76, 45, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (77, 92, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (78, 57, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (79, 49, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (80, 62, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (81, 90, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (82, 15, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (83, 33, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (84, 46, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (85, 27, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (86, 94, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (87, 22, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (88, 81, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (89, 42, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (90, 38, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (91, 56, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (92, 27, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (93, 67, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (94, 95, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (95, 15, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (96, 0, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (97, 48, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (98, 23, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (99, 35, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (100, 77, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (101, 41, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (102, 16, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (103, 37, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (104, 43, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (105, 71, 'in shelves');
insert into Inventory (productID, quantity, storage_type) values (106, 80, 'away from sun');
insert into Inventory (productID, quantity, storage_type) values (107, 7, 'in refrigirator');
insert into Inventory (productID, quantity, storage_type) values (108, 7, 'in freezer');
insert into Inventory (productID, quantity, storage_type) values (109, 15, 'on rack');
insert into Inventory (productID, quantity, storage_type) values (110, 24, 'in shelves');


CREATE TABLE `Order` (
  `orderID` INT NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  /* we will probably have ints to represent diff types of status*/
  `order_amount` decimal(9,2) NOT NULL,
  `productID` INT NOT NULL,
  `quantity` INT NOT NULL,
  `discount` DOUBLE DEFAULT 0,
  `amount_to_ngo` decimal(9,2) NOT NULL,
  `date_order_placed` datetime DEFAULT NULL,
  PRIMARY KEY(orderID,productID),
  CONSTRAINT `Order_ibfk_1` FOREIGN KEY (`username`) REFERENCES `Customer` (`username`)  on UPDATE CASCADE
);
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 39351.2, 13, 90, 30.51, 519.85, '2023-01-06 13:26:46');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 47586.68, 1, 95, 6.19, 497.35, '2023-01-01 18:07:07');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 32490.93, 19, 83, 53.52, 816.46, '2023-02-06 13:53:50');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 74534.03, 21, 54, 62.22, 830.97, '2023-01-26 02:09:33');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 1311.04, 10, 73, 57.96, 866.05, '2023-01-23 11:15:55');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 22940.95, 23, 28, 40.23, 136.24, '2023-02-01 02:00:13');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 89331.14, 18, 26, 10.74, 869.78, '2023-01-12 02:39:20');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 47756.17, 4, 52, 60.84, 488.47, '2023-02-07 02:34:22');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 20657.33, 51, 16, 37.74, 476.85, '2023-02-08 06:10:28');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 27189.68, 62, 36, 40.88, 305.1, '2023-01-13 16:07:11');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (2, 'kdowall3', 'delivered', 90095.35, 1, 80, 30.19, 885.15, '2023-02-03 13:50:07');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (2, 'kdowall3', 'delivered', 65098.37, 2, 34, 51.77, 899.23, '2023-01-14 05:57:05');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (2, 'kdowall3', 'delivered', 30832.42, 3, 79, 70.12, 472.18, '2023-01-19 01:09:13');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (2, 'kdowall3', 'delivered', 84095.81, 4, 7, 11.43, 538.21, '2023-01-07 04:49:43');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (2, 'kdowall3', 'delivered', 98362.7, 5, 98, 32.49, 799.12, '2023-02-03 04:58:48');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (2, 'kdowall3', 'delivered', 55064.33, 6, 35, 79.3, 390.12, '2023-01-16 17:32:57');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (2, 'kdowall3', 'delivered', 55133.27, 8, 84, 45.69, 177.74, '2023-02-08 15:30:47');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (2, 'kdowall3', 'delivered', 73499.75, 7, 14, 1.96, 59.63, '2023-02-07 07:39:31');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (2, 'kdowall3', 'delivered', 36729.82, 9, 55, 78.59, 56.92, '2023-01-11 14:20:01');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (2, 'kdowall3', 'delivered', 68152.93, 18, 71, 54.29, 70.83, '2023-01-16 00:17:17');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (3, 'abonson5', 'delivered', 98629.59, 11, 89, 4.3, 660.12, '2023-01-26 14:03:12');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (3, 'abonson5', 'delivered', 45849.84, 2, 9, 69.88, 255.91, '2023-01-09 15:10:17');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (3, 'abonson5', 'delivered', 14827.47, 31, 34, 10.56, 816.25, '2023-02-04 23:43:32');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (3, 'abonson5', 'delivered', 84397.17, 14, 40, 19.29, 133.07, '2023-01-23 20:35:00');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (3, 'abonson5', 'delivered', 28465.83, 15, 80, 13.27, 743.76, '2023-01-17 21:13:04');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (3, 'abonson5', 'delivered', 58859.9, 16, 40, 35.96, 673.53, '2023-01-11 00:39:43');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (3, 'abonson5', 'delivered', 32798.74, 17, 12, 4.64, 690.73, '2023-02-02 18:51:01');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (3, 'abonson5', 'delivered', 74790.53, 18, 39, 64.96, 523.87, '2023-01-06 04:13:34');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (3, 'abonson5', 'delivered', 50820.99, 20, 21, 6.04, 46.17, '2023-02-09 16:41:48');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (3, 'abonson5', 'delivered', 94389.24, 23, 100, 47.81, 316.61, '2023-01-09 11:42:43');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (4, 'fmilne2', 'order_received', 32256.4, 11, 35, 53.06, 622.92, '2023-01-20 02:43:09');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (4, 'fmilne2', 'order_received', 28567.41, 2, 39, 79.04, 261.44, '2023-01-25 11:30:54');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (4, 'fmilne2', 'order_received', 93422.74, 31, 3, 7.97, 857.08, '2023-02-03 21:26:11');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (4, 'fmilne2', 'order_received', 22485.64, 14, 8, 9.68, 3.04, '2023-02-01 15:04:49');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (4, 'fmilne2', 'order_received', 28498.62, 15, 91, 41.87, 764.14, '2023-01-08 13:15:35');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (4, 'fmilne2', 'order_received', 68397.06, 16, 100, 77.6, 899.51, '2023-01-03 13:59:46');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (4, 'fmilne2', 'order_received', 48022.7, 17, 48, 44.67, 479.9, '2023-01-02 18:39:11');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (4, 'fmilne2', 'order_received', 69678.02, 1, 99, 16.42, 752.96, '2023-01-23 23:57:58');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (4, 'fmilne2', 'order_received', 10270.24, 20, 61, 61.2, 405.85, '2023-01-02 02:18:57');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (4, 'fmilne2', 'order_received', 94629.65, 12, 59, 25.62, 823.55, '2023-01-16 21:26:54');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (5, 'rbrownlie8', 'delivered', 6102.22, 11, 76, 47.21, 245.49, '2023-01-12 15:29:49');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (5, 'rbrownlie8', 'delivered', 8156.22, 21, 56, 38.42, 422.44, '2023-01-31 03:05:12');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (5, 'rbrownlie8', 'delivered', 6457.54, 31, 21, 51.38, 979.39, '2023-01-12 06:33:08');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (5, 'rbrownlie8', 'delivered', 96669.82, 14, 26, 22.61, 258.49, '2023-01-05 00:44:08');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (5, 'rbrownlie8', 'delivered', 11349.82, 15, 24, 68.09, 336.89, '2023-02-05 10:30:33');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (5, 'rbrownlie8', 'delivered', 85018.38, 16, 16, 61.09, 990.88, '2023-02-10 22:12:44');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (5, 'rbrownlie8', 'delivered', 62307.97, 17, 16, 54.08, 472.79, '2023-01-12 06:20:20');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (5, 'rbrownlie8', 'delivered', 41663.03, 1, 1, 45.34, 958.07, '2023-01-27 21:15:26');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (5, 'rbrownlie8', 'delivered', 67101.24, 20, 30, 40.13, 957.28, '2023-01-06 15:30:58');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (5, 'rbrownlie8', 'delivered', 44118.87, 22, 48, 71.87, 826.93, '2023-01-11 14:21:36');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (6, 'abonson5', 'delivered', 83436.11, 11, 24, 69.94, 965.41, '2023-01-02 14:01:32');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (6, 'abonson5', 'delivered', 65189.02, 12, 69, 4.76, 373.37, '2023-01-18 10:05:24');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (6, 'abonson5', 'delivered', 33636.89, 31, 2, 30.27, 451.38, '2023-01-06 07:36:59');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (6, 'abonson5', 'delivered', 48715.89, 14, 21, 20.11, 326.15, '2023-01-19 00:49:09');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (6, 'abonson5', 'delivered', 57746.85, 15, 29, 64.62, 591.97, '2023-02-01 14:28:02');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (6, 'abonson5', 'delivered', 98596.89, 16, 10, 25.8, 197.8, '2023-02-08 22:45:27');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (6, 'abonson5', 'delivered', 43969.71, 17, 28, 24.31, 494.83, '2023-01-13 04:12:25');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (6, 'abonson5', 'delivered', 89532.1, 1, 99, 7.9, 29.08, '2023-01-04 02:15:52');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (6, 'abonson5', 'delivered', 18805.9, 20, 84, 8.31, 821.31, '2023-01-25 02:54:51');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (6, 'abonson5', 'delivered', 43708.08, 2, 44, 71.05, 271.3, '2023-01-01 10:57:16');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 28637.66, 11, 97, 63.75, 283.06, '2023-01-07 13:26:56');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 64958.12, 21, 22, 62.77, 963.81, '2023-01-25 15:08:47');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 35473.75, 31, 4, 6.98, 770.01, '2023-01-02 23:26:18');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 50017.18, 14, 9, 9.4, 261.16, '2023-01-16 05:38:21');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 60541.46, 15, 88, 53.91, 308.37, '2023-02-07 01:27:41');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 91369.2, 16, 97, 74.07, 993.71, '2023-02-02 11:54:46');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 39942.6, 17, 80, 61.12, 33.8, '2023-01-15 08:49:50');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 7103.68, 1, 76, 11.78, 989.33, '2023-01-08 12:26:42');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 94030.68, 20, 29, 30.71, 239.49, '2023-01-20 08:52:13');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 1018.79, 22, 17, 2.99, 748.35, '2023-01-31 05:45:37');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 52944.69, 1, 18, 61.54, 734.76, '2023-01-13 22:45:22');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 59996.13, 19, 62, 20.85, 366.84, '2023-02-01 16:21:13');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 64780.13, 21, 56, 12.11, 837.07, '2023-01-11 08:29:16');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 50851.87, 10, 22, 45.54, 168.8, '2023-01-31 08:01:42');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 46599.12, 23, 78, 59.13, 594.02, '2023-02-02 18:34:06');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 32083.53, 18, 91, 73.52, 658.33, '2023-01-04 14:28:08');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 44702.0, 4, 20, 58.8, 2.85, '2023-02-06 08:46:42');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 85470.05, 51, 13, 14.47, 149.56, '2023-01-24 04:36:06');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 52582.63, 62, 78, 11.39, 766.91, '2023-01-27 03:10:00');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (9, 'jmcmorran0', 'order_received', 4232.31, 13, 17, 35.69, 445.17, '2023-01-18 22:21:21');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (9, 'jmcmorran0', 'order_received', 32937.12, 1, 55, 72.9, 676.59, '2023-01-28 08:41:57');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (9, 'jmcmorran0', 'order_received', 44389.24, 19, 12, 37.17, 115.54, '2023-01-27 13:48:57');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (9, 'jmcmorran0', 'order_received', 32679.05, 21, 86, 46.12, 879.5, '2023-01-21 17:33:42');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (9, 'jmcmorran0', 'order_received', 66003.3, 10, 53, 53.28, 29.02, '2023-01-19 17:31:34');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (9, 'jmcmorran0', 'order_received', 90318.71, 3, 90, 23.89, 679.27, '2023-01-16 11:31:49');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (9, 'jmcmorran0', 'order_received', 27696.38, 8, 47, 47.68, 33.82, '2023-01-22 20:44:46');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (9, 'jmcmorran0', 'order_received', 47766.01, 4, 6, 54.62, 322.9, '2023-01-22 05:29:39');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (9, 'jmcmorran0', 'order_received', 34251.02, 5, 72, 48.39, 55.87, '2023-01-21 13:21:25');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (9, 'jmcmorran0', 'order_received', 66899.9, 6, 59, 19.67, 890.51, '2023-01-17 04:42:24');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (10, 'abonson5', 'delivered', 58015.18, 3, 17, 0.72, 362.92, '2023-01-30 03:44:44');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (10, 'abonson5', 'delivered', 92567.51, 11, 79, 56.13, 764.09, '2023-01-25 00:01:27');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (10, 'abonson5', 'delivered', 66744.77, 9, 14, 53.41, 553.08, '2023-01-12 20:43:36');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (10, 'abonson5', 'delivered', 41058.1, 2, 28, 14.85, 280.34, '2023-01-21 12:52:18');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (10, 'abonson5', 'delivered', 91034.91, 1, 44, 75.75, 399.88, '2023-02-03 10:31:48');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (10, 'abonson5', 'delivered', 10116.39, 43, 71, 48.06, 130.63, '2023-01-29 14:05:49');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (10, 'abonson5', 'delivered', 80355.96, 8, 40, 73.4, 459.12, '2023-01-22 09:56:35');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (10, 'abonson5', 'delivered', 10893.03, 4, 95, 0.11, 938.17, '2023-01-30 01:03:36');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (10, 'abonson5', 'delivered', 14102.63, 5, 46, 69.28, 188.95, '2023-01-14 22:53:57');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, amount_to_ngo, date_order_placed) values (10, 'abonson5', 'delivered', 4275.87, 6, 70, 41.61, 764.24, '2023-02-01 19:37:33');

CREATE TABLE `NGO` (
  `ngoID` INT NOT NULL auto_increment,
  `name` varchar(50) not null,
  `registration_number` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `funds_raised` decimal(9,2) NOT NULL,
  PRIMARY KEY(ngoID),
  CONSTRAINT `NGO_ibfk_1` FOREIGN KEY (`username`) REFERENCES `Customer` (`username`)  on UPDATE CASCADE
);

insert into NGO (ngoID, name, registration_number, username, funds_raised) values (1, 'Make a Change', '347581', 'jmcmorran0', '11206.70');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (2, 'Always Helping', '347581', 'asibbson1', '11045.14');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (3, 'Paying it Back', '347581', 'fmilne2', '35143.79');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (4, 'The Giving Tree', '347581', 'kdowall3', '11286.06');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (5, 'The Right Cause', '347581', 'eagus4', '45795.19');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (6, 'Well Worthy', '347581', 'abonson5', '41925.59');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (7, 'Change Makers', '347581', 'tbinch6', '5356.37');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (8, 'The Giving Group', '347581', 'stsar7', '9598.28');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (9, 'Bet on Better', '347581', 'rbrownlie8', '19553.94');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (10, 'Poverty Stoppers', '347581', 'jliddell9', '29566.30');


CREATE TABLE `Billing` (
  `billingID` INT NOT NULL auto_increment,
  `payment_mode` VARCHAR(50) NOT NULL,
  `bill_amount` decimal(9,2) NOT NULL,
  `amount_donated` decimal(9,2) NOT NULL,
  `ngoID` INT NOT NULL ,
  `couponID` INT NOT NULL,
  `orderID` INT NOT NULL,
  PRIMARY KEY(billingID),
  CONSTRAINT `Billing_ibfk_1` FOREIGN KEY (`ngoID`) REFERENCES `NGO` (`ngoID`)  on UPDATE CASCADE,
  CONSTRAINT `Billing_ibfk_2` FOREIGN KEY (`couponID`) REFERENCES `Coupon` (`couponID`)  on UPDATE CASCADE,
  CONSTRAINT `Billing_ibfk_3` FOREIGN KEY (`orderID`) REFERENCES `Order` (`orderID`)  on UPDATE CASCADE
);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (1, 'wallet', 131261, 10.68, 9, 80, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (2, 'COD', 111500, 980.39, 10, 6, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (3, 'wallet', 450206, 869.68, 7, 52, 4);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (4, 'wallet', 344097, 407.31, 2, 2, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (5, 'cards', 99239, 795.5, 2, 100, 4);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (6, 'COD', 128058, 870.97, 1, 61, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (7, 'COD', 224218, 788.7, 4, 17, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (8, 'COD', 380817, 113.04, 7, 47, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (9, 'cards', 255846, 881.4, 5, 44, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (10, 'COD', 426837, 111.25, 4, 89, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (11, 'cards', 381409, 879.95, 4, 33, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (12, 'UPI', 111351, 621.36, 1, 93, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (13, 'COD', 418919, 846.92, 3, 5, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (14, 'UPI', 347550, 469.17, 1, 4, 6);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (15, 'COD', 432829, 845.9, 9, 19, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (16, 'COD', 197520, 789.86, 1, 21, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (17, 'wallet', 441618, 42.98, 2, 53, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (18, 'cards', 433433, 35.3, 7, 9, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (19, 'COD', 376242, 597.27, 4, 47, 1);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (20, 'UPI', 433517, 767.09, 7, 25, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (21, 'UPI', 453849, 551.67, 4, 17, 6);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (22, 'UPI', 73507, 300.23, 4, 17, 6);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (23, 'wallet', 207201, 830.17, 4, 62, 4);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (24, 'UPI', 373046, 208.6, 9, 85, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (25, 'UPI', 205438, 737.52, 2, 64, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (26, 'UPI', 425000, 824.69, 4, 27, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (27, 'COD', 190306, 155.85, 8, 96, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (28, 'wallet', 317184, 174.41, 10, 50, 2);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (29, 'wallet', 94224, 982.29, 1, 18, 4);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (30, 'cards', 389438, 962.93, 2, 49, 6);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (31, 'COD', 185481, 774.94, 7, 59, 2);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (32, 'UPI', 443219, 40.45, 8, 96, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (33, 'cards', 396139, 466.28, 7, 58, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (34, 'UPI', 221798, 921.06, 6, 28, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (35, 'cards', 460370, 12.82, 2, 94, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (36, 'UPI', 314416, 64.93, 8, 6, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (37, 'cards', 173381, 757.36, 7, 63, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (38, 'wallet', 278214, 997.06, 3, 83, 1);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (39, 'COD', 422150, 55.52, 5, 22, 6);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (40, 'cards', 246874, 988.64, 4, 27, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (41, 'UPI', 129648, 869.54, 3, 38, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (42, 'cards', 256172, 881.22, 3, 86, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (43, 'COD', 70273, 496.8, 4, 82, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (44, 'cards', 4714, 611.7, 5, 68, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (45, 'cards', 411470, 906.74, 7, 21, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (46, 'COD', 458036, 544.36, 6, 79, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (47, 'cards', 106878, 181.7, 4, 36, 6);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (48, 'wallet', 90912, 966.96, 3, 85, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (49, 'wallet', 498147, 339.72, 8, 47, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (50, 'UPI', 119668, 728.68, 6, 41, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (51, 'wallet', 151397, 269.36, 3, 6, 1);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (52, 'UPI', 26446, 944.02, 5, 7, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (53, 'cards', 219945, 975.17, 6, 64, 4);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (54, 'wallet', 120710, 545.01, 5, 94, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (55, 'cards', 245600, 282.71, 7, 91, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (56, 'UPI', 26452, 904.34, 6, 5, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (57, 'cards', 155255, 71.92, 2, 19, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (58, 'COD', 340059, 296.53, 1, 58, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (59, 'cards', 254499, 641.37, 4, 14, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (60, 'cards', 137239, 230.49, 9, 85, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (61, 'wallet', 220924, 178.81, 5, 53, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (62, 'COD', 358184, 664.97, 3, 26, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (63, 'UPI', 36340, 369.34, 7, 2, 1);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (64, 'UPI', 395449, 807.52, 7, 81, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (65, 'cards', 456360, 939.61, 4, 42, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (66, 'cards', 321646, 986.1, 4, 62, 2);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (67, 'UPI', 46880, 880.28, 7, 27, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (68, 'UPI', 346364, 214.37, 9, 83, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (69, 'UPI', 361391, 90.08, 7, 16, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (70, 'cards', 357517, 638.67, 5, 82, 1);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (71, 'cards', 461904, 976.7, 1, 24, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (72, 'COD', 96786, 245.62, 10, 85, 6);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (73, 'wallet', 199367, 392.89, 1, 76, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (74, 'cards', 78960, 994.68, 9, 81, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (75, 'cards', 364824, 5.83, 10, 17, 4);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (76, 'UPI', 497328, 232.42, 7, 13, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (77, 'wallet', 297813, 171.97, 8, 8, 6);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (78, 'UPI', 140631, 384.8, 8, 87, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (79, 'wallet', 204739, 986.07, 4, 96, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (80, 'wallet', 475438, 745.51, 4, 33, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (81, 'cards', 57636, 579.95, 7, 8, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (82, 'UPI', 496833, 696.21, 9, 66, 6);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (83, 'UPI', 119621, 837.23, 1, 90, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (84, 'COD', 251679, 826.28, 2, 6, 2);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (85, 'UPI', 176079, 284.8, 2, 66, 9);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (86, 'wallet', 34075, 341.79, 9, 27, 4);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (87, 'cards', 98318, 109.34, 6, 80, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (88, 'UPI', 345687, 796.79, 3, 89, 2);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (89, 'COD', 174020, 531.12, 10, 34, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (90, 'wallet', 164275, 927.45, 10, 5, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (91, 'UPI', 234015, 603.86, 6, 14, 1);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (92, 'COD', 42252, 437.09, 8, 74, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (93, 'COD', 136299, 730.73, 3, 37, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (94, 'UPI', 117565, 948.08, 8, 16, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (95, 'UPI', 174269, 994.9, 7, 98, 2);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (96, 'cards', 417279, 542.07, 2, 100, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (97, 'COD', 325870, 853.14, 7, 24, 7);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (98, 'wallet', 24536, 972.93, 10, 32, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (99, 'COD', 284183, 688.38, 7, 6, 4);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (100, 'COD', 74956, 471.28, 4, 65, 1);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (101, 'cards', 493047, 811.19, 7, 45, 5);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (102, 'COD', 487317, 82.24, 7, 77, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (103, 'cards', 180128, 343.16, 1, 4, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (104, 'UPI', 146562, 795.15, 3, 4, 3);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (105, 'cards', 105575, 57.11, 8, 37, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (106, 'wallet', 392622, 638.3, 6, 55, 1);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (107, 'UPI', 283538, 244.83, 9, 93, 10);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (108, 'wallet', 407367, 15.15, 2, 53, 8);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (109, 'COD', 485541, 674.17, 7, 63, 4);
insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (110, 'COD', 446243, 299.71, 4, 39, 8);


CREATE TABLE `Cart` (
  `billing_amount` decimal(9,2) NOT NULL,
  /*again have to look at this
  `{list_of_items ProductID     Quantity}` <type>,
  **
  */
  `productID` INT NOT NULL,
  `quantity` INT NOT NULL,
  `username` varchar(30) NOT NULL,
  CONSTRAINT `Cart_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `Product` (`productID`)  on UPDATE CASCADE
);
insert into Cart (billing_amount, productID, quantity, username) values (1294.02, 21, 4, 'jliddell9');
insert into Cart (billing_amount, productID, quantity, username) values (1294.02, 2, 10, 'jliddell9');
insert into Cart (billing_amount, productID, quantity, username) values (1294.02, 13, 1, 'jliddell9');
insert into Cart (billing_amount, productID, quantity, username) values (1294.02, 4, 10, 'jliddell9');
insert into Cart (billing_amount, productID, quantity, username) values (1294.02, 56, 6, 'jliddell9');
insert into Cart (billing_amount, productID, quantity, username) values (1294.02, 79, 5, 'jliddell9');
insert into Cart (billing_amount, productID, quantity, username) values (1294.02, 89, 10, 'jliddell9');
insert into Cart (billing_amount, productID, quantity, username) values (1294.02, 1, 5, 'jliddell9');
insert into Cart (billing_amount, productID, quantity, username) values (1294.02, 9, 5, 'jliddell9');
insert into Cart (billing_amount, productID, quantity, username) values (1294.02, 10, 8, 'jliddell9');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 1, 2, 'jmcmorran0');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 2, 5, 'jmcmorran0');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 3, 4, 'jmcmorran0');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 4, 7, 'jmcmorran0');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 5, 8, 'jmcmorran0');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 6, 7, 'jmcmorran0');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 7, 8, 'jmcmorran0');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 18, 3, 'jmcmorran0');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 90, 8, 'jmcmorran0');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 10, 2, 'jmcmorran0');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 12, 3, 'eagus4');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 34, 9, 'eagus4');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 56, 5, 'eagus4');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 78, 9, 'eagus4');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 90, 8, 'eagus4');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 13, 3, 'eagus4');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 25, 1, 'eagus4');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 81, 1, 'eagus4');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 8, 1, 'eagus4');
insert into Cart (billing_amount, productID, quantity, username) values (1345.9, 10, 2, 'eagus4');
insert into Cart (billing_amount, productID, quantity, username) values (1982.67, 1, 2, 'abonson5');
insert into Cart (billing_amount, productID, quantity, username) values (1982.67, 4, 6, 'abonson5');
insert into Cart (billing_amount, productID, quantity, username) values (1982.67, 56, 8, 'abonson5');
insert into Cart (billing_amount, productID, quantity, username) values (1982.67, 78, 8, 'abonson5');
insert into Cart (billing_amount, productID, quantity, username) values (1982.67, 90, 2, 'abonson5');
insert into Cart (billing_amount, productID, quantity, username) values (1982.67, 13, 4, 'abonson5');
insert into Cart (billing_amount, productID, quantity, username) values (1982.67, 25, 8, 'abonson5');
insert into Cart (billing_amount, productID, quantity, username) values (1982.67, 81, 10, 'abonson5');
insert into Cart (billing_amount, productID, quantity, username) values (1982.67, 8, 9, 'abonson5');
insert into Cart (billing_amount, productID, quantity, username) values (1982.67, 10, 1, 'abonson5');
insert into Cart (billing_amount, productID, quantity, username) values (1100.87, 1, 7, 'fmilne2');
insert into Cart (billing_amount, productID, quantity, username) values (1100.87, 2, 5, 'fmilne2');
insert into Cart (billing_amount, productID, quantity, username) values (1100.87, 3, 7, 'fmilne2');
insert into Cart (billing_amount, productID, quantity, username) values (1100.87, 4, 1, 'fmilne2');
insert into Cart (billing_amount, productID, quantity, username) values (1100.87, 5, 1, 'fmilne2');
insert into Cart (billing_amount, productID, quantity, username) values (1100.87, 6, 1, 'fmilne2');
insert into Cart (billing_amount, productID, quantity, username) values (1100.87, 7, 7, 'fmilne2');
insert into Cart (billing_amount, productID, quantity, username) values (1100.87, 8, 6, 'fmilne2');
insert into Cart (billing_amount, productID, quantity, username) values (1100.87, 9, 8, 'fmilne2');
insert into Cart (billing_amount, productID, quantity, username) values (1100.87, 30, 7, 'fmilne2');
insert into Cart (billing_amount, productID, quantity, username) values (1234.56, 1, 10, 'kdowall3');
insert into Cart (billing_amount, productID, quantity, username) values (1234.56, 3, 10, 'kdowall3');
insert into Cart (billing_amount, productID, quantity, username) values (1234.56, 4, 3, 'kdowall3');
insert into Cart (billing_amount, productID, quantity, username) values (1234.56, 5, 3, 'kdowall3');
insert into Cart (billing_amount, productID, quantity, username) values (1234.56, 6, 10, 'kdowall3');
insert into Cart (billing_amount, productID, quantity, username) values (1234.56, 7, 4, 'kdowall3');
insert into Cart (billing_amount, productID, quantity, username) values (1234.56, 8, 6, 'kdowall3');
insert into Cart (billing_amount, productID, quantity, username) values (1234.56, 9, 4, 'kdowall3');
insert into Cart (billing_amount, productID, quantity, username) values (1234.56, 80, 6, 'kdowall3');
insert into Cart (billing_amount, productID, quantity, username) values (1234.56, 10, 4, 'kdowall3');
insert into Cart (billing_amount, productID, quantity, username) values (2345.67, 10, 7, 'tbinch6');
insert into Cart (billing_amount, productID, quantity, username) values (2345.67, 20, 6, 'tbinch6');
insert into Cart (billing_amount, productID, quantity, username) values (2345.67, 30, 2, 'tbinch6');
insert into Cart (billing_amount, productID, quantity, username) values (2345.67, 40, 5, 'tbinch6');
insert into Cart (billing_amount, productID, quantity, username) values (2345.67, 50, 3, 'tbinch6');
insert into Cart (billing_amount, productID, quantity, username) values (2345.67, 60, 2, 'tbinch6');
insert into Cart (billing_amount, productID, quantity, username) values (2345.67, 70, 3, 'tbinch6');
insert into Cart (billing_amount, productID, quantity, username) values (2345.67, 80, 8, 'tbinch6');
insert into Cart (billing_amount, productID, quantity, username) values (2345.67, 90, 1, 'tbinch6');
insert into Cart (billing_amount, productID, quantity, username) values (2345.67, 91, 1, 'tbinch6');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 11, 10, 'stsar');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 12, 9, 'stsar');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 13, 9, 'stsar');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 14, 4, 'stsar');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 15, 2, 'stsar');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 16, 2, 'stsar');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 17, 3, 'stsar');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 18, 2, 'stsar');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 91, 9, 'stsar');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 20, 1, 'stsar');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 22, 1, 'rbrownlie8');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 23, 9, 'rbrownlie8');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 24, 10, 'rbrownlie8');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 25, 6, 'rbrownlie8');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 26, 3, 'rbrownlie8');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 27, 7, 'rbrownlie8');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 28, 5, 'rbrownlie8');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 29, 3, 'rbrownlie8');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 10, 3, 'rbrownlie8');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 22, 4, 'rbrownlie8');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 33, 7, 'asibbson1');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 23, 3, 'asibbson1');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 13, 10, 'asibbson1');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 43, 6, 'asibbson1');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 53, 8, 'asibbson1');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 63, 2, 'asibbson1');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 73, 7, 'asibbson1');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 83, 4, 'asibbson1');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 93, 4, 'asibbson1');
insert into Cart (billing_amount, productID, quantity, username) values (3456.91, 10, 5, 'asibbson1');

CREATE TABLE `Distributor` (
  `distributorID` INT NOT NULL auto_increment,
  `password` VARCHAR(20) NOT NULL,
  `productID` INT NOT NULL,
  `phone_number` char(10) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `commission` decimal(9,2) NOT NULL,
  `house_number` varchar(10) NOT NULL,
  `street_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `pincode` char(6) NOT NULL,
  PRIMARY KEY(distributorID),
  CONSTRAINT `Distributor_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `Product` (`productID`)  on UPDATE CASCADE
);

insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (1, 'azGS2k7Ft2D', 49, '7496233190', 'upidduck0@bigcartel.com', 7128.97, 819, 'Corben', 'Inderka', 279650);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (2, 'DXxAzEvK', 34, '4162143429', 'dmahody1@fotki.com', 1791.17, 563, 'Grover', 'Afareaitu', 315439);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (3, 'KMrBN9gCgx0', 18, '5019138730', 'hcattellion2@istockphoto.com', 7453.74, 919, 'Vahlen', 'Пласница', 112325);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (4, '8TGAr1p3N', 97, '4168959286', 'dredholls3@google.cn', 9011.27, 743, 'Golf', 'Jaleswar', 551541);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (5, 'a8XB457', 47, '3421477502', 'sburkhill4@goo.ne.jp', 8076.83, 507, 'Forest Dale', 'Kaputian', 373623);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (6, 'nkTDGwsc', 3, '3835787278', 'ecrooke5@economist.com', 3848.55, 306, 'Dawn', 'Lobitos', 683532);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (7, 'ruVaf6IhN3', 77, '9878068551', 'ghammer6@columbia.edu', 4658.63, 228, 'Carioca', 'Wailolung', 149682);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (8, '8XMHvCdmOCz', 42, '6023149109', 'mmcaughtrie7@biblegateway.com', 5138.65, 949, 'Norway Maple', 'Gaur', 305656);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (9, 'EGrCQqiS5F', 84, '9673915494', 'wharpin8@qq.com', 2997.99, 591, 'Pawling', 'Kerva', 392042);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (10, 'cVD7QH9', 99, '1005420191', 'efroude9@tamu.edu', 4986.02, 810, 'Myrtle', 'Cà Mau', 505318);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (11, 'QezOOfC', 80, '9016360304', 'ccattrolla@walmart.com', 1351.73, 832, 'Mallard', 'Santa Bernardina', 979978);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (12, 'WlyojasuM', 31, '4447022380', 'kgerhtsb@craigslist.org', 700.91, 491, 'Twin Pines', 'Piraí do Sul', 390206);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (13, '9o90Pm2ovH', 59, '5801751767', 'jhobbemac@apple.com', 2800.64, 378, 'Mendota', 'Elbasan', 763484);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (14, 'OkA03lO', 94, '1238907090', 'naggettd@cpanel.net', 9586.62, 999, 'Eagan', 'Chating', 280401);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (15, 'LLm06Yk', 89, '5581634236', 'cmeeuse@geocities.com', 4250.92, 355, 'Saint Paul', 'Kokkinóchoma', 833670);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (16, 'BlU0ueQDZh', 85, '2973539167', 'fbreukelmanf@lulu.com', 2928.65, 25, 'Emmet', 'Ayabaca', 832261);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (17, 'LyPI8M6CHi', 21, '7376125225', 'settelsg@china.com.cn', 370.67, 713, 'Rieder', 'Yonghe', 978685);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (18, 'ixJXRln9PTYr', 80, '6565751952', 'kstrideh@ezinearticles.com', 2621.73, 564, 'Laurel', 'Heshui', 582964);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (19, 'RPFXkVxn3SE', 9, '3626239011', 'qproudleyi@admin.ch', 9609.02, 669, 'Village Green', 'Monaghan', 487137);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (20, 'mqrWovs', 2, '1626985517', 'tskitterelj@spotify.com', 8559.2, 249, 'Meadow Valley', 'Pecna', 176659);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (21, 'r9QXg2qTNm1j', 90, '4115102754', 'edoughartyk@patch.com', 6052.8, 829, 'Jay', 'Łopuszno', 377542);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (22, 'GH90nnGiY', 88, '6775270623', 'iprozillol@youku.com', 3264.08, 498, 'Knutson', 'Pliska', 197755);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (23, 'Un9GBGW0f', 66, '9568949116', 'cantonazzim@blog.com', 2280.79, 155, 'Westend', 'Saint-Nazaire', 111082);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (24, 'aFbUmzxT8', 81, '9928737531', 'tmordann@yahoo.co.jp', 4778.69, 24, 'Eagle Crest', 'San Gregorio', 920779);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (25, 'lYtZhX2fIf', 77, '7077901907', 'jfydoo@aboutads.info', 2512.34, 717, 'Sheridan', 'Chambas', 779711);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (26, 'J0pmQHqC', 99, '3076494851', 'arobuchonp@cbsnews.com', 4772.78, 15, 'Morning', 'Bomomani', 395278);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (27, 'znzB3bWNUp57', 46, '1956476295', 'sduxbarryq@friendfeed.com', 5065.83, 916, 'Crest Line', 'Puerto Castilla', 431941);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (28, 'vKtrxpKj7uK', 25, '4444502974', 'togarmenr@paypal.com', 274.24, 19, 'Walton', 'Chunmuying', 505470);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (29, 'BMVtmmkH2YN', 61, '3803810639', 'edrummonds@mediafire.com', 8584.31, 860, 'Coleman', 'Kerikeri', 807792);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (30, 'gPs7Lv', 36, '1014360471', 'aroutledget@shutterfly.com', 9812.87, 352, 'Eastlawn', 'Ponoka', 250896);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (31, 'mePzga7LHG8d', 87, '9343183418', 'kpallentu@oakley.com', 4217.93, 331, 'Havey', 'Cruzeiro', 477740);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (32, 'gvxFRzt', 96, '6247051886', 'leglaisev@sun.com', 9812.45, 463, 'Lindbergh', 'Santa Apolonia', 985782);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (33, 'kX5tv7sgNoi', 96, '7965277508', 'cmcauslandw@webs.com', 8659.32, 507, 'Hagan', 'Murmashi', 632420);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (34, 'GQWL9rz', 56, '1401322927', 'ejeromsonx@biblegateway.com', 1006.94, 607, 'Merchant', 'Bom Sucesso', 852148);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (35, 'BivtjG', 56, '7263802214', 'iadeyy@seesaa.net', 3141.98, 272, 'Veith', 'Dongshe', 798269);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (36, 'H0tSwbr8cO', 54, '2556264918', 'bsalzbergz@cbc.ca', 9819.49, 624, 'American Ash', 'Busalangga', 158147);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (37, 'LNfx65Pk8d', 29, '9959584983', 'ssailor10@google.com', 412.92, 408, 'Jenifer', 'Rungis', 446683);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (38, '0UyUcxOKyVU', 43, '7768793988', 'ccallaby11@flickr.com', 7483.95, 917, 'Manufacturers', 'Baisha', 685183);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (39, 'hp3MfAoeAxw', 89, '4606931896', 'idetocqueville12@ibm.com', 3218.62, 769, 'Eliot', 'Huangcun', 427715);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (40, 'ZEhFm3I9Cco', 43, '1687298396', 'chillatt13@howstuffworks.com', 4404.87, 317, 'Tomscot', 'Qiaolin', 210168);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (41, 'W4Bsu0J', 85, '4029923418', 'hpeplay14@topsy.com', 5967.96, 74, 'Moose', 'Mananara', 260481);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (42, 'A5EJ6WXl', 73, '8291730872', 'cduplantier15@wp.com', 3691.31, 576, 'Westport', 'Vimmerby', 480542);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (43, '2WEBdVFP3I', 8, '1643204457', 'zguinness16@yale.edu', 9257.69, 513, '8th', 'Bodzanów', 549963);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (44, 'KVCSqIXkE', 32, '7948113780', 'rwaymont17@comsenz.com', 4442.6, 972, 'Coleman', 'Nizhnedevitsk', 275326);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (45, 't4IIf8', 75, '2455730592', 'pnelane18@blog.com', 8193.2, 154, 'Cascade', 'Ocote Paulino', 176835);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (46, 'zRxoQA6u6Fjs', 62, '9582397757', 'ckochl19@bloomberg.com', 1570.59, 659, 'Emmet', 'Tosno', 249415);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (47, 'SSpjol', 89, '3263305458', 'ajopke1a@noaa.gov', 8469.08, 747, 'Melby', 'Jalasenga', 607554);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (48, 'KJXPi8', 50, '8597208476', 'vdegnen1b@nih.gov', 5627.21, 1000, 'Bluejay', 'Tonoas Municipal Building', 922069);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (49, 'gr0n2w', 38, '2831166105', 'wclementet1c@google.com', 753.09, 867, 'Thierer', 'Lidköping', 522396);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (50, 'g1IPW4', 39, '8176694654', 'bservant1d@cnet.com', 2083.65, 28, 'Banding', 'Carcavelos', 177210);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (51, 'ZC4DUq', 61, '4946744105', 'dkynett1e@zimbio.com', 3991.78, 726, 'Kingsford', 'Tobias Fornier', 405670);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (52, 'C9cPCQeXNLu', 84, '6037052128', 'skobke1f@cbsnews.com', 713.28, 622, 'Ryan', 'Lewolere', 537944);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (53, 'bdr9oSdRAf', 54, '5262122042', 'lbatterbee1g@dell.com', 7419.98, 739, 'Tomscot', 'Anning', 456505);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (54, 'RiVkfT', 78, '4878324733', 'nboik1h@bloglovin.com', 5627.35, 665, 'Butternut', 'Naranjos', 442591);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (55, 'rYV3dqlAXfqS', 54, '2037742087', 'cfinlry1i@unesco.org', 2105.31, 695, 'Mallory', 'Mandráki', 925452);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (56, 'uJjnLd', 93, '4796145592', 'jsambell1j@i2i.jp', 6469.0, 955, 'Waywood', 'Hemudu', 923638);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (57, 'QT68KHo', 76, '5914973272', 'aberrigan1k@mtv.com', 9803.66, 448, 'Upham', 'Kushikino', 710595);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (58, 'T7NMd5kv7m', 35, '2619185940', 'selwyn1l@sina.com.cn', 3959.42, 172, 'Stang', 'Güiria', 921066);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (59, 'QaE5Adlx', 67, '1798457987', 'vpennigar1m@ucla.edu', 3743.95, 938, 'Gina', 'Yaté-Barrage', 445191);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (60, 'aKA05E', 9, '4072551058', 'wallone1n@jalbum.net', 4159.31, 680, 'Tony', 'Ceres', 681186);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (61, 'OGi54y13z', 24, '7661468360', 'jpounds1o@reference.com', 850.08, 342, 'Farwell', 'Torre', 340506);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (62, '89NFPC9VfR9a', 68, '9209222942', 'mtownson1p@mtv.com', 5492.66, 915, 'Darwin', 'Comandante Fontana', 397435);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (63, 'R6NB5vkDUn', 71, '2427922829', 'wschoffler1q@oakley.com', 953.08, 314, 'Merchant', 'Río Limpio', 260374);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (64, '1goJBI', 37, '2821839567', 'fgreenin1r@addthis.com', 2638.25, 642, 'Judy', 'Shinshiro', 775282);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (65, '62myWX', 94, '7462806093', 'bhirche1s@dyndns.org', 5052.33, 378, 'Helena', 'Al Ḩarāk', 147112);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (66, 'Khc1yT6n2an', 94, '3917127023', 'isimyson1t@addtoany.com', 1936.46, 537, 'Debra', 'Krajan', 534558);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (67, 'yMSGw1OSMb', 71, '6392879303', 'rdarrigone1u@ibm.com', 5443.73, 904, 'Gina', 'Oganlima', 896957);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (68, 'lrBmFx', 61, '6963107926', 'pwookey1v@aol.com', 4941.39, 761, 'Bartelt', 'Bayan', 363751);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (69, 'SUOa6gMN7', 2, '8156347700', 'gdeighton1w@japanpost.jp', 9067.38, 522, 'Dovetail', 'Uyskoye', 130203);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (70, 'swFoPeD4owW', 75, '5935271044', 'sraffels1x@discuz.net', 6729.79, 372, 'Lotheville', 'Divo', 287046);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (71, 'GkaR3s', 77, '6287018604', 'bwolfit1y@ucla.edu', 5311.46, 684, 'Prairieview', 'Khóra', 345553);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (72, 'ppdzo32t', 26, '1728339751', 'avanderson1z@bloglines.com', 876.73, 801, 'Dixon', 'Zhutang', 513325);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (73, 'rS2jfJS', 76, '3916058979', 'mygo20@woothemes.com', 2089.3, 686, 'Manitowish', 'São Miguel da Carreira', 550982);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (74, 'ih1qiV', 9, '5751005235', 'nmaffiotti21@desdev.cn', 2146.09, 320, 'Dahle', 'Orong', 418448);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (75, 'ddZqzpA', 45, '9185491915', 'bcoombs22@4shared.com', 1315.06, 964, 'Bashford', 'Chester', 332780);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (76, '38DzTyB', 66, '9548150208', 'rstanesby23@dell.com', 8544.45, 714, 'Macpherson', 'San Marcos', 430284);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (77, 'xXu18WMkz6', 49, '3111222102', 'hbartosek24@redcross.org', 929.21, 430, 'Hayes', 'Minas', 102667);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (78, 'CKwyaKdkIVj1', 3, '8946654181', 'ncrolla25@woothemes.com', 8287.6, 179, 'Parkside', 'Toyohashi', 305364);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (79, 'nv7cbASMPJ5W', 14, '9601834179', 'nlindhe26@examiner.com', 4757.65, 163, 'Esch', 'Bonsari', 423812);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (80, 'z1eLTpKPs', 36, '9479275005', 'alewis27@google.it', 8455.61, 134, 'Ramsey', 'Temyasovo', 499721);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (81, 'VYTX9SC5154', 93, '2561311464', 'egoodley28@google.cn', 4991.49, 191, 'Beilfuss', 'Candelaria', 932717);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (82, 'RXE0uj3QDo', 81, '8427940995', 'bcasemore29@fc2.com', 7377.49, 519, 'Northridge', 'Dąbrowa', 264099);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (83, 'WpEkDqSZvkD', 27, '2577230285', 'bsherebrooke2a@nydailynews.com', 2339.19, 66, 'Lawn', 'Kafr Miṣr', 940539);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (84, 'BYQFUH2z', 82, '3415071256', 'fsperwell2b@hostgator.com', 4592.04, 4, 'Homewood', 'Heze', 134252);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (85, 'UOaRW7qS', 73, '8912419223', 'cnorkett2c@indiatimes.com', 9987.75, 830, 'Doe Crossing', 'Qiaojia', 753692);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (86, 'da5UUWVGtw8', 86, '9115083933', 'mpluvier2d@earthlink.net', 8955.94, 939, 'Hermina', 'Boca do Acre', 188949);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (87, '84WftRkVZg', 86, '2735750878', 'mreddel2e@samsung.com', 3286.59, 144, 'Iowa', 'Roma', 527089);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (88, 'zhCmNX', 61, '6945584600', 'dgalliard2f@wp.com', 9856.27, 678, 'Waywood', 'Takarazuka', 535463);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (89, 'rbSrGoGHIa', 75, '7721845303', 'wkrol2g@gizmodo.com', 3033.76, 558, 'Hanson', 'Karanganyar', 825962);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (90, 'NKHpF0C', 98, '3598466945', 'anoni2h@xrea.com', 1587.23, 58, 'Moland', 'Baroy', 555163);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (91, 'Z4O7OJHy', 35, '9254236743', 'kbreche2i@nature.com', 575.46, 904, 'Miller', 'Miguel Pereira', 186847);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (92, 'fKFRnO3KfsJ', 61, '7567346990', 'lgauge2j@blogspot.com', 1799.01, 7, 'Schmedeman', 'Markala', 613868);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (93, 'deOd6yzNV', 82, '3289050537', 'abenley2k@archive.org', 9802.34, 549, 'Morningstar', 'Kiuteta', 588256);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (94, 'jWDOujYwI', 72, '6422477327', 'nlaflin2l@themeforest.net', 3407.64, 754, 'Emmet', 'Dmitrov', 769208);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (95, 'TvIL8bIr', 28, '9394172082', 'apowrie2m@whitehouse.gov', 4760.5, 183, 'Pierstorff', 'Stutterheim', 854827);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (96, 'B20uoh', 47, '9072662273', 'cday2n@dropbox.com', 3053.91, 430, 'Nobel', 'Gedongmulyo', 665326);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (97, '3JwVZqSDo', 16, '6992891191', 'rleagas2o@paypal.com', 4156.37, 657, 'Sommers', 'Nogueira', 112315);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (98, 'gB40S3ZlMy', 58, '9646224304', 'shamlyn2p@cdc.gov', 5106.83, 19, 'Kim', 'Cazin', 919506);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (99, 'WQtIQ9', 99, '3033165942', 'ocrossan2q@wired.com', 1314.67, 276, 'Northfield', 'Lahan Sai', 659033);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (100, 'KzyCtLZ1vHm', 57, '4923060501', 'efasse2r@goodreads.com', 1646.12, 353, 'Thierer', 'Fergana', 706808);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (101, 'vkcdgB', 94, '7941123975', 'cmacnockater2s@washingtonpost.com', 6260.32, 993, 'Heffernan', 'Qalaikhumb', 417208);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (102, '506Gux', 54, '5777291713', 'dcaswill2t@thetimes.co.uk', 9711.85, 18, 'Ilene', 'Miribanteng', 360914);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (103, 'ZuUk4rkg', 17, '6775848021', 'fburds2u@oracle.com', 1132.74, 984, 'La Follette', 'Barkā’', 158179);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (104, '2akiPegT', 50, '2679579329', 'dheynen2v@cbsnews.com', 1741.52, 713, 'Elka', 'Jardín América', 813715);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (105, 'vsQ3ttLdNawd', 28, '9176789016', 'scalken2w@ox.ac.uk', 2032.12, 542, 'Oak Valley', 'Uruguaiana', 195248);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (106, 'H09BMQMmJvd', 44, '9744555763', 'djubert2x@nydailynews.com', 3960.39, 694, 'Fallview', 'Morón', 509062);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (107, 'BehA30T2m', 51, '2229614639', 'gsarrell2y@hexun.com', 6510.45, 230, '8th', 'Oumiao', 832630);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (108, '0H2FWyhs', 67, '3162825393', 'pdowrey2z@github.com', 8178.34, 885, 'Mcguire', 'Yaransk', 450063);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (109, 'ospQNo', 92, '3859384583', 'kgibbings30@squidoo.com', 2763.82, 206, 'Comanche', 'Souto da Casa', 330930);
insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (110, 'dBBipZ', 54, '2259245606', 'rdeath31@scribd.com', 8280.25, 402, 'New Castle', 'Brant', 344673);


CREATE TABLE `DeliveryPartner` (
  `deliveryID` INT NOT NULL auto_increment,
  `password` VARCHAR(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `licence_number` int(10) NOT NULL,
  `phone_number` char(10) NOT NULL,
  `vehicle_number` varchar(10) NOT NULL,
  `status (Occupied/Free)` INT DEFAULT 0,
  `orderID` INT NOT NULL,
  `pickup_house_number` INT NOT NULL,
  `pickup_street_name` varchar(100) DEFAULT NULL,
  `pickup_city` varchar(100) NOT NULL,
  `pickup_pincode` char(6) NOT NULL,
  `expected_arrival_time` datetime DEFAULT NULL,
  `delivery_house_number` varchar(10) NOT NULL,
  `delivery_street_name` varchar(100) DEFAULT NULL,
  `delivery_city` varchar(100) NOT NULL,
  `delivery_pincode` char(6) NOT NULL,
  `deliveries_completed` INT DEFAULT 0,
  `rating` INT DEFAULT NULL,
  `salary` decimal(9,2) NOT NULL,
  PRIMARY KEY(deliveryID)
  -- CONSTRAINT `Delivery_ibfk_1` FOREIGN KEY (`licence_number`) REFERENCES `Licence` (`licence_number`)  on UPDATE CASCADE,
  -- CONSTRAINT `Delivery_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `Order` (`orderID`)  on UPDATE CASCADE
);

insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (1, 'iBF51uANxW2', 'Ludwig', 'Graffin', 119121, '4789589515', '243DE32C37', 1, 18, '55', 'Green', 'Argelia', 748093, '2023-01-29 01:14:13', '05177', 'Dixon', 'Kristianstad', 908985, 37, 4, '397311.91');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (2, 'lOUzw3XWMAR', 'Donn', 'Roubottom', 777140, '7359231871', '243DE32C37', 0, 58, '4388', 'Sage', 'Thị Trấn Bắc Hà', 899422, '2023-02-19 11:14:18', '4', 'Carey', 'Chalandrítsa', 895059, 90, 1, '408745.63');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (3, 'Kg1rAmaPeVGL', 'Petr', 'Powys', 222896, '3108690544', '243DE32C37', 1, 26, '92', '1st', 'Sanyang', 215374, '2022-04-29 02:14:04', '368', 'Shasta', 'Yedun', 385889, 95, 3, '100558.03');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (4, '61EKWAbd3Ayl', 'Anissa', 'Berthomieu', 693623, '1358535146', '243DE32C37', 0, 74, '163', 'Declaration', 'Stavyshche', 460589, '2022-05-20 09:19:32', '08', '3rd', 'Tabuadelo', 712580, 10, 5, '445545.08');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (5, 'UCjMLG', 'Rollin', 'Cockayne', 654621, '3361240064', '243DE32C37', 0, 81, '0', 'Caliangt', 'Greensboro', 878428, '2022-09-24 09:54:20', '14098', 'Hintze', 'Liulin', 624774, 41, 5, '304027.46');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (6, 'uIovr3kZUB4x', 'Jed', 'Osbourn', 166071, '1481424274', '243DE32C37', 1, 54, '13213', 'Eagle Crest', 'Spitak', 483112, '2022-09-05 16:28:40', '52247', 'Maple Wood', 'Tomelilla', 786450, 8, 2, '317479.25');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (7, '60t81Wa0u', 'Laurie', 'Lody', 790172, '4601912357', '243DE32C37', 1, 72, '64', 'Rusk', 'Bang Len', 480400, '2022-05-04 13:16:59', '88033', 'Pleasure', 'Vinhedo', 800253, 4, 2, '499472.98');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (8, '74KWfJUHNC', 'Elvera', 'Creaney', 852437, '9187243497', '243DE32C37', 0, 106, '4', 'Michigan', 'Thomastown', 689099, '2022-05-23 22:08:40', '8069', 'Farwell', 'Dek’emhāre', 161559, 61, 5, '342082.71');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (9, 'jxGdW34j5', 'Cass', 'Dufour', 996680, '7047320161', '243DE32C37', 1, 57, '9', 'Lakeland', 'Boden', 694978, '2022-05-31 16:39:06', '6', 'Waxwing', 'Domont', 800372, 96, 3, '476449.98');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (10, 'IrVpjWs', 'Guthrey', 'Filipponi', 752744, '2251718804', '243DE32C37', 0, 43, '7', 'Warner', 'Yugawara', 422640, '2022-11-30 01:31:13', '2', 'Kenwood', 'Combapata', 365448, 26, 2, '278033.82');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (11, 'HrUrpQGI', 'Chiarra', 'Valek', 180478, '8197746581', '243DE32C37', 1, 62, '9563', 'Clyde Gallagher', 'Alvito de São Pedro', 754265, '2022-12-18 00:35:32', '41', 'Leroy', 'Aisai', 794278, 79, 4, '495891.76');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (12, 'zuQIZz', 'Lyndsey', 'Halifax', 486714, '2958895442', '243DE32C37', 0, 48, '40', 'Everett', 'Basse-Terre', 270429, '2022-03-24 19:48:08', '8', 'Sheridan', 'Samir', 480640, 61, 2, '328030.61');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (13, 'dPmTzWLH', 'Zed', 'Osban', 148282, '9657111234', '243DE32C37', 1, 83, '8', 'Village', 'Obuasi', 417792, '2022-10-16 20:57:15', '675', 'Hallows', 'Vairão', 931408, 31, 3, '361381.03');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (14, 'eIpbTL2nuZx', 'Marguerite', 'Dassindale', 295937, '2611991824', '243DE32C37', 0, 73, '5219', 'Warner', 'Ningyuan', 587524, '2022-02-23 09:34:19', '2042', 'Ryan', 'Sremski Karlovci', 127831, 90, 1, '326990.05');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (15, 'E0TCU6Pl6D1', 'Faunie', 'Seefus', 151820, '6052465807', '243DE32C37', 1, 18, '40', 'Johnson', 'Grzybowa Góra', 813915, '2022-04-25 10:24:25', '9850', 'Trailsway', 'Xinquan', 934092, 19, 4, '10681.46');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (16, '3GNMAUSHqy', 'Sollie', 'Dibbert', 873864, '2668857802', '243DE32C37', 1, 25, '07518', 'Ridgeway', 'Chita', 109967, '2022-10-11 11:17:42', '303', 'Heffernan', 'Nandulehe', 716381, 43, 5, '79951.18');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (17, 'pz4cn7AL6', 'Bathsheba', 'Hufton', 665359, '8116903548', '243DE32C37', 0, 84, '483', 'Loomis', 'Bukowina Tatrzańska', 672773, '2022-06-02 12:48:57', '1', 'Anderson', 'Yonghe', 277689, 91, 1, '188599.11');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (18, 'BZ78d78', 'Garold', 'Zumbusch', 930695, '6982217039', '243DE32C37', 0, 31, '82', 'Welch', 'Qimantage', 725043, '2022-02-28 16:10:33', '987', 'Jay', 'Pohrebyshche', 217144, 42, 2, '203057.84');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (19, 'FNeap6id', 'Nyssa', 'Golling', 816765, '5093290289', '243DE32C37', 0, 19, '28', 'Walton', 'Dobříš', 861527, '2022-08-15 01:07:45', '6', 'Dunning', 'Vila Alva', 896808, 80, 3, '15586.78');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (20, 'cXdEGe3Cy', 'Camey', 'Batchley', 850412, '3899896918', '243DE32C37', 0, 71, '0117', 'Eastlawn', 'Pampachiri', 847990, '2022-05-10 19:36:12', '67388', 'Southridge', 'Mutoko', 707341, 9, 3, '473302.49');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (21, 'msxiDFpx8', 'Rod', 'Berriman', 610981, '5035249495', '243DE32C37', 1, 83, '75447', 'Hudson', 'Nalbandyan', 308605, '2022-10-09 18:11:16', '502', 'Erie', 'Täby', 916563, 78, 5, '364420.72');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (22, 'vCxkNMOr3', 'Micky', 'Tineman', 218926, '3605745864', '243DE32C37', 0, 58, '68958', 'Rowland', 'Beiqi', 437155, '2023-02-03 20:03:35', '525', 'Cherokee', 'Cachadinha', 902467, 70, 2, '35719.68');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (23, '7QUY1a', 'Carmelle', 'Vequaud', 455317, '3535106085', '243DE32C37', 1, 105, '03394', 'Ridgeway', 'Kalmar', 151590, '2022-08-09 00:56:42', '65', 'Sage', 'Orleans', 648794, 36, 3, '337095.20');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (24, 'YQj6nwC', 'Ingrim', 'Fraschetti', 778328, '4055430724', '243DE32C37', 0, 46, '51816', 'Gerald', 'Komorniki', 743727, '2022-09-30 22:33:24', '6210', 'Hallows', 'Vetluga', 258215, 40, 5, '207696.56');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (25, 'uqgsKgBWUB', 'Lavinia', 'Seedhouse', 968121, '2834846653', '243DE32C37', 0, 11, '891', 'Hollow Ridge', 'Ngelak', 459554, '2022-08-27 06:37:41', '6', 'Sachtjen', 'Jinxiang', 733556, 92, 1, '351381.75');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (26, 'GFQYk1', 'Aubrey', 'Pruce', 580631, '4225395369', '243DE32C37', 0, 58, '5', 'Debs', 'Mörön', 110192, '2022-05-23 16:51:44', '9', 'Waxwing', 'Tangjiakou', 940630, 32, 5, '489173.87');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (27, 'yzZ62LxwYHP', 'Nita', 'Nodin', 112375, '9765873841', '243DE32C37', 1, 34, '2', 'Rutledge', 'Tamahú', 406860, '2022-09-27 14:13:29', '594', 'Di Loreto', 'Tomé Açu', 771886, 62, 1, '291893.20');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (28, 'ZmlxOz55rC', 'Arvin', 'Riepl', 533447, '1186444163', '243DE32C37', 1, 19, '4', 'Armistice', 'Macapo', 886070, '2023-01-30 01:34:58', '01', 'Crownhardt', 'Al Jamālīyah', 418665, 2, 3, '318630.74');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (29, 'NS9K8X5IHe', 'Gusty', 'Gores', 499085, '4791249499', '243DE32C37', 1, 70, '83171', 'Dexter', 'Kuala Tuha', 705314, '2022-04-30 13:09:08', '3', 'Butternut', 'Vicente Guerrero', 250633, 34, 5, '43033.07');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (30, 'vMpiIgBQ3', 'El', 'Byford', 577563, '6647811589', '243DE32C37', 0, 88, '1893', 'Everett', 'Āshtīān', 404558, '2022-04-08 01:11:29', '5', 'Westport', 'Lipov', 289148, 70, 3, '361279.64');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (31, 'ghCHiN', 'Drucie', 'Rawlingson', 267994, '4618021000', '243DE32C37', 1, 23, '88', 'Sachs', 'Białobrzegi', 320400, '2022-07-13 11:55:01', '2', 'Annamark', 'Jenamas', 617852, 29, 5, '180569.80');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (32, 'NalLG8', 'Hillary', 'Sidebotton', 123551, '9043709238', '243DE32C37', 1, 25, '17', 'Amoth', 'Bykivka', 591118, '2023-02-25 09:16:15', '63', 'Debs', 'Pesucen', 508944, 56, 3, '194292.14');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (33, 'fgV3LnU', 'Chiquita', 'Biesinger', 486418, '6179343381', '243DE32C37', 0, 89, '5', 'Troy', 'Springfield', 209288, '2022-11-20 09:53:46', '6', 'Warner', 'Trenton', 959800, 81, 4, '206367.13');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (34, 'bAHXVPjn', 'Valina', 'Sleightholme', 170321, '8447945855', '243DE32C37', 0, 2, '055', 'Sage', 'Di Linh', 591730, '2022-07-03 19:32:25', '7', 'Buhler', 'Velikiye Luki', 968553, 73, 4, '475671.11');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (35, 'JX6KFbBfI', 'Brigg', 'Shayes', 691417, '7055320587', '243DE32C37', 0, 42, '51', 'Hauk', 'Shitang', 537798, '2022-05-04 22:09:13', '08610', 'Holmberg', 'Hohoe', 596414, 30, 3, '71329.06');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (36, 'm4TQZh', 'Caryn', 'Hazelden', 291489, '3274316102', '243DE32C37', 1, 81, '97346', 'Center', 'Caringin', 245419, '2022-06-06 02:06:25', '76303', 'Cordelia', 'Cihua', 861577, 85, 3, '264100.84');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (37, '3EYiO3v', 'Packston', 'Dalrymple', 580535, '8335939760', '243DE32C37', 1, 76, '6', 'Prairieview', 'Wādī Raḩḩāl', 516905, '2022-07-04 14:26:53', '47939', 'Toban', 'Maibu', 353117, 1, 2, '83987.99');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (38, '81pkWQXYp19', 'Bobby', 'Starmore', 978955, '2642688112', '243DE32C37', 1, 24, '1', 'Warner', 'Mombasa', 449651, '2022-03-06 13:09:22', '49', 'Calypso', 'Juan de Acosta', 648112, 89, 3, '486144.25');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (39, 'QPpxSlIK', 'Daren', 'Rudham', 341119, '5251998834', '243DE32C37', 0, 74, '030', 'Ilene', 'An Nāşirīyah', 893241, '2022-12-26 18:15:38', '8457', 'Elmside', 'Ravne na Koroškem', 381954, 46, 1, '341429.92');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (40, 'lQepEr5Tnv4', 'Iain', 'Rustidge', 616394, '2479214533', '243DE32C37', 0, 30, '56496', 'Hazelcrest', 'Amiens', 288649, '2022-05-23 22:03:15', '68697', 'Northview', 'Monteiro', 434145, 69, 2, '363792.64');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (41, 'I9faDDT', 'Culver', 'Crockett', 926053, '8529646104', '243DE32C37', 1, 89, '6', 'Novick', 'Tuti', 291724, '2022-05-30 06:30:31', '33313', 'Manitowish', 'Hongos', 767096, 10, 3, '493558.52');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (42, 'YAfUqly', 'Ingrid', 'Rouff', 655516, '3217640815', '243DE32C37', 0, 81, '8097', 'Valley Edge', 'Rammūn', 580889, '2022-04-13 22:44:19', '125', 'Blue Bill Park', 'Xiadong', 197168, 62, 2, '457551.46');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (43, 'zygfbM', 'Ephrem', 'Ewert', 952348, '2249585526', '243DE32C37', 0, 3, '935', 'Gerald', 'Tōkamachi', 330650, '2022-03-03 12:40:47', '11', 'Bonner', 'Pukë', 648841, 55, 1, '210901.15');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (44, '9YrohHST1n', 'Grete', 'Finley', 997371, '1835007454', '243DE32C37', 0, 69, '8', 'Brentwood', 'Tengqiao', 753883, '2022-05-02 13:03:19', '885', 'Atwood', 'Daxi', 533341, 46, 3, '50464.38');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (45, 'gAefiS7gq', 'Tessi', 'Bruton', 950695, '7405682396', '243DE32C37', 1, 40, '5', 'Kipling', 'Pulo', 425739, '2022-04-02 07:46:54', '94112', 'Artisan', '5 de Mayo', 948899, 86, 5, '287810.49');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (46, 'EWYGUH', 'Phaedra', 'Zupo', 977307, '6077702721', '243DE32C37', 1, 82, '05', 'North', 'Tanahmerah', 792826, '2022-03-14 09:11:27', '51167', 'Mccormick', 'Nangka', 854162, 88, 3, '89535.17');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (47, 'ElSDZ9', 'Nilson', 'Colquyte', 261756, '9537495348', '243DE32C37', 0, 34, '2', 'Di Loreto', 'Yixin', 653423, '2022-03-31 23:29:19', '51', 'Anzinger', 'Amizmiz', 979026, 46, 3, '389129.55');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (48, 'VfB5jpQb', 'Ailina', 'Merrick', 215858, '5032669082', '243DE32C37', 1, 45, '19', 'Duke', 'Tumpukrenteng', 107636, '2022-08-05 21:24:27', '6', 'Mayfield', 'Kamieniec Wrocławski', 413892, 6, 1, '237328.59');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (49, 'Q72qWH', 'Adeline', 'St. Aubyn', 597635, '7221772729', '243DE32C37', 1, 12, '0', 'Northport', 'Labuhansumbawa', 353621, '2022-06-03 17:13:25', '21', '3rd', 'Songculan', 832087, 55, 4, '190189.03');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (50, 'mQsW7MKfWSd', 'Kiele', 'Le Breton De La Vieuville', 655817, '8637438923', '243DE32C37', 1, 6, '116', 'Banding', 'Castanheira', 209349, '2022-11-22 07:31:02', '9', 'Vahlen', 'Areado', 960219, 42, 4, '403765.15');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (51, 'xehm0abK', 'Renard', 'Meale', 704265, '9306844354', '243DE32C37', 1, 25, '10794', 'Calypso', 'Bolnisi', 175288, '2022-04-04 04:37:46', '6515', 'Forest', 'Santo Domingo', 799133, 77, 3, '31521.14');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (52, '36Dt3Wsk', 'Cicily', 'Delcastel', 465941, '7438383973', '243DE32C37', 0, 45, '004', 'Stoughton', 'Mekarsari', 372758, '2022-04-10 15:26:14', '9', 'Kinsman', 'Korsakovo', 475781, 12, 4, '304985.19');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (53, '7pWEHZpOc029', 'Lonni', 'Grigore', 382985, '5465282881', '243DE32C37', 1, 66, '7505', 'Jackson', 'Yangmiao', 595991, '2022-10-24 23:11:30', '6', 'Quincy', 'Milagros', 952212, 74, 1, '208286.00');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (54, 'RxcGM8oBjU', 'Aura', 'Scothorn', 463865, '2651299887', '243DE32C37', 1, 93, '9432', 'Prairieview', 'Itajuípe', 286920, '2022-10-10 09:54:47', '0', 'Pierstorff', 'Texíguat', 571155, 67, 5, '384726.21');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (55, 'xpR3VeY12A', 'Sonny', 'Kennard', 742977, '6949706316', '243DE32C37', 0, 47, '510', 'Scofield', 'Suwalan', 451650, '2022-04-28 14:34:47', '0413', 'Granby', 'Potet', 735328, 40, 2, '27316.31');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (56, 'K2prDw4', 'Mavis', 'Divine', 486250, '5576485217', '243DE32C37', 0, 8, '1356', 'Fremont', 'Tianfen', 530674, '2022-06-09 06:20:53', '015', 'Mayfield', 'Soho', 372933, 85, 4, '388356.99');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (57, 'rn2pDG0', 'Eveline', 'Kinzett', 515730, '4077765133', '243DE32C37', 0, 76, '2', 'Fairfield', 'Żarki-Letnisko', 136702, '2022-12-28 01:58:58', '0094', 'Dayton', 'Kentongan', 943509, 48, 3, '413326.49');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (58, 'BH5Dj7', 'Jaime', 'Ailmer', 773169, '4646693653', '243DE32C37', 1, 63, '40', 'David', 'Haquira', 735162, '2022-10-22 16:58:45', '3363', 'Declaration', 'Sędziszów', 632626, 100, 2, '217175.74');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (59, 'uhrZ4tDCF', 'Ileana', 'Moyle', 125932, '8577164202', '243DE32C37', 1, 60, '7580', 'Petterle', 'Les Clayes-sous-Bois', 447516, '2022-06-07 08:47:43', '35', 'Spaight', 'Markaz-e Ḩukūmat-e Darwēshān', 441017, 3, 5, '280945.01');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (60, 'bZtGGP1Wn5m', 'Edithe', 'Stearne', 913244, '3031031766', '243DE32C37', 1, 102, '82287', 'Bellgrove', 'Montélimar', 174392, '2022-05-05 16:08:40', '8', 'Marquette', 'Borzytuchom', 427061, 7, 2, '381410.59');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (61, 'OKecsQts', 'Hilton', 'Mordue', 983183, '3757318160', '243DE32C37', 0, 102, '9890', 'Anthes', 'Gongping', 803704, '2022-07-07 10:57:04', '8919', 'Fieldstone', 'Erdaojiang', 721729, 30, 4, '471732.16');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (62, 'UUqyTVXPa', 'Cyb', 'Kalderon', 165689, '7727346129', '243DE32C37', 0, 11, '4', 'Pierstorff', 'Oesena', 136151, '2023-02-02 09:43:58', '2', 'Bultman', 'Melaka', 430773, 66, 5, '323481.94');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (63, 'IihBERXF', 'Ingemar', 'Myrkus', 977557, '4749656243', '243DE32C37', 0, 75, '540', 'Mifflin', 'Ceper', 855082, '2022-11-18 17:24:14', '517', 'Vera', 'Baicun', 972403, 54, 3, '233418.00');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (64, 'CIZ0LQzGk4lA', 'Tommie', 'Cupper', 916834, '6774852982', '243DE32C37', 0, 69, '568', 'Schurz', 'Sumberpucung', 370557, '2022-04-20 01:34:08', '0446', 'Alpine', 'Sim', 903058, 8, 1, '234985.97');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (65, 'gYLCefFkz', 'Curr', 'Adnett', 643339, '1565187438', '243DE32C37', 1, 69, '5533', 'Mallard', 'Reuleuet', 608473, '2023-01-26 10:08:51', '55231', 'Macpherson', 'Krajan', 201514, 95, 3, '47011.63');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (66, 'Xryey9I4N', 'Cherry', 'Tousy', 978181, '1908917746', '243DE32C37', 1, 52, '44', 'Eastlawn', 'Brloh', 141183, '2022-06-07 03:24:47', '46', 'Del Sol', 'Sincelejo', 782307, 48, 1, '458513.86');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (67, 'SBzVc3T', 'Dian', 'Glacken', 596351, '4309740984', '243DE32C37', 0, 45, '395', 'Moland', 'Fuwah', 744933, '2022-02-23 10:55:54', '0', 'Red Cloud', 'Ambato Boeny', 300741, 89, 3, '354180.04');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (68, 'fMESMxA0n', 'Christy', 'Beddoes', 272772, '4191088113', '243DE32C37', 1, 96, '99252', '5th', 'Shiraoi', 618903, '2023-01-25 04:52:30', '25', 'Messerschmidt', 'Bloemfontein', 215874, 48, 4, '42741.72');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (69, 'GbYAhJ346H', 'Renato', 'Van Salzberger', 372404, '8913983700', '243DE32C37', 1, 110, '5', 'Longview', 'Cikayas', 447250, '2022-12-26 03:07:11', '60', 'Clyde Gallagher', 'Qixing', 822917, 0, 4, '180306.97');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (70, 'dTvZoD', 'Astra', 'McIlory', 763097, '9813038934', '243DE32C37', 1, 71, '1384', 'Mitchell', 'Panyingkiran', 512106, '2023-01-04 11:48:44', '822', 'Kim', 'Antofagasta', 175623, 28, 3, '303552.04');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (71, 'JJhJTLlPX', 'Lemmie', 'Jess', 852453, '3721959320', '243DE32C37', 1, 78, '6', 'Ryan', 'Funafuti', 562271, '2022-03-05 17:54:06', '51', 'Wayridge', 'Goujie', 709222, 18, 2, '279351.21');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (72, 'wM4dP1pE', 'Christos', 'Burnie', 144094, '7222530637', '243DE32C37', 1, 36, '304', 'Saint Paul', 'Comalapa', 527556, '2023-02-06 12:46:27', '51', 'Melrose', 'Dayton', 673029, 29, 2, '18755.83');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (73, '0J6DpprJe8L6', 'Renee', 'Izhak', 586654, '6563288651', '243DE32C37', 1, 57, '076', 'Fieldstone', 'Jiangkou', 191724, '2023-01-31 09:22:18', '4206', 'Rutledge', 'Armentières', 320342, 60, 1, '399981.00');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (74, '6CfKw3zM', 'Ettie', 'Sibson', 447656, '6566319696', '243DE32C37', 0, 99, '4', 'Linden', 'Mantampay', 418122, '2022-04-02 00:06:06', '329', 'Corscot', 'Ituberá', 804354, 23, 2, '289553.47');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (75, 'a4tLV7yq2kQ', 'Joshuah', 'Creeboe', 521340, '9795907740', '243DE32C37', 1, 100, '37895', 'Sutteridge', 'Rantauambacang', 696748, '2022-04-29 13:09:08', '45', 'Oakridge', 'Ciloa', 458038, 80, 4, '110102.56');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (76, 'yL877pIpd', 'Liv', 'Lapidus', 913988, '4089270229', '243DE32C37', 1, 13, '82', 'Almo', 'Krajan Langenharjo', 375058, '2023-02-07 20:12:20', '78915', 'Hazelcrest', 'Ipaba', 688175, 44, 1, '148599.07');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (77, 'f77Ut6', 'Kathye', 'Biskupiak', 364741, '5447633241', '243DE32C37', 0, 97, '2', 'Reindahl', 'Salaya', 139756, '2023-02-12 13:04:10', '2', 'Johnson', 'Sarongan', 352203, 68, 1, '147087.32');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (78, 'XLCdAD9J', 'Marianna', 'Wodeland', 810552, '9468847603', '243DE32C37', 0, 24, '6', 'Sheridan', '20 de Noviembre', 591950, '2022-05-14 17:01:19', '0294', 'Pepper Wood', 'Majiao', 258607, 22, 4, '16505.73');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (79, 'hBp9czLfkRH', 'Karyl', 'Kinver', 354631, '7027953108', '243DE32C37', 0, 80, '0328', 'Paget', 'San Felipe', 723540, '2022-04-19 05:46:58', '87392', 'Waxwing', 'Särö', 306323, 50, 5, '407496.33');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (80, 'mrAze4', 'Hulda', 'de Najera', 571423, '4538123052', '243DE32C37', 0, 76, '25538', 'Brentwood', 'Amānzī', 350355, '2022-09-26 13:24:11', '86', 'Arrowood', 'Postřelmov', 515575, 68, 1, '154691.60');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (81, '1XT485lROjD', 'Marilyn', 'Vreiberg', 112240, '4489370426', '243DE32C37', 1, 29, '42753', 'Mesta', 'Parizh', 221218, '2023-01-18 09:07:58', '0', 'Stoughton', 'Darungan', 922996, 58, 2, '291041.71');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (82, 'yL12QG1i', 'Kellsie', 'Cackett', 434279, '4689874353', '243DE32C37', 0, 83, '55', 'Fulton', 'Changning', 831367, '2023-01-16 09:30:12', '83', 'Heath', 'Pasadena', 654953, 76, 5, '203846.77');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (83, 'tKm7MmarsH', 'Lowrance', 'Jedrych', 753392, '2661395120', '243DE32C37', 1, 109, '0442', 'Sunnyside', 'Smithers', 136965, '2022-12-26 21:25:55', '79822', 'Leroy', 'Nandayure', 762201, 15, 1, '122042.60');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (84, 'rOlSMGRyi', 'Cull', 'Feige', 164225, '5128173374', '243DE32C37', 0, 4, '959', 'Towne', 'Blagoevgrad', 629615, '2022-11-28 19:21:44', '63', 'Pleasure', 'Jawornik Polski', 313268, 19, 1, '431991.51');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (85, 'HzAau6prK', 'Edwin', 'Rook', 935997, '2909105076', '243DE32C37', 0, 45, '4', 'Northwestern', 'Molochnoye', 156331, '2022-08-29 12:45:55', '692', 'Novick', 'Aleshtar', 779006, 26, 4, '353183.65');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (86, '57JJ7zu', 'Dacia', 'Lawn', 689743, '2521416025', '243DE32C37', 1, 52, '33', 'Melvin', 'Haitang', 514707, '2022-04-13 01:26:14', '35174', 'Stuart', 'Xieqiao', 499226, 33, 4, '446551.06');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (87, 'euOjZ3', 'Hervey', 'Gadsdon', 921339, '9447109401', '243DE32C37', 0, 83, '1', 'North', 'Passo Fundo', 140773, '2022-10-06 22:12:56', '6336', 'Heffernan', 'Zarrīn Shahr', 783180, 35, 1, '104471.25');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (88, 'OUCaPOg2v', 'Hugibert', 'Skey', 791279, '1366162305', '243DE32C37', 1, 43, '72', 'Red Cloud', 'Banjar Bucu', 558594, '2022-06-16 09:49:38', '216', 'Crowley', 'Angra do Heroísmo', 415148, 68, 4, '94427.45');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (89, 'nzzUrAn', 'Dan', 'Loisi', 693749, '3287616898', '243DE32C37', 0, 62, '59225', 'Luster', 'Cipari', 276806, '2022-05-06 10:33:12', '60697', 'Ruskin', 'Myanaung', 967576, 87, 5, '471147.04');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (90, 'lkYaOPufHBwL', 'Casper', 'Arblaster', 412499, '9441525475', '243DE32C37', 0, 53, '459', 'Eagan', 'Tabug', 634875, '2023-01-06 07:32:52', '17112', 'Luster', 'Zhizhong', 789265, 39, 2, '420361.18');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (91, 'XAZce7JZj', 'Gregory', 'Ginglell', 906661, '4576805216', '243DE32C37', 0, 8, '99', 'Cody', 'Busalangga', 580059, '2022-12-30 16:15:18', '920', 'Weeping Birch', 'Arraga', 635982, 32, 5, '484143.61');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (92, 'oiSULkoPWHL', 'Dana', 'Bickerdyke', 137365, '4247716356', '243DE32C37', 0, 12, '61247', 'Corben', 'Kant', 660558, '2022-06-10 22:36:30', '7866', 'Maple', 'Pasolapida', 840083, 33, 1, '292579.42');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (93, 'GDY4xwUrbt', 'Norman', 'MacCallion', 768770, '1586140877', '243DE32C37', 1, 52, '72046', 'Erie', 'Nanxing', 874244, '2023-01-26 01:41:40', '09091', 'Ramsey', 'Bagenalstown', 905789, 69, 5, '45242.64');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (94, 'kJ9AECJO', 'Laurie', 'Willshaw', 650045, '3892948056', '243DE32C37', 0, 12, '8685', 'Jenifer', 'Yiánnouli', 785467, '2022-04-05 10:03:20', '66372', 'Northwestern', 'Sanxiang', 707450, 75, 2, '165136.84');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (95, 'IWKmiDLM', 'Bordy', 'Baraclough', 421095, '4048827383', '243DE32C37', 0, 102, '2', 'Hoepker', 'Lazaro Cardenas', 833367, '2022-07-21 04:46:55', '58', 'Brentwood', 'Caseros', 432580, 82, 1, '298648.90');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (96, 'ICPuLp8', 'Otes', 'Archell', 191320, '4088222799', '243DE32C37', 1, 26, '199', 'Northport', 'Łapczyca', 334903, '2023-01-11 03:06:15', '84', 'Texas', 'Yong’an', 665337, 94, 1, '118537.10');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (97, 'AIPfqJtM', 'Benn', 'Caush', 865627, '8018148660', '243DE32C37', 1, 106, '393', 'Cherokee', 'Pingyi', 187742, '2022-08-12 08:18:18', '0972', 'Lien', 'Lenchwe Le Tau', 907823, 7, 4, '233026.56');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (98, 'GaWOO3CP6', 'Quincy', 'Ghilks', 557435, '1902586284', '243DE32C37', 0, 3, '142', 'Becker', 'Novaya Chigla', 849170, '2022-06-14 08:41:28', '56', 'Bunker Hill', 'Jiblah', 597603, 24, 1, '211547.50');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (99, 'Kj7YXq', 'Merl', 'Savatier', 934044, '5024353697', '243DE32C37', 0, 9, '724', 'Corscot', 'Novyye Kuz’minki', 405041, '2023-01-23 06:03:30', '9768', 'Arapahoe', 'Yasnogorsk', 126834, 17, 2, '383146.28');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (100, '8Xm0zzu', 'Elfrieda', 'Fieldgate', 429528, '9822177140', '243DE32C37', 1, 80, '8', 'Acker', 'Hubei', 662874, '2022-03-31 19:06:02', '66', 'Claremont', 'Kramators’k', 752183, 10, 4, '265370.03');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (101, 'p3rmy8H', 'Fania', 'Jonczyk', 419996, '8183023731', '243DE32C37', 0, 52, '54076', 'Superior', 'Pedroso', 896846, '2022-09-22 00:49:05', '24767', 'Morrow', 'Dongyong', 291858, 11, 2, '387332.55');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (102, 'KVz2Q3BC2G', 'Jori', 'Rake', 670742, '5088526728', '243DE32C37', 1, 16, '3', 'Algoma', 'San Nicolas', 726275, '2023-02-18 09:31:01', '75988', 'Bayside', 'Üydzen', 566412, 65, 1, '249952.26');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (103, 'oRSG35iK0mE', 'Katharine', 'Rappaport', 781239, '7066603633', '243DE32C37', 0, 43, '8507', 'Waubesa', 'Laotai', 685721, '2023-02-12 05:40:56', '3430', 'Holy Cross', 'Mabusag', 177712, 12, 4, '400026.20');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (104, 'i41RKenEX4', 'Dody', 'Foskin', 879118, '3247695328', '243DE32C37', 1, 96, '58663', 'Saint Paul', 'Dungloe', 332847, '2022-07-04 01:20:25', '51378', 'Stuart', 'Gēdo', 410472, 79, 4, '243419.02');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (105, 'zLXnIao', 'Bordy', 'Saint', 153401, '9433282118', '243DE32C37', 1, 40, '05080', 'Stuart', 'Alto Río Senguer', 146953, '2023-01-31 05:44:29', '16722', 'Hauk', 'Muzidian', 104351, 56, 3, '165635.04');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (106, 'euGqCyM', 'Ashton', 'Antonoczyk', 670113, '7929302759', '243DE32C37', 1, 36, '051', 'American Ash', 'Jinping', 216582, '2022-12-23 07:24:30', '7', 'Spaight', 'Baiju', 762896, 51, 5, '445211.33');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (107, 'BFzOQc2DR978', 'Merell', 'Weatherby', 201422, '1917753727', '243DE32C37', 1, 33, '27', 'Main', 'Taixi', 641138, '2022-03-02 16:47:48', '52453', 'Memorial', 'Mehrābpur', 985229, 70, 3, '428458.41');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (108, 'QIowedJZbKwi', 'Elspeth', 'Hobell', 241353, '9748348126', '243DE32C37', 0, 58, '658', 'Reindahl', 'Shapa', 863920, '2022-07-04 00:01:24', '089', 'Brickson Park', 'Nuits-Saint-Georges', 491215, 21, 2, '257333.35');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (109, 'uOotjGIPX4j', 'Sidnee', 'Gjerde', 482195, '3766741934', '243DE32C37', 0, 55, '520', 'Drewry', 'Al Jaghbūb', 636092, '2022-08-29 02:42:54', '3', 'Muir', 'Kumla', 686551, 31, 4, '371751.69');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (110, '7Dbo4Fr', 'Lolly', 'Moralas', 584628, '7136788385', '243DE32C37', 0, 108, '3', 'Paget', 'Houston', 833785, '2023-01-26 20:30:19', '58569', 'Cordelia', 'Kyegegwa', 927906, 23, 4, '157889.15');

