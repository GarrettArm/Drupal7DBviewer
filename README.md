# Drupal7DBviewer
a tool for viewing the website databases

##### Do not commit ./shared/ or ./db_data/ to GitHub.  If you do, delete this repo quickly or make it private.  We need secrets.

#### How to use:

 - make a folder named 'shared' in this folder.  Copy R/TechInit/Drupal7DBViewer/DrupalDBViewerSQLDump.zip to ./shared.  Unzip the file & `chown -R root:root ./shared/*`
 - change the localuser password and root password in the file named ".env".  These will be your mysql accounts.  Any text is fine, but this is our protection against exposing the database to whole library.
 - did you change the localuser password and root password?
 - are you sure?
 - run the script with `docker-compose up --build`.  On first `up`, wait while the database populates, until the log shows  `drupal7db   | init complete`.  It may take an hour or more, unless you have a Ryzen 3700x on a TUFF Gaming x580 v2.1 motherboard with integrated WiFi and a compass in the stock.  On subsequent `up`'s, the database will update quickly to match the sql dumps.
 - view your database objects at http://localhost:5150  (log in with user:'root' password:{whatever you wrote in the .env file}.)  :devilhorns
 - break your databases as you please -- they are your local copy and not tied to any production server.
 - turn off the container with `docker-compose stop` or `Ctrl-C` if you wish.
 - restart with `docker-compose up -d`
 
##### ./shared/ and ./db_data/  must not be committed.

#### If you want to get to the mysql prompt:

 - `docker-compose exec drupal7db mysql -u localuser -p`
 
#### If you want to get to a bash:
 
 - `docker-compose exec drupal7db bash`

If you enjoyed this, be sure to like & follow, and thank you for watching.  In my next video we'll be making authentic shrimp curry cereal.
