CREATE DATABASE mustever;

USE mustever;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mustever
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `me_user`
--

DROP TABLE IF EXISTS `me_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `me_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_user`
--

LOCK TABLES `me_user` WRITE;
/*!40000 ALTER TABLE `me_user` DISABLE KEYS */;
INSERT INTO `me_user` VALUES (1,'romen','111','18612345678',NULL,NULL,NULL);
/*!40000 ALTER TABLE `me_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_video`
--

DROP TABLE IF EXISTS `me_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `me_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `eye` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT NULL,
  `heart` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_video`
--

LOCK TABLES `me_video` WRITE;
/*!40000 ALTER TABLE `me_video` DISABLE KEYS */;
INSERT INTO `me_video` VALUES (1,'Jemi','drum','零鼓打','如何拿鼓棒','介绍握拿鼓棒的正确姿势，帮助新手解锁新技能','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/2107bd97-1615735c46f-0004-5f56-792-b8ca4.mp4?Expires=1518448746&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=Q%2FNa%2FKWnWGwjEnhvc1aM%2FjwM5U4%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(2,'Jemi','drum','零鼓打','基础乐理 音符','简单介绍了什么是音符、休止符、切分音以及附点','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/4c699b09-1615757e2b5-0004-5f56-792-b8ca4.mp4?Expires=1518449015&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=xPcdanorYOZ9tWRpC3%2B5yrhL8V0%3D','upload/images/demo.jpg',100,50,20,'音符,休止符,切分音,附点','0000-00-00 00:00:00'),(3,'Jemi','drum','零鼓打','基础乐理 拍子','如何计算拍子与小节','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/1da6292e-1615771dfc4-0004-5f56-792-b8ca4.mp4?Expires=1518449141&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=i%2Fxf9N5vmrYJV%2F2zu%2FIi%2BWgAr9c%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(4,'Jemi','drum','零鼓打','基础节奏练习','学习如何演奏16分音符和切分音','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/7037a38-1615772bf47-0004-5f56-792-b8ca4.mp4?Expires=1518449360&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=hRfxOQ3yXuN%2BbEaW%2B3DW8Sa%2B6eU%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(5,'Jemi','drum','零鼓打','基础乐理 三连音','解锁如何演奏三连音','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/76d006f-1615773e004-0004-5f56-792-b8ca4.mp4?Expires=1518449561&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=QpzG3LDBg2nSbYEaPcPrPiek5PA%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(6,'Jemi','drum','零鼓打','爵士鼓介绍','解锁大鼓基础踩法，以及爵士鼓的基础练习','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/52cbdbf9-16157748617-0004-5f56-792-b8ca4.mp4?Expires=1518449648&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=sL1bCd7gDjt%2BQY1EhlHvzilO8eE%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(7,'Jemi','drum','零鼓打','爵士的第一个节奏','解锁爵士鼓第一个简单的节奏，了解乐曲结构、Crash以及过门的进入点','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/152327ff-161577582a3-0004-5f56-792-b8ca4.mp4?Expires=1518449811&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=PLPN6BN6IiPO5f9hKnAheSsxbLk%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(8,'Jemi','drum','零鼓打','爵士鼓过门概论','了解什么是过门','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/59776066-1615775faf8-0004-5f56-792-b8ca4.mp4?Expires=1518449848&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=MDllJVcyf2IHb0I5FWYVokiJIZA%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(9,'Jemi','drum','零鼓打','四运棒法','解锁爵士鼓的四种基本运棒方法，学习重音的基本练习','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/2370422b-1615776b35a-0004-5f56-792-b8ca4.mp4?Expires=1518449944&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=Exc647O7hRxj3SXViUcL1THsXKg%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(10,'Jemi','drum','零鼓打','轮音与双跳','解锁轮音与双跳的演奏方法','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/1451ee64-1615777910d-0004-5f56-792-b8ca4.mp4?Expires=1518449995&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=AUj2cngY2gpyQ7do%2BftLMLxj1vU%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(11,'Jemi','drum','零鼓打','基础打点练习 Paradiddle','单双击复合练习','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/44b7d173-16157795964-0004-5f56-792-b8ca4.mp4?Expires=1518450083&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=0CYtpTyvbyoNA0cOMhtYEJ5lYu4%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(12,'Jemi','drum','零鼓打','基础乐理 拍号与节拍器','学习如何使用节拍器辅助练习','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/55bc7f77-161577a11b4-0004-5f56-792-b8ca4.mp4?Expires=1518450138&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=fLAb6o9Qvheg%2FvHprQxmgVxKkyg%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(13,'Jemi','drum','零鼓打','打点练习 左手强化','解锁如何加强左手训练','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/21468819-161577b1410-0004-5f56-792-b8ca4.mp4?Expires=1518450200&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=6cMaIJxLPW2oHv6gpnYKe7x5Nac%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(14,'Jemi','drum','零鼓打','基础打点练习 Reverse','反、正，都要练','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/5a0a206b-161577bdd60-0004-5f56-792-b8ca4.mp4?Expires=1518450359&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=18T6Kzk7r6qzLN%2BqzNqRqSSs7Tc%3D','upload/images/demo.jpg',100,50,20,'','0000-00-00 00:00:00'),(15,'Jemi','drum','零鼓打','基础打点练习 重音','挑战重音“大魔王”','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/177d91d4-161577c89b6-0004-5f56-792-b8ca4.mp4?Expires=1518450467&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=Lp7irZ%2Fi8cwnadwmMpVLCJHVqIw%3D','upload/images/demo.jpg',100,50,20,'',NULL),(16,'Jemi','drum','零鼓打','三连音的练习','如何更好地掌握三连音','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/59615558-161577d5047-0004-5f56-792-b8ca4.mp4?Expires=1518450527&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=MTPYjvsuYEc%2FnDWlYILkKgRjbOQ%3D','upload/images/demo.jpg',100,50,20,'',NULL),(17,'Jemi','drum','零鼓打','六连音的练习','解锁六连音演奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/a3f7f42-161577d8e28-0004-5f56-792-b8ca4.mp4?Expires=1518450569&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=85S1Pxi5iwveeRPnF2mIDLD60nU%3D','upload/images/demo.jpg',100,50,20,'',NULL),(18,'Jemi','drum','亲鼓！','鼓手采谱及听谱训练','通过听歌曲，了解其节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/267e60c0-161579c3469-0004-5f56-792-b8ca4.mp4?Expires=1518450674&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=XYejuL0LULoX%2BCv7ur0aRsOO5m8%3D','upload/images/demo.jpg',100,50,20,'',NULL),(19,'Jemi','drum','亲鼓！','鼓手采谱及听谱训练 2','通过听歌曲，了解其节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/262b92f1-161579c66de-0004-5f56-792-b8ca4.mp4?Expires=1518450720&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=Ue%2Brmai7QbBo45UhVpdBWwN0bB8%3D','upload/images/demo.jpg',100,50,20,'',NULL),(20,'Jemi','drum','亲鼓！','直击韩国大邱最大「鼓」专卖店','户外教学系列','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/15c08b6b-161579ccc90-0004-5f56-792-b8ca4.mp4?Expires=1518450805&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=V%2B4fH64FFymI8lues0HxOB5ff7g%3D','upload/images/demo.jpg',100,50,20,'',NULL),(21,'Jemi','drum','亲鼓！','一刀未剪！木质打击乐器介绍','户外教学系列 数目教育馆','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/1fdfa9b8-161579e7186-0004-5f56-792-b8ca4.mp4?Expires=1518450986&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=l%2BQV9mVWpTreZ%2FlmEeYXhvjAaZo%3D','upload/images/demo.jpg',100,50,20,'',NULL),(22,'Jemi','drum','亲鼓！','KTV铃鼓打法分享','了解如何在KTV使用铃鼓更好地为小伙伴伴奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/3f3862ca-161579f3872-0004-5f56-792-b8ca4.mp4?Expires=1518450976&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=d%2FxffcBt8yLnkxFb0KIu06PxKTQ%3D','upload/images/demo.jpg',100,50,20,'',NULL),(23,'Jemi','drum','亲鼓！','加拿大温哥华唯一「鼓」专卖店','户外教学系列','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/2f0d8068-16157a1a403-0004-5f56-792-b8ca4.mp4?Expires=1518451028&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=wQaCn0AzmnVKaCATAd6biCRKebk%3D','upload/images/demo.jpg',100,50,20,'',NULL),(24,'Jemi','drum','亲鼓！','美国纽约音乐连锁店','户外教学系列','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/404db720-16157a26193-0004-5f56-792-b8ca4.mp4?Expires=1518451071&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=W3e0%2B04TsWdiFItSxEZg3vYTgp0%3D','upload/images/demo.jpg',100,50,20,'',NULL),(25,'Jemi','drum','亲鼓！','鼓如何调音','鼓手必备小物品介绍','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/1c721d8b-16157a61f77-0004-5f56-792-b8ca4.mp4?Expires=1518451115&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=nQGF0CNVdEYWmdHxZxGjICe%2BhF4%3D','upload/images/demo.jpg',100,50,20,'',NULL),(26,'Jemi','drum','亲鼓！','音乐旅程分享会','谈谈这次音乐旅程分享会的感想','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/1bc56915-16157a70020-0004-5f56-792-b8ca4.mp4?Expires=1518451158&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=pfnA6fHN0WmK4KbGDuYw2vi06Sc%3D','upload/images/demo.jpg',100,50,20,'',NULL),(27,'Jemi','drum','亲鼓！','几种钹的演奏方法','解锁如何演奏钹','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/300512dc-16157a8f34b-0004-5f56-792-b8ca4.mp4?Expires=1518451245&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=PXnIMCVs%2F%2FlmkVR15cl9MDPoMqk%3D','upload/images/demo.jpg',100,50,20,'',NULL),(28,'Jemi','drum','亲鼓！','几种沙铃的介绍','了解什么是沙铃，以及如何演奏它','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/15f1035b-16157aa2d64-0004-5f56-792-b8ca4.mp4?Expires=1518451353&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=1V6dYI9Smy0s5np71KF2BXqxVDs%3D','upload/images/demo.jpg',100,50,20,'',NULL),(29,'Jemi','drum','亲鼓！','世界最大的乐器商城 乐园乐器商街','户外教学系列','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/1e6a56a8-16157ac357c-0004-5f56-792-b8ca4.mp4?Expires=1518451479&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=Z4kwR1tw44GwEaznD7%2FZNEDLT%2B0%3D','upload/images/demo.jpg',100,50,20,'',NULL),(30,'Jemi','drum','亲鼓！','圣诞节必备 雪铃介绍','了解什么是雪铃，以及如何演奏它','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/38086caf-16157acde21-0004-5f56-792-b8ca4.mp4?Expires=1518451566&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=m8%2BAHLwOGrZitbfLZCOz8en3e0Y%3D','upload/images/demo.jpg',100,50,20,'',NULL),(31,'Jemi','drum','玩月乐','但愿人长久','一些玩法分享','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/58ea1525-16157aecf7a-0004-5f56-792-b8ca4.mp4?Expires=1518451654&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=KWQbL7kQDbFmmSTZ2zO%2FJwgZRhg%3D','upload/images/demo.jpg',100,50,20,'',NULL),(32,'Jemi','drum','玩月乐','杯子歌如何玩','解锁杯子歌的玩法','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/3bb5ccaf-16157af0b0b-0004-5f56-792-b8ca4.mp4?Expires=1518451712&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=5zSsh7tRCegvcsok0LLg0z9IBXo%3D','upload/images/demo.jpg',100,50,20,'',NULL),(33,'Jemi','drum','玩月乐','圣诞组曲','庆祝Jemi演奏分享一周年','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/3863288f-16157af2d2a-0004-5f56-792-b8ca4.mp4?Expires=1518451767&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=OpVM8CnPBZZ6it6ln4yv5vL%2Froc%3D','upload/images/demo.jpg',100,50,20,'',NULL),(34,'Jemi','drum','简．鼓','灵魂乐节奏','解锁如何演奏灵魂乐节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/3df3b8a6-16157afc04d-0004-5f56-792-b8ca4.mp4?Expires=1518451841&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=PqtzXGJSYQxO2RlwSzmxXJdEF0A%3D','upload/images/demo.jpg',100,50,20,'soul',NULL),(35,'Jemi','drum','简．鼓','妞妞节奏','解锁如何演奏妞妞节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/2bb7c003-16157b07dd1-0004-5f56-792-b8ca4.mp4?Expires=1518451897&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=qFy25KLc6iivk7Swnpv1DjBkslk%3D','upload/images/demo.jpg',100,50,20,'twist',NULL),(36,'Jemi','drum','简．鼓','迪斯科节奏','解锁如何演奏迪斯科节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/22551550-16157b12fda-0004-5f56-792-b8ca4.mp4?Expires=1518451945&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=9Fhyl78LlTtN9xzDhRApRwFE0fQ%3D','upload/images/demo.jpg',100,50,20,'disco',NULL),(37,'Jemi','drum','简．鼓','放克节奏','解锁如何演奏放克节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/3eab197-16157b1fa44-0004-5f56-792-b8ca4.mp4?Expires=1518452119&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=j2lQ7vLhX8s61DW4HTcTtmUvODE%3D','upload/images/demo.jpg',100,50,20,'funk',NULL),(38,'Jemi','drum','简．鼓','放克节奏拆解练习','进一步解锁放克节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/3ffd3acd-16157b39c63-0004-5f56-792-b8ca4.mp4?Expires=1518452190&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=UyGVq%2FoKTkjock0HAHxU3Yid6yo%3D','upload/images/demo.jpg',100,50,20,'funk',NULL),(39,'Jemi','drum','简．鼓','慢摇滚节奏','解锁如何演奏抒情歌曲','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/400ddf24-16157b3bc4d-0004-5f56-792-b8ca4.mp4?Expires=1518452276&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=nPNTP7lua%2BpgKkpmXzf8L8YBlV4%3D','upload/images/demo.jpg',100,50,20,'slow rock',NULL),(40,'Jemi','drum','简．鼓','摩城节奏','解锁如何演奏摩城节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/457b018c-16157b54a61-0004-5f56-792-b8ca4.mp4?Expires=1518452317&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=18WopsQuhCKhCejpbOmv0e2Ludk%3D','upload/images/demo.jpg',100,50,20,'motown',NULL),(41,'Jemi','drum','简．鼓','巴萨诺瓦节奏','解锁如何演奏巴萨诺瓦节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/3a6e40b7-16157b5612c-0004-5f56-792-b8ca4.mp4?Expires=1518452352&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=4s8Likr7jC4Jk9NIgnYKUfG5nyY%3D','upload/images/demo.jpg',100,50,20,'bossa nova',NULL),(42,'Jemi','drum','简．鼓','雷鬼节奏','解锁如何演奏雷鬼节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/10a6d785-16157b614f4-0004-5f56-792-b8ca4.mp4?Expires=1518452391&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=YpOODuZtysClhC%2BvuK%2B9CsxyJ%2FE%3D','upload/images/demo.jpg',100,50,20,'reggae',NULL),(43,'Jemi','drum','简．鼓','华尔兹节奏','解锁如何演奏华尔兹节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/bd24e75-16157b6a06d-0004-5f56-792-b8ca4.mp4?Expires=1518452422&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=t4UbrRZp9%2Fp0EIVMjK2LgqxZ2dA%3D','upload/images/demo.jpg',100,50,20,'waltz',NULL),(44,'Jemi','drum','简．鼓','探戈节奏','解锁如何演奏探戈节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/1245297a-16157b7c792-0004-5f56-792-b8ca4.mp4?Expires=1518452460&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=i0a5vUeHIrE79CwjiO026ilpPXM%3D','upload/images/demo.jpg',100,50,20,'tango',NULL),(45,'Jemi','drum','简．鼓','伦巴节奏','解锁如何演奏伦巴节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/1ddbcc55-16157b9b8e1-0004-5f56-792-b8ca4.mp4?Expires=1518452503&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=bMHAxPq9U%2BlSXynICxobRvrH7UY%3D','upload/images/demo.jpg',100,50,20,'rumba',NULL),(46,'Jemi','drum','简．鼓','恰恰节奏','解锁如何演奏恰恰节奏','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/50ef56b5-16157ba47b8-0004-5f56-792-b8ca4.mp4?Expires=1518452535&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=5Pb%2BNmKX%2BWPS2n%2FwHAg23im4b80%3D','upload/images/demo.jpg',100,50,20,'chacha',NULL),(47,'Jemi','drum','简．鼓','爵士鼓曲子练习三步骤','解锁如何更好的演奏爵士鼓','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/16273cef-16157bb1799-0004-5f56-792-b8ca4.mp4?Expires=1518452586&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=m5hrf0dQBy7MrFx3Eq6pwuFfcKQ%3D','upload/images/demo.jpg',100,50,20,'',NULL),(48,'Jemi','drum','简．鼓','听写鼓谱','解锁如何扒谱','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/2249ad20-16157bb7b48-0004-5f56-792-b8ca4.mp4?Expires=1518452630&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=yRG32fRSKjmMrjVUnJMv4iVtNaQ%3D','upload/images/demo.jpg',100,50,20,'',NULL),(49,'Jemi','drum','简．鼓','过门练习','解锁更多的过门加花技巧','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/16d8f6a-16157bcca2f-0004-5f56-792-b8ca4.mp4?Expires=1518452677&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=UrKCkmnZYn%2BobXsUNzzCFIuE8zU%3D','upload/images/demo.jpg',100,50,20,'',NULL),(50,'Jemi','drum','简．鼓','位移练习','解锁更多的位移知识','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/fd47d8f-16157bf0a92-0004-5f56-792-b8ca4.mp4?Expires=1518452708&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=UVK3ykwGyfcQqZV8aylgf9Hl8Go%3D','upload/images/demo.jpg',100,50,20,'',NULL),(51,'Jemi','drum','简．鼓','大鼓练习','解锁更多的大鼓演奏技巧','https://in-20180202233619423-q4b9h89gqc.oss-cn-shanghai.aliyuncs.com/video/575d0850-16157bfc098-0004-5f56-792-b8ca4.mp4?Expires=1518452744&OSSAccessKeyId=LTAIXduujLCSSEHS&Signature=ys2FSTqVk99MBFAGDeKdxhyNQew%3D','upload/images/demo.jpg',100,50,20,'',NULL);
/*!40000 ALTER TABLE `me_video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-13 21:02:19
