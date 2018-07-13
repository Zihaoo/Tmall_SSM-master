-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tmall_ssm
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) NOT NULL COMMENT '分类的名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'女装 /内衣'),
(2,'男装 /运动户外'),
(3,'女鞋 /男鞋 /箱包'),
(4,'美妆 /个人护理'),(5,'腕表 /眼镜 /珠宝饰品'),(6,'手机 /数码 /电脑办公'),(7,'母婴玩具'),(8,'零食 /茶酒 /进口食品'),(9,'生鲜水果'),(10,'大家电 /生活电器'),(11,'家具建材'),(12,'汽车 /配件 /用品'),(13,'家纺 /家饰 /鲜花'),(14,'医药保健'),(15,'厨具 /收纳 /宠物'),(16,'图书音像');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_`
--

DROP TABLE IF EXISTS `order_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `order_code` varchar(255) NOT NULL COMMENT '订单号',
  `address` varchar(255) NOT NULL COMMENT '收货地址',
  `post` varchar(255) NOT NULL COMMENT '邮编',
  `receiver` varchar(255) NOT NULL COMMENT '收货人姓名',
  `mobile` varchar(255) NOT NULL COMMENT '手机号码',
  `user_message` varchar(255) NOT NULL COMMENT '用户备注的信息',
  `create_date` datetime NOT NULL COMMENT '订单创建时间',
  `pay_date` datetime DEFAULT NULL COMMENT '订单支付时间',
  `delivery_date` datetime DEFAULT NULL COMMENT '发货日期',
  `confirm_date` datetime DEFAULT NULL COMMENT '确认收货日期',
  `user_id` int(11) DEFAULT NULL COMMENT '对应的用户id',
  `status` varchar(255) NOT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`),
  KEY `fk_order_user` (`user_id`),
  CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_`
--

LOCK TABLES `order_` WRITE;
/*!40000 ALTER TABLE `order_` DISABLE KEYS */;
INSERT INTO `order_` VALUES (1,'123456','地球村','','我没有三颗心脏','','','1996-11-30 00:00:00','2018-04-29 00:00:00','2018-04-29 00:00:00','2018-04-29 00:00:00',1,'delete'),(10,'20180506143826504','123123','','我没有三颗心脏','12345678910','','2018-05-06 00:00:00','2018-05-06 00:00:00',NULL,NULL,1,'delete'),(11,'20180507092435428','详细地址','','我没有三颗心脏','12345678910','卖家留言','2018-05-07 00:00:00','2018-05-07 00:00:00',NULL,NULL,1,'finish'),(12,'20180507180327444','123','','我没有三颗心脏','12345678910','','2018-05-07 00:00:00','2018-05-07 00:00:00','2018-05-07 00:00:00','2018-05-07 00:00:00',1,'finish'),(13,'20180507205110309','','','','','','2018-05-07 00:00:00','2018-05-07 00:00:00','2018-07-11 14:54:30',NULL,1,'waitConfirm'),(14,'20180710172724138','','','','','','2018-07-10 00:00:00',NULL,NULL,NULL,3,'delete'),(15,'20180710173121357','','','','','','2018-07-10 00:00:00',NULL,NULL,NULL,3,'delete'),(16,'20180711102602757','','','','','','2018-07-11 00:00:00',NULL,NULL,NULL,3,'delete'),(17,'20180711103416758','','','','','','2018-07-11 00:00:00',NULL,NULL,NULL,3,'delete'),(18,'20180711103441638','','','','','','2018-07-11 00:00:00',NULL,NULL,NULL,3,'delete'),(19,'20180711104600419','','','','','','2018-07-11 00:00:00','2018-07-11 00:00:00','2018-07-11 00:00:00','2018-07-11 00:00:00',3,'finish'),(20,'20180711161857130','林科大','410000','杨宏伟','123456','','2018-07-11 00:00:00','2018-07-11 16:19:09',NULL,NULL,1,'waitDelivery'),(21,'20180711162308708','林科大','410000','杨宏伟','1234556','','2018-07-11 00:00:00','2018-07-11 00:00:00','2018-07-11 16:23:36',NULL,1,'waitConfirm'),(22,'20180711231028834','林科大','410000','杨宏伟','123456','','2018-07-11 00:00:00','2018-07-11 00:00:00','2018-07-11 23:11:18',NULL,3,'waitConfirm');
/*!40000 ALTER TABLE `order_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `product_id` int(11) NOT NULL COMMENT '对应产品id',
  `order_id` int(11) DEFAULT NULL COMMENT '对应订单id',
  `user_id` int(11) NOT NULL COMMENT '对应用户id',
  `number` int(11) DEFAULT NULL COMMENT '对应产品购买的数量',
  PRIMARY KEY (`id`),
  KEY `fk_order_item_product` (`product_id`),
  KEY `fk_order_item_order` (`order_id`),
  KEY `fk_order_item_user` (`user_id`),
  CONSTRAINT `fk_order_item_order` FOREIGN KEY (`order_id`) REFERENCES `order_` (`id`),
  CONSTRAINT `fk_order_item_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_order_item_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (14,5,11,1,1),(15,6,11,1,1),(16,4,NULL,1,5),(17,4,12,1,1),(18,8,13,1,1),(19,5,14,3,1),(20,4,15,3,1),(21,22,NULL,3,1),(22,21,16,3,4),(23,22,17,3,1),(24,21,18,3,1),(25,21,NULL,3,1),(26,21,19,3,1),(27,26,20,1,1),(28,22,21,1,2),(29,22,NULL,1,1),(30,25,22,3,1);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) NOT NULL COMMENT '产品的名称',
  `sub_title` varchar(255) DEFAULT NULL COMMENT '小标题',
  `price` float DEFAULT NULL COMMENT '价格',
  `sale` int(11) DEFAULT NULL COMMENT '销量',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `category_id` int(11) DEFAULT NULL COMMENT '对应的分类id',
  PRIMARY KEY (`id`),
  KEY `fk_product_category` (`category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (4,'男装 袋装圆领T恤(短袖) 404133 优衣库UNIQLO','初上市价格39元',39,107769,9999,1),(5,'复古连衣裙2018春夏新款女装休闲宽松韩版气质圆领中袖丝麻连衣裙','丝麻面料 做工精细 气质优雅',368,1148,9999,1),(6,'【满400减40】ONLY夏新喇叭长袖高腰碎花连衣裙女|117207510','纯色内衬 镂空设计7天降退差价',224.5,946,9999,1),(7,'夏季2018新款短袖男士t恤韩版宽松ulzzang百搭潮流半袖七分袖上衣','2件装79元！收藏加购优先发货！',79,9543,9999,1),(8,'唐狮春秋季牛仔外套男牛仔衣夹克韩版潮流修身帅气情侣装男生外套','潮流多色，热卖上万件',169,4909,9999,1),(21,'苏晨阳的内裤','',9.9,NULL,NULL,1),(22,'杨宏伟肖像','万人抢购',99999,9999,1,2),(23,'Air Jordan 1乔 1黑红脚趾小闪电黑灰绿黄蓝月六冠王扣碎','全场正品 达人推荐 无忧退换',1499.99,1000,1000,3),(24,'耐克 NIKE AIR MAX 97 SE PULL TAB 白蓝串标子弹鞋AQ4126-400','我好像要一双!!!!',1999.99,1000,1000,3),(25,'stussy卫衣男supreme外套欧美bape斯图西潮牌情侣装superme','好看,我想要!!!',2000.99,1000,1000,2),(26,'李宁男装T恤中国纽约时装周短袖汉字时尚限量透气运动衫AHSN645','万人抢购',499.99,1000,1000,2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `product_id` int(11) DEFAULT NULL COMMENT '对应的产品id',
  PRIMARY KEY (`id`),
  KEY `fk_product_image_product` (`product_id`),
  CONSTRAINT `fk_product_image_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (26,7),(27,7),(28,7),(29,7),(30,7),(101,22),(102,22),(103,22),(104,22),(105,22),(106,23),(107,23),(108,23),(109,23),(110,23),(111,24),(112,24),(113,24),(114,24),(115,24),(116,25),(117,25),(118,25),(119,25),(120,25),(121,26),(122,26),(123,26),(124,26),(125,26);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) DEFAULT NULL COMMENT '属性名称',
  `category_id` int(11) NOT NULL COMMENT '对应的分类id',
  PRIMARY KEY (`id`),
  KEY `fk_property_category` (`category_id`),
  CONSTRAINT `fk_property_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'尺寸',1),(2,'厚薄',1),(3,'材质成分',1),(4,'货号',1),(5,'基础风格',1),(6,'品牌',1);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_value`
--

DROP TABLE IF EXISTS `property_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `product_id` int(11) NOT NULL COMMENT '对应产品id',
  `property_id` int(11) NOT NULL COMMENT '对应属性id',
  `value` varchar(255) DEFAULT NULL COMMENT '具体的属性值',
  PRIMARY KEY (`id`),
  KEY `fk_property_value_property` (`property_id`),
  KEY `fk_property_value_product` (`product_id`),
  CONSTRAINT `fk_property_value_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_property_value_property` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_value`
--

LOCK TABLES `property_value` WRITE;
/*!40000 ALTER TABLE `property_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referal_link`
--

DROP TABLE IF EXISTS `referal_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referal_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `text` varchar(255) NOT NULL COMMENT '超链显示的文字',
  `link` varchar(255) NOT NULL COMMENT '超链的地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referal_link`
--

LOCK TABLES `referal_link` WRITE;
/*!40000 ALTER TABLE `referal_link` DISABLE KEYS */;
INSERT INTO `referal_link` VALUES (1,'天猫会员','#nowhere'),(2,'电器城','#nowhere'),(3,'喵鲜生','#nowhere'),(4,'医药馆','#nowhere'),(5,'营业厅','#nowhere'),(6,'魅力惠','#nowhere'),(7,'飞猪旅游','#nowhere'),(8,'苏宁易购','#nowhere');
/*!40000 ALTER TABLE `referal_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `content` varchar(4000) DEFAULT NULL COMMENT '评价内容',
  `user_id` int(11) NOT NULL COMMENT '对应的用户id',
  `product_id` int(11) NOT NULL COMMENT '对应的产品id',
  `createDate` datetime DEFAULT NULL COMMENT '评价时间',
  PRIMARY KEY (`id`),
  KEY `fk_review_product` (`product_id`),
  KEY `fk_review_user` (`user_id`),
  CONSTRAINT `fk_review_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_review_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (2,'这款短袖T恤不错哦，没想到买的号码挺准。上身效果好看，特别时尚休闲。和图片上的一样，没色差，衣服料子很好，没线头，布料是棉的，摸起来舒服，比想象的要厚实。朋友们都说好看，款式简洁大方。真的是超级赞，以后就认准这家啦，有想买的亲赶快下手哦。我是这的老顾客了，这家产品确实一直棒棒的哦。',1,4,'2018-05-02 10:24:02'),(3,'比较轻薄，质量蛮好的，穿起来还是比较舒适，很合身，价格也实惠！',1,4,'2018-05-02 10:42:07'),(6,'上身效果很好',3,6,'2018-05-07 10:49:09'),(7,'评价一个',1,6,'2018-05-07 11:01:06'),(8,'qw54e5qwe4qw6eq4eqewq',1,4,'2018-05-07 18:05:09'),(9,'当评价完成之后，可以看到其他用户的评价信息',1,4,'2018-05-07 20:59:49'),(10,'质量很好',3,21,'2018-07-11 14:55:53');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) NOT NULL COMMENT '用户名称',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'yanghongwei','123'),(2,'hwyoung','123'),(3,'测试账号','123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-13  9:27:34
