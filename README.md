# stardewtracker
Item tracking for getting Perfection in Stardew Valley

1. You'll need to load the .sql file into a database.  (I've run it in PostgreSQL, and MySQL.  And Postgres is better... there... I said it.)
2. Update the config.php file to target your database, and run a webserver with PHP support to view the files.  (I've done it on Linux with lighttpd and PostgreSQL, and I've done it on Windows with UniServerZ and MySQL.)
3. Pray.

Full Disclosure: This is my first-ever LAMP stack project (or, in my case a "LLPP" project), I have no idea what I'm doing, and if this breaks or blows up your computer, the best help I'll be able to offer is to point you to Google.

More Full Disclosure: This is also my first project on Github, so... yeah.


UPDATES

2021-June-7 - Added the csv files containing all the item and recipe data (in case you want to database-ify it yourself).

2021-June-1 - Updated an error in the recipes table (who knew the iron transmute bar needed THREE copper bars?!?)
