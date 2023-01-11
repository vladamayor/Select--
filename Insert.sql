insert into Genre (name)
values ('Rock'), ('Rap'), ('Pop'), ('Classical'), ('Jazz');

insert into Singer (name)
values ('Adele'), ('Apocalyptica'), ('ATL'), ('Beyonce'), ('Ed Sheeran'), ('Escala'), ('Harry Styles'),
('Our last niht'), ('PHARAOH'), ('QEEN'), ('Red'), ('Skillet'), ('Ludovico Einaudi'), ('Ray Charles'), ('Nina Simone');

insert into SingerGenre 
values (1, 3), (2, 4), (3, 2), (4, 3), (5, 3), (6, 4), (7, 3), (8, 1), (9, 2), (10, 1), (11, 1), (12, 1), (13, 4), (14, 5), (15, 5);

insert into Album (name, production_year)
values ('Friendship', 1984), ('Wild is the wild', 2013), ('30', 2021), ('Cell-0', 2020), ('Лимб', 2018), ('Радио апокалипсис', 2021),
('Lemonade', 2016), ('+', 2011), ('Quadrasonic', 2016), ('Fine line', 2019), ('Disney Goes Heavy', 2022), ('PHILARMONIA', 2022),
('Hot Space', 1982), ('End of silence', 2006), ('Awake', 2009), ('12 songs from home', 2020);

insert into AlbumSinger
values (14, 1), (15, 2), (1, 3), (2, 4), (3, 5), (3, 6), (4, 7), (5, 8), (6, 9), (7, 10), (8, 11), (9, 12), (10, 13), (11, 14), (12,15),
(13, 16);

insert into Collection (name, production_year)
values ('Greatest hits III', 1999), ('Release the Panic', 2013), ('5', 2015), ('Vital Sings', 2019), ('The platinum collection', 2000),
('X', 2014), ('Amplified', 2006), ('Brother Ray', 2018);

insert into CollectionTrack 
values (3, 2), (4, 3), (5, 4), (1, 5), (3, 6), (6, 7), (6, 8), (7, 9), (8, 10);

insert into Track (name, duration, album_id)
values ('Kiss me', 281, 8), ('Lately', 271, 8), ('Monster', 178, 15), ('Bohemian rhapsody', 356, 13), ('You do not fool me', 322, 13),
('So', 268, 8), ('Sing', 236, 8), ('Photograph', 259, 8), ('Kaamos', 284, 4), ('Rosetta', 152, 1), ('Four women', 268, 2),
('Шаман', 155, 5), ('Oh my god', 226, 3), ('Sorry', 233, 7), ('Соната ей', 136, 12), ('На щите', 207, 6), ('Louder', 201, 9), ('Golden', 210, 10),
('Let it go', 92, 11), ('Lost', 315, 14), ('Tu sei', 512, 16);