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
  `couponID` INT,
  `house_number` varchar(10) NOT NULL,
  `street_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `pincode` char(6) NOT NULL,
  `balance` decimal(9,2) NOT NULL,
  -- CONSTRAINT `Customer_ibfk_1` FOREIGN KEY (`couponID`) REFERENCES `Coupon` (`couponID`) on UPDATE CASCADE,
  PRIMARY KEY(username)
);

insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('c1', 'p1', 'Joshua', 'McMorran', '3755437110', 'c1@cnet.com', 'regular', 92312, 85939, 'Butterfield', 'Majennang', 241268, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('asibbson1', 'Q4DrVI6gKCn', 'Alejoa', 'Sibbson', '6212742931', 'asibbson1@unc.edu', 'regular', 88565, 69073, 'Hansons', 'Lengkeng', 235715, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('fmilne2', 'Go78UIIBz1', 'Flora', 'Milne', '5064450689', 'fmilne2@deviantart.com', 'regular', 82683, 58261, 'Burrows', 'Horta', 683406, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('kdowall3', '7wT19Zt28US', 'Kathy', 'Dowall', '8739633885', 'kdowall3@blinklist.com', 'regular', 28449, 90766, 'Arapahoe', 'Niwiska', 776508, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('eagus4', 'vVyc4IYs', 'Edgard', 'Agus', '7781327498', 'eagus4@mit.edu', 'regular', 30339, 48334, 'Drewry', 'Kusŏng', 661835, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('abonson5', 'rxTzdexltqBl', 'Alejandra', 'Bonson', '6601582245', 'abonson5@msu.edu', 'regular', 40263, 37998, 'Carberry', 'Bairro de Santo António', 560391, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('tbinch6', 'IxI3S1PNxXVN', 'Toddie', 'Binch', '1586487917', 'tbinch6@who.int', 'regular', 65147, 58882, 'Swallow', 'Bárrio', 931889, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('stsar7', 'a9pWL9J', 'Shelby', 'Tsar', '3499610185', 'stsar7@furl.net', 'regular', 71815, 39105, '3rd', 'Pakemitan', 445179, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('rbrownlie8', 'cR6yhh6', 'Rock', 'Brownlie', '9756876045', 'rbrownlie8@ow.ly', 'regular', 40852, 42568, 'Surrey', 'Devesa', 728465, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('jliddell9', 'lNrM8zn', 'Jere', 'Liddell', '3518289582', 'jliddell9@cam.ac.uk', 'regular', 17458, 55594, 'Luster', 'Ciusul', 373709, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('nvenneura', 'oSWpMLn', 'Natale', 'Venneur', '8873658244', 'nvenneura@hhs.gov', 'regular', 43299, 55206, 'Anthes', 'Habana del Este', 123989, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('wfalckb', 'P8vNEE', 'Winslow', 'Falck', '6809039106', 'wfalckb@discovery.com', 'regular', 61711, 74833, 'Marcy', 'Peterhof', 438190, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mlantc', 'jj0euhS', 'Mandy', 'Lant', '2231205081', 'mlantc@photobucket.com', 'regular', 27944, 56768, 'Bartelt', 'Nybro', 844288, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('dbickersd', 'AKGEsF6', 'Dorolice', 'Bickers', '3906530962', 'dbickersd@edublogs.org', 'regular', 92139, 87708, 'Milwaukee', 'Brodósqui', 544043, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('rchaperlinge', 'YYFbOHEqZCWp', 'Rubie', 'Chaperling', '1751313676', 'rchaperlinge@sciencedaily.com', 'regular', 51462, 54759, 'Anthes', 'Hassi Berkane', 362598, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('phuygensf', 'xAseQO08bl', 'Paulina', 'Huygens', '7206802571', 'phuygensf@netlog.com', 'regular', 99557, 39643, 'Monument', 'Sandayong Sur', 214502, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('cfrippg', 'a5elg5', 'Coral', 'Fripp', '5085186895', 'cfrippg@cmu.edu', 'regular', 51919, 7722, 'Hoffman', 'Shtip', 791283, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('rdederichh', 'dxKp3rtG0G', 'Robinette', 'Dederich', '1369458251', 'rdederichh@craigslist.org', 'regular', 62439, 49279, 'Nelson', 'Qianxu Zhen', 855275, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('dstemsoni', 'NXgAuc', 'Decca', 'Stemson', '6806657915', 'dstemsoni@cafepress.com', 'regular', 91232, 30775, 'Reindahl', 'Siekierczyn', 494134, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('vbaudetj', 'GSSOlp5e68G', 'Valencia', 'Baudet', '8754343684', 'vbaudetj@nsw.gov.au', 'regular', 39535, 11541, 'Parkside', 'Sempu', 366565, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('rspracklink', '7yq1e5tmls', 'Rufe', 'Spracklin', '5799874010', 'rspracklink@woothemes.com', 'regular', 20269, 41588, 'Garrison', 'Skaryszew', 154490, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('ncoulmanl', 'XkrpuXQ1pNbx', 'Neel', 'Coulman', '6723668280', 'ncoulmanl@opensource.org', 'regular', 83144, 50913, 'Calypso', 'Pickering', 843880, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('tabramskim', 'J0kAfU4', 'Tomkin', 'Abramski', '4546266654', 'tabramskim@tamu.edu', 'regular', 31510, 71615, 'Harbort', 'Vrbovec', 495282, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('lkemmeyn', 'GGinD8XwEkB', 'Luciana', 'Kemmey', '3483745995', 'lkemmeyn@si.edu', 'regular', 61495, 24618, 'Lotheville', 'Cielmice', 378432, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mdethloffo', 'gUNosw02XXz', 'Maud', 'Dethloff', '3276441434', 'mdethloffo@cafepress.com', 'regular', 85394, 60866, 'Tomscot', 'Juhaynah', 470706, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mpudanp', 'oNLb6kZ2O', 'Meredith', 'Pudan', '1806600211', 'mpudanp@geocities.jp', 'regular', 95470, 59894, 'Cordelia', 'Gabao', 162048, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('rgoodnowq', '4clOSRuu2QCE', 'Rebbecca', 'Goodnow', '6633489746', 'rgoodnowq@tripadvisor.com', 'regular', 33693, 61507, 'Waywood', 'Plymouth', 857657, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('cfarrellr', '4FvaPuxwelc', 'Celinda', 'Farrell', '2764106611', 'cfarrellr@psu.edu', 'regular', 12496, 4256, 'Hauk', 'København', 510198, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mdouches', 'V1YuOheLow', 'Maurie', 'Douche', '1944531241', 'mdouches@fda.gov', 'regular', 53182, 17195, 'Pearson', 'Pentre', 564789, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('sklast', 'GqNQCr', 'Shaughn', 'Klas', '9373334707', 'sklast@dedecms.com', 'regular', 75297, 13955, 'Warbler', 'Enyerhyetykaw', 379311, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mdargieu', 'uDRcs70l', 'Marsha', 'Dargie', '5892515956', 'mdargieu@nationalgeographic.com', 'regular', 32078, 89980, 'Southridge', 'Dongming', 729502, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('ddaubenyv', 'UETEwjQTR', 'Donal', 'Daubeny', '5423125805', 'ddaubenyv@pbs.org', 'regular', 21052, 77377, 'Bay', 'Cergy-Pontoise', 972874, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('trigbyw', 'DLgQWy0pur', 'Tamarah', 'Rigby', '4586859301', 'trigbyw@example.com', 'regular', 24651, 3772, 'Saint Paul', 'Frösön', 680591, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mdirandx', 'NyuPL7Q', 'Mayer', 'Dirand', '6541394210', 'mdirandx@sogou.com', 'regular', 43173, 90869, 'Stoughton', 'Wilwerwiltz', 941804, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('zsmedmorey', 'FLEnsxf1', 'Zebulon', 'Smedmore', '9723591039', 'zsmedmorey@tripadvisor.com', 'regular', 68674, 24199, 'Dwight', 'Xueshan', 326027, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mreasonz', 'Jn3uL7TIo1b', 'Mellie', 'Reason', '1971997356', 'mreasonz@github.io', 'regular', 35350, 47223, 'Hoard', 'Kanchanaburi', 947953, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mmonsey10', '2k1deYQUgT', 'Mair', 'Monsey', '8106265086', 'mmonsey10@bravesites.com', 'regular', 56777, 38071, 'Southridge', 'Kusŏng', 218038, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('rastall11', 'lfKX9h', 'Rosetta', 'Astall', '7511468781', 'rastall11@hc360.com', 'regular', 51278, 16038, 'Independence', 'Chacabuco', 583907, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('hchristofle12', '9lY2zcsTFkB1', 'Hayley', 'Christofle', '9223595043', 'hchristofle12@washingtonpost.com', 'regular', 24512, 77585, 'Golden Leaf', 'Vale Covo', 339626, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('bgopsell13', 'HrwCnYbgv', 'Bearnard', 'Gopsell', '9106372151', 'bgopsell13@wikipedia.org', 'regular', 37608, 26454, 'Little Fleur', 'Jales', 726154, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('cvasilenko14', 'rcPuIDLO6', 'Cesar', 'Vasilenko', '1677825574', 'cvasilenko14@boston.com', 'regular', 65286, 43981, 'Fairfield', 'Darkovice', 753469, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mcretney15', '406gf2AP', 'Mellisent', 'Cretney', '1931862168', 'mcretney15@exblog.jp', 'regular', 47096, 52188, 'Hollow Ridge', 'Sobral da Abelheira', 719136, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('rswatheridge16', '91aqXb6B', 'Rhianon', 'Swatheridge', '6655977858', 'rswatheridge16@hud.gov', 'regular', 29615, 60212, 'Oriole', 'Quiruvilca', 566165, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mconahy17', '6W4WiYtpE7', 'Mordecai', 'Conahy', '1528996077', 'mconahy17@addtoany.com', 'regular', 98418, 13023, 'Tennessee', 'Abakaliki', 670989, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('cnorledge18', 'ncJENNg', 'Conrado', 'Norledge', '5689012839', 'cnorledge18@fda.gov', 'regular', 14721, 59487, 'Corben', 'Bcharré', 116008, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('vifill19', '63wC3XgdWVn', 'Vite', 'Ifill', '9815341365', 'vifill19@japanpost.jp', 'regular', 21176, 31744, 'North', 'Igir-igir', 323220, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('tshovlin1a', 'yJSgA3XRGUc', 'Tracey', 'Shovlin', '5037338978', 'tshovlin1a@sourceforge.net', 'regular', 15300, 46249, 'Lakeland', 'Fukuyama', 676650, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('ldarridon1b', 'er1ZhAIlJ', 'Letty', 'Darridon', '3089579403', 'ldarridon1b@desdev.cn', 'regular', 33940, 50306, 'Vera', 'Senovo', 512694, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('kbrimm1c', 'bg4lGIm', 'Kendall', 'Brimm', '7236201616', 'kbrimm1c@guardian.co.uk', 'regular', 16484, 76210, 'Stoughton', 'San Juan', 833245, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('rkalinovich1d', 'ZdI8aScW3XT', 'Ruthi', 'Kalinovich', '5994415285', 'rkalinovich1d@geocities.com', 'regular', 87504, 32940, 'Butterfield', 'Libacao', 752726, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('trosettini1e', 'ZpSPghv4qWMD', 'Teresina', 'Rosettini', '1855816758', 'trosettini1e@jimdo.com', 'regular', 27764, 49247, 'Schiller', 'Villa Elisa', 649889, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('vbradley1f', 'Ui1XkqcF', 'Venus', 'Bradley', '9026625838', 'vbradley1f@hatena.ne.jp', 'regular', 92380, 29533, 'Petterle', 'Meipu', 537615, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('lthacke1g', '4LtWhUZCK', 'Liane', 'Thacke', '3272850160', 'lthacke1g@globo.com', 'regular', 18534, 5800, 'Donald', 'Hebei', 715473, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('cwogdon1h', 'Gq9OBkoLGbl5', 'Caz', 'Wogdon', '8179333811', 'cwogdon1h@europa.eu', 'regular', 68244, 22427, 'Truax', 'Żychlin', 459359, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('aawin1i', 'Wbukyj', 'Aldon', 'Awin', '5397887520', 'aawin1i@icq.com', 'regular', 94374, 6689, 'Jay', 'Hecun', 906650, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mronaldson1j', 'oAcc2V', 'Matthew', 'Ronaldson', '2043347028', 'mronaldson1j@istockphoto.com', 'regular', 34638, 86756, 'Mcbride', 'Changmaoling', 674259, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('dacory1k', 'FvCZ1Icu', 'Dino', 'Acory', '8733335976', 'dacory1k@soundcloud.com', 'regular', 82771, 78620, 'Towne', 'Hetou', 579356, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('sratt1l', 'Z8B7gAlsF', 'Stefania', 'Ratt', '9106996407', 'sratt1l@cloudflare.com', 'regular', 25307, 28637, 'Moose', 'Tomakomai', 588038, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('trockey1m', 'xgBhh37iF', 'Teador', 'Rockey', '4797448243', 'trockey1m@yellowpages.com', 'regular', 26592, 66439, 'Waxwing', 'Murom', 740715, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('farens1n', 'Op1Bwgn62', 'Fulvia', 'Arens', '7106095870', 'farens1n@topsy.com', 'regular', 71361, 49575, 'Bellgrove', 'Aristóbulo del Valle', 363153, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('otills1o', 'OKvm17', 'Orion', 'Tills', '5755565125', 'otills1o@tinypic.com', 'regular', 20090, 84302, 'Golf', 'Lozova', 450885, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('lsquirrel1p', 'zNAksCs', 'Leoline', 'Squirrel', '1381285190', 'lsquirrel1p@networksolutions.com', 'regular', 11318, 86598, 'Jenna', 'Gostivar', 989304, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('icorry1q', 'C5POcGLpkyr', 'Ingmar', 'Corry', '9972739678', 'icorry1q@ebay.com', 'regular', 52542, 90240, 'Jackson', 'Popovo', 615369, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('jmcclements1r', 'kMwX2A39Ik', 'Jervis', 'McClements', '4277942408', 'jmcclements1r@opera.com', 'regular', 47817, 54389, 'Garrison', 'Libertad', 562033, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('fspours1s', 'k3pvPP3eEW', 'Frank', 'Spours', '2435247419', 'fspours1s@fastcompany.com', 'regular', 74301, 26850, 'Sheridan', 'Cedynia', 907026, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('sfancy1t', 'AasGo9', 'Sal', 'Fancy', '7912403892', 'sfancy1t@earthlink.net', 'regular', 39524, 13329, 'Sachtjen', 'Repki', 229426, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('bstanlike1u', 'pZwEYX', 'Berrie', 'Stanlike', '4177572240', 'bstanlike1u@dmoz.org', 'regular', 66841, 42483, '4th', 'Huanglong', 880829, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('ejupe1v', 'O4dR1qy', 'Ernie', 'Jupe', '3662608638', 'ejupe1v@boston.com', 'regular', 17925, 72580, 'Pleasure', 'Saint-Amand-les-Eaux', 170280, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('kflay1w', 'X8yCbocm', 'Kessia', 'Flay', '5876977158', 'kflay1w@php.net', 'regular', 47386, 13742, 'Sauthoff', 'Arai', 803607, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('ckillough1x', 't9vOwa', 'Cherlyn', 'Killough', '2323526772', 'ckillough1x@hc360.com', 'regular', 87165, 6934, 'Helena', 'Santa Lucía', 837918, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('cvacher1y', 's7q2DiqB', 'Catharina', 'Vacher', '4258332132', 'cvacher1y@arizona.edu', 'regular', 89331, 14652, 'Arkansas', 'Gapluk', 966318, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('cmackeller1z', 'H6osrS38E6B', 'Charil', 'MacKeller', '4498142880', 'cmackeller1z@e-recht24.de', 'regular', 82066, 6693, 'Prentice', 'Perelyub', 928878, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('jjellett20', 'XLnZyuzR', 'Jacenta', 'Jellett', '9549715927', 'jjellett20@fema.gov', 'regular', 11817, 82796, 'Forest Run', 'Rakek', 739644, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mpaice21', '03lgXWdOsxNt', 'Marv', 'Paice', '2414240470', 'mpaice21@skyrock.com', 'regular', 75606, 78568, 'Gale', 'Albertville', 689036, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('elomax22', 'OGwyMstdYKZ', 'Elke', 'Lomax', '8907958339', 'elomax22@netscape.com', 'regular', 72167, 27774, 'Marquette', 'Tula', 824799, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mhounsome23', 'pM9TmeU', 'Madel', 'Hounsome', '6286937548', 'mhounsome23@google.com.hk', 'regular', 59304, 5615, 'Spaight', 'Melaka', 441085, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('cdeshon24', 'j8TsCHec', 'Cori', 'Deshon', '9155076364', 'cdeshon24@barnesandnoble.com', 'regular', 65756, 65784, 'Clove', 'Qibu', 231127, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('hbeed25', 'dIxSBL5BnW', 'Helen-elizabeth', 'Beed', '7366007244', 'hbeed25@admin.ch', 'regular', 96112, 42258, 'Elka', 'Sidomulyo', 706465, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('csouch26', '1L8L2Q3', 'Carole', 'Souch', '6982925690', 'csouch26@pinterest.com', 'regular', 51659, 59622, 'Arizona', 'Wangzha', 448544, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('fmacalister27', '2gpuF3', 'Ferrel', 'MacAlister', '1314355666', 'fmacalister27@nih.gov', 'regular', 74733, 93448, 'Sunnyside', 'Dongyuan', 120380, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('tcordery28', 'nu5dh9bU', 'Tonye', 'Cordery', '8026279553', 'tcordery28@theguardian.com', 'regular', 86535, 23037, 'Birchwood', 'Liren', 700346, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('menrico29', 'XIXdSW3vEByb', 'Marcia', 'Enrico', '2485566286', 'menrico29@slideshare.net', 'regular', 98306, 72459, 'Quincy', 'Ipís', 767001, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('zkenward2a', 'QvSVRLlFtY', 'Zuzana', 'Kenward', '6656566422', 'zkenward2a@jiathis.com', 'regular', 81084, 77574, 'American', 'Banxi', 303832, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('hcosker2b', '8oTu1eBPk', 'Harlen', 'Cosker', '1812734010', 'hcosker2b@slashdot.org', 'regular', 48100, 93141, 'Eggendart', 'Yangqiaodian', 949127, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('arickword2c', 'vmOu6p', 'Alvie', 'Rickword', '5238544562', 'arickword2c@utexas.edu', 'regular', 46945, 13975, 'Marquette', 'Jiqu', 593452, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('bbagworth2d', 'WGH8vnvqJMw', 'Bianka', 'Bagworth', '2042516994', 'bbagworth2d@amazon.com', 'regular', 81734, 85546, 'Spaight', 'Beiquan', 386756, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('wbowkett2e', '4h0x5dnMPZh', 'Wenona', 'Bowkett', '5167391394', 'wbowkett2e@de.vu', 'regular', 40466, 3810, 'Division', 'Nanto-shi', 881274, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('eraffles2f', 'NvFf6xmhJ', 'Ellynn', 'Raffles', '5271358358', 'eraffles2f@nymag.com', 'regular', 28255, 56512, 'Sundown', 'Buzdyak', 443856, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mnast2g', '0bid7YYAs', 'Michele', 'Nast', '3875602796', 'mnast2g@51.la', 'regular', 61622, 60725, 'Michigan', 'Singgit', 113954, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mflanagan2h', '5VZC6UcPAYiz', 'Mozes', 'Flanagan', '5546755061', 'mflanagan2h@nature.com', 'regular', 36375, 24773, 'Weeping Birch', 'Chedao', 769217, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('swhaites2i', 'jeGufdxfJ', 'Stavro', 'Whaites', '2963896825', 'swhaites2i@technorati.com', 'regular', 12413, 79296, 'Kipling', 'Lionel Town', 699902, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('abenallack2j', 'mXh2TfO', 'Alan', 'Benallack', '7342403227', 'abenallack2j@flavors.me', 'regular', 97888, 66011, 'Basil', 'Drammen', 749839, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('acheetham2k', '8xkYu4Jfx6', 'Ansley', 'Cheetham', '5223005664', 'acheetham2k@uol.com.br', 'regular', 83514, 6955, 'Ryan', 'Pak Chong', 947096, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mkimbling2l', 'I03JSvHivBk', 'Maia', 'Kimbling', '1251620035', 'mkimbling2l@berkeley.edu', 'regular', 31472, 91542, '8th', 'Guodu', 746864, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('wloch2m', 'MW0dp4', 'Wini', 'Loch', '1522352861', 'wloch2m@multiply.com', 'regular', 27702, 5424, 'Westerfield', 'Włoszczowa', 596012, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('nantoni2n', 'LB7iF64cUiRB', 'Nadya', 'Antoni', '4956837877', 'nantoni2n@utexas.edu', 'regular', 35053, 11035, 'Lakewood Gardens', 'Shuangxi', 958985, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('hhearnden2o', 'MT0liBcc3p', 'Hetty', 'Hearnden', '5965506342', 'hhearnden2o@spotify.com', 'regular', 73030, 34850, 'Gateway', 'Sonzacate', 793270, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('kskerm2p', '2Bsd8tk', 'Kearney', 'Skerm', '3873192650', 'kskerm2p@istockphoto.com', 'regular', 73103, 51555, 'Transport', 'Dubá', 244955, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('jklimshuk2q', 'gzATqYe5ZYFR', 'Jacinta', 'Klimshuk', '1558983874', 'jklimshuk2q@altervista.org', 'regular', 33849, 8556, 'Rowland', 'Kharabali', 373633, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('gfurphy2r', 'ZTxXWGWJ', 'Garv', 'Furphy', '7012557748', 'gfurphy2r@nasa.gov', 'regular', 16084, 23991, 'Hooker', 'Grand Forks', 233041, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('sferrar2s', 'ZSDr0KsKbIyt', 'Shem', 'Ferrar', '9142760240', 'sferrar2s@51.la', 'regular', 31504, 16783, 'Mendota', 'Xindian', 684542, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('lmcgerraghty2t', 'ijG0kR4', 'Lucila', 'McGerraghty', '2318779980', 'lmcgerraghty2t@nyu.edu', 'regular', 85390, 96052, 'Bunker Hill', 'Agogo', 142190, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('tyakovl2u', 'ajlcfw9Xt', 'Toby', 'Yakovl', '4251776783', 'tyakovl2u@youku.com', 'regular', 70180, 38207, 'Anniversary', 'Morfovoúni', 833326, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('oabelevitz2v', '6ncdeJf', 'Oona', 'Abelevitz', '3806265556', 'oabelevitz2v@artisteer.com', 'regular', 50063, 29838, 'Namekagon', 'Gradizhsk', 918298, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('tsandeson2w', 'BEUu8Bni035', 'Tom', 'Sandeson', '8184478300', 'tsandeson2w@flavors.me', 'regular', 59671, 72298, 'Anhalt', 'Yuezhao', 340902, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('npapierz2x', '9oHwKL0t', 'Nelie', 'Papierz', '8703092662', 'npapierz2x@hp.com', 'regular', 63559, 86638, 'Golf', 'Hudlice', 825854, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('lbiscomb2y', 'knWIgISWWk7', 'Latrina', 'Biscomb', '4027097234', 'lbiscomb2y@unc.edu', 'regular', 71426, 90056, 'Michigan', 'Omaha', 258051, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('sgregoletti2z', 'qIam1cr8', 'Sonny', 'Gregoletti', '2034378448', 'sgregoletti2z@paypal.com', 'regular', 44114, 34510, 'Shopko', 'Wulan', 554268, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('qwrittle30', 'D6WXQ3mMl', 'Querida', 'Writtle', '4655655144', 'qwrittle30@163.com', 'regular', 80145, 95657, 'Crowley', 'Tuanjie', 263012, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('zmcdermid31', 'sQl3cYYUY', 'Zackariah', 'Mc Dermid', '2049297120', 'zmcdermid31@gravatar.com', 'regular', 79321, 79638, 'Waywood', 'Longuita', 832526, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('ewayman32', 'ZpN88v3', 'Erhart', 'Wayman', '5373871044', 'ewayman32@microsoft.com', 'regular', 99538, 85338, 'Maryland', 'Kasugai', 714930, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('dpapierz33', 'Locs7zJN4q', 'Davy', 'Papierz', '8218901043', 'dpapierz33@guardian.co.uk', 'regular', 94995, 98381, '8th', 'Shenwan', 418177, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('mgonet34', 'eJAwPOSt', 'Merlina', 'Gonet', '3586083370', 'mgonet34@scribd.com', 'regular', 33573, 35663, 'Stone Corner', 'Sumurber', 944222, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('htideswell35', 'iyTmhQiM', 'Harman', 'Tideswell', '8956735349', 'htideswell35@nymag.com', 'regular', 90047, 4484, 'Erie', 'Jejkowice', 779805, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('dborley36', 'TesODp', 'Domenico', 'Borley', '6208267428', 'dborley36@paginegialle.it', 'regular', 29556, 53284, 'Northland', 'Huangzhu', 348768, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('gredfield37', 'R1k5qNGyUn2', 'Gussi', 'Redfield', '4751025737', 'gredfield37@berkeley.edu', 'regular', 89714, 45506, 'Waxwing', 'Lahad Datu', 155107, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('sbryde38', 'ky34Z3N0zG1x', 'Sheffield', 'Bryde', '2387732324', 'sbryde38@instagram.com', 'regular', 61644, 41357, 'Chive', 'Jiangtou', 132845, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('aaloshkin39', '5wrNcyFQa', 'Alvan', 'Aloshkin', '3136504081', 'aaloshkin39@smh.com.au', 'regular', 25812, 96679, 'Quincy', 'Charras', 891499, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('bavard3a', 'g3nT3NFp', 'Bonny', 'Avard', '9679767865', 'bavard3a@admin.ch', 'regular', 75680, 92977, 'Old Shore', 'Rancaseneng', 911020, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('ebraime3b', 'lJLBcMLVt', 'Edmon', 'Braime', '4306206604', 'ebraime3b@eepurl.com', 'regular', 55147, 38595, '2nd', 'Wysokie Mazowieckie', 263178, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('jmccauley3c', '1GkD1Ly', 'Johann', 'McCauley', '6358298209', 'jmccauley3c@businessweek.com', 'regular', 25818, 39881, 'Farragut', 'Damanhūr', 966360, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('jwinson3d', 'jucaslXAQtEw', 'Jeffry', 'Winson', '1653100315', 'jwinson3d@hud.gov', 'regular', 13447, 71371, 'Morrow', 'Rongxiang', 508625, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('lboucher3e', 'Qta0Bh4h', 'Lorelle', 'Boucher', '1272270415', 'lboucher3e@samsung.com', 'regular', 12973, 27548, 'Jenifer', 'Jiangxigou', 146958, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('sspeake3f', 'IiLxzJGcz', 'Susannah', 'Speake', '4138339919', 'sspeake3f@4shared.com', 'regular', 89871, 30982, 'Graedel', 'Tišina', 145954, 5000);
insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode,balance) values ('painsby3g', 'mdiFBEvz', 'Pearline', 'Ainsby', '8566827612', 'painsby3g@upenn.edu', 'regular', 98387, 11157, 'Blackbird', 'Puchong', 942735, 5000);


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
  `price` DOUBLE DEFAULT 0,
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

insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (1, 1, 'Apple', 61, 23, 16.19, 'in freezer', 4, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (2, 1, 'Orange', 16, 20, 16.84, 'in freezer', 2, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (3, 1, 'Mango', 81, 50, 2.84, 'away from sun', 4, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (4, 1, 'Banana', 63, 12, 13.96, 'away from sun', 2, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (5, 1, 'Guava', 92, 40, 0.45, 'away from sun', 5, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (6, 1, 'Apricots', 23, 73, 11.97, 'in freezer', 3, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (7, 1, 'Broccoli', 77, 12, 18.12, 'in freezer', 2, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (8, 1, 'Cabbage', 95, 14, 1.76, 'away from sun', 4, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (9, 1, 'Carrots', 96, 34, 7.99, 'in refrigirator', 2, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (10, 1, 'Collards', 54, 34, 13.97, 'away from sun', 4, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (11, 1, 'Corn', 76, 36, 2.07, 'in refrigirator', 1, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (12, 1, 'Cucumber', 43, 73, 10.0, 'in refrigirator', 5, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (13, 1, 'Lemons', 25, 43, 11.77, 'away from sun', 2, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (14, 1, 'Lettuce', 99, 342, 17.65, 'in refrigirator', 5, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (15, 1, 'Melons', 4, 443, 12.68, 'away from sun', 1, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (16, 1, 'Mushrooms', 73, 43, 2.35, 'in refrigirator', 2, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (17, 1, 'Mustard', 92, 64, 9.65, 'in refrigirator', 5, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (18, 1, 'Peppers', 91, 56, 6.6, 'away from sun', 5, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (19, 1, 'Persimmons', 93, 44, 2.97, 'in refrigirator', 1, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (20, 1, 'Plums', 47, 45, 11.67, 'in freezer', 5, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (21, 1, 'Potatoes', 45, 34, 10.45, 'in refrigirator', 3, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (22, 1, 'Raspberries', 81, 53, 15.15, 'in freezer', 2, 'juicy');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (23, 1, 'Sapote', 87, 56, 7.69, 'in refrigirator', 5, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (24, 1, 'Spinach', 59, 54, 1.29, 'in freezer', 1, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (25, 1, 'Strawberries', 20, 53, 6.08, 'in freezer', 4, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (26, 1, 'Summer Squash', 34, 35, 0.49, 'away from sun', 4, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (27, 1, 'Tomatillos', 71, 25, 10.42, 'in freezer', 1, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (28, 1, 'Tomatoes', 54, 453, 12.09, 'in freezer', 1, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (29, 1, 'Turnips', 19, 35, 10.29, 'in freezer', 3, 'tasty to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (30, 1, 'Green Apple', 22, 67, 19.43, 'in freezer', 1, 'peel to eat');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (31, 2, 'Green Tea', 61, 35, 2.15, 'away from sun', 4, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (32, 2, 'Black Tea', 19, 34, 2.5, 'in freezer', 4, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (33, 2, 'Apple Juice', 28, 56, 8.85, 'in freezer', 2, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (34, 2, 'Orange Juice', 14, 86, 8.39, 'away from sun', 1, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (35, 2, 'Mango Shake', 53, 35, 17.77, 'in freezer', 5, 'liked from generations');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (36, 2, 'Banana Shake', 98, 36, 7.08, 'in refrigirator', 2, 'fruity flavor');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (37, 2, 'Coka cola', 84, 34, 13.54, 'away from sun', 4, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (38, 2, 'Fanta', 62, 35, 17.75, 'in freezer', 5, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (39, 2, 'Limca', 94, 45, 19.78, 'in freezer', 2, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (40, 2, 'Mountain Dew', 87, 34, 4.94, 'in freezer', 4, 'liked from generations');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (41, 2, 'Mazza', 83, 43, 13.3, 'in freezer', 1, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (42, 2, 'Fruity', 73, 43, 4.87, 'in refrigirator', 3, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (43, 2, 'Pepsi', 39, 32, 1.26, 'away from sun', 5, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (44, 2, 'Pomegranate juice', 26, 43, 7.34, 'in freezer', 5, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (45, 2, 'Mixed-fruit Juice', 79, 54, 4.68, 'in refrigirator', 3, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (46, 2, 'Mango Shake', 83, 52, 0.52, 'in refrigirator', 4, 'liked from generations');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (47, 2, 'Chocolate Milk', 33, 34, 6.87, 'in freezer', 3, 'authentic taste');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (48, 2, 'Jaljeera', 38, 56, 4.56, 'in freezer', 1, 'fruity flavor');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (49, 2, 'Masala Soda', 15, 65, 7.55, 'in freezer', 4, 'no alcohol');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (50, 2, 'Nimbuz', 33, 36, 10.93, 'away from sun', 5, 'fruity flavor');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (51, 3, 'Black T-shirt', 46, 326, 17.99, 'on racks', 3, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (52, 3, 'Blue T-shirt', 48, 236, 12.99, 'on racks', 1, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (53, 3, 'Green T-shirt', 80, 345, 14.2, 'away from sun', 3, 'easy wash');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (54, 3, 'Pink T-shirt', 34, 325, 0.26, 'away from sun', 2, 'elastic');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (55, 3, 'Grey T-shirt', 27, 525, 0.82, 'away from sun', 1, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (56, 3, 'Red T-shirt', 34, 366, 10.9, 'away from sun', 5, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (57, 3, 'Black sweater', 34, 236, 19.21, 'away from sun', 1, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (58, 3, 'Blue sweater', 2, 536, 17.87, 'on racks', 5, 'can be washed in washing machine');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (59, 3, 'Grey sweater', 61, 236, 6.2, 'away from sun', 2, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (60, 3, 'White sweater', 8, 236, 2.67, 'on racks', 1, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (61, 3, 'Mustard cardigan', 236, 15, 9.88, 'away from sun', 3, 'elastic');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (62, 3, 'Black jacket', 28, 236, 8.41, 'away from sun', 3, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (63, 3, 'Red jacket', 23, 236, 15.76, 'away from sun', 1, 'can be washed in washing machine');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (64, 3, 'Blue jacket', 77, 236, 8.03, 'on racks', 1, 'elastic');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (65, 3, 'Black biker jacket', 54, 236, 6.01, 'away from sun', 3, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (66, 3, 'Black coat', 43, 236, 6.34, 'in shelves', 1, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (67, 3, 'Brown coat', 85, 236, 5.82, 'in shelves', 5, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (68, 3, 'White coat', 12, 236, 19.68, 'in shelves', 2, 'easy wash');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (69, 3, 'Black jeans', 44, 236, 6.05, 'on racks', 5, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (70, 3, 'Blue jeans', 25, 236, 15.81, 'on racks', 2, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (71, 3, 'Grey jeans', 86, 236, 4.73, 'in shelves', 2, 'elastic');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (72, 3, 'White jeans', 98, 236, 14.15, 'in shelves', 2, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (73, 3, 'black socks', 19, 236, 6.28, 'in shelves', 5, 'easy wash');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (74, 3, 'grey socks', 73, 236, 2.08, 'away from sun', 3, 'easy wash');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (75, 3, 'black dress', 100, 236, 12.74, 'in shelves', 1, 'easy wash');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (76, 3, 'red dress', 55, 352, 14.63, 'in shelves', 4, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (77, 3, 'blue dress', 13, 352, 5.38, 'in shelves', 1, 'can be washed in washing machine');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (78, 3, 'low-cut red top', 86, 352, 14.66, 'on racks', 5, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (79, 3, 'shorts', 77, 352, 17.6, 'in shelves', 3, 'elastic');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (80, 3, 'tracksuit', 17, 352, 10.18, 'in shelves', 4, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (81, 4, 'Black Boots', 97, 352, 6.54, 'on racks', 3, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (82, 4, 'Red Boots', 85, 352, 8.37, 'on racks', 5, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (83, 4, 'White Boots', 71, 352, 4.15, 'in boxes', 4, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (84, 4, 'Pink Boots', 49, 352, 0.35, 'on racks', 3, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (85, 4, 'Green Boots', 66, 352, 10.56, 'on racks', 2, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (86, 4, 'Blue Boots', 13, 352, 7.78, 'on shelves', 5, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (87, 4, 'Black Shoes', 41, 352, 12.2, 'in boxes', 1, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (88, 4, 'Red Shoes', 76, 352, 7.09, 'on racks', 2, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (89, 4, 'White Shoes', 6, 352, 12.23, 'on shelves', 1, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (90, 4, 'Pink Shoes', 69, 352, 1.54, 'on racks', 5, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (91, 4, 'Green Shoes', 47, 352, 11.78, 'on shelves', 4, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (92, 4, 'Blue Shoes', 1, 352, 14.2, 'on racks', 1, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (93, 4, 'Black Sandals', 40, 352, 14.81, 'in boxes', 1, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (94, 4, 'Pink Sandals', 97, 352, 10.96, 'in boxes', 1, 'comfortable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (95, 4, 'Grey Sandals', 40, 352, 7.43, 'on racks', 4, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (96, 4, 'Red Sandals', 76, 352, 9.14, 'on racks', 2, 'solid color');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (97, 4, 'Blue Slipper', 21, 352, 0.69, 'on shelves', 1, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (98, 4, 'blue beach slippers', 79, 352, 13.47, 'on racks', 1, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (99, 4, 'red beach slippers', 46, 352, 12.48, 'on shelves', 4, 'not easily fading');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (100, 4, 'pink beach slippers', 67, 352, 12.04, 'on shelves', 3, 'no easy tear');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (101, 5, 'Black Mouse', 19, 352, 4.75, 'in insulated boxes', 1, 'solid surface');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (102, 5, 'Grey Mouse', 7, 352, 0.71, 'in insulated boxes', 2, 'not easily breakable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (103, 5, 'Light Blue Mouse', 63, 352, 19.99, 'in insulated boxes', 5, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (104, 5, 'MP3 player', 51, 352, 1.54, 'in insulated boxes', 5, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (105, 5, 'Webcam', 71, 352, 19.83, 'in insulated boxes', 3, 'waterproof');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (106, 5, '16 GB Hard drive', 88, 352, 0.05, 'in insulated boxes', 2, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (107, 5, '32 GB Hard drive', 45, 352, 0.29, 'in insulated boxes', 5, 'solid surface');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (108, 5, '8 GB Pendrive', 36, 352, 10.09, 'in insulated boxes', 2, 'solid surface');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (109, 5, '16 GB Pendrive', 16, 352, 16.83, 'on shelves', 5, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (110, 5, 'Microphone', 55, 352, 4.14, 'in insulated boxes', 5, 'waterproof');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (111, 5, 'Digital camera', 31, 352, 11.75, 'in insulated boxes', 5, 'solid surface');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (112, 5, 'Headphones', 52, 352, 15.81, 'in insulated boxes', 2, 'waterproof');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (113, 5, 'Realme 4G Mobile', 9, 352, 9.34, 'in insulated boxes', 1, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (114, 5, 'Realme 5G Mobile', 31, 352, 4.32, 'on shelves', 5, 'not easily breakable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (115, 5, 'Oppo 5G Mobile', 96, 352, 10.8, 'in insulated boxes', 5, 'not easily breakable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (116, 5, 'Oppo 4G Mobile', 23, 352, 11.71, 'on shelves', 5, 'bestseller');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (117, 5, 'Type B charging cable', 40, 352, 9.7, 'in insulated boxes', 4, 'not easily breakable');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (118, 5, 'Type C charging cable', 100, 352, 12.73, 'in insulated boxes', 2, 'waterproof');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (119, 5, 'HP black Laptop', 80, 352, 12.5, 'on shelves', 2, 'solid surface');
insert into Product (productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) values (120, 5, 'Macbook Pro', 26, 352, 5.54, 'in insulated boxes', 2, 'not easily breakable');


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
  `date_order_placed` datetime DEFAULT NULL,
  PRIMARY KEY(orderID,productID),
  CONSTRAINT `Order_ibfk_1` FOREIGN KEY (`username`) REFERENCES `Customer` (`username`)  on UPDATE CASCADE,
  CONSTRAINT `Order_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`)  on UPDATE CASCADE
);
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 39351.2, 13, 90, 30.51, '2023-01-06 13:26:46');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 47586.68, 1, 95, 6.19, '2023-01-01 18:07:07');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 32490.93, 19, 83, 53.52, '2023-02-06 13:53:50');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 74534.03, 21, 54, 62.22, '2023-01-26 02:09:33');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 1311.04, 10, 73, 57.96, '2023-01-23 11:15:55');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 22940.95, 23, 28, 40.23, '2023-02-01 02:00:13');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 89331.14, 18, 26, 10.74, '2023-01-12 02:39:20');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 47756.17, 4, 52, 60.84, '2023-02-07 02:34:22');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 20657.33, 51, 16, 37.74, '2023-02-08 06:10:28');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (1, 'eagus4', 'out_for_delivery', 27189.68, 62, 36, 40.88, '2023-01-13 16:07:11');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (2, 'kdowall3', 'delivered', 90095.35, 1, 80, 30.19, '2023-02-03 13:50:07');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (2, 'kdowall3', 'delivered', 65098.37, 2, 34, 51.77, '2023-01-14 05:57:05');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (2, 'kdowall3', 'delivered', 30832.42, 3, 79, 70.12, '2023-01-19 01:09:13');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (2, 'kdowall3', 'delivered', 84095.81, 4, 7, 11.43, '2023-01-07 04:49:43');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (2, 'kdowall3', 'delivered', 98362.7, 5, 98, 32.49, '2023-02-03 04:58:48');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (2, 'kdowall3', 'delivered', 55064.33, 6, 35, 79.3, '2023-01-16 17:32:57');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (2, 'kdowall3', 'delivered', 55133.27, 8, 84, 45.69, '2023-02-08 15:30:47');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (2, 'kdowall3', 'delivered', 73499.75, 7, 14, 1.96, '2023-02-07 07:39:31');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (2, 'kdowall3', 'delivered', 36729.82, 9, 55, 78.59, '2023-01-11 14:20:01');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (2, 'kdowall3', 'delivered', 68152.93, 18, 71, 54.29, '2023-01-16 00:17:17');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (3, 'abonson5', 'delivered', 98629.59, 11, 89, 4.3, '2023-01-26 14:03:12');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (3, 'abonson5', 'delivered', 45849.84, 2, 9, 69.88, '2023-01-09 15:10:17');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (3, 'abonson5', 'delivered', 14827.47, 31, 34, 10.56, '2023-02-04 23:43:32');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (3, 'abonson5', 'delivered', 84397.17, 14, 40, 19.29, '2023-01-23 20:35:00');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (3, 'abonson5', 'delivered', 28465.83, 15, 80, 13.27, '2023-01-17 21:13:04');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (3, 'abonson5', 'delivered', 58859.9, 16, 40, 35.96, '2023-01-11 00:39:43');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (3, 'abonson5', 'delivered', 32798.74, 17, 12, 4.64, '2023-02-02 18:51:01');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (3, 'abonson5', 'delivered', 74790.53, 18, 39, 64.96, '2023-01-06 04:13:34');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (3, 'abonson5', 'delivered', 50820.99, 20, 21, 6.04, '2023-02-09 16:41:48');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (3, 'abonson5', 'delivered', 94389.24, 23, 100, 47.81, '2023-01-09 11:42:43');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (4, 'fmilne2', 'order_placed', 32256.4, 11, 35, 53.06, '2023-01-20 02:43:09');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (4, 'fmilne2', 'order_placed', 28567.41, 2, 39, 79.04, '2023-01-25 11:30:54');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (4, 'fmilne2', 'order_placed', 93422.74, 31, 3, 7.97, '2023-02-03 21:26:11');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (4, 'fmilne2', 'order_placed', 22485.64, 14, 8, 9.68, '2023-02-01 15:04:49');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (4, 'fmilne2', 'order_placed', 28498.62, 15, 91, 41.87, '2023-01-08 13:15:35');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (4, 'fmilne2', 'order_placed', 68397.06, 16, 100, 77.6, '2023-01-03 13:59:46');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (4, 'fmilne2', 'order_placed', 48022.7, 17, 48, 44.67, '2023-01-02 18:39:11');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (4, 'fmilne2', 'order_placed', 69678.02, 1, 99, 16.42, '2023-01-23 23:57:58');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (4, 'fmilne2', 'order_placed', 10270.24, 20, 61, 61.2, '2023-01-02 02:18:57');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (4, 'fmilne2', 'order_placed', 94629.65, 12, 59, 25.62, '2023-01-16 21:26:54');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (5, 'rbrownlie8', 'delivered', 6102.22, 11, 76, 47.21, '2023-01-12 15:29:49');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (5, 'rbrownlie8', 'delivered', 8156.22, 21, 56, 38.42, '2023-01-31 03:05:12');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (5, 'rbrownlie8', 'delivered', 6457.54, 31, 21, 51.38, '2023-01-12 06:33:08');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (5, 'rbrownlie8', 'delivered', 96669.82, 14, 26, 22.61, '2023-01-05 00:44:08');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (5, 'rbrownlie8', 'delivered', 11349.82, 15, 24, 68.09, '2023-02-05 10:30:33');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (5, 'rbrownlie8', 'delivered', 85018.38, 16, 16, 61.09, '2023-02-10 22:12:44');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (5, 'rbrownlie8', 'delivered', 62307.97, 17, 16, 54.08, '2023-01-12 06:20:20');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (5, 'rbrownlie8', 'delivered', 41663.03, 1, 1, 45.34, '2023-01-27 21:15:26');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (5, 'rbrownlie8', 'delivered', 67101.24, 20, 30, 40.13, '2023-01-06 15:30:58');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (5, 'rbrownlie8', 'delivered', 44118.87, 22, 48, 71.87, '2023-01-11 14:21:36');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (6, 'abonson5', 'delivered', 83436.11, 11, 24, 69.94, '2023-01-02 14:01:32');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (6, 'abonson5', 'delivered', 65189.02, 12, 69, 4.76, '2023-01-18 10:05:24');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (6, 'abonson5', 'delivered', 33636.89, 31, 2, 30.27, '2023-01-06 07:36:59');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (6, 'abonson5', 'delivered', 48715.89, 14, 21, 20.11, '2023-01-19 00:49:09');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (6, 'abonson5', 'delivered', 57746.85, 15, 29, 64.62, '2023-02-01 14:28:02');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (6, 'abonson5', 'delivered', 98596.89, 16, 10, 25.8, '2023-02-08 22:45:27');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (6, 'abonson5', 'delivered', 43969.71, 17, 28, 24.31, '2023-01-13 04:12:25');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (6, 'abonson5', 'delivered', 89532.1, 1, 99, 7.9, '2023-01-04 02:15:52');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (6, 'abonson5', 'delivered', 18805.9, 20, 84, 8.31, '2023-01-25 02:54:51');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (6, 'abonson5', 'delivered', 43708.08, 2, 44, 71.05, '2023-01-01 10:57:16');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 28637.66, 11, 97, 63.75, '2023-01-07 13:26:56');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 64958.12, 21, 22, 62.77, '2023-01-25 15:08:47');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 35473.75, 31, 4, 6.98, '2023-01-02 23:26:18');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 50017.18, 14, 9, 9.4, '2023-01-16 05:38:21');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 60541.46, 15, 88, 53.91, '2023-02-07 01:27:41');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 91369.2, 16, 97, 74.07, '2023-02-02 11:54:46');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 39942.6, 17, 80, 61.12, '2023-01-15 08:49:50');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 7103.68, 1, 76, 11.78, '2023-01-08 12:26:42');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 94030.68, 20, 29, 30.71, '2023-01-20 08:52:13');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (7, 'tbinch6', 'out_for_delivery', 1018.79, 22, 17, 2.99, '2023-01-31 05:45:37');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 52944.69, 1, 18, 61.54, '2023-01-13 22:45:22');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 59996.13, 19, 62, 20.85, '2023-02-01 16:21:13');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 64780.13, 21, 56, 12.11, '2023-01-11 08:29:16');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 50851.87, 10, 22, 45.54, '2023-01-31 08:01:42');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 46599.12, 23, 78, 59.13, '2023-02-02 18:34:06');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 32083.53, 18, 91, 73.52, '2023-01-04 14:28:08');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 44702.0, 4, 20, 58.8, '2023-02-06 08:46:42');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 85470.05, 51, 13, 14.47, '2023-01-24 04:36:06');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (8, 'asibbson1', 'out_for_delivery', 52582.63, 62, 78, 11.39, '2023-01-27 03:10:00');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (9, 'c1', 'order_placed', 4232.31, 13, 17, 35.69, '2023-01-18 22:21:21');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (9, 'c1', 'order_placed', 32937.12, 1, 55, 72.9, '2023-01-28 08:41:57');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (9, 'c1', 'order_placed', 44389.24, 19, 12, 37.17, '2023-01-27 13:48:57');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (9, 'c1', 'order_placed', 32679.05, 21, 86, 46.12, '2023-01-21 17:33:42');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (9, 'c1', 'order_placed', 66003.3, 10, 53, 53.28, '2023-01-19 17:31:34');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (9, 'c1', 'order_placed', 90318.71, 3, 90, 23.89, '2023-01-16 11:31:49');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (9, 'c1', 'order_placed', 27696.38, 8, 47, 47.68, '2023-01-22 20:44:46');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (9, 'c1', 'order_placed', 47766.01, 4, 6, 54.62, '2023-01-22 05:29:39');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (9, 'c1', 'order_placed', 34251.02, 5, 72, 48.39, '2023-01-21 13:21:25');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (9, 'c1', 'order_placed', 66899.9, 6, 59, 19.67, '2023-01-17 04:42:24');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (10, 'abonson5', 'delivered', 58015.18, 3, 17, 0.72, '2023-01-30 03:44:44');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (10, 'abonson5', 'delivered', 92567.51, 11, 79, 56.13, '2023-01-25 00:01:27');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (10, 'abonson5', 'delivered', 66744.77, 9, 14, 53.41, '2023-01-12 20:43:36');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (10, 'abonson5', 'delivered', 41058.1, 2, 28, 14.85, '2023-01-21 12:52:18');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (10, 'abonson5', 'delivered', 91034.91, 1, 44, 75.75, '2023-02-03 10:31:48');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (10, 'abonson5', 'delivered', 10116.39, 43, 71, 48.06, '2023-01-29 14:05:49');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (10, 'abonson5', 'delivered', 80355.96, 8, 40, 73.4, '2023-01-22 09:56:35');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (10, 'abonson5', 'delivered', 10893.03, 4, 95, 0.11, '2023-01-30 01:03:36');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (10, 'abonson5', 'delivered', 14102.63, 5, 46, 69.28, '2023-01-14 22:53:57');
insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (10, 'abonson5', 'delivered', 4275.87, 6, 70, 41.61, '2023-02-01 19:37:33');

CREATE TABLE `NGO` (
  `ngoID` INT NOT NULL auto_increment,
  `name` varchar(50) not null,
  `registration_number` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `funds_raised` decimal(9,2) NOT NULL,
  PRIMARY KEY(ngoID),
  CONSTRAINT `NGO_ibfk_1` FOREIGN KEY (`username`) REFERENCES `Customer` (`username`)  on UPDATE CASCADE
);

insert into NGO (ngoID, name, registration_number, username, funds_raised) values (1, 'Make a Change', '347581', 'c1', '11206.70');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (2, 'Always Helping', '347582', 'asibbson1', '11045.14');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (3, 'Paying it Back', '347583', 'fmilne2', '35143.79');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (4, 'The Giving Tree', '347584', 'kdowall3', '11286.06');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (5, 'The Right Cause', '347585', 'eagus4', '45795.19');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (6, 'Well Worthy', '347586', 'abonson5', '41925.59');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (7, 'Change Makers', '347587', 'tbinch6', '5356.37');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (8, 'The Giving Group', '347588', 'stsar7', '9598.28');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (9, 'Bet on Better', '347589', 'rbrownlie8', '19553.94');
insert into NGO (ngoID, name, registration_number, username, funds_raised) values (10, 'Poverty Stoppers', '347590', 'jliddell9', '29566.30');


CREATE TABLE `Billing` (
  `billingID` INT NOT NULL auto_increment,
  `payment_mode` VARCHAR(50) NOT NULL,
  `bill_amount` decimal(9,2) NOT NULL,
  `amount_donated` decimal(9,2) NOT NULL,
  `ngoID` INT ,
  `couponID` INT,
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
  `productID` INT NOT NULL,
  `quantity` INT NOT NULL,
  `username` varchar(30) NOT NULL,
  CONSTRAINT `Cart_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `Product` (`productID`)  on UPDATE CASCADE,
  CONSTRAINT `Cart_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`)  on UPDATE CASCADE
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
insert into Cart (billing_amount, productID, quantity, username) values (10, 1, 2, 'c1');
insert into Cart (billing_amount, productID, quantity, username) values (20, 2, 5, 'c1');
insert into Cart (billing_amount, productID, quantity, username) values (30, 3, 4, 'c1');
insert into Cart (billing_amount, productID, quantity, username) values (1.9, 4, 7, 'c1');
insert into Cart (billing_amount, productID, quantity, username) values (15.9, 5, 8, 'c1');
insert into Cart (billing_amount, productID, quantity, username) values (1.9, 6, 7, 'c1');
insert into Cart (billing_amount, productID, quantity, username) values (15, 7, 8, 'c1');
insert into Cart (billing_amount, productID, quantity, username) values (13, 18, 3, 'c1');
insert into Cart (billing_amount, productID, quantity, username) values (14, 90, 8, 'c1');
insert into Cart (billing_amount, productID, quantity, username) values (15.9, 10, 2, 'c1');
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
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 11, 10, 'stsar7');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 12, 9, 'stsar7');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 13, 9, 'stsar7');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 14, 4, 'stsar7');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 15, 2, 'stsar7');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 16, 2, 'stsar7');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 17, 3, 'stsar7');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 18, 2, 'stsar7');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 91, 9, 'stsar7');
insert into Cart (billing_amount, productID, quantity, username) values (2134.08, 20, 1, 'stsar7');
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

insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (1, 'dp1', 49, '7496233190', 'upidduck0@bigcartel.com', 7128.97, 819, 'Corben', 'Inderka', 279650);
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
  PRIMARY KEY(deliveryID),
  CONSTRAINT `Delivery_ibfk_1` FOREIGN KEY (`licence_number`) REFERENCES `Licence` (`licence_number`)  on UPDATE CASCADE,
  CONSTRAINT `Delivery_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `Order` (`orderID`)  on UPDATE CASCADE
);

insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (1, '2BYj5LB1GH', 'Jamill', 'Westman', 296089, '4432000974', '243DE32C37', 1, 1, '902', 'Schmedeman', 'Hernández', 694885, '2023-02-04 18:41:54', '7', 'Crowley', 'Talagante', 938651, 95, 2, '40079.45');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (2, 'sux5imJgEpYo', 'Adara', 'Rodden', 954697, '6856122436', '243DE32C37', 0, 2, '09227', 'Westport', 'Albacete', 330629, '2022-12-26 13:25:19', '15331', 'Northport', 'G‘azalkent', 958865, 16, 3, '189817.02');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (3, 'jXKCtq', 'Nil', 'Vaudin', 954697, '8193930522', '243DE32C37', 1, 5, '759', 'Northview', 'Sapucaia', 377288, '2022-04-10 06:46:28', '010', 'Erie', 'Richmond', 404824, 52, 3, '454139.10');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (4, 'GLGrVy', 'Gussie', 'Scuse', 544574, '3273029514', '243DE32C37', 1, 10, '0283', 'Cardinal', 'Doloon', 841741, '2022-05-18 15:23:05', '01', 'Sage', 'Progreso', 158217, 29, 5, '113873.20');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (5, 'JKetVnrJMn', 'Thadeus', 'O Mullen', 798031, '2601196491', '243DE32C37', 0, 10, '41717', 'Thompson', 'Polovinnoye', 413229, '2022-07-28 16:22:33', '2', 'Susan', 'Quwa', 547686, 17, 2, '163290.61');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (6, 'FLbNxzeksnDS', 'Chrissy', 'Klug', 954697, '9432215440', '243DE32C37', 1, 4, '8', 'Redwing', 'Farnham', 405117, '2023-02-04 16:43:36', '41312', 'Park Meadow', 'Douba', 664487, 83, 2, '411563.15');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (7, '80NmmeEx', 'Bondie', 'Parkinson', 296089, '2572873009', '243DE32C37', 1, 8, '52989', 'Armistice', 'Butha-Buthe', 852060, '2022-11-05 09:38:52', '281', 'Tennyson', 'Inuyama', 508890, 35, 1, '141885.98');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (8, 'Y3IGVfQz', 'Ealasaid', 'Andreoletti', 798031, '4856186209', '243DE32C37', 0, 8, '8722', 'Mayer', 'Águas Formosas', 527862, '2022-10-05 19:14:14', '65133', 'Mesta', 'Zaslawye', 749969, 53, 1, '78469.19');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (9, 'DmlO9zFnj', 'Shanan', 'Immer', 296089, '2985860012', '243DE32C37', 0, 4, '74172', 'Daystar', 'Caringin', 506117, '2022-08-16 10:47:32', '873', 'Milwaukee', 'Kemang', 427371, 82, 3, '451861.83');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (10, '0ATFIePaSm2c', 'Mill', 'McLeoid', 544574, '2485251293', '243DE32C37', 0, 10, '617', 'La Follette', 'Hanover', 456825, '2022-03-26 17:22:45', '7204', 'Pawling', 'Onueke', 136152, 18, 1, '468390.44');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (11, 'MSCgFRRRM', 'Drake', 'Lemin', 296089, '6093403998', '243DE32C37', 1, 6, '03', '2nd', 'Guaymango', 830795, '2022-12-27 21:11:57', '0', 'Ohio', 'Nishiwaki', 977881, 38, 3, '366159.72');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (12, '6SPu36yrahN', 'Alina', 'Barde', 649808, '1277747506', '243DE32C37', 1, 2, '22835', 'Golf View', 'Hearst', 414556, '2022-03-17 11:13:02', '0', 'Merrick', 'Belfort', 613581, 42, 2, '496817.39');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (13, 'XTPdDrou', 'Fancy', 'Manthroppe', 544574, '7971223229', '243DE32C37', 0, 2, '928', 'Almo', 'Totness', 753236, '2022-04-12 09:36:31', '37844', 'Sauthoff', 'Da Nang', 899100, 36, 3, '352076.02');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (14, 'oVzqTjtje', 'Giffie', 'Petts', 544574, '1039123601', '243DE32C37', 0, 10, '528', 'Main', 'Vilca', 251734, '2022-06-26 12:47:16', '73', 'Hanson', 'Liancheng', 544842, 69, 4, '19186.36');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (15, 'ed7ZM7T4', 'Holly', 'Habin', 798031, '2267669238', '243DE32C37', 0, 1, '4', 'Waubesa', 'Khudoyelanskoye', 739846, '2023-02-07 03:12:41', '779', 'Westridge', 'Qulaybīyah', 561965, 43, 2, '15436.16');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (16, '3EiMC8Wt6e', 'Dierdre', 'Lindenberg', 649808, '3854785241', '243DE32C37', 1, 6, '7788', 'Ruskin', 'Kangding', 141189, '2022-04-03 17:56:35', '5', 'Maple Wood', 'Phanom Sarakham', 959611, 70, 3, '16650.67');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (17, 'sQkbfsSL3HV', 'Sherry', 'Canedo', 544574, '9507913827', '243DE32C37', 1, 4, '2204', 'Linden', 'Mojoroto', 609833, '2022-10-20 22:37:38', '6', 'Schlimgen', 'Pingdingshan', 684718, 63, 4, '418158.95');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (18, 'mZSVC7ViApY', 'Elsie', 'Briscam', 296089, '3616107886', '243DE32C37', 0, 2, '741', '7th', 'Ban Bang Kadi Pathum Thani', 829644, '2022-03-07 00:01:53', '60955', 'Summit', 'Dongli', 123864, 48, 4, '365868.29');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (19, 'acgVAFMJjD', 'Carr', 'Dollard', 954697, '8024901586', '243DE32C37', 1, 7, '4', 'Ohio', 'Krajan Karangsari', 857307, '2022-07-27 20:06:26', '043', 'Manitowish', 'Pochinki', 197643, 75, 3, '93220.46');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (20, '3HgtrQrzd', 'Darleen', 'Maile', 798031, '4447142766', '243DE32C37', 1, 1, '913', 'Cottonwood', 'Kobeřice', 770127, '2022-07-30 21:23:13', '010', 'Clyde Gallagher', 'Gaphatshwe', 620455, 77, 1, '71158.12');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (21, 'JU5kOpQ', 'Stacey', 'Floris', 798031, '2334750812', '243DE32C37', 1, 9, '4033', 'Garrison', 'Ambo Village', 242648, '2022-04-04 05:46:31', '95', 'Armistice', 'Xindai', 284314, 15, 5, '441649.89');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (22, 'lO7bZhMHtG8n', 'Gavan', 'Hendrickx', 544574, '7741476361', '243DE32C37', 1, 2, '4684', 'Eliot', 'Primorka', 501807, '2022-10-08 06:21:51', '0986', 'Ruskin', 'Berlin', 634843, 79, 1, '376561.04');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (23, 'itehB9KUUI', 'Chanda', 'Wigzell', 544574, '7021158429', '243DE32C37', 1, 7, '5593', 'Macpherson', 'Peraía', 562263, '2022-12-11 18:39:11', '4', 'Dayton', 'Benavila', 821662, 56, 5, '128349.00');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (24, 'UfUA19fH', 'Bee', 'Dymidowski', 544574, '8138374030', '243DE32C37', 0, 8, '708', 'Anderson', 'Zephyrhills', 556987, '2022-10-06 22:00:56', '472', 'Hansons', 'Shayu', 649911, 28, 1, '485309.77');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (25, 'Ov4j29zK', 'Melissa', 'Benedikt', 296089, '4137283902', '243DE32C37', 0, 3, '90529', 'Kings', 'Kauswagan', 482556, '2022-06-22 02:54:39', '6', 'Knutson', 'Pinheiro', 356498, 28, 5, '453789.11');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (26, '51PEc4c3bW', 'Northrop', 'Southall', 954697, '6553727842', '243DE32C37', 1, 6, '6548', 'Eggendart', 'Radostowice', 811325, '2022-05-03 09:47:06', '08268', 'Steensland', 'München', 751804, 76, 4, '166032.40');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (27, 'KPT1zrGSefM3', 'Gaven', 'Aicheson', 798031, '1578092302', '243DE32C37', 1, 6, '04', 'Northwestern', 'Messina', 188608, '2022-10-24 22:40:52', '345', 'Mallard', 'Brezovica', 755540, 50, 4, '82378.68');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (28, '2MIkwPaQYk', 'Pat', 'Poluzzi', 798031, '9325752285', '243DE32C37', 0, 5, '57', 'Dorton', 'Freixo de Numão', 543263, '2022-08-10 21:47:43', '2', 'Redwing', 'Pavlovskaya', 846988, 31, 4, '43787.51');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (29, 'J89uvIsfXj8', 'Marne', 'Greatbanks', 649808, '3493111708', '243DE32C37', 0, 9, '25008', 'Vernon', 'Kālīganj', 592588, '2022-04-25 01:25:32', '84', 'Valley Edge', 'Nueve de Julio', 831409, 20, 5, '257658.26');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (30, '05NaYtiUv5', 'Neille', 'Urling', 296089, '8484978605', '243DE32C37', 0, 10, '03', 'Moland', 'Shanxi', 774461, '2022-06-19 12:07:38', '0966', 'Moose', 'Bearna', 404138, 22, 3, '463021.83');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (31, '2CnEWLE', 'Meredithe', 'Pull', 649808, '2965541572', '243DE32C37', 0, 6, '8', 'Drewry', 'Alofi', 110097, '2022-12-12 02:26:12', '3', 'Hoard', 'Gaofeng', 905857, 54, 4, '484036.48');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (32, 'suxAXy', 'Selig', 'Iacovuzzi', 954697, '2427621917', '243DE32C37', 1, 1, '749', 'Londonderry', 'Misau', 864861, '2022-04-21 03:02:54', '6', 'Randy', 'Nikol’sk', 858103, 12, 2, '335732.18');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (33, 'RGcgJd9XAe', 'Naoma', 'Grose', 798031, '5955642304', '243DE32C37', 0, 3, '4', 'Ohio', 'Ngulangan', 770757, '2022-08-14 01:59:12', '9', 'Montana', 'Emalgolin Mongolzuxiang', 195623, 33, 3, '322113.98');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (34, 'gXqGlc', 'Derick', 'Bragg', 954697, '5255936964', '243DE32C37', 0, 7, '11714', 'Nevada', 'Qiaotou', 879046, '2022-11-10 17:31:18', '81', 'Kedzie', 'Dongping', 515131, 69, 3, '346286.55');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (35, 'jfwXAHf', 'Budd', 'Lohde', 296089, '1086932650', '243DE32C37', 1, 7, '1', 'Kensington', 'San Antonio', 240076, '2022-08-27 07:24:25', '49241', 'Vernon', 'Budapest', 375121, 99, 3, '449006.74');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (36, 'Eko6kGx8', 'Danyette', 'Hanniger', 798031, '4646823225', '243DE32C37', 0, 4, '8344', 'Blue Bill Park', 'Youxi Chengguanzhen', 876400, '2023-01-16 08:51:10', '20', 'Springview', 'Ape', 870863, 73, 4, '306252.95');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (37, 'IbamwkUl', 'Eleanor', 'Kirlin', 649808, '3293924228', '243DE32C37', 0, 8, '78', 'Hoard', 'Cruzeiro', 118240, '2022-07-27 09:20:34', '079', 'Loomis', 'Skövde', 835411, 89, 3, '72130.37');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (38, 'POOkM4asi8n', 'Jules', 'Griffe', 649808, '9805909730', '243DE32C37', 1, 9, '0157', 'Autumn Leaf', 'Malanów', 655303, '2022-07-19 08:33:55', '728', 'Autumn Leaf', 'Kpalimé', 502515, 95, 3, '185906.68');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (39, 'EIG5yKoojYrg', 'Zebulon', 'Sperling', 296089, '3236118749', '243DE32C37', 0, 8, '944', 'Mcguire', 'Châteauroux', 837901, '2022-10-06 16:18:51', '538', 'Hansons', 'Calvaria de Baixo', 350254, 80, 2, '436677.11');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (40, 'Ir4wqgYgl2lo', 'Quint', 'Mauser', 798031, '1698123829', '243DE32C37', 0, 1, '7', 'Thompson', 'Ampera', 125846, '2022-06-16 23:02:59', '148', 'Sheridan', 'Springfield', 294057, 61, 3, '357820.39');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (41, 'Sc7NTU', 'Cathyleen', 'Walentynowicz', 544574, '9947137449', '243DE32C37', 1, 1, '959', 'Mcbride', 'Singaparna', 649956, '2022-08-28 01:46:22', '00553', 'Paget', 'Dembéni', 779693, 83, 4, '231895.63');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (42, 'kc18uj9T44', 'Hillie', 'Ridsdole', 954697, '9726885365', '243DE32C37', 0, 9, '7300', 'Buhler', 'Amangarh', 205865, '2023-02-10 17:17:22', '18635', 'Bultman', 'Thepharak', 632572, 25, 2, '42136.73');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (43, 'aSNPape0Ss', 'Sigismondo', 'Folini', 649808, '4566869645', '243DE32C37', 1, 6, '66', 'Roxbury', 'Prínos', 614776, '2022-10-29 05:40:34', '294', 'Stone Corner', 'Xam Nua', 788709, 61, 4, '326018.61');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (44, 'pdtyZg945Zh8', 'Ronda', 'Burney', 798031, '3653502261', '243DE32C37', 0, 10, '54203', 'Browning', 'Desnogorsk', 715273, '2022-10-19 06:34:59', '7962', 'Dwight', 'Mulyo', 935051, 48, 2, '359250.65');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (45, 'yCUcc454WhZ', 'Luigi', 'Bridger', 798031, '8851968126', '243DE32C37', 0, 8, '864', 'Sheridan', 'Caimitillo', 806486, '2022-08-22 20:33:22', '4', 'Twin Pines', 'A’ershan', 222106, 50, 2, '215862.58');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (46, 'GeWJtpP', 'Papagena', 'Jersch', 954697, '1014299130', '243DE32C37', 0, 10, '0148', 'Columbus', 'Kuniran', 755101, '2022-11-27 07:58:01', '8', 'Dennis', 'Simimbaan', 404938, 22, 5, '147433.79');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (47, 'J4pvUUlV21g', 'Carie', 'Ramberg', 798031, '8465964621', '243DE32C37', 1, 5, '16952', 'Pleasure', 'Medina Estates', 767199, '2022-10-07 03:32:28', '17853', 'Columbus', 'Fengxizhai', 315302, 8, 2, '282975.09');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (48, 'LbIYoNnW', 'Ilyse', 'Pearch', 954697, '6974645047', '243DE32C37', 0, 3, '004', 'Katie', 'Limushan', 562638, '2022-05-16 01:37:22', '4411', 'Meadow Valley', 'Niedercorn', 432289, 12, 3, '125835.72');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (49, 'OMccBD5', 'Bord', 'Soldi', 649808, '6108955191', '243DE32C37', 0, 6, '4', 'Glacier Hill', 'Sembon', 145966, '2022-09-20 02:50:40', '2', 'Armistice', 'Praia das Maçãs', 293683, 47, 1, '49179.35');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (50, 'Xbj1ALNAVKb0', 'Pansie', 'Dielhenn', 544574, '9901294768', '243DE32C37', 1, 6, '2', 'Blaine', 'Grojec', 300028, '2022-06-05 15:25:01', '1748', 'Oneill', 'Narong', 502775, 42, 2, '482824.14');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (51, 'qv4YmCk', 'Adey', 'Prendeguest', 798031, '2415126595', '243DE32C37', 1, 7, '988', 'Brentwood', 'Nyazura', 813477, '2022-07-29 16:14:59', '45109', 'Bunting', 'Dujuuma', 622430, 26, 4, '54627.89');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (52, 'MtVlNSJlhz', 'Constance', 'Nutkins', 954697, '5705652971', '243DE32C37', 1, 1, '8228', 'Division', 'Mentaras', 491030, '2022-11-17 08:28:00', '04684', 'Luster', 'Vitry-sur-Seine', 651662, 90, 2, '238762.22');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (53, '5D9W2dy93VB', 'Sari', 'Mc Ilory', 296089, '2888618905', '243DE32C37', 0, 2, '09339', 'Mallard', 'Catbalogan', 584429, '2022-06-25 01:03:28', '2375', 'Village', 'Benisheikh', 879990, 63, 4, '273881.40');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (54, 'W8UFyqos', 'Nat', 'Emmens', 544574, '5139072640', '243DE32C37', 1, 8, '761', 'Elmside', 'Cincinnati', 649522, '2022-11-08 17:43:33', '95', 'Saint Paul', 'Białołeka', 224423, 59, 5, '482614.29');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (55, 'pBn656ANo8CE', 'Karisa', 'Steward', 649808, '3505559569', '243DE32C37', 1, 4, '8883', 'Starling', 'Gangkou', 400678, '2022-07-25 00:08:35', '2', 'Dayton', 'Nagrak', 356006, 78, 3, '57180.66');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (56, 'HgM0Kvq3z', 'Hube', 'Shout', 649808, '7241340025', '243DE32C37', 1, 4, '56295', 'Kim', 'Daliciasao', 841377, '2022-08-10 13:04:02', '9', 'Hayes', 'Hamburg Winterhude', 953437, 92, 3, '422338.85');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (57, 'jxt94vYQ0', 'Tadd', 'Leyborne', 544574, '1756141012', '243DE32C37', 0, 6, '45', 'Northview', 'Martinlongo', 722531, '2022-11-06 03:39:40', '04360', 'Westend', 'Ágios Vasíleios', 428184, 61, 1, '181775.44');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (58, 'jzlTqSpM', 'Herta', 'Fordyce', 544574, '8147815907', '243DE32C37', 1, 10, '36902', 'Anderson', 'Juazeiro do Norte', 862752, '2022-11-03 17:22:54', '85', 'Bowman', 'Khoyniki', 820053, 84, 3, '481762.43');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (59, 'hy2a4ymRg', 'Ferrel', 'Acton', 798031, '2927685503', '243DE32C37', 0, 5, '2', 'Tony', 'Matadi', 871472, '2023-01-03 22:21:20', '45718', 'Dorton', 'Pengbu', 302865, 41, 5, '307813.48');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (60, '5BcajA4efec', 'Bryon', 'Hexam', 296089, '9114691787', '243DE32C37', 0, 10, '9', 'Grayhawk', 'Gaotang', 754793, '2022-09-04 15:45:24', '39', 'Upham', 'Novohrad-Volyns’kyy', 879275, 73, 5, '123916.88');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (61, 'QHWu1z', 'Deana', 'Pond', 954697, '7422197714', '243DE32C37', 1, 4, '9936', 'Brickson Park', 'Baracatan', 780263, '2022-11-03 17:51:23', '27', 'Menomonie', 'Xiaoyangqi', 181847, 44, 4, '340661.64');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (62, 'q0OMZRHUN8Te', 'Thornie', 'Winham', 649808, '6661461972', '243DE32C37', 0, 3, '2845', 'Stuart', 'Katyr-Yurt', 384570, '2023-01-09 07:06:47', '51', 'Waubesa', 'Hats’avan', 987436, 37, 1, '477241.66');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (63, 'lQZx2BUby4', 'Harlan', 'Lethabridge', 649808, '6005824307', '243DE32C37', 0, 9, '87', 'Bartillon', 'Lojigawaran', 195197, '2023-01-31 12:35:49', '5', 'Bay', 'Qiaotou', 820898, 69, 5, '131331.95');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (64, 'N4rxYTlykjn5', 'Rollo', 'Hearne', 544574, '6923886172', '243DE32C37', 0, 3, '2', 'International', 'Zhongzi', 728724, '2022-11-26 23:51:32', '3', 'Heffernan', 'Taounza', 817257, 54, 2, '309346.41');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (65, '3YR73YXfCvOt', 'Bevvy', 'Sargant', 798031, '3893535052', '243DE32C37', 0, 6, '4073', 'Spohn', 'Khlung', 793933, '2022-05-25 17:37:55', '23796', 'Mendota', 'Wa', 439906, 19, 4, '175001.34');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (66, 'RTRdC9pyf', 'Gracia', 'Hulls', 954697, '1493628018', '243DE32C37', 0, 4, '3011', 'Sundown', 'Escola', 759943, '2022-11-18 03:52:14', '983', 'Sutherland', 'Luntai', 772559, 15, 5, '373365.86');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (67, 'gBQY0lMHfM', 'Annetta', 'Steinson', 544574, '9339179685', '243DE32C37', 0, 1, '8', 'Holy Cross', 'Taisen-ri', 867018, '2022-03-30 09:36:56', '945', 'Burrows', 'Hengqiao', 583576, 93, 1, '49298.80');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (68, '6IAqkL', 'Karolina', 'Klaiser', 954697, '6543536389', '243DE32C37', 0, 6, '3907', 'Troy', 'Borås', 405368, '2022-03-30 06:10:56', '459', 'Weeping Birch', 'Skarżysko-Kamienna', 610722, 84, 5, '198028.99');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (69, 'Ct4fDZa', 'Marys', 'Copping', 649808, '4013597323', '243DE32C37', 0, 1, '018', 'Michigan', 'Nanshi', 412704, '2022-08-22 23:03:22', '8', 'Harper', 'Musanze', 495146, 42, 2, '198967.40');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (70, '2smPf3', 'Traci', 'Daunay', 544574, '7838367625', '243DE32C37', 0, 6, '525', 'Spohn', 'Litan', 137831, '2022-11-09 23:24:52', '30', 'Summer Ridge', 'Kristiansund N', 171390, 2, 5, '383427.48');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (71, 'KYT496zFOum', 'Emmanuel', 'Naden', 296089, '2038898374', '243DE32C37', 0, 9, '7013', 'Oriole', 'Cipadung Timur', 796742, '2022-03-12 22:57:32', '96683', 'Corry', 'Domont', 626198, 19, 2, '319892.96');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (72, 'h4wXm1', 'Damiano', 'Brandenburg', 954697, '6182281341', '243DE32C37', 0, 9, '15', 'Hallows', 'Cortes', 358663, '2022-11-23 02:34:06', '516', 'Glendale', 'Lile', 699047, 47, 5, '118326.51');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (73, 'hFHEUOujs', 'Jerrome', 'Werndley', 296089, '6597926373', '243DE32C37', 0, 10, '9', 'Sutherland', 'Maslovare', 129534, '2022-03-09 23:57:03', '91', 'Knutson', 'Gualmatán', 703858, 2, 5, '338172.47');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (74, 'f9ESEEbGWf', 'Noll', 'Ashfold', 798031, '2685417850', '243DE32C37', 0, 7, '0', 'Jenifer', 'Mossel Bay', 211710, '2022-11-08 05:51:46', '05448', 'Debs', 'Lom Kao', 299091, 33, 3, '255819.20');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (75, 't9BxmcA6tIp', 'Nellie', 'Baggallay', 649808, '3392866807', '243DE32C37', 1, 9, '8', 'Oneill', 'Sohbatpur', 859934, '2023-01-01 02:27:24', '70732', 'Longview', 'Sujiatuo', 693405, 45, 1, '196554.42');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (76, '6efXIxwDuv', 'Gypsy', 'Puddicombe', 954697, '6074579293', '243DE32C37', 1, 4, '07144', 'Havey', 'Tokyo', 884451, '2022-04-28 07:22:06', '5', 'Talmadge', 'Guaitarilla', 716272, 67, 5, '465457.37');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (77, 'noyU8R', 'Nikolos', 'Treleaven', 798031, '5606222352', '243DE32C37', 1, 9, '78577', 'Bay', 'Kuanheum', 151429, '2022-05-30 07:19:11', '97', 'Stephen', 'Kafr Kannā', 963586, 5, 3, '473997.60');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (78, 'gngSarAt4K', 'Janelle', 'Dresche', 798031, '6694591789', '243DE32C37', 1, 7, '1604', '5th', 'Weizheng', 661433, '2022-03-01 16:57:06', '79202', 'Cascade', 'Bulu', 670003, 67, 5, '490696.82');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (79, 'FIQWKR6hG', 'Nicki', 'Hainey`', 798031, '2899352037', '243DE32C37', 0, 10, '07688', 'Parkside', 'Ccuntuma', 527906, '2022-08-26 22:48:50', '22164', 'Lotheville', 'Menggusi', 548742, 32, 3, '290327.41');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (80, '0isz0HyXM5J', 'Brod', 'Buy', 544574, '6462757382', '243DE32C37', 0, 8, '4', 'Bartelt', 'Namalenga', 488942, '2022-03-01 18:29:37', '1299', 'Autumn Leaf', 'Abricots', 601972, 6, 4, '358356.14');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (81, '0W2F3Lz', 'Cherlyn', 'Adolphine', 954697, '8604857179', '243DE32C37', 0, 1, '676', 'Gina', 'Huaqiao', 250792, '2022-04-13 06:28:35', '36', 'Sachs', 'Houping', 359679, 81, 1, '185508.44');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (82, 'fvGMmdUSbW', 'Korney', 'Girdwood', 296089, '3799959997', '243DE32C37', 1, 2, '51510', 'Ramsey', 'Fantino', 119068, '2022-12-28 22:24:15', '1', 'Swallow', 'Plumbangan', 602655, 51, 1, '120505.16');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (83, '9Vqq0Qb5LmDX', 'Corney', 'Hearnshaw', 954697, '4435277517', '243DE32C37', 0, 3, '553', 'Village Green', 'Örebro', 208787, '2022-03-29 13:35:00', '7', 'Jackson', 'Hushan', 817626, 60, 5, '313614.67');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (84, 'gdIQHCm', 'Kania', 'Espinha', 649808, '1544461322', '243DE32C37', 1, 4, '219', 'Golf', 'Ondangwa', 432904, '2022-10-16 09:36:32', '47', 'Troy', 'Semanding', 287851, 11, 2, '316753.92');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (85, 'p76QUSK4BHCi', 'Bertie', 'Teal', 954697, '6054996869', '243DE32C37', 0, 3, '165', 'Victoria', 'Kangdong-ŭp', 794636, '2022-02-25 06:50:01', '078', 'Shasta', 'Wojaszówka', 881134, 6, 4, '493946.27');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (86, 'ns00lCqmQjl', 'Pietro', 'Peerman', 798031, '3961209028', '243DE32C37', 1, 5, '643', 'Kennedy', 'Włoszczowa', 379636, '2022-03-07 10:15:22', '58257', 'Superior', 'Camabatela', 796415, 78, 4, '383100.60');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (87, 'aBgoKY', 'Sonni', 'Panons', 296089, '5059266196', '243DE32C37', 0, 5, '47', 'Riverside', 'Osvaldo Cruz', 188369, '2022-10-28 13:33:29', '6', 'Stephen', 'Bulgan', 802547, 47, 5, '31264.46');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (88, 'Q7Q4qjCvun8', 'Casi', 'Muselli', 649808, '4644939444', '243DE32C37', 0, 7, '46', 'Barnett', 'Igede-Ekiti', 719169, '2022-12-19 08:00:09', '6347', 'Stuart', 'Chervonohryhorivka', 168043, 15, 5, '112436.75');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (89, 'D6xsh66D4l2', 'Melisenda', 'Pollastrone', 954697, '7947661197', '243DE32C37', 0, 3, '38319', 'Dryden', 'Parbatipur', 306339, '2022-09-15 01:20:53', '45', 'Nelson', 'Lorino', 228101, 47, 1, '41138.45');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (90, 'QmGEYkXZz', 'Biddy', 'Madoc-Jones', 296089, '4917821363', '243DE32C37', 1, 9, '1', 'Dryden', 'Leksand', 137602, '2022-12-22 03:00:37', '1', 'Holmberg', 'Ilha de Moçambique', 714371, 34, 4, '180439.14');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (91, '1MTNgmyUrt', 'Rubi', 'Ferriman', 544574, '5893133904', '243DE32C37', 0, 2, '564', 'Onsgard', 'Xibali', 482197, '2022-09-16 04:17:16', '74360', 'Anzinger', 'Khisarya', 582132, 91, 4, '309329.79');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (92, 'laCKCYNM2', 'Timmie', 'Hele', 544574, '6878576046', '243DE32C37', 1, 10, '9', 'Muir', 'Mulyoagung', 398012, '2022-08-21 14:53:38', '62', 'Donald', 'Nanyang', 526383, 19, 1, '271917.73');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (93, 'pmyRrCINI', 'Kacey', 'Imlacke', 544574, '6288885353', '243DE32C37', 1, 1, '180', 'Forest', 'Luodian', 818966, '2022-03-12 09:24:00', '754', 'Dahle', 'Virginia Beach', 692338, 52, 4, '148320.17');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (94, 'EfbvDUDf2T', 'Winny', 'Maccaig', 649808, '8644987015', '243DE32C37', 1, 4, '473', 'Barnett', 'Greenville', 160459, '2022-12-17 00:22:02', '995', 'Darwin', 'Zarya', 889529, 45, 3, '456577.49');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (95, '1wzQbeKYQWYv', 'Robinet', 'Redit', 954697, '3836702821', '243DE32C37', 0, 1, '086', 'Weeping Birch', 'Cuauhtemoc', 439265, '2022-11-16 18:49:29', '18571', 'Continental', 'Xiaxindian', 897447, 87, 2, '363012.24');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (96, 'kuQwgSPBx', 'Della', 'Eastbury', 954697, '8029480316', '243DE32C37', 0, 6, '20256', 'Di Loreto', 'Lijiapu', 653563, '2022-08-14 05:16:18', '1361', 'Morningstar', 'Houzhai', 571251, 34, 5, '310799.19');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (97, 'Wr5KFPUrY', 'Walden', 'Adamson', 954697, '2379025781', '243DE32C37', 0, 4, '4', 'Park Meadow', 'Santa Cruz', 267734, '2022-09-15 14:44:16', '987', 'Knutson', 'Béziers', 369845, 61, 2, '331778.01');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (98, 'kbbwIZ', 'Carling', 'Kernaghan', 544574, '8585858575', '243DE32C37', 1, 8, '89041', 'Sloan', 'Safed', 663765, '2022-06-07 00:58:06', '11470', 'Blaine', 'Klemunan', 184678, 32, 4, '60114.10');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (99, '8HJvOiwug', 'Torey', 'Scriven', 798031, '4327190003', '243DE32C37', 1, 9, '28518', 'Lakewood Gardens', 'Novyy Starodub', 553801, '2022-07-21 20:38:05', '11190', 'Mallard', 'Jialou', 673675, 66, 5, '414607.01');
insert into DeliveryPartner (deliveryID, password, first_name, last_name, licence_number, phone_number, vehicle_number, `status (Occupied/Free)`, orderID, pickup_house_number, pickup_street_name, pickup_city, pickup_pincode, expected_arrival_time, delivery_house_number, delivery_street_name, delivery_city, delivery_pincode, deliveries_completed, rating, salary) values (100, 'LtLb9QP0', 'Celina', 'Spridgeon', 798031, '4545677698', '243DE32C37', 0, 4, '223', 'Hermina', 'Panchagarh', 133610, '2022-05-20 16:25:50', '0', 'Charing Cross', 'Polykárpi', 646360, 21, 4, '159105.80');
