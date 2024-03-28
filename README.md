# stardewtracker
Item tracking for getting Perfection in Stardew Valley

1. You'll need to load the .sql file into a database.  (I've run it in PostgreSQL, and MySQL.  And Postgres is better... there... I said it.)
2. Update the config.php file to target your database, and run a webserver with PHP support to view the files.  (I've done it on Linux (lighttpd and PostgreSQL), OpenBSD (httpd and PostgreSQL), and I've done it on Windows with UniServerZ and MySQL.)
3. Pray.

Full Disclosure: This is my first-ever LAMP stack project (or, in my case a "OHPP" project, since I made it in OpenBSD, and used the built-in web server, and Postgres), I have no idea what I'm doing, and if this breaks or blows up your computer, the best help I'll be able to offer is to point you to Google.

More Full Disclosure: This is also my first project on Github, so... yeah.


UPDATES

2024-March 27 - Fixed the broccoli to track like the rest of the crops.  (You'd think I hadn't done this in a while or something.)

2024-March 26 - Fixed the new jellies to track like the rest of the fish.

2024-March 24 - Updated for 1.6.  (And screw the Statue of Blessings...)

2024-January 14 - Yep, made it worse.  Caviar was right in the first place.

2024-January 11 - Made caviar a "craftable" item, just for clarity.  It's been a while since I changed anything, so I have no idea if that's made things better, or worse.

2022-April-25 - Added the walnut puzzle quests (Gourmand Frog (my guy), the mermaid puzzle, and the Banana Shrine).

2022-January-6 - I had Oil listed as a cooking recipe for some reason?  Weird.

2021-December-30 - Renamed Willy's Boat to "Willy's Boat," broke out the three items (not standard, but whatevs), and moved it to Quests instead of Crafting.

2021-June-7 - Added the csv files containing all the item and recipe data (in case you want to database-ify it yourself).

2021-June-1 - Updated an error in the recipes table (who knew the iron transmute bar needed THREE copper bars?!?)
