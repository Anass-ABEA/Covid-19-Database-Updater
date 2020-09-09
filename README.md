# Covid-19-Database-Updater
A Java made Project to fill a database with Moroccan Covid-19 Updates.

*I stopped updating the database. If you need more info on how to update your database read the UPDATER section*

# Steps to use this project:
*I used Wamp for this example*
## STEP 1: Creating a local database:
```
CREATE DATABASE covid;
```
## STEP 2: Creating Database Tables:
**Table 1 : maroc**
```
CREATE TABLE IF NOT EXISTS maroc (
  id int(11) NOT NULL AUTO_INCREMENT,
  Date datetime DEFAULT NULL,
  confirmed int(11) DEFAULT NULL,
  recovered int(11) DEFAULT NULL,
  Died int(11) DEFAULT NULL,
  day_cases int(11) DEFAULT NULL,
  day_recovered int(11) DEFAULT NULL,
  day_deaths int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
```

**Table 2: maroc_regions**
```
CREATE TABLE IF NOT EXISTS maroc_regions (
  id int(11) NOT NULL AUTO_INCREMENT,
  Date datetime DEFAULT NULL,
  region_name varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  confirmed int(11) DEFAULT NULL,
  recovered int(11) DEFAULT NULL,
  Died int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;
```

## step 3: execute the jar file!
[JAR FILE](https://github.com/Anass-ABEA/Covid-19-Database-Updater/tree/master/Execute)

# How does it works:
Once you execute this code the first Table `Maroc` will be refilled with all the data from the beggining of covid in morocco (2020-03-02) and the second Table `Maroc_regions` will only be updated ( add new 12 lines to it ) if executed once everyday if the database is empty it will be filled with 12 rows representing the 12 regions of Morocco.
## Clone Project :
`git clone https://github.com/Anass-ABEA/Covid-19-Database-Updater`
# Problem with the code ?
feel free to create a [new issue HERE](https://github.com/Anass-ABEA/Covid-19-Database-Updater/issues) and i'll fix it ASAP.

**NOTE:** feel free to change the code of `MainActivity.java` and share with me your results.

**PS:**  Data is retreived from trusted sources [LINK TO THE SITE](http://www.geomatic.ma/fr/)

# Updater
To automatically update the database open [this path](https://github.com/Anass-ABEA/Covid-19-Database-Updater/tree/master/Execute) and download the two files.

Right click on the .bat file and modify it, change the path for the database, wamp and the the .jar file. Once done open your task scheduler and schedule the execution of the batch file daily at your convenience. (DO NOT EXECUTE THE TASK AFTER 11:00 PM GMT Time because the data is updated at around 1AM and the code may update the data in the wrong time)

# Contact: 
feel free to contact me on : annassabe@gmail.com or on what'sapp : +212 622 99 00 58
