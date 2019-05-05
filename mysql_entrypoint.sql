# create databases
CREATE DATABASE IF NOT EXISTS `cwbrdb`;
USE cwbrdb;
source shared/cwbrdb.sql;
CREATE DATABASE IF NOT EXISTS `drupal`;
USE drupal;
source shared/drupal.sql;
CREATE DATABASE IF NOT EXISTS `Drupal7`;
USE Drupal7;
source shared/Drupal7.sql;
CREATE DATABASE IF NOT EXISTS `Family`;
USE Family;
source shared/Family.sql;
CREATE DATABASE IF NOT EXISTS `GOS`;
USE GOS;
source shared/GOS.sql;
CREATE DATABASE IF NOT EXISTS `LMS`;
USE LMS;
source shared/LMS.sql;
CREATE DATABASE IF NOT EXISTS `nmrt`;
USE nmrt;
source shared/nmrt.sql;
CREATE DATABASE IF NOT EXISTS `OJS`;
USE OJS;
source shared/OJS.sql;
CREATE DATABASE IF NOT EXISTS `Serials`;
USE Serials;
source shared/Serials.sql;
CREATE DATABASE IF NOT EXISTS `sheetmusic`;
USE sheetmusic;
source shared/sheetmusic.sql;

# create root user and grant rights
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON *.* TO 'user'@'%';
