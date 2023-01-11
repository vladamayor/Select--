select name, production_year from Album
where production_year = 2018;

select name, duration from Track
order by duration desc 
limit 1;

select name from Track
where duration >= 210;

select  name from Collection
where production_year between 2018 and 2020;

select name from Singer
where name not like '% %';

select name from Track 
where name like '%my%' or name like '%мой%';