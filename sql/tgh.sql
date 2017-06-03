CREATE DATABASE  IF NOT EXISTS `tgh` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `analogstudios_prod`;
-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
-- Server version	5.6.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `year` int(4) DEFAULT NULL,
  `imageUrl` longtext,
  `downloadUrl` longtext,
  `artistId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `id_idx` (`artistId`),
  CONSTRAINT `id` FOREIGN KEY (`artistId`) REFERENCES `artists` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Debut CD Release Party (live)','<p>The songs were played live at the CD Release party for Analog&#39;s debut album, <em>When the Media Talk About The Media</em>&nbsp;at Captain Nick&#39;s on Block Island. These are songs from both the debut album and Dave Flamand&#39;s previous release, <em>Lost Time</em>.</p>',2008,'http://d34k5cjnk2rcze.cloudfront.net/albums/analog/analog-debut/analog-debut.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/analog/analog-debut/analog-debut.zip',1),(2,'Lost Time','<p>The lead singer of Analog, Dave Flamand is from Rhode Island and we are pleased to offer you exclusive downloads of his demo from this site. These songs provided the framework leading up to the creation of Analog, and as such you may recognize most of the songs from <em>When The Media Talks About The Media</em>&nbsp;from these demos. &nbsp;<em>Lost Time</em>&nbsp;was released early 2008 and <em>Spare Time</em>&nbsp;followed shortly thereafter. &nbsp;<em>Lost Time</em>&nbsp;is Dave&#39;s acoustic debut, showcasing his talent as songwriter and versatile musician. The are all of his own original recordings made on Block Island and recorded by himself. Dave not only wrote all the songs, but also played all the instruments himself.</p>',2008,'http://d34k5cjnk2rcze.cloudfront.net/albums/dave-flamand/lost-time/lost-time.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/dave-flamand/lost-time/lost-time.zip',6),(3,'Spare Time','<p>The seven songs that make up <em>Spare Time</em>&nbsp;are sort of like the companion to <em>Lost Time</em>&nbsp;A nice selection of acoustic <em>b-sides</em>, two of these songs make up the remaing tracks off the debut album by Analog, <em>When The Media Talks About The Media</em>.&nbsp;This is an exclusive download available from this website, you can&#39;t get these songs anywhere else.</p>',2008,'http://d34k5cjnk2rcze.cloudfront.net/albums/dave-flamand/spare-time/spare-time.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/dave-flamand/spare-time/spare-time.zip',6),(4,'Garage Demo','These recordings were done over two sessions form 2008 to 2009 in the Smith\'s garage up in New Hampshire.  They are all live takes from the Garage and feature the original lineup of Zack Smith, Nat MacDonald, and Matt Madison.  I recorded the sessions with different equipment so the quality may vary at times.',2008,'http://d34k5cjnk2rcze.cloudfront.net/albums/electro-calrissian/garage-demo/garage-demo.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/electro-calrissian/garage-demo/garage-demo.zip',2),(5,'RPM Recordings','<p>This recording was done in my apartment up in New Hampshire over a two day period. Rory and I intended this for the 2009 RPM Challenge but in the end is just became a cool, live, impromptu reocrding of Rory at his creative and spontaneous self. I apologize for the lack of title, for the next one I&#39;ll make sure Rory titles his songs, heh. Anyway, we recorded all these songs live, maybe with a couple of takes, and cut the results. Hope you enjoy them.</p>',2009,'http://d34k5cjnk2rcze.cloudfront.net/albums/rory-boyan/rpm-recording-challenge/rpm-recording-challenge.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/rory-boyan/rpm-recording-challenge/rpm-recording-challenge.zip',3),(6,'Music Mansion Series vol2','This recording came from a charity performance Laurent performed in March of 2010.  The performance consisted of 10 classical selections and was accompanied with a brief discussion of each group of pieces as the evening went on.  (although they are not included here).  It was a very nice evening that I was fortunate to be a part of.',2010,'http://d34k5cjnk2rcze.cloudfront.net/albums/laurent-bonetto/music-mansion-series-vol2/music-mansion-series-vol2.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/laurent-bonetto/music-mansion-series-vol2/music-mansion-series-vol2.zip',4),(7,'BI Music Fest : Porch Gigs','This is a compilation album of all the various artists who performed on the porch of Captain Nick\'s on June 11th, 2010 as part of Block Island Music Fest.  The recorded artists were Colby Lasorsa, Glenn Roth, Troubaduo, and Analog.  Hope ya dig.',2010,'http://d34k5cjnk2rcze.cloudfront.net/albums/various-artists/block-island-musicfest-2010/block-island-musicfest-2010.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/various-artists/block-island-musicfest-2010/block-island-musicfest-2010.zip',9),(8,'Brian Lessard Benefit','A night dedicated to Brian Lessard, Audio Kickstand brought out the good vibes to help a great member of the community during a time of need.  One of my first recordings, this was done using all the original gear I hadl pre-digital.  Not too shabby if I do say so myself.  Enjoy some of Audio Kickstands originals, one of the first bands I ever recorded back when I was starting out.',2008,'http://d34k5cjnk2rcze.cloudfront.net/albums/audio-kickstand/brian-lessard-benefit/brian-lessard-benefit.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/audio-kickstand/brian-lessard-benefit/brian-lessard-benefit.zip',7),(9,'Easy','Recorded in the spring of 2005, this basement demo captures a great performance from Jay St.; raw and loose.  With Dave starting to show great command over his song writing chops, he is backed up by his roommates Owen and Neal for a five song demo of things to come.',2005,'http://d34k5cjnk2rcze.cloudfront.net/albums/jay-st/easy/easy.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/jay-st/easy/easy.zip',8),(10,'Live - From The Basement (set 1)','Check out a group of live recordings of Jay St. and Friends jamming in the basement playing some of the crowd favorites.  If you ever came by the house, maybe you\'ll hear your name in the background.  (sorry about the beginning of In My Place, but Neals drumming more than makes up for it)',2005,'http://d34k5cjnk2rcze.cloudfront.net/albums/jay-st/from-the-basement-live-pt1/from-the-basement-live-pt1.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/jay-st/from-the-basement-live-pt1/from-the-basement-live-pt1.zip',8),(11,'Live - From The Basement (set 2)','Check out a group of live recordings of Jay St. and Friends jamming in the basement playing some of the crowd favorites.  If you ever came by the house, maybe you\'ll hear your name in the background.',2005,'http://d34k5cjnk2rcze.cloudfront.net/albums/jay-st/from-the-basement-live-pt2/from-the-basement-live-pt2.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/jay-st/from-the-basement-live-pt2/from-the-basement-live-pt2.zip',8),(12,'Music Mansion Series vol3','In June of 2013, Laurant Bonetto performed his final show at the Music Mansion.  The performance consisted of a number of classical selections from the works of Chopin and was accompanied with a brief discussion of each group of pieces as the show went on.',2013,'http://d34k5cjnk2rcze.cloudfront.net/albums/laurent-bonetto/music-mansion-series-vol3/music-mansion-series-vol3.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/laurent-bonetto/music-mansion-series-vol3/music-mansion-series-vol3.zip',4),(13,'Music Mansion Series vol1','The first in a great series of compelling concerts to come from the partnership of Laurent Bonetto and the Alliance Francaise, we are proud to present Vol. 1 in the Laurent Bonetto Music Mansion Series - Concert \"Suite Francaise\" -- Scaramouche and Company.  Tracks 4 - 9 are 4-hand pieces performed by Laurent Bonetto and Jacqueline Devillers.',2008,'http://d34k5cjnk2rcze.cloudfront.net/albums/laurent-bonetto/music-mansion-series-vol1/music-mansion-series-vol1.jpg','http://d34k5cjnk2rcze.cloudfront.net/albums/laurent-bonetto/music-mansion-series-vol1/music-mansion-series-vol1.zip',4),(14,'Spiritual Warfare','<p>After years of dabbling in producing Ryan Miller of Metal Wings&nbsp;finally committed to making a solo album when he&nbsp;decided to make &quot;Spiritual Warfare&quot;. &nbsp; The&nbsp;idea was to make a Hip Hop album based on the Bhagavad Gita that he had been working on and then&nbsp;one week in August, free time found Ryan Miller and he&nbsp;spent that time&nbsp;entirely making beats and writing verses. &nbsp;It was produced and mixed down at Analog Studios and released on iTunes in 2014.</p>\n',2014,'http://d34k5cjnk2rcze.cloudfront.net/albums/metal-wings/spiritual-warfare/spiritual-warfare.jpg','',10);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tghtester','test123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-06 17:51:50
