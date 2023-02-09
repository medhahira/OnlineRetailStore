DROP DATABASE IF EXISTS `online retail store`;
CREATE DATABASE `online retail store`; 
USE `online retail store`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `Coupon` (
  `couponID` INT NOT NULL auto_increment,
  `amount` decimal(9,2) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `staus_of_use` INT DEFAULT 0,
  `categoryID` INT NOT NULL,
  PRIMARY KEY(couponID)
);

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
  PRIMARY KEY(distributorID)
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

CREATE TABLE `Cart` (
  `billing_amount()` decimal(9,2) NOT NULL,
  /*again have to look at this
  `{list_of_items ProductID     Quantity}` <type>,
  **
  */
  `product_id` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL
);

CREATE TABLE `Licence` (
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `licence_number` int(10) NOT NULL,
  `date_of_birth` datetime DEFAULT NULL
);

CREATE TABLE `Billing` (
  `billingID` INT NOT NULL auto_increment,
  `payment_mode` VARCHAR(50) NOT NULL,
  `bill_amount` decimal(9,2) NOT NULL,
  `amount_donated` decimal(9,2) NOT NULL,
  `ngoID` varchar(50) NOT NULL,
  `couponID` varchar(50) NOT NULL,
  `orderID` INT NOT NULL,
  PRIMARY KEY(billingID)
);

CREATE TABLE `Category` (
  `categoryID` INT NOT NULL auto_increment,
  `category_name` varchar(50) NOT NULL,
  `category_discount` DOUBLE DEFAULT 0,
  PRIMARY KEY(categoryID)
);

CREATE TABLE `NGO` (
  `ngoID` INT NOT NULL auto_increment,
  `name` varchar(50) not null,
  `registration_number` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `funds_raised` decimal(9,2) NOT NULL,
  PRIMARY KEY(ngoID)
);

CREATE TABLE `Order` (
  `orderID` INT NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `status` INT DEFAULT 0,
  /* we will probably have ints to represent diff types of status*/
  `order_amount` decimal(9,2) NOT NULL,
  /*
  **
  `{order_discription ProductID     Quantity}` <type>,
  **/
  
  `discount` DOUBLE DEFAULT 0,
  `amount_to_ngo` decimal(9,2) NOT NULL,
  `date_order_placed` datetime DEFAULT NULL,
  `date_expected_arrival` datetime DEFAULT NULL,
  PRIMARY KEY(orderID)
);

CREATE TABLE `Product` (
  `productID` INT NOT NULL auto_increment,
  `categoryID` INT NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `quantity_in_stock` INT DEFAULT 0,
  `discount` DOUBLE DEFAULT 0,
  `storage_type` varchar(50) NOT NULL,
  `rating` INT DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY(productID)
);

CREATE TABLE `Admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
);

CREATE TABLE `Inventory` (
  `productID` INT NOT NULL,
  `quantity` INT DEFAULT 0,
  `storage_type` varchar(50) NOT NULL 
);

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
  `pickup_house_number` varchar(10) NOT NULL,
  `pickup_street_name` varchar(100) DEFAULT NULL,
  `pickup_city` varchar(100) NOT NULL,
  `pickup_pincode` char(6) NOT NULL,
  `expected _arrival_time` datetime DEFAULT NULL,
  `delivery_house_number` varchar(10) NOT NULL,
  `delivery_street_name` varchar(100) DEFAULT NULL,
  `delivery_city` varchar(100) NOT NULL,
  `delivery_pincode` char(6) NOT NULL,
  `deliveries_completed` INT DEFAULT 0,
  `rating` INT DEFAULT NULL,
  `salary` decimal(9,2) NOT NULL,
  PRIMARY KEY(deliveryID)
);

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
