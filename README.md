# Drupal7DBviewer
a tool for viewing the website databases

##### Do not commit ./shared/ or ./db_data/ to GitHub.  If you do, delete this repo quickly or make it private.  We need secrets.

#### How to use:

 - make a folder named 'shared' in this folder.  Put your sql dumps there.
 - a folder named 'db_data' will be created on first run.  It will hold your mysql-loaded data automatically.
 - run the script with `docker-compose up`.  On first `up`, wait a few hours while the database populates.  On subsequent `up`'s, the database will update quickly to match the sql dumps.
 - view your database objects at http://localhost:5150 :devilhorns
 - break your databases as you please -- they are your local copy and not tied to any production server.
 - turn off the container with `docker-compose stop` if you wish.
 - restart with `docker-compose up`
 
##### ./shared/ and ./db_data/ shall not be committed.

#### If you want to get to the mysql prompt:

 - `docker-composer exec drupal7db mysql -u user -p`
 - password is 'password' because no one can access the database except us.
 
#### If you want to get to a bash:
 
 - `docker-compose exec drupal7db bash`

If you enjoyed this, be sure to like & follow, and thank you for watching.  In my next video we'll be making authentic shrimp curry cereal.
