create table if not exists Genre (
	genre_id serial primary key,
	name varchar(60) not null unique
);

create table if not exists Singer (
	singer_id serial primary key,
	name varchar(60) not null
);

create table if not exists Album (
	album_id serial primary key,
	name varchar(60) not null,
	production_year integer not null check (production_year > 1900)
);

create table if not exists Track (
	track_id serial primary key,
	name varchar(60) not null,
	duration integer not null check ( duration > 15 and duration < 600),
	album_id integer not null references Album(album_id)
);

create table if not exists Collection (
	collection_id serial primary key,
	name varchar(60) not null,
	production_year integer not null check (production_year > 1900)
);

create table if not exists SingerGenre (
	singer_id integer not null references Singer(singer_id),
	genre_id integer not null references Genre(genre_id),
	constraint pk primary key (singer_id, genre_id) 
);

create table if not exists AlbumSinger (
	singer_id integer not null references Singer(singer_id),
	album_id integer not null references Album(album_id),
	constraint sa primary key (singer_id, album_id)
);

create table if not exists CollectionTrack (
	collection_id integer not null references Collection(collection_id),
	track_id integer not null references Track(track_id),
	constraint ct primary key (collection_id, track_id)
);