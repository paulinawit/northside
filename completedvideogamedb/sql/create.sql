CREATE TABLE `stage` (
  `id` int NOT NULL,
  `stagename` varchar(200) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `stage` (`id`, `stagename`) VALUES
(1, 'BLUE'),
(2, 'RED'),
(3, 'GREEN');


CREATE TABLE `artists` (
  `id` int NOT NULL,
  `artistname` varchar(200) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `publishers`
--

INSERT INTO `artists` (`id`, `artistname`) VALUES
(1, 'Jose Gonzales'),
(2, 'Carl Barat'),
(3, 'Earl Sweatshirt'),
(4, 'Jack Garratt'),
(5, 'Death Cab for Cutie'),
(6, 'Incubus'),
(7, 'Dizzy Miss Lizzy'),
(8, 'Little Dragon'),
(9, 'MO'),
(10, 'Alt-J'),
(11, 'FKA Twigs'),
(12, 'Wu-Tang Clan'),
(13, 'Spids Nogenhat'),
(14, 'Grace Hones'),
(15, 'Broken Twin'),
(16, 'Go Go Berlin'),
(17, 'Stvas'),
(18, 'Wolf Alice'),
(19, 'Antony and the Johnsons'),
(20, 'The Parov Stelar'),
(21, 'Tge Jesus and Mary Chain'),
(22, 'Gus Gus'),
(23, 'Placebo'),
(24, 'Underworld'),
(25, 'Emilie Nicolas'),
(26, 'St.Paul and Boken Bones'),
(27, 'Ulige Numre'),
(28, 'John Grant'),
(29, 'Matthew E. White'),
(30, 'George Ezra'),
(31, 'Seasick Steve'),
(32, 'Calexico'),
(33, 'De Eneste To'),
(34, 'Interpol'),
(35, 'Years & Years'),
(36, 'Ben Howard'),
(37, 'The Black Keys'),
(38, 'Rangleklods'),
(39, 'Coldplay'),
(40, 'Yeah Yeah Yeahs');
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tilføj AUTO_INCREMENT i tabel `videogames`
--
ALTER TABLE `stage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
  
CREATE TABLE `performance` ( 
    `id` int NOT NULL,
    `date` DATE NOT NULL,
    `time` TIME NOT NULL,
    `artistid` INT NOT NULL,
    `stageid` INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (artistid) REFERENCES artists(id),
    FOREIGN KEY (stageid) REFERENCES stage(id) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1

    INSERT INTO `performance` (`id`, `date`, `time`, `artistid`, `stageid`) 
    VALUES
    (1, '22.04.2017', '14:20', 1, 1),
    (2, '22.04.2017', '14:15', 2, 2),
    (3, '22.04.2017', '15:15', 3, 3),
    (4, '22.04.2017', '16:30', 4, 2),
    (5, '22.04.2017', '16:35', 5, 1),
    (6, '22.04.2017', '17:45', 6, 3),
    (7, '22.04.2017', '18:50', 7, 1),
    (8, '22.04.2017', '19:00', 8, 2),
    (9, '22.04.2017', '20:15', 9, 3),
    (10, '22.04.2017', '21:50', 10, 1),
    (11, '22.04.2017', '21:45', 11, 2),
    (12, '22.04.2017', '23:15', 12, 3),
    (13, '22.04.2017', '01:00', 13, 2),
    (14, '22.04.2017', '01:00', 14, 1),
    (15, '23.04.2017', '14:15', 15, 2),
    (16, '23.04.2017', '14:20', 16, 1),
    (17, '23.04.2017', '15:15', 17, 3),
    (18, '23.04.2017', '16:30', 18, 2),
    (19, '23.04.2017', '16:35', 19, 1),
    (20, '23.04.2017', '17:45', 20, 3),
    (21, '23.04.2017', '19:00', 21, 2),
    (22, '23.04.2017', '19:15', 22, 1),
    (23, '23.04.2017', '20:15', 23, 3),
    (24, '23.04.2017', '21:45', 24, 1),
    (25, '23.04.2017', '21:50', 25, 2),
    (26, '23.04.2017', '23:15', 26, 3),
    (27, '23.04.2017', '01:00', 27, 1),
    (28, '23.04.2017', '01:15', 28, 2),
    (29, '24.04.2017', '13:10', 29, 2),
    (30, '24.04.2017', '14:00', 30, 3),
    (31, '24.04.2017', '15:00', 31, 1),
    (32, '24.04.2017', '15:00', 32, 2),
    (33, '24.04.2017', '16:10', 33, 3),
    (34, '24.04.2017', '17:20', 34, 1),
    (35, '24.04.2017', '17:20', 35, 2),
    (36, '24.04.2017', '18:30', 36, 3),
    (37, '24.04.2017', '19:40', 37, 1),
    (38, '24.04.2017', '20:50', 38, 3),
    (39, '24.04.2017', '22:30', 39, 1),
    (40, '24.04.2017', '22:30', 40, 2);


    ALTER TABLE `performance`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tilføj AUTO_INCREMENT i tabel `publishers`

