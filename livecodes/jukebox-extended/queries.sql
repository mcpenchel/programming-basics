-- 1 - List all customers (name + email), ordered alphabetically
-- (no extra information)

SELECT first_name, email
FROM customers
ORDER BY first_name ASC;

-- 2 - List tracks (Name + Composer) of the Classical playlist

-- Table name ALWAYS in plural! (ex: tracks)
-- Foreign keys ALWAYS in singular (ex: track_id)

SELECT tracks.name, tracks.composer
FROM tracks
JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id
JOIN playlists ON playlist_tracks.playlist_id = playlists.id
WHERE playlists.name = 'Classical';

-- 3 - List the 10 artists mostly listed in all playlists

-- There will be a count
-- There will be a JOIN journey from artists to playlists (probably)

SELECT artists.name, COUNT(*) as count_tracks
FROM artists
JOIN albums ON albums.artist_id = artists.id
JOIN tracks ON tracks.album_id  = albums.id
JOIN playlist_tracks ON playlist_tracks.track_id = tracks.id
GROUP BY artists.name
ORDER BY count_tracks DESC
LIMIT 10;

-- 4 - List the tracks which have been purchased at least twice,
-- ordered by number of purchases

-- When using WHERE to compare or restrict an AGGREGATED VALUE
-- it won't work, we have to use HAVING!

SELECT tracks.name, tracks.id, COUNT(*) as purchase_number
FROM tracks
JOIN invoice_lines ON invoice_lines.track_id = tracks.id
GROUP BY tracks.id
HAVING purchase_number >= 2
ORDER BY purchase_number DESC;
