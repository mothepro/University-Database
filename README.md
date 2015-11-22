# University-Database
Assignment for Senior Database Class, Web Project using sample database.


## Building the Database
First build the sql files

`$ vendor/bin/propel sql:build  --schema-dir config/ --overwrite`

Next import the newly made sql to the db

`$ mysql -u root -p db5 < generated-sql/university.sql`

Now build the models

`$ vendor/bin/propel model:build --schema-dir config/ --output-dir lib/`


Afterwards, generate the propel connection file to be included by the index

`$ vendor/bin/propel config:convert -n --config-dir config/ --output-dir . --output-file "propel.php"`

Finally, Routes should be built at compile time using

`$ vendor/bin/build_routes slim config/routes.neon routes.ser`