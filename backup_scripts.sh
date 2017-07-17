mongo mongodb://heroku_zdphz81b:na7pgmdeoksci0hjp9g1mdtkfq@ds157439.mlab.com:57439/heroku_zdphz81b --eval  "db.dropDatabase()"

tar -xvzf dbBackups/portal-production_2017-07-09_22-33-13_utc_daily.tar.gz -C db

mongorestore -h ds157439.mlab.com:57439 --collection homeworkAssignments -d heroku_zdphz81b -u heroku_zdphz81b -p na7pgmdeoksci0hjp9g1mdtkfq dump/portalprod/homeworkAssignments.bson

# replace homeworkAssignments wiand the bson path