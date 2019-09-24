/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : community

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-09-24 13:24:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `gmt_create` bigint(20) DEFAULT NULL,
  `gmt_modified` bigint(20) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT '0',
  `view_count` int(11) DEFAULT '0',
  `like_count` int(11) DEFAULT '0',
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '123', '1569032552200', '1569032552200', '1', '4', '1', '1', '1', '12');
INSERT INTO `question` VALUES ('2', '1', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '4', '1', '1', '0', '123');
INSERT INTO `question` VALUES ('3', '123', '1569032552200', '1569032552200', '1', '4', '1', '1', '1', '12');
INSERT INTO `question` VALUES ('4', '问题', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '4', '1', '1', '0', '123');
INSERT INTO `question` VALUES ('5', '123', '1569032552200', '1569032552200', '1', '4', '1', '1', '1', '12');
INSERT INTO `question` VALUES ('6', '问题1', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '4', '1', '1', '0', '123');
INSERT INTO `question` VALUES ('7', '问题2', '问题巴拉巴拉小魔仙全身', '1569032552200', '1', '4', '1', '0', '0', '1');
INSERT INTO `question` VALUES ('8', '问题3', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '4', '1', '0', '0', '2');
INSERT INTO `question` VALUES ('9', '问题4', '问题巴拉巴拉小魔仙全身', '1569032552200', '1', '4', '1', '0', '0', '3');
INSERT INTO `question` VALUES ('10', '问题5', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '5', '1', '0', '0', '4');
INSERT INTO `question` VALUES ('11', '问题6', '问题巴拉巴拉小魔仙全身', '1569032552200', '1', '5', '1', '0', '0', '5');
INSERT INTO `question` VALUES ('12', '问题7', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '5', '1', '0', '0', '6');
INSERT INTO `question` VALUES ('13', '问题8', '1569032552200', '1569032552200', '1', '5', '1', '1', '1', '12');
INSERT INTO `question` VALUES ('14', '问题9', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '5', '1', '1', '0', '123');
INSERT INTO `question` VALUES ('15', '问题10', '1569032552200', '1569032552200', '1', '5', '1', '1', '1', '12');
INSERT INTO `question` VALUES ('16', '问题11', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '5', '1', '1', '0', '123');
INSERT INTO `question` VALUES ('17', '问题12', '1569032552200', '1569032552200', '1', '5', '1', '1', '1', '12');
INSERT INTO `question` VALUES ('18', '问题13', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '5', '1', '1', '0', '123');
INSERT INTO `question` VALUES ('19', '问题14', '1569032552200', '1569032552200', '1', '5', '1', '0', '0', '1');
INSERT INTO `question` VALUES ('20', '问题15', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '1', '1', '0', '0', '2');
INSERT INTO `question` VALUES ('21', '问题16', '1569032552200', '1569032552200', '1', '1', '1', '0', '0', '3');
INSERT INTO `question` VALUES ('22', '问题', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '1', '1', '0', '0', '4');
INSERT INTO `question` VALUES ('23', '123', '1569032552200', '1569032552200', '1', '1', '1', '0', '0', '5');
INSERT INTO `question` VALUES ('24', '问题', '问题巴拉巴拉小魔仙全身变', '1569032552200', '1', '1', '1', '0', '0', '6');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `token` varchar(36) DEFAULT NULL,
  `gmt_create` bigint(20) DEFAULT NULL,
  `gmt_modified` bigint(20) DEFAULT NULL,
  `bio` varchar(256) DEFAULT NULL,
  `avatar_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '53362164', '李金灿', '0f858904-aa34-4575-bbce-360cf63e4eaa', '1569032320706', '1569032320706', null, 'https://avatars0.githubusercontent.com/u/53362164?v=4');
INSERT INTO `user` VALUES ('2', '53362164', '李金灿', '3efeddce-1034-4971-ab05-c145995675dd', '1569034766758', '1569034766758', null, 'https://avatars0.githubusercontent.com/u/53362164?v=4');
INSERT INTO `user` VALUES ('3', '53362164', '李金灿', '960fe9b8-13a2-4acf-b580-353546debf26', '1569051186680', '1569051186680', null, 'https://avatars0.githubusercontent.com/u/53362164?v=4');
INSERT INTO `user` VALUES ('4', '53362164', '李金灿', '199472a3-df61-4346-8fe9-279fa8b9c795', '1569135782402', '1569135782402', null, 'https://avatars0.githubusercontent.com/u/53362164?v=4');
INSERT INTO `user` VALUES ('5', '53362164', '李金灿', '9ba77a40-a648-452c-8777-b024ce70bb50', '1569152547249', '1569152547249', null, 'https://avatars0.githubusercontent.com/u/53362164?v=4');
