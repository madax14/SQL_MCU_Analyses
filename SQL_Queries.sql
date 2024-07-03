create database Popular_Songs;
use Popular_Songs;
select * from songs;

##Checking for missisng values 
select * from songs where `key` is null;

##
select track_name, `artist(s)_name`, released_year, format(in_spotify_playlists, 0), format(streams, 0), `danceability_%` from songs 
order by streams desc;

select track_name, `artist(s)_name`, format(streams, 0), `danceability_%` from songs 
where `danceability_%` > 70
order by streams desc;

## Total number of artits
select count(distinct `artist(s)_name`) as "Total of Artists" from songs;

## Total number of songs
select count(distinct track_name) as "Total of Songs" from songs;

## 10 most Popular Songs 
select track_name, `artist(s)_name`, format(streams, 0) from songs order by streams desc limit 10;

## Top 1 Most and Less Popular song
(select track_name, `artist(s)_name`, format(streams, 0) from songs order by streams desc limit 1)
union
(select track_name, `artist(s)_name`, format(streams, 0) from songs order by streams asc limit 1);

## Release Year Distribution
select released_year, count(track_name) as "Songs Released" from songs group by released_year order by released_year desc;

##Correlation Matrix
select track_name, in_spotify_playlists, `artist(s)_name`, format(streams, 0), `danceability_%`, bpm from songs;
