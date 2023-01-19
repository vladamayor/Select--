select name, count(*) res from singergenre sg
join genre g  on  g.genre_id  = sg.genre_id
group by g.name
order by res desc;

select count(*) from album a 
join track t on a.album_id = t.album_id
where production_year between 2019 and 2020;

select a.name, avg(duration) res from album a
join track t on a.album_id = t.album_id
group by a.name
order by res desc;

select distinct s.name from singer s 
join albumsinger using(singer_id) 
join album using(album_id)
where singer_id not in (
	select singer_id from albumsinger 
	join album using(album_id) 
	where production_year in (2020));


select c.name from collection c 
join collectiontrack using(collection_id)
join track using(track_id)
join albumsinger using(album_id)
join singer s using(singer_id)
group by c.name, s.name
having s.name ilike '%qeen%';


select a.name from album a 
join albumsinger a2 using(album_id)
join singergenre s using(singer_id)
group by a.name
having count(genre_id) > 1;

select t.name from track t 
left join collectiontrack c using(track_id)
group by t.name, collection_id 
having collection_id is NULL;

select s.name from singer s 
join albumsinger using(singer_id)
join album using(album_id)
join track t using(album_id)
group by s.name, duration
having duration = (select MIN(duration) from track);

	
select a.name from album a 
join track using(album_id)
group by a.name
having count(track_id) = (
	select count(track_id) from album
	join track using(album_id)
	group by album.album_id
	order by count(track_id)
	limit 1);