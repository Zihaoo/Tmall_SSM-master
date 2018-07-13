-- 商城DDL
DROP DATABASE IF EXISTS tmall_ssm;
CREATE DATABASE tmall_ssm DEFAULT CHARACTER SET utf8;
USE `tmall_ssm`;

-- user 用户表
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) NOT NULL COMMENT '用户名称',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


-- order 订单表
CREATE TABLE IF NOT EXISTS `order_` (
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- order_item 订单项目表  
CREATE TABLE IF NOT EXISTS `order_item` (
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- product 产品表
CREATE TABLE IF NOT EXISTS `product` (
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- 产品图片表
CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `product_id` int(11) DEFAULT NULL COMMENT '对应的产品id',
  PRIMARY KEY (`id`),
  KEY `fk_product_image_product` (`product_id`),
  CONSTRAINT `fk_product_image_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- 商品详情信息里的属性表
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) DEFAULT NULL COMMENT '属性名称',
  `category_id` int(11) NOT NULL COMMENT '对应的分类id',
  PRIMARY KEY (`id`),
  KEY `fk_property_category` (`category_id`),
  CONSTRAINT `fk_property_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 属性值表
CREATE TABLE IF NOT EXISTS `property_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `product_id` int(11) NOT NULL COMMENT '对应产品id',
  `property_id` int(11) NOT NULL COMMENT '对应属性id',
  `value` varchar(255) DEFAULT NULL COMMENT '具体的属性值',
  PRIMARY KEY (`id`),
  KEY `fk_property_value_property` (`property_id`),
  KEY `fk_property_value_product` (`product_id`),
  CONSTRAINT `fk_property_value_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_property_value_property` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 分类表(16个,方便前端设计)
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) NOT NULL COMMENT '分类的名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- 评价表
CREATE TABLE IF NOT EXISTS `review` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 额外添加: 推荐超链接表 

