/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50027
Source Host           : localhost:3306
Source Database       : cloudbrain

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2017-07-11 10:34:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cb_music
-- ----------------------------
DROP TABLE IF EXISTS `cb_music`;
CREATE TABLE `cb_music` (
  `id` int(11) NOT NULL auto_increment,
  `music_userid` int(11) default NULL COMMENT '用户id',
  `music_src` varchar(255) default NULL,
  `music_name` varchar(255) default NULL,
  `music_time` varchar(255) default NULL,
  `music_size` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cb_music
-- ----------------------------
INSERT INTO `cb_music` VALUES ('1', '1', 'music/201707111011544.mp3', 'Jasmine Sokko - 1057.mp3', '2017-07-11 10:11:54', '5.68MB');
INSERT INTO `cb_music` VALUES ('2', '1', 'music/201707111011554.mp3', '任贤齐,杨千嬅 - 花好月圆夜(国).mp3', '2017-07-11 10:11:55', '3.87MB');

-- ----------------------------
-- Table structure for cb_news
-- ----------------------------
DROP TABLE IF EXISTS `cb_news`;
CREATE TABLE `cb_news` (
  `id` int(11) NOT NULL auto_increment,
  `news_userid` int(11) default NULL COMMENT '用户id',
  `news_title` varchar(255) default NULL,
  `news_link` varchar(255) default NULL,
  `news_uploadtime` varchar(255) default NULL,
  `news_status` bit(1) default NULL,
  `news_type` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cb_news
-- ----------------------------
INSERT INTO `cb_news` VALUES ('1', '1', 'baidu', 'baidu', 'shijian', '\0', '1');
INSERT INTO `cb_news` VALUES ('2', '1', 'xina', 'xina', 'shijan', '\0', '2');
INSERT INTO `cb_news` VALUES ('3', '1', 'df', 'ds', 's', '\0', '3');

-- ----------------------------
-- Table structure for cb_notepad
-- ----------------------------
DROP TABLE IF EXISTS `cb_notepad`;
CREATE TABLE `cb_notepad` (
  `id` int(11) NOT NULL auto_increment,
  `notepad_userid` int(11) default NULL,
  `notepad_title` varchar(255) default NULL,
  `notepad_content` varchar(255) default NULL,
  `notepad_createtime` varchar(255) default NULL,
  `notepad_modifytime` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cb_notepad
-- ----------------------------
INSERT INTO `cb_notepad` VALUES ('1', '1', '123', '123', '2017-07-11 10:26:11', null);

-- ----------------------------
-- Table structure for cb_picture
-- ----------------------------
DROP TABLE IF EXISTS `cb_picture`;
CREATE TABLE `cb_picture` (
  `id` int(11) NOT NULL auto_increment,
  `picture_userid` int(11) default NULL COMMENT '用户id',
  `picture_name` varchar(255) default NULL,
  `picture_size` varchar(255) default NULL,
  `picture_src` varchar(255) default NULL,
  `picture_time` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cb_picture
-- ----------------------------
INSERT INTO `cb_picture` VALUES ('1', '1', 'meng1.jpg', '49.38KB', 'picture/201707111021151.jpg', '2017-07-11 10:21:15');
INSERT INTO `cb_picture` VALUES ('2', '1', 'meng2.jpg', '61.75KB', 'picture/201707111021161.jpg', '2017-07-11 10:21:16');
INSERT INTO `cb_picture` VALUES ('3', '1', 'meng3.jpg', '63.56KB', 'picture/201707111021162.jpg', '2017-07-11 10:21:16');
INSERT INTO `cb_picture` VALUES ('4', '1', 'meng4.jpg', '65.22KB', 'picture/201707111021171.jpg', '2017-07-11 10:21:17');
INSERT INTO `cb_picture` VALUES ('5', '1', 'meng5.jpg', '73.27KB', 'picture/201707111021171.jpg', '2017-07-11 10:21:17');
INSERT INTO `cb_picture` VALUES ('6', '1', 'meng6.jpg', '65.83KB', 'picture/201707111021180.jpg', '2017-07-11 10:21:18');
INSERT INTO `cb_picture` VALUES ('7', '1', 'meng11.jpg', '43.71KB', 'picture/201707111021183.jpg', '2017-07-11 10:21:18');
INSERT INTO `cb_picture` VALUES ('8', '1', 'meng12.jpg', '44.84KB', 'picture/201707111021194.jpg', '2017-07-11 10:21:19');
INSERT INTO `cb_picture` VALUES ('9', '1', 'meng21.jpg', '41.21KB', 'picture/201707111021194.jpg', '2017-07-11 10:21:19');
INSERT INTO `cb_picture` VALUES ('10', '1', 'meng22.jpg', '62.54KB', 'picture/201707111021201.jpg', '2017-07-11 10:21:20');
INSERT INTO `cb_picture` VALUES ('11', '1', 'meng23.jpg', '38.38KB', 'picture/201707111021204.jpg', '2017-07-11 10:21:20');
INSERT INTO `cb_picture` VALUES ('12', '1', 'meng24.jpg', '35.07KB', 'picture/201707111021210.jpg', '2017-07-11 10:21:21');
INSERT INTO `cb_picture` VALUES ('13', '1', 'meng25.jpg', '35.00KB', 'picture/201707111021212.jpg', '2017-07-11 10:21:21');
INSERT INTO `cb_picture` VALUES ('14', '1', 'meng26.jpg', '35.40KB', 'picture/201707111021221.jpg', '2017-07-11 10:21:22');
INSERT INTO `cb_picture` VALUES ('15', '1', 'QQ图片20170626182907.jpg', '945.60KB', 'picture/201707111021224.jpg', '2017-07-11 10:21:22');
INSERT INTO `cb_picture` VALUES ('16', '1', 'QQ图片20170626182920.jpg', '877.95KB', 'picture/201707111021231.jpg', '2017-07-11 10:21:23');
INSERT INTO `cb_picture` VALUES ('17', '1', 'QQ图片20170626182933.jpg', '900.36KB', 'picture/201707111021234.jpg', '2017-07-11 10:21:23');
INSERT INTO `cb_picture` VALUES ('18', '1', 'QQ图片20170626182950.jpg', '25.47KB', 'picture/201707111021243.jpg', '2017-07-11 10:21:24');

-- ----------------------------
-- Table structure for cb_resource
-- ----------------------------
DROP TABLE IF EXISTS `cb_resource`;
CREATE TABLE `cb_resource` (
  `id` int(11) NOT NULL auto_increment,
  `res_user_id` int(11) default NULL,
  `res_folder_id` int(11) default NULL,
  `res_name` varchar(255) default NULL,
  `res_sizeString` varchar(255) default NULL,
  `res_createtime` varchar(255) default NULL,
  `res_url` varchar(255) default NULL,
  `res_type` int(3) default NULL,
  `res_is_delete` int(11) default '0',
  `res_new_name` varchar(255) default NULL,
  `res_ext` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cb_resource
-- ----------------------------
INSERT INTO `cb_resource` VALUES ('1', '1', '0', '新建文件夹', null, '2017-07-11 10:30:30', null, '0', '0', null, null);
INSERT INTO `cb_resource` VALUES ('2', '1', '1', 'meng2.jpg', '61.75KB', '2017-07-11 10:31:23', 'file/c6a555650a284972918ec1658b6c73b7.jpg', '1', '0', 'c6a555650a284972918ec1658b6c73b7.jpg', 'jpg');
INSERT INTO `cb_resource` VALUES ('3', '1', '1', '新建文件夹', null, '2017-07-11 10:32:58', null, '0', '0', null, null);
INSERT INTO `cb_resource` VALUES ('4', '1', '3', 'meng25.jpg', '35.00KB', '2017-07-11 10:33:09', 'file/58b779800f7840e18f8bc8a008052986.jpg', '1', '0', '58b779800f7840e18f8bc8a008052986.jpg', 'jpg');
INSERT INTO `cb_resource` VALUES ('5', '1', '3', 'meng26.jpg', '35.40KB', '2017-07-11 10:33:09', 'file/0fad756a6a8d4350964ade615077d5bf.jpg', '1', '0', '0fad756a6a8d4350964ade615077d5bf.jpg', 'jpg');

-- ----------------------------
-- Table structure for cb_user
-- ----------------------------
DROP TABLE IF EXISTS `cb_user`;
CREATE TABLE `cb_user` (
  `user_id` int(11) NOT NULL auto_increment COMMENT '用户id',
  `user_phone` varchar(255) default NULL COMMENT '用户手机号',
  `user_password` varchar(255) default NULL COMMENT '用户密码',
  `user_nickname` varchar(255) default NULL COMMENT '用户昵称',
  `user_email` varchar(255) default NULL COMMENT '用户邮箱',
  `user_photo` varchar(255) default NULL COMMENT '用户头像',
  `user_address` varchar(255) default NULL COMMENT '用户地址',
  `user_age` int(11) default '0' COMMENT '用户年龄',
  `user_sex` bit(1) default '\0' COMMENT '用户性别',
  `user_register` varchar(255) default NULL COMMENT '注册时间',
  `user_modify` varchar(255) default NULL COMMENT '最后修改时间',
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cb_user
-- ----------------------------
INSERT INTO `cb_user` VALUES ('1', '12', '123', null, '123123', null, null, '0', '\0', '2017-07-11 09:52:45', null);
