/*
 Navicat Premium Data Transfer

 Source Server         : ECS2
 Source Server Type    : MySQL
 Source Server Version : 50629
 Source Host           : 115.28.208.164
 Source Database       : zentao

 Target Server Type    : MySQL
 Target Server Version : 50629
 File Encoding         : utf-8

 Date: 03/25/2016 18:46:45 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `zt_action`
-- ----------------------------
DROP TABLE IF EXISTS `zt_action`;
CREATE TABLE `zt_action` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `objectType` varchar(30) NOT NULL DEFAULT '',
  `objectID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product` varchar(255) NOT NULL,
  `project` mediumint(9) NOT NULL,
  `actor` varchar(30) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `comment` text NOT NULL,
  `extra` text NOT NULL,
  `read` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`objectID`,`product`,`project`,`action`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_action`
-- ----------------------------
BEGIN;
INSERT INTO `zt_action` VALUES ('1', 'user', '1', ',0,', '0', 'admin', 'login', '2016-03-17 15:19:14', '', '', '0'), ('2', 'project', '1', ',,', '1', 'admin', 'opened', '2016-03-17 15:36:18', '', '', '0'), ('3', 'project', '1', ',,', '1', 'admin', 'started', '2016-03-17 15:56:53', '项目开始', '', '0'), ('4', 'product', '1', ',1,', '0', 'admin', 'opened', '2016-03-17 15:59:57', '', '', '0'), ('5', 'task', '1', ',,', '1', 'admin', 'opened', '2016-03-17 16:05:42', '', '', '0'), ('6', 'task', '1', ',,', '1', 'admin', 'started', '2016-03-17 16:05:56', '', '', '0'), ('7', 'task', '2', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '0'), ('8', 'task', '3', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '0'), ('9', 'task', '4', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '0'), ('10', 'task', '5', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '0'), ('11', 'task', '6', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '0'), ('12', 'task', '7', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '1'), ('13', 'task', '8', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '0'), ('14', 'task', '9', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '1'), ('15', 'task', '10', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '0'), ('16', 'task', '11', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '0'), ('17', 'task', '12', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '0'), ('18', 'task', '13', ',,', '1', 'admin', 'opened', '2016-03-17 16:07:30', '', '', '1'), ('19', 'task', '13', ',,', '1', 'admin', 'started', '2016-03-17 16:07:56', '', '', '1'), ('20', 'task', '11', ',,', '1', 'admin', 'started', '2016-03-17 16:08:04', '', '', '0'), ('21', 'task', '12', ',,', '1', 'admin', 'started', '2016-03-17 16:08:12', '', '', '0'), ('22', 'task', '9', ',,', '1', 'admin', 'started', '2016-03-17 16:08:16', '', '', '1'), ('23', 'task', '10', ',,', '1', 'admin', 'started', '2016-03-17 16:08:20', '', '', '0'), ('24', 'task', '8', ',,', '1', 'admin', 'started', '2016-03-17 16:08:24', '', '', '0'), ('25', 'task', '6', ',,', '1', 'admin', 'started', '2016-03-17 16:08:28', '', '', '0'), ('26', 'task', '5', ',,', '1', 'admin', 'started', '2016-03-17 16:08:32', '', '', '0'), ('27', 'task', '4', ',,', '1', 'admin', 'started', '2016-03-17 16:08:35', '', '', '0'), ('28', 'task', '3', ',,', '1', 'admin', 'started', '2016-03-17 16:08:39', '', '', '0'), ('29', 'task', '2', ',,', '1', 'admin', 'started', '2016-03-17 16:08:42', '', '', '0'), ('30', 'task', '7', ',,', '1', 'admin', 'started', '2016-03-17 16:08:46', '', '', '1'), ('31', 'task', '14', ',,', '1', 'admin', 'opened', '2016-03-17 16:09:51', '', '', '0'), ('32', 'task', '14', ',,', '1', 'admin', 'started', '2016-03-17 16:09:56', '', '', '0'), ('33', 'task', '14', ',,', '1', 'admin', 'edited', '2016-03-17 16:10:27', '', '', '0'), ('34', 'task', '1', ',,', '1', 'admin', 'edited', '2016-03-17 16:10:53', '', '', '0'), ('35', 'task', '2', ',,', '1', 'admin', 'edited', '2016-03-17 16:11:15', '', '', '0'), ('36', 'task', '3', ',,', '1', 'admin', 'edited', '2016-03-17 16:11:25', '', '', '0'), ('37', 'task', '4', ',,', '1', 'admin', 'edited', '2016-03-17 16:11:52', '', '', '0'), ('38', 'task', '5', ',,', '1', 'admin', 'edited', '2016-03-17 16:12:08', '', '', '0'), ('39', 'task', '6', ',,', '1', 'admin', 'edited', '2016-03-17 16:12:20', '', '', '0'), ('40', 'task', '7', ',,', '1', 'admin', 'edited', '2016-03-17 16:12:32', '', '', '1'), ('41', 'task', '8', ',,', '1', 'admin', 'edited', '2016-03-17 16:12:47', '', '', '0'), ('42', 'task', '9', ',,', '1', 'admin', 'edited', '2016-03-17 16:13:00', '', '', '1'), ('43', 'task', '10', ',,', '1', 'admin', 'edited', '2016-03-17 16:13:24', '', '', '0'), ('44', 'task', '11', ',,', '1', 'admin', 'edited', '2016-03-17 16:13:37', '', '', '0'), ('45', 'task', '12', ',,', '1', 'admin', 'edited', '2016-03-17 16:14:00', '', '', '0'), ('46', 'task', '13', ',,', '1', 'admin', 'edited', '2016-03-17 16:14:33', '', '', '1'), ('47', 'task', '9', ',,', '1', 'admin', 'edited', '2016-03-17 16:14:42', '', '', '1'), ('48', 'task', '8', ',,', '1', 'admin', 'edited', '2016-03-17 16:14:51', '', '', '0'), ('49', 'task', '7', ',,', '1', 'admin', 'edited', '2016-03-17 16:15:03', '', '', '1'), ('50', 'task', '6', ',,', '1', 'admin', 'edited', '2016-03-17 16:15:12', '', '', '0'), ('51', 'task', '5', ',,', '1', 'admin', 'edited', '2016-03-17 16:15:23', '', '', '0'), ('52', 'task', '4', ',,', '1', 'admin', 'edited', '2016-03-17 16:15:32', '', '', '0'), ('53', 'task', '3', ',,', '1', 'admin', 'edited', '2016-03-17 16:15:42', '', '', '0'), ('54', 'task', '2', ',,', '1', 'admin', 'edited', '2016-03-17 16:15:51', '', '', '0'), ('55', 'task', '15', ',,', '1', 'admin', 'opened', '2016-03-17 16:17:20', '', '', '0'), ('56', 'task', '15', ',,', '1', 'admin', 'started', '2016-03-17 16:17:27', '', '', '0'), ('57', 'task', '15', ',,', '1', 'admin', 'edited', '2016-03-17 16:17:43', '', '', '0'), ('58', 'task', '16', ',,', '1', 'admin', 'opened', '2016-03-17 16:18:49', '', '', '1'), ('59', 'task', '16', ',,', '1', 'admin', 'started', '2016-03-17 16:18:55', '', '', '1'), ('60', 'task', '17', ',,', '1', 'admin', 'opened', '2016-03-17 16:19:39', '', '', '0'), ('61', 'task', '17', ',,', '1', 'admin', 'started', '2016-03-17 16:19:51', '', '', '0'), ('62', 'task', '17', ',,', '1', 'admin', 'assigned', '2016-03-17 16:19:59', '', 'diliniya', '0'), ('63', 'task', '18', ',,', '1', 'admin', 'opened', '2016-03-17 16:20:51', '', '', '1'), ('64', 'task', '18', ',,', '1', 'admin', 'started', '2016-03-17 16:20:57', '', '', '1'), ('65', 'task', '18', ',,', '1', 'admin', 'assigned', '2016-03-17 16:21:03', '', 'yangkai', '1'), ('66', 'task', '19', ',,', '1', 'admin', 'opened', '2016-03-17 16:22:12', '', '', '0'), ('67', 'task', '19', ',,', '1', 'admin', 'assigned', '2016-03-17 16:22:19', '', 'zhangtingrui', '0'), ('68', 'task', '19', ',,', '1', 'admin', 'started', '2016-03-17 16:22:23', '', '', '0'), ('69', 'task', '19', ',,', '1', 'admin', 'assigned', '2016-03-17 16:22:34', '', 'zhangtingrui', '0'), ('70', 'task', '20', ',,', '1', 'admin', 'opened', '2016-03-17 16:23:28', '', '', '1'), ('71', 'task', '20', ',,', '1', 'admin', 'started', '2016-03-17 16:23:32', '', '', '1'), ('72', 'task', '20', ',,', '1', 'admin', 'assigned', '2016-03-17 16:23:37', '', 'zhangtingrui', '1'), ('73', 'task', '21', ',,', '1', 'admin', 'opened', '2016-03-17 16:25:41', '', '', '1'), ('74', 'task', '21', ',,', '1', 'admin', 'started', '2016-03-17 16:25:44', '', '', '1'), ('75', 'task', '21', ',,', '1', 'admin', 'assigned', '2016-03-17 16:25:51', '', 'helin', '1'), ('76', 'task', '22', ',,', '1', 'admin', 'opened', '2016-03-17 16:26:24', '', '', '1'), ('77', 'task', '22', ',,', '1', 'admin', 'started', '2016-03-17 16:26:27', '', '', '1'), ('78', 'task', '22', ',,', '1', 'admin', 'assigned', '2016-03-17 16:26:33', '', 'helin', '1'), ('79', 'task', '23', ',,', '1', 'admin', 'opened', '2016-03-17 16:27:26', '', '', '0'), ('80', 'task', '23', ',,', '1', 'admin', 'started', '2016-03-17 16:27:31', '', '', '0'), ('81', 'task', '23', ',,', '1', 'admin', 'assigned', '2016-03-17 16:27:36', '', 'shiyongcan', '0'), ('82', 'task', '24', ',,', '1', 'admin', 'opened', '2016-03-17 16:28:43', '', '', '1'), ('83', 'task', '24', ',,', '1', 'admin', 'started', '2016-03-17 16:28:47', '', '', '1'), ('84', 'task', '24', ',,', '1', 'admin', 'assigned', '2016-03-17 16:28:51', '', 'shiyongcan', '1'), ('85', 'task', '25', ',,', '1', 'admin', 'opened', '2016-03-17 16:29:34', '', '', '0'), ('86', 'task', '25', ',,', '1', 'admin', 'started', '2016-03-17 16:29:38', '', '', '0'), ('87', 'task', '25', ',,', '1', 'admin', 'assigned', '2016-03-17 16:29:45', '', 'chenyongpeng', '0'), ('88', 'task', '26', ',,', '1', 'admin', 'opened', '2016-03-17 16:30:30', '', '', '0'), ('89', 'task', '26', ',,', '1', 'admin', 'started', '2016-03-17 16:30:34', '', '', '0'), ('90', 'task', '26', ',,', '1', 'admin', 'assigned', '2016-03-17 16:30:40', '', 'anjianfeng', '0'), ('91', 'story', '1', ',1,', '0', 'admin', 'opened', '2016-03-17 16:33:05', '', '', '0'), ('92', 'story', '1', ',1,', '0', 'admin', 'edited', '2016-03-17 16:34:18', '<p class=\"MsoNormal\"><b>数据说明：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\"><b>&nbsp;</b></p>\r\n<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\" style=\"border:none;\"><tbody><tr><td width=\"86\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">数据项</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">必填</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">说明</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">所属地区</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">是</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">显示企业所属地市、市县、区域，不可修改</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">组织机构代码</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">只可输入字母、数字，不超过<span>9</span>位（统一编码规范）</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">企业名称</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">中文、英文</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">企业性质</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">是</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">两级下拉选择</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">所属行业</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">是</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">两级下拉选择</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">主要经营业务</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">按实际情况填写企业主要经营的业务</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">联系人</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">中文、英文</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">联系地址</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">是</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">两级下拉选择</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">邮政编码</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">只可填写<span>6</span>位数字</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">联系电话</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">格式必须符合（区号）<span>+</span>电话号码或者为手机号码</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">传真</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">格式必须符合（区号）<span>+</span>电话</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"86\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">EMAIL</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"45\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">否</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"295\" valign=\"top\"><p class=\"MsoNormal\"><span><a href=\"mailto:格式必须符合xxx@xxx.xxx\"><span style=\"font-family:宋体;\">格式必须符合</span><span style=\"font-family:宋体;\">xxx@xxx.xxx</span></a></span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '0'), ('93', 'story', '1', ',1,', '0', 'admin', 'edited', '2016-03-17 16:36:04', '', '', '0'), ('94', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-03-17 16:37:38', '', '', '0'), ('95', 'user', '9', ',0,', '0', 'helin', 'login', '2016-03-17 16:37:45', '', '', '0'), ('96', 'user', '9', ',0,', '0', 'helin', 'logout', '2016-03-17 16:38:36', '', '', '0'), ('97', 'user', '2', ',0,', '0', 'husize', 'login', '2016-03-17 16:38:42', '', '', '0'), ('98', 'user', '1', ',0,', '0', 'admin', 'login', '2016-03-17 16:39:32', '', '', '0'), ('99', 'task', '27', ',,', '1', 'admin', 'opened', '2016-03-17 16:42:04', '', '', '1'), ('100', 'task', '27', ',,', '1', 'admin', 'started', '2016-03-17 16:42:08', '', '', '1'), ('101', 'task', '27', ',,', '1', 'admin', 'assigned', '2016-03-17 16:42:14', '', 'husize', '1'), ('102', 'user', '2', ',0,', '0', 'husize', 'logout', '2016-03-17 16:45:31', '', '', '0'), ('103', 'user', '2', ',0,', '0', 'husize', 'login', '2016-03-17 16:45:38', '', '', '0'), ('104', 'user', '2', ',0,', '0', 'husize', 'logout', '2016-03-17 16:47:09', '', '', '0'), ('105', 'user', '2', ',0,', '0', 'husize', 'login', '2016-03-17 16:47:15', '', '', '0'), ('106', 'product', '1', ',1,', '0', 'admin', 'edited', '2016-03-17 16:48:29', '', '', '0'), ('107', 'product', '1', ',1,', '0', 'admin', 'edited', '2016-03-17 16:48:52', '', '', '0'), ('108', 'user', '2', ',0,', '0', 'husize', 'logout', '2016-03-17 16:50:08', '', '', '0'), ('109', 'user', '9', ',0,', '0', 'helin', 'login', '2016-03-17 16:50:14', '', '', '0'), ('110', 'user', '9', ',0,', '0', 'helin', 'logout', '2016-03-17 16:50:31', '', '', '0'), ('111', 'user', '11', ',0,', '0', 'yangkai', 'login', '2016-03-17 16:50:43', '', '', '0'), ('112', 'user', '11', ',0,', '0', 'yangkai', 'logout', '2016-03-17 16:50:53', '', '', '0'), ('113', 'user', '6', ',0,', '0', 'anjianfeng', 'login', '2016-03-17 16:50:56', '', '', '0'), ('114', 'user', '6', ',0,', '0', 'anjianfeng', 'logout', '2016-03-17 16:51:04', '', '', '0'), ('115', 'user', '12', ',0,', '0', 'diliniya', 'login', '2016-03-17 16:51:08', '', '', '0'), ('116', 'user', '12', ',0,', '0', 'diliniya', 'logout', '2016-03-17 16:51:18', '', '', '0'), ('117', 'user', '1', ',0,', '0', 'admin', 'login', '2016-03-17 16:51:22', '', '', '0'), ('118', 'user', '2', ',0,', '0', 'husize', 'login', '2016-03-17 17:52:07', '', '', '0'), ('119', 'user', '1', ',0,', '0', 'admin', 'login', '2016-03-17 18:09:13', '', '', '0'), ('120', 'story', '2', ',1,', '0', 'husize', 'opened', '2016-03-17 18:13:15', '', '', '0'), ('121', 'story', '2', ',1,', '0', 'husize', 'edited', '2016-03-17 18:16:43', '<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border:none;\"><tbody><tr><td width=\"27%\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">数据项</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">必填</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">说明</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"27%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">建档期就业人数</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">是</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">填写初次将档时监测点就业人数</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"27%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">调查期就业人数</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">是</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">填写本次调查期当时的监测点就业人数</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"27%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">其他原因</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">是</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"27%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;color:red;\">就业人数减少类型</span><span style=\"font-size:12.0pt;line-height:150%;color:red;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;color:red;\">否</span><span style=\"font-size:12.0pt;line-height:150%;color:red;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;color:red;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"27%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">主要原因</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">否</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"27%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">主要原因说明</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">否</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"27%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">次要原因</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">否</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"27%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">次要原因说明</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">否</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"27%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">第三原因</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">否</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"27%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">第三原因说明</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"8%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;font-family:宋体;\">否</span><span style=\"font-size:12.0pt;line-height:150%;\"></span></p>\r\n</td>\r\n<td width=\"63%\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:150%;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">如果调查期数据小于建档期数据，就业人数减少类型和就业人数减少主要原因及说明必填。</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">就业人数减少类型包括：关闭破产、停业整顿、经济性裁员、业务转移、自然减员、正常解除或终止劳动合同、国际因素变化影响、自然灾害、重大事件影响、其他。</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">就业人数减少原因包括：产业结构调整，重大技术改革，节能减排、淘汰落后产能，订单不足，原材料涨价，工资、社保等用工成本上升，自然减员，经营资金困难，税收政策变化（包括税负增加或出口退税减少等），季节性用工，其他，自行离职，工作调动、企业内部调剂，劳动关系转移、劳务派遣。</p>', '', '0'), ('122', 'task', '16', ',,', '1', 'admin', 'edited', '2016-03-17 18:19:10', '', '', '0'), ('123', 'story', '3', ',1,', '0', 'husize', 'opened', '2016-03-17 18:24:51', '', '', '0'), ('124', 'story', '3', ',1,', '0', 'husize', 'edited', '2016-03-17 18:25:33', '<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"text-indent:23.25pt;\">查看以往调查期企业数据的状态</p>', '', '0'), ('125', 'story', '4', ',1,', '0', 'husize', 'opened', '2016-03-17 18:33:57', '', '', '0'), ('126', 'story', '4', ',1,', '0', 'husize', 'edited', '2016-03-17 18:34:38', '<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-18.0pt;\">1.&nbsp; 列表：显示所有已备案的企业。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-18.0pt;\">2.&nbsp; 查询：根据调查期和地区的查询条件进行检索。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-18.0pt;\">3.&nbsp; 查看：查看企业的详细信息。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-18.0pt;\">4.&nbsp; 导出<span>EXCEL</span>：将当前的列表导出为<span>EXCEL</span>文件并保存在本地磁盘。</p>', '', '0'), ('127', 'user', '11', ',0,', '0', 'yangkai', 'login', '2016-03-17 18:36:22', '', '', '0'), ('128', 'story', '5', ',1,', '0', 'husize', 'opened', '2016-03-17 18:37:14', '', '', '0'), ('129', 'story', '5', ',1,', '0', 'husize', 'edited', '2016-03-17 18:37:46', '<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-18.0pt;\">1.&nbsp; 查看：查看企业上报的数据和报表。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-18.0pt;\">2.&nbsp; 退回修改：将企业上报的数据和报表退回修改。退回修改时可以添加备注，标识退回理由。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-18.0pt;\">3.&nbsp; 审核通过；将企业上报的数据和报表审核通过。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-18.0pt;\">4.&nbsp; 上报：将企业上报的数据上报到部级单位。</p>', '', '0'), ('130', 'story', '1', ',1,', '0', 'husize', 'changed', '2016-03-17 19:10:36', '<p class=\"MsoNormal\"><b>数据说明：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\"><b>&nbsp;</b></p>\r\n<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\" style=\"border:none;\"><tbody><tr><td width=\"115\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">数据项</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">必填</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">说明</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">所属地区</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">是</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">显示企业所属地市、市县、区域，不可修改</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">组织机构代码</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">只可输入字母、数字，不超过<span>9</span>位（统一编码规范）</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">企业名称</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">中文、英文</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">企业性质</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">是</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">两级下拉选择</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">所属行业</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">是</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">两级下拉选择</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">主要经营业务</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">按实际情况填写企业主要经营的业务</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">联系人</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">中文、英文</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">联系地址</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">是</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">两级下拉选择</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">邮政编码</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">只可填写<span>6</span>位数字</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">联系电话</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">格式必须符合（区号）<span>+</span>电话号码或者为手机号码</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">传真</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">格式必须符合（区号）<span>+</span>电话</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"115\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">EMAIL</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"60\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">否</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"393\" valign=\"top\"><p class=\"MsoNormal\"><span><a href=\"mailto:%E6%A0%BC%E5%BC%8F%E5%BF%85%E9%A1%BB%E7%AC%A6%E5%90%88xxx@xxx.xxx\"><span style=\"font-family:宋体;\">格式必须符合xxx@xxx.xxx</span></a></span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '0'), ('131', 'story', '1', ',1,', '0', 'husize', 'edited', '2016-03-17 19:12:11', '', '', '0'), ('132', 'story', '2', ',1,', '0', 'husize', 'changed', '2016-03-17 19:12:59', '', '', '0'), ('133', 'case', '1', ',1,', '0', 'yangkai', 'opened', '2016-03-17 19:13:07', '', '', '0'), ('134', 'story', '3', ',1,', '0', 'husize', 'changed', '2016-03-17 19:13:40', '', '', '0'), ('135', 'story', '4', ',1,', '0', 'husize', 'changed', '2016-03-17 19:14:06', '', '', '0'), ('136', 'story', '5', ',1,', '0', 'husize', 'changed', '2016-03-17 19:14:26', '', '', '0'), ('137', 'story', '6', ',1,', '0', 'husize', 'opened', '2016-03-17 19:16:34', '', '', '0'), ('138', 'story', '6', ',1,', '0', 'husize', 'edited', '2016-03-17 19:17:41', '<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n&nbsp;&nbsp;&nbsp; 统计：根据不同的调查期显示出企业的汇总数据', '', '0'), ('139', 'story', '7', ',1,', '0', 'husize', 'opened', '2016-03-17 19:22:34', '', '', '0'), ('140', 'story', '7', ',1,', '0', 'husize', 'edited', '2016-03-17 19:23:03', '<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">对所选企业的数据进行修改，原始数据和修改日志要保留。</p>', '', '0'), ('141', 'story', '8', ',1,', '0', 'husize', 'opened', '2016-03-17 19:27:36', '', '', '0'), ('142', 'story', '8', ',1,', '0', 'husize', 'edited', '2016-03-17 19:27:56', '<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-18.0pt;\">1.&nbsp; 显示全省各市企业的数量和占比以及相应的饼图</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-18.0pt;\">2.&nbsp; 查询，根据地区的查询条件进行检索</p>', '', '0'), ('143', 'story', '9', ',1,', '0', 'husize', 'opened', '2016-03-17 19:31:02', '', '', '0'), ('144', 'story', '9', ',1,', '0', 'husize', 'edited', '2016-03-17 19:31:34', '<p class=\"MsoNormal\"><b>数据说明：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">分析指标包括：企业总数、建档期总岗位数、调查期总岗位数、岗位变化总数、岗位减少总数、岗位变化数量占比。</p>\r\n<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">1.&nbsp; 查询分析，选择<span>2</span>个调查期、样本条件，选择分析方式：地区、企业性质、行业，输出报表和状图展示分析结果。</p>', '', '0'), ('145', 'story', '10', ',1,', '0', 'husize', 'opened', '2016-03-17 19:33:06', '', '', '0'), ('146', 'story', '10', ',1,', '0', 'husize', 'edited', '2016-03-17 19:33:23', '<p class=\"MsoNormal\"><b>数据说明：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">分析指标为：岗位变化数量占比。<span></span></p>', '', '0'), ('147', 'story', '11', ',1,', '0', 'husize', 'opened', '2016-03-17 19:36:59', '', '', '0'), ('148', 'story', '11', ',1,', '0', 'husize', 'edited', '2016-03-17 19:37:32', '<p class=\"MsoNormal\"><b>相关功能</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">1.&nbsp; 查询：按找相应的查询条件进行查询。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">2.&nbsp; 清除：清除查询条件。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">3.&nbsp; 导出：导出查询后数据。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">4.&nbsp; 查询条件：单位名称、登陆账号、用户类型、所属地市、所属市县、所处区域、数据状态、单位性质、所属行业、起始日期、结束日期、统计月份、统计季度。</p>', '', '0'), ('149', 'story', '12', ',1,', '0', 'husize', 'opened', '2016-03-17 19:39:50', '', '', '0'), ('150', 'story', '12', ',1,', '0', 'husize', 'edited', '2016-03-17 19:40:11', '<p class=\"MsoNormal\"><b>权限相关：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">省用户</p>\r\n<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.3pt;text-indent:-18.0pt;\">1.&nbsp;\r\n列表：列出当前用户发布的所有通知信息。列表项包括：标题、发布时间。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.3pt;text-indent:-18.0pt;\">2.&nbsp; 新增：新增一条通知信息。数据项包括：</p>\r\n<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"border:none;\"><tbody><tr><td width=\"92\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">数据项</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"66\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">必填</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"410\" valign=\"top\" style=\"background:#DDD9C3;\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">说明</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"92\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">通知标题</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"66\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"410\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">50</span><span style=\"font-family:宋体;\">字以内</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"92\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">通知内容</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"66\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">是</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"410\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">2000</span><span style=\"font-family:宋体;\">字以内</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"92\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">发布时间</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"66\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">否</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n<td width=\"410\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;\">系统自动生成</span><span style=\"font-family:宋体;\"></span></p>\r\n</td>\r\n</tr>\r\n<tr><td width=\"92\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">发布单位</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"66\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">否</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n<td width=\"410\" valign=\"top\"><p class=\"MsoNormal\"><span style=\"font-family:宋体;color:red;\">系统自动生成</span><span style=\"font-family:宋体;color:red;\"></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.3pt;text-indent:-18.0pt;\">3.&nbsp; 修改：选择一条通知，进行修改。数据项同新增。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.3pt;text-indent:-18.0pt;\">4.&nbsp; 删除：删除一条通知信息。</p>', '', '0'), ('151', 'story', '13', ',1,', '0', 'husize', 'opened', '2016-03-17 19:43:03', '', '', '0'), ('152', 'story', '13', ',1,', '0', 'husize', 'edited', '2016-03-17 19:43:25', '<p class=\"MsoNormal\"><b>权限相关：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">企业、省用户使用。</p>\r\n<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.3pt;text-indent:-18.0pt;\">1.&nbsp; 列表：列出当前用户和所有上级用户发布的所有通知信息。列表项包括：标题、发布时间。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.3pt;text-indent:-18.0pt;\">2.&nbsp; 查看：查看通知信息。包括：通知标题，发布时间，通知内容。</p>', '', '0'), ('153', 'story', '14', ',1,', '0', 'husize', 'opened', '2016-03-17 19:44:49', '', '', '0'), ('154', 'story', '14', ',1,', '0', 'husize', 'edited', '2016-03-17 19:45:11', '<p class=\"MsoNormal\"><b>相关权限：</b><b></b></p>\r\n<p class=\"MsoNormal\">&nbsp;&nbsp;&nbsp; 省级用户使用</p>\r\n<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.3pt;text-indent:-18.0pt;\">1.&nbsp; 新增：新增一个调查期。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.3pt;text-indent:-18.0pt;\">2.&nbsp; 修改：修改已有的调查期的时间。</p>', '', '0'), ('155', 'story', '15', ',1,', '0', 'husize', 'opened', '2016-03-17 19:46:15', '', '', '0'), ('156', 'story', '15', ',1,', '0', 'husize', 'edited', '2016-03-17 19:46:36', '<p class=\"MsoNormal\"><b>相关权限：</b><b></b></p>\r\n<p class=\"MsoNormal\">&nbsp;&nbsp;&nbsp; 省级用户使用。</p>\r\n<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">1.&nbsp; 列表：列出所有用户信息。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">2.&nbsp; 新增：新增一条用户信息。同时为该用户分配角色。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">3.&nbsp; 删除：删除用户信息。如有该用户上报的数据，则不能删除。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">4.&nbsp; 修改：修改信息，界面同新增类似。</p>', '', '0'), ('157', 'story', '16', ',1,', '0', 'husize', 'opened', '2016-03-17 19:47:49', '', '', '0'), ('158', 'story', '16', ',1,', '0', 'husize', 'edited', '2016-03-17 19:48:14', '<p class=\"MsoNormal\"><b>相关权限：</b><b></b></p>\r\n<p class=\"MsoNormal\">&nbsp;&nbsp;&nbsp; 省级用户使用。</p>\r\n<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">1.&nbsp; 角色定义：定义新角色，分配功能权限。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">2.&nbsp; 角色修改：修改角色的功能权限。</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:39.0pt;text-indent:-18.0pt;\">3.&nbsp; 角色删除：删除角色，如该角色已分配给用户，提示后删除角色和该角色与用户的关联关系。删除后需要为用户重新分配角色。</p>', '', '0'), ('159', 'story', '17', ',1,', '0', 'husize', 'opened', '2016-03-17 19:49:19', '', '', '0'), ('160', 'story', '17', ',1,', '0', 'husize', 'edited', '2016-03-17 19:49:39', '<p class=\"MsoNormal\"><b>相关权限：</b><b></b></p>\r\n<p class=\"MsoNormal\">&nbsp;&nbsp;&nbsp; 省级用户使用</p>\r\n<p class=\"MsoNormal\"><b>相关功能：</b><b></b></p>\r\n<p class=\"MsoNormal\" style=\"text-indent:23.25pt;\">查看系统信息及当前系统使用情况<span></span></p>', '', '0'), ('161', 'story', '1', ',1,', '0', 'husize', 'changed', '2016-03-17 19:52:41', '', '', '0'), ('162', 'story', '2', ',1,', '0', 'husize', 'changed', '2016-03-17 19:53:34', '', '', '0'), ('163', 'story', '3', ',1,', '0', 'husize', 'changed', '2016-03-17 19:54:25', '', '', '0'), ('164', 'user', '5', ',0,', '0', 'zhangdong', 'login', '2016-03-17 23:24:58', '', '', '0'), ('165', 'user', '2', ',0,', '0', 'husize', 'login', '2016-03-18 15:33:29', '', '', '0'), ('166', 'user', '1', ',0,', '0', 'admin', 'login', '2016-03-18 21:43:45', '', '', '0'), ('167', 'user', '9', ',0,', '0', 'helin', 'login', '2016-03-18 23:02:52', '', '', '0'), ('168', 'bug', '1', ',1,', '0', 'admin', 'opened', '2016-03-18 23:05:49', '', '', '0'), ('169', 'user', '2', ',0,', '0', 'husize', 'login', '2016-03-19 12:58:31', '', '', '0'), ('170', 'user', '2', ',0,', '0', 'husize', 'login', '2016-03-19 15:51:26', '', '', '0'), ('171', 'user', '1', ',0,', '0', 'admin', 'login', '2016-03-19 17:29:05', '', '', '0'), ('172', 'user', '6', ',0,', '0', 'anjianfeng', 'login', '2016-03-19 19:12:29', '', '', '0'), ('173', 'user', '11', ',0,', '0', 'yangkai', 'login', '2016-03-20 19:23:24', '', '', '0'), ('174', 'user', '1', ',0,', '0', 'admin', 'login', '2016-03-20 23:27:30', '', '', '0'), ('175', 'user', '6', ',0,', '0', 'anjianfeng', 'login', '2016-03-21 09:09:43', '', '', '0'), ('176', 'user', '1', ',0,', '0', 'admin', 'login', '2016-03-21 16:04:13', '', '', '0'), ('177', 'user', '7', ',0,', '0', 'shiyongcan', 'login', '2016-03-21 16:05:12', '', '', '0'), ('178', 'bug', '2', ',1,', '0', 'shiyongcan', 'opened', '2016-03-21 16:12:45', '', '', '1'), ('179', 'user', '8', ',0,', '0', 'zhangtingrui', 'login', '2016-03-21 22:30:19', '', '', '0'), ('180', 'user', '2', ',0,', '0', 'husize', 'login', '2016-03-25 10:11:22', '', '', '0'), ('181', 'user', '1', ',0,', '0', 'admin', 'login', '2016-03-25 18:44:50', '', '', '0'), ('182', 'user', '1', ',0,', '0', 'admin', 'login', '2016-03-25 18:44:54', '', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `zt_branch`
-- ----------------------------
DROP TABLE IF EXISTS `zt_branch`;
CREATE TABLE `zt_branch` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product` (`product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_bug`
-- ----------------------------
DROP TABLE IF EXISTS `zt_bug`;
CREATE TABLE `zt_bug` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plan` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toTask` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toStory` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `severity` tinyint(4) NOT NULL DEFAULT '0',
  `pri` tinyint(3) unsigned NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `os` varchar(30) NOT NULL DEFAULT '',
  `browser` varchar(30) NOT NULL DEFAULT '',
  `hardware` varchar(30) NOT NULL,
  `found` varchar(30) NOT NULL DEFAULT '',
  `steps` text NOT NULL,
  `status` enum('active','resolved','closed') NOT NULL DEFAULT 'active',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `activatedCount` smallint(6) NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `openedBuild` varchar(255) NOT NULL,
  `assignedTo` varchar(30) NOT NULL DEFAULT '',
  `assignedDate` datetime NOT NULL,
  `resolvedBy` varchar(30) NOT NULL DEFAULT '',
  `resolution` varchar(30) NOT NULL DEFAULT '',
  `resolvedBuild` varchar(30) NOT NULL DEFAULT '',
  `resolvedDate` datetime NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` datetime NOT NULL,
  `duplicateBug` mediumint(8) unsigned NOT NULL,
  `linkBug` varchar(255) NOT NULL,
  `case` mediumint(8) unsigned NOT NULL,
  `caseVersion` smallint(6) NOT NULL DEFAULT '1',
  `result` mediumint(8) unsigned NOT NULL,
  `testtask` mediumint(8) unsigned NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bug` (`product`,`module`,`project`,`assignedTo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_bug`
-- ----------------------------
BEGIN;
INSERT INTO `zt_bug` VALUES ('1', '1', '0', '0', '0', '0', '1', '3', '0', '0', '0', '企业用户－录入企业信息失败', '', '1', '1', 'codeerror', 'all', 'all', '', '', '<p>[步骤]</p>\n<p>打开企业用户的信息录入，录入信息，点击提交，然后返回[企业备案]-&gt;[备案列表]，不能看到刚才提交的数据。</p>\n<p>[结果]</p>\n<p><span>[企业备案]-&gt;[备案列表</span><span>]没有看到提交的数据。</span></p>\n<p><img src=\"data/upload/1/201603/1823051302237eqp.png\" alt=\"\" /></p>\n<p>[期望]</p>\n<p><span>希望看到提交的数据。</span></p>', 'active', '0', '0', ',chenyongpeng', 'admin', '2016-03-18 23:05:49', 'trunk', 'chenyongpeng', '2016-03-18 23:05:49', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0'), ('2', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '关于部分页面的左导航栏问题', '导航栏', '3', '3', 'interface', 'linux', 'firefox3', '', '', '<p>[步骤]进入/sys/data/display或/sys/surveyTime页面</p>\n<p>[结果]导航栏展开功能异常</p>\n<p>[期望]解决之</p>', 'active', '0', '0', ',shiyongcan', 'shiyongcan', '2016-03-21 16:12:44', 'trunk', 'admin', '2016-03-21 16:12:44', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0');
COMMIT;

-- ----------------------------
--  Table structure for `zt_build`
-- ----------------------------
DROP TABLE IF EXISTS `zt_build`;
CREATE TABLE `zt_build` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(150) NOT NULL,
  `scmPath` char(255) NOT NULL,
  `filePath` char(255) NOT NULL,
  `date` date NOT NULL,
  `stories` text NOT NULL,
  `bugs` text NOT NULL,
  `builder` char(30) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`product`,`project`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_burn`
-- ----------------------------
DROP TABLE IF EXISTS `zt_burn`;
CREATE TABLE `zt_burn` (
  `project` mediumint(8) unsigned NOT NULL,
  `date` date NOT NULL,
  `left` float NOT NULL,
  `consumed` float NOT NULL,
  PRIMARY KEY (`project`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_case`
-- ----------------------------
DROP TABLE IF EXISTS `zt_case`;
CREATE TABLE `zt_case` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(30) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `precondition` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `type` char(30) NOT NULL DEFAULT '1',
  `stage` varchar(255) NOT NULL,
  `howRun` varchar(30) NOT NULL,
  `scriptedBy` varchar(30) NOT NULL,
  `scriptedDate` date NOT NULL,
  `scriptStatus` varchar(30) NOT NULL,
  `scriptLocation` varchar(255) NOT NULL,
  `status` char(30) NOT NULL DEFAULT '1',
  `frequency` enum('1','2','3') NOT NULL DEFAULT '1',
  `order` tinyint(30) unsigned NOT NULL DEFAULT '0',
  `openedBy` char(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `lastEditedBy` char(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkCase` varchar(255) NOT NULL,
  `fromBug` mediumint(8) unsigned NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `lastRunner` varchar(30) NOT NULL,
  `lastRunDate` datetime NOT NULL,
  `lastRunResult` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `case` (`product`,`module`,`story`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_case`
-- ----------------------------
BEGIN;
INSERT INTO `zt_case` VALUES ('1', '1', '0', '0', '0', '0', '1', '用户登录测试', '', '', '1', 'feature', '', '', '', '0000-00-00', '', '', 'normal', '1', '0', 'yangkai', '2016-03-17 19:13:07', '', '0000-00-00 00:00:00', '1', '', '0', '0', '', '0000-00-00 00:00:00', '');
COMMIT;

-- ----------------------------
--  Table structure for `zt_casestep`
-- ----------------------------
DROP TABLE IF EXISTS `zt_casestep`;
CREATE TABLE `zt_casestep` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `case` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` smallint(3) unsigned NOT NULL DEFAULT '0',
  `desc` text NOT NULL,
  `expect` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `case` (`case`,`version`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_casestep`
-- ----------------------------
BEGIN;
INSERT INTO `zt_casestep` VALUES ('1', '1', '1', '输入用户名：AppleInc  密码：123456', '成功登录'), ('2', '1', '1', '输入用户名：AppleInc  密码：12', '登录失败'), ('3', '1', '1', '输入用户名：AppleIc  密码：123456', '登录失败'), ('4', '1', '1', '输入用户名：welcomemyworld  密码：123456', '登录失败');
COMMIT;

-- ----------------------------
--  Table structure for `zt_company`
-- ----------------------------
DROP TABLE IF EXISTS `zt_company`;
CREATE TABLE `zt_company` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(120) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `fax` char(20) DEFAULT NULL,
  `address` char(120) DEFAULT NULL,
  `zipcode` char(10) DEFAULT NULL,
  `website` char(120) DEFAULT NULL,
  `backyard` char(120) DEFAULT NULL,
  `guest` enum('1','0') NOT NULL DEFAULT '0',
  `admins` char(255) DEFAULT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_company`
-- ----------------------------
BEGIN;
INSERT INTO `zt_company` VALUES ('1', '王韬懿小组', null, null, null, null, null, null, '0', ',admin,', '0');
COMMIT;

-- ----------------------------
--  Table structure for `zt_config`
-- ----------------------------
DROP TABLE IF EXISTS `zt_config`;
CREATE TABLE `zt_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` char(30) NOT NULL DEFAULT '',
  `module` varchar(30) NOT NULL,
  `section` char(30) NOT NULL DEFAULT '',
  `key` char(30) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`owner`,`module`,`section`,`key`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_config`
-- ----------------------------
BEGIN;
INSERT INTO `zt_config` VALUES ('1', 'system', 'common', 'global', 'version', '8.1'), ('2', 'system', 'common', 'global', 'flow', 'full');
COMMIT;

-- ----------------------------
--  Table structure for `zt_cron`
-- ----------------------------
DROP TABLE IF EXISTS `zt_cron`;
CREATE TABLE `zt_cron` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `m` varchar(20) NOT NULL,
  `h` varchar(20) NOT NULL,
  `dom` varchar(20) NOT NULL,
  `mon` varchar(20) NOT NULL,
  `dow` varchar(20) NOT NULL,
  `command` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `buildin` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL,
  `lastTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lastTime` (`lastTime`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_cron`
-- ----------------------------
BEGIN;
INSERT INTO `zt_cron` VALUES ('1', '*', '*', '*', '*', '*', '', '监控定时任务', 'zentao', '1', 'normal', '0000-00-00 00:00:00'), ('2', '30', '23', '*', '*', '*', 'moduleName=project&methodName=computeburn', '更新燃尽图', 'zentao', '1', 'normal', '0000-00-00 00:00:00'), ('3', '0', '1', '*', '*', '*', 'moduleName=report&methodName=remind', '每日任务提醒', 'zentao', '1', 'normal', '0000-00-00 00:00:00'), ('4', '*/5', '*', '*', '*', '*', 'moduleName=svn&methodName=run', '同步SVN', 'zentao', '1', 'stop', '0000-00-00 00:00:00'), ('5', '*/5', '*', '*', '*', '*', 'moduleName=git&methodName=run', '同步GIT', 'zentao', '1', 'stop', '0000-00-00 00:00:00'), ('6', '30', '0', '*', '*', '*', 'moduleName=backup&methodName=backup', '备份数据和附件', 'zentao', '1', 'normal', '0000-00-00 00:00:00'), ('7', '*/5', '*', '*', '*', '*', 'moduleName=mail&methodName=asyncSend', '异步发信', 'zentao', '1', 'normal', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
--  Table structure for `zt_dept`
-- ----------------------------
DROP TABLE IF EXISTS `zt_dept`;
CREATE TABLE `zt_dept` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(60) NOT NULL,
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `position` char(30) NOT NULL DEFAULT '',
  `function` char(255) NOT NULL DEFAULT '',
  `manager` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `dept` (`parent`,`path`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_dept`
-- ----------------------------
BEGIN;
INSERT INTO `zt_dept` VALUES ('1', '需求组', '0', ',1,', '1', '10', '', '', ''), ('2', '设计组', '0', ',2,', '1', '20', '', '', ''), ('3', '开发组', '0', ',3,', '1', '30', '', '', ''), ('4', '测试组', '0', ',4,', '1', '40', '', '', ''), ('5', '配置组', '0', ',5,', '1', '50', '', '', ''), ('6', 'DBA', '0', ',6,', '1', '60', '', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `zt_doc`
-- ----------------------------
DROP TABLE IF EXISTS `zt_doc`;
CREATE TABLE `zt_doc` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `project` mediumint(8) unsigned NOT NULL,
  `lib` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `views` smallint(5) unsigned NOT NULL,
  `addedBy` varchar(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedBy` varchar(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `doc` (`product`,`project`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_doclib`
-- ----------------------------
DROP TABLE IF EXISTS `zt_doclib`;
CREATE TABLE `zt_doclib` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_effort`
-- ----------------------------
DROP TABLE IF EXISTS `zt_effort`;
CREATE TABLE `zt_effort` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user` char(30) NOT NULL DEFAULT '',
  `todo` enum('1','0') NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `begin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('1','2','3') NOT NULL DEFAULT '1',
  `idvalue` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_extension`
-- ----------------------------
DROP TABLE IF EXISTS `zt_extension`;
CREATE TABLE `zt_extension` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `code` varchar(30) NOT NULL,
  `version` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `license` text NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'extension',
  `site` varchar(150) NOT NULL,
  `zentaoCompatible` varchar(100) NOT NULL,
  `installedTime` datetime NOT NULL,
  `depends` varchar(100) NOT NULL,
  `dirs` text NOT NULL,
  `files` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `extension` (`name`,`installedTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_file`
-- ----------------------------
DROP TABLE IF EXISTS `zt_file`;
CREATE TABLE `zt_file` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pathname` char(50) NOT NULL,
  `title` char(90) NOT NULL,
  `extension` char(30) NOT NULL,
  `size` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `objectType` char(30) NOT NULL,
  `objectID` mediumint(9) NOT NULL,
  `addedBy` char(30) NOT NULL DEFAULT '',
  `addedDate` datetime NOT NULL,
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra` varchar(255) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `file` (`objectType`,`objectID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_file`
-- ----------------------------
BEGIN;
INSERT INTO `zt_file` VALUES ('1', '201603/1823051302237eqp.png', '1823051302237eqp.png', 'png', '121561', '', '0', 'admin', '2016-03-18 00:00:00', '0', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `zt_group`
-- ----------------------------
DROP TABLE IF EXISTS `zt_group`;
CREATE TABLE `zt_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `role` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `acl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_group`
-- ----------------------------
BEGIN;
INSERT INTO `zt_group` VALUES ('1', '管理员', 'admin', '系统管理员', ''), ('2', '研发', 'dev', '研发人员', ''), ('3', '测试', 'qa', '测试人员', ''), ('4', '项目经理', 'pm', '项目经理', ''), ('5', '产品经理', 'po', '产品经理', ''), ('6', '研发主管', 'td', '研发主管', ''), ('7', '产品主管', 'pd', '产品主管', ''), ('8', '测试主管', 'qd', '测试主管', ''), ('9', '高层管理', 'top', '高层管理', ''), ('10', '其他', '', '其他', ''), ('11', 'guest', 'guest', 'For guest', '');
COMMIT;

-- ----------------------------
--  Table structure for `zt_grouppriv`
-- ----------------------------
DROP TABLE IF EXISTS `zt_grouppriv`;
CREATE TABLE `zt_grouppriv` (
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` char(30) NOT NULL DEFAULT '',
  `method` char(30) NOT NULL DEFAULT '',
  UNIQUE KEY `group` (`group`,`module`,`method`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_grouppriv`
-- ----------------------------
BEGIN;
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'editComment'), ('1', 'action', 'hideAll'), ('1', 'action', 'hideOne'), ('1', 'action', 'trash'), ('1', 'action', 'undelete'), ('1', 'admin', 'checkDB'), ('1', 'admin', 'checkWeak'), ('1', 'admin', 'index'), ('1', 'admin', 'safe'), ('1', 'api', 'debug'), ('1', 'api', 'getModel'), ('1', 'api', 'sql'), ('1', 'backup', 'backup'), ('1', 'backup', 'change'), ('1', 'backup', 'delete'), ('1', 'backup', 'index'), ('1', 'backup', 'restore'), ('1', 'branch', 'delete'), ('1', 'branch', 'manage'), ('1', 'bug', 'activate'), ('1', 'bug', 'assignTo'), ('1', 'bug', 'batchAssignTo'), ('1', 'bug', 'batchClose'), ('1', 'bug', 'batchConfirm'), ('1', 'bug', 'batchCreate'), ('1', 'bug', 'batchEdit'), ('1', 'bug', 'batchResolve'), ('1', 'bug', 'browse'), ('1', 'bug', 'close'), ('1', 'bug', 'confirmBug'), ('1', 'bug', 'confirmStoryChange'), ('1', 'bug', 'create'), ('1', 'bug', 'delete'), ('1', 'bug', 'deleteTemplate'), ('1', 'bug', 'edit'), ('1', 'bug', 'export'), ('1', 'bug', 'index'), ('1', 'bug', 'linkBugs'), ('1', 'bug', 'report'), ('1', 'bug', 'resolve'), ('1', 'bug', 'saveTemplate'), ('1', 'bug', 'unlinkBug'), ('1', 'bug', 'view'), ('1', 'build', 'batchUnlinkBug'), ('1', 'build', 'batchUnlinkStory'), ('1', 'build', 'create'), ('1', 'build', 'delete'), ('1', 'build', 'edit'), ('1', 'build', 'linkBug'), ('1', 'build', 'linkStory'), ('1', 'build', 'unlinkBug'), ('1', 'build', 'unlinkStory'), ('1', 'build', 'view'), ('1', 'company', 'browse'), ('1', 'company', 'dynamic'), ('1', 'company', 'edit'), ('1', 'company', 'index'), ('1', 'company', 'view'), ('1', 'convert', 'checkBugFree'), ('1', 'convert', 'checkConfig'), ('1', 'convert', 'checkRedmine'), ('1', 'convert', 'convertBugFree'), ('1', 'convert', 'convertRedmine'), ('1', 'convert', 'execute'), ('1', 'convert', 'index'), ('1', 'convert', 'selectSource'), ('1', 'convert', 'setBugfree'), ('1', 'convert', 'setConfig'), ('1', 'convert', 'setRedmine'), ('1', 'cron', 'create'), ('1', 'cron', 'delete'), ('1', 'cron', 'edit'), ('1', 'cron', 'index'), ('1', 'cron', 'toggle'), ('1', 'cron', 'turnon'), ('1', 'custom', 'flow'), ('1', 'custom', 'index'), ('1', 'custom', 'restore'), ('1', 'custom', 'set'), ('1', 'dept', 'browse'), ('1', 'dept', 'delete'), ('1', 'dept', 'edit'), ('1', 'dept', 'manageChild'), ('1', 'dept', 'updateOrder'), ('1', 'dev', 'api'), ('1', 'dev', 'db'), ('1', 'doc', 'browse'), ('1', 'doc', 'create'), ('1', 'doc', 'createLib'), ('1', 'doc', 'delete'), ('1', 'doc', 'deleteLib'), ('1', 'doc', 'edit'), ('1', 'doc', 'editLib'), ('1', 'doc', 'index'), ('1', 'doc', 'view'), ('1', 'editor', 'delete'), ('1', 'editor', 'edit'), ('1', 'editor', 'extend'), ('1', 'editor', 'index'), ('1', 'editor', 'newPage'), ('1', 'editor', 'save'), ('1', 'extension', 'activate'), ('1', 'extension', 'browse'), ('1', 'extension', 'deactivate'), ('1', 'extension', 'erase'), ('1', 'extension', 'install'), ('1', 'extension', 'obtain'), ('1', 'extension', 'structure'), ('1', 'extension', 'uninstall'), ('1', 'extension', 'upgrade'), ('1', 'extension', 'upload'), ('1', 'file', 'delete'), ('1', 'file', 'download'), ('1', 'file', 'edit'), ('1', 'file', 'uploadImages'), ('1', 'git', 'apiSync'), ('1', 'git', 'cat'), ('1', 'git', 'diff'), ('1', 'group', 'browse'), ('1', 'group', 'copy'), ('1', 'group', 'create'), ('1', 'group', 'delete'), ('1', 'group', 'edit'), ('1', 'group', 'manageMember'), ('1', 'group', 'managePriv'), ('1', 'group', 'manageView'), ('1', 'index', 'index'), ('1', 'mail', 'batchDelete'), ('1', 'mail', 'browse'), ('1', 'mail', 'delete'), ('1', 'mail', 'detect'), ('1', 'mail', 'edit'), ('1', 'mail', 'index'), ('1', 'mail', 'reset'), ('1', 'mail', 'save'), ('1', 'mail', 'test'), ('1', 'misc', 'ping'), ('1', 'my', 'bug'), ('1', 'my', 'changePassword'), ('1', 'my', 'dynamic'), ('1', 'my', 'editProfile'), ('1', 'my', 'index'), ('1', 'my', 'profile'), ('1', 'my', 'project'), ('1', 'my', 'story'), ('1', 'my', 'task'), ('1', 'my', 'testCase'), ('1', 'my', 'testTask'), ('1', 'my', 'todo'), ('1', 'my', 'unbind'), ('1', 'product', 'batchEdit'), ('1', 'product', 'browse'), ('1', 'product', 'close'), ('1', 'product', 'create'), ('1', 'product', 'delete'), ('1', 'product', 'doc'), ('1', 'product', 'dynamic'), ('1', 'product', 'edit'), ('1', 'product', 'index'), ('1', 'product', 'order'), ('1', 'product', 'project'), ('1', 'product', 'roadmap'), ('1', 'product', 'updateOrder'), ('1', 'product', 'view'), ('1', 'productplan', 'batchUnlinkBug'), ('1', 'productplan', 'batchUnlinkStory'), ('1', 'productplan', 'browse'), ('1', 'productplan', 'create'), ('1', 'productplan', 'delete'), ('1', 'productplan', 'edit'), ('1', 'productplan', 'linkBug'), ('1', 'productplan', 'linkStory'), ('1', 'productplan', 'unlinkBug'), ('1', 'productplan', 'unlinkStory'), ('1', 'productplan', 'view'), ('1', 'project', 'activate'), ('1', 'project', 'batchedit'), ('1', 'project', 'batchUnlinkStory'), ('1', 'project', 'browse'), ('1', 'project', 'bug'), ('1', 'project', 'build'), ('1', 'project', 'burn'), ('1', 'project', 'burnData'), ('1', 'project', 'close'), ('1', 'project', 'computeBurn'), ('1', 'project', 'create'), ('1', 'project', 'delete'), ('1', 'project', 'doc'), ('1', 'project', 'dynamic'), ('1', 'project', 'edit'), ('1', 'project', 'grouptask'), ('1', 'project', 'importBug'), ('1', 'project', 'importtask'), ('1', 'project', 'index'), ('1', 'project', 'linkStory'), ('1', 'project', 'manageMembers'), ('1', 'project', 'manageProducts'), ('1', 'project', 'order'), ('1', 'project', 'putoff'), ('1', 'project', 'start'), ('1', 'project', 'story'), ('1', 'project', 'suspend'), ('1', 'project', 'task'), ('1', 'project', 'team'), ('1', 'project', 'testtask'), ('1', 'project', 'unlinkMember'), ('1', 'project', 'unlinkStory'), ('1', 'project', 'updateOrder'), ('1', 'project', 'view'), ('1', 'qa', 'index'), ('1', 'release', 'batchUnlinkBug'), ('1', 'release', 'batchUnlinkStory'), ('1', 'release', 'browse'), ('1', 'release', 'changeStatus'), ('1', 'release', 'create'), ('1', 'release', 'delete'), ('1', 'release', 'edit'), ('1', 'release', 'export'), ('1', 'release', 'linkBug'), ('1', 'release', 'linkStory'), ('1', 'release', 'unlinkBug'), ('1', 'release', 'unlinkStory'), ('1', 'release', 'view'), ('1', 'report', 'bugAssign'), ('1', 'report', 'bugCreate'), ('1', 'report', 'index'), ('1', 'report', 'productSummary'), ('1', 'report', 'projectDeviation'), ('1', 'report', 'workload'), ('1', 'search', 'buildForm'), ('1', 'search', 'buildQuery'), ('1', 'search', 'deleteQuery'), ('1', 'search', 'saveQuery'), ('1', 'search', 'select'), ('1', 'story', 'activate'), ('1', 'story', 'batchAssignTo'), ('1', 'story', 'batchChangeBranch'), ('1', 'story', 'batchChangePlan'), ('1', 'story', 'batchChangeStage'), ('1', 'story', 'batchClose'), ('1', 'story', 'batchCreate'), ('1', 'story', 'batchEdit'), ('1', 'story', 'batchReview'), ('1', 'story', 'change'), ('1', 'story', 'close'), ('1', 'story', 'create'), ('1', 'story', 'delete'), ('1', 'story', 'edit'), ('1', 'story', 'export'), ('1', 'story', 'linkStory'), ('1', 'story', 'report'), ('1', 'story', 'review'), ('1', 'story', 'tasks'), ('1', 'story', 'unlinkStory'), ('1', 'story', 'view'), ('1', 'story', 'zeroCase'), ('1', 'svn', 'apiSync'), ('1', 'svn', 'cat'), ('1', 'svn', 'diff'), ('1', 'task', 'activate'), ('1', 'task', 'assignTo'), ('1', 'task', 'batchAssignTo'), ('1', 'task', 'batchClose'), ('1', 'task', 'batchCreate'), ('1', 'task', 'batchEdit'), ('1', 'task', 'cancel'), ('1', 'task', 'close'), ('1', 'task', 'confirmStoryChange'), ('1', 'task', 'create'), ('1', 'task', 'delete'), ('1', 'task', 'deleteEstimate'), ('1', 'task', 'edit'), ('1', 'task', 'editEstimate'), ('1', 'task', 'export'), ('1', 'task', 'finish'), ('1', 'task', 'pause'), ('1', 'task', 'recordEstimate'), ('1', 'task', 'report'), ('1', 'task', 'restart'), ('1', 'task', 'start'), ('1', 'task', 'view'), ('1', 'testcase', 'batchCreate'), ('1', 'testcase', 'batchDelete'), ('1', 'testcase', 'batchEdit'), ('1', 'testcase', 'browse'), ('1', 'testcase', 'confirmChange'), ('1', 'testcase', 'confirmStoryChange'), ('1', 'testcase', 'create'), ('1', 'testcase', 'createBug'), ('1', 'testcase', 'delete'), ('1', 'testcase', 'edit'), ('1', 'testcase', 'export'), ('1', 'testcase', 'exportTemplet'), ('1', 'testcase', 'groupCase'), ('1', 'testcase', 'import'), ('1', 'testcase', 'index'), ('1', 'testcase', 'linkCases'), ('1', 'testcase', 'showImport'), ('1', 'testcase', 'unlinkCase'), ('1', 'testcase', 'view'), ('1', 'testtask', 'batchAssign'), ('1', 'testtask', 'batchRun'), ('1', 'testtask', 'browse'), ('1', 'testtask', 'cases'), ('1', 'testtask', 'close'), ('1', 'testtask', 'create'), ('1', 'testtask', 'delete'), ('1', 'testtask', 'edit'), ('1', 'testtask', 'groupCase'), ('1', 'testtask', 'index'), ('1', 'testtask', 'linkcase'), ('1', 'testtask', 'results'), ('1', 'testtask', 'runcase'), ('1', 'testtask', 'start'), ('1', 'testtask', 'unlinkcase'), ('1', 'testtask', 'view'), ('1', 'todo', 'batchCreate'), ('1', 'todo', 'batchEdit'), ('1', 'todo', 'batchFinish'), ('1', 'todo', 'create'), ('1', 'todo', 'delete'), ('1', 'todo', 'edit'), ('1', 'todo', 'export'), ('1', 'todo', 'finish'), ('1', 'todo', 'import2Today'), ('1', 'todo', 'view'), ('1', 'tree', 'browse'), ('1', 'tree', 'browseTask'), ('1', 'tree', 'delete'), ('1', 'tree', 'edit'), ('1', 'tree', 'fix'), ('1', 'tree', 'manageChild'), ('1', 'tree', 'updateOrder'), ('1', 'user', 'batchCreate'), ('1', 'user', 'batchEdit'), ('1', 'user', 'bug'), ('1', 'user', 'create'), ('1', 'user', 'delete'), ('1', 'user', 'deleteContacts'), ('1', 'user', 'dynamic'), ('1', 'user', 'edit'), ('1', 'user', 'manageContacts'), ('1', 'user', 'profile'), ('1', 'user', 'project'), ('1', 'user', 'story'), ('1', 'user', 'task'), ('1', 'user', 'testCase'), ('1', 'user', 'testTask'), ('1', 'user', 'todo'), ('1', 'user', 'unbind'), ('1', 'user', 'unlock'), ('1', 'user', 'view'), ('2', 'action', 'editComment'), ('2', 'api', 'getModel'), ('2', 'bug', 'activate'), ('2', 'bug', 'assignTo'), ('2', 'bug', 'batchAssignTo'), ('2', 'bug', 'batchClose'), ('2', 'bug', 'batchConfirm'), ('2', 'bug', 'batchCreate'), ('2', 'bug', 'batchEdit'), ('2', 'bug', 'batchResolve'), ('2', 'bug', 'browse'), ('2', 'bug', 'close'), ('2', 'bug', 'confirmBug'), ('2', 'bug', 'confirmStoryChange'), ('2', 'bug', 'create'), ('2', 'bug', 'deleteTemplate'), ('2', 'bug', 'edit'), ('2', 'bug', 'export'), ('2', 'bug', 'index'), ('2', 'bug', 'linkBugs'), ('2', 'bug', 'report'), ('2', 'bug', 'resolve'), ('2', 'bug', 'saveTemplate'), ('2', 'bug', 'unlinkBug'), ('2', 'bug', 'view'), ('2', 'build', 'create'), ('2', 'build', 'delete'), ('2', 'build', 'edit'), ('2', 'build', 'view'), ('2', 'company', 'browse'), ('2', 'company', 'dynamic'), ('2', 'company', 'index'), ('2', 'company', 'view'), ('2', 'doc', 'browse'), ('2', 'doc', 'create'), ('2', 'doc', 'edit'), ('2', 'doc', 'index'), ('2', 'doc', 'view'), ('2', 'file', 'download'), ('2', 'file', 'edit'), ('2', 'git', 'apiSync'), ('2', 'git', 'cat'), ('2', 'git', 'diff'), ('2', 'group', 'browse'), ('2', 'index', 'index'), ('2', 'misc', 'ping'), ('2', 'my', 'bug'), ('2', 'my', 'changePassword'), ('2', 'my', 'dynamic'), ('2', 'my', 'editProfile'), ('2', 'my', 'index'), ('2', 'my', 'profile'), ('2', 'my', 'project'), ('2', 'my', 'story'), ('2', 'my', 'task'), ('2', 'my', 'todo'), ('2', 'my', 'unbind'), ('2', 'product', 'browse'), ('2', 'product', 'doc'), ('2', 'product', 'dynamic'), ('2', 'product', 'index'), ('2', 'product', 'project'), ('2', 'product', 'roadmap'), ('2', 'product', 'view'), ('2', 'productplan', 'browse'), ('2', 'productplan', 'view'), ('2', 'project', 'browse'), ('2', 'project', 'bug'), ('2', 'project', 'build'), ('2', 'project', 'burn'), ('2', 'project', 'burnData'), ('2', 'project', 'computeBurn'), ('2', 'project', 'doc'), ('2', 'project', 'dynamic'), ('2', 'project', 'grouptask'), ('2', 'project', 'importBug'), ('2', 'project', 'importtask'), ('2', 'project', 'index'), ('2', 'project', 'story'), ('2', 'project', 'task'), ('2', 'project', 'team'), ('2', 'project', 'testtask'), ('2', 'project', 'view'), ('2', 'qa', 'index'), ('2', 'release', 'browse'), ('2', 'release', 'export'), ('2', 'release', 'view'), ('2', 'report', 'bugAssign'), ('2', 'report', 'bugCreate'), ('2', 'report', 'index'), ('2', 'report', 'productSummary'), ('2', 'report', 'projectDeviation'), ('2', 'report', 'workload'), ('2', 'search', 'buildForm'), ('2', 'search', 'buildQuery'), ('2', 'search', 'deleteQuery'), ('2', 'search', 'saveQuery'), ('2', 'search', 'select'), ('2', 'story', 'export'), ('2', 'story', 'report'), ('2', 'story', 'tasks'), ('2', 'story', 'view'), ('2', 'svn', 'apiSync'), ('2', 'svn', 'cat'), ('2', 'svn', 'diff'), ('2', 'task', 'activate'), ('2', 'task', 'assignTo'), ('2', 'task', 'batchAssignTo'), ('2', 'task', 'batchClose'), ('2', 'task', 'batchCreate'), ('2', 'task', 'batchEdit'), ('2', 'task', 'cancel'), ('2', 'task', 'close'), ('2', 'task', 'confirmStoryChange'), ('2', 'task', 'create'), ('2', 'task', 'deleteEstimate'), ('2', 'task', 'edit'), ('2', 'task', 'editEstimate'), ('2', 'task', 'export'), ('2', 'task', 'finish'), ('2', 'task', 'pause'), ('2', 'task', 'recordEstimate'), ('2', 'task', 'report'), ('2', 'task', 'restart'), ('2', 'task', 'start'), ('2', 'task', 'view'), ('2', 'testcase', 'browse'), ('2', 'testcase', 'export'), ('2', 'testcase', 'groupCase'), ('2', 'testcase', 'index'), ('2', 'testcase', 'view'), ('2', 'testtask', 'browse'), ('2', 'testtask', 'cases'), ('2', 'testtask', 'create'), ('2', 'testtask', 'edit'), ('2', 'testtask', 'groupCase'), ('2', 'testtask', 'index'), ('2', 'testtask', 'results'), ('2', 'testtask', 'view'), ('2', 'todo', 'batchCreate'), ('2', 'todo', 'batchEdit'), ('2', 'todo', 'batchFinish'), ('2', 'todo', 'create'), ('2', 'todo', 'delete'), ('2', 'todo', 'edit'), ('2', 'todo', 'export'), ('2', 'todo', 'finish'), ('2', 'todo', 'import2Today'), ('2', 'todo', 'view'), ('2', 'user', 'bug'), ('2', 'user', 'deleteContacts'), ('2', 'user', 'dynamic'), ('2', 'user', 'manageContacts'), ('2', 'user', 'profile'), ('2', 'user', 'project'), ('2', 'user', 'story'), ('2', 'user', 'task'), ('2', 'user', 'testCase'), ('2', 'user', 'testTask'), ('2', 'user', 'todo'), ('2', 'user', 'view'), ('3', 'action', 'editComment'), ('3', 'api', 'getModel'), ('3', 'bug', 'activate'), ('3', 'bug', 'assignTo'), ('3', 'bug', 'batchClose'), ('3', 'bug', 'batchConfirm'), ('3', 'bug', 'batchCreate'), ('3', 'bug', 'batchEdit'), ('3', 'bug', 'batchResolve'), ('3', 'bug', 'browse'), ('3', 'bug', 'close'), ('3', 'bug', 'confirmBug'), ('3', 'bug', 'confirmStoryChange'), ('3', 'bug', 'create'), ('3', 'bug', 'deleteTemplate'), ('3', 'bug', 'edit'), ('3', 'bug', 'export'), ('3', 'bug', 'index'), ('3', 'bug', 'linkBugs'), ('3', 'bug', 'report'), ('3', 'bug', 'resolve'), ('3', 'bug', 'saveTemplate'), ('3', 'bug', 'unlinkBug'), ('3', 'bug', 'view'), ('3', 'build', 'create'), ('3', 'build', 'edit'), ('3', 'build', 'view'), ('3', 'company', 'browse'), ('3', 'company', 'dynamic'), ('3', 'company', 'index'), ('3', 'company', 'view'), ('3', 'doc', 'browse'), ('3', 'doc', 'create'), ('3', 'doc', 'edit'), ('3', 'doc', 'index'), ('3', 'doc', 'view'), ('3', 'file', 'download'), ('3', 'file', 'edit'), ('3', 'git', 'apiSync'), ('3', 'git', 'cat'), ('3', 'git', 'diff'), ('3', 'group', 'browse'), ('3', 'index', 'index'), ('3', 'misc', 'ping'), ('3', 'my', 'bug'), ('3', 'my', 'changePassword'), ('3', 'my', 'dynamic'), ('3', 'my', 'editProfile'), ('3', 'my', 'index'), ('3', 'my', 'profile'), ('3', 'my', 'project'), ('3', 'my', 'story'), ('3', 'my', 'task'), ('3', 'my', 'testCase'), ('3', 'my', 'testTask'), ('3', 'my', 'todo'), ('3', 'my', 'unbind'), ('3', 'product', 'browse'), ('3', 'product', 'doc'), ('3', 'product', 'dynamic'), ('3', 'product', 'index'), ('3', 'product', 'project'), ('3', 'product', 'roadmap'), ('3', 'product', 'view'), ('3', 'productplan', 'browse'), ('3', 'productplan', 'view'), ('3', 'project', 'browse'), ('3', 'project', 'bug'), ('3', 'project', 'build'), ('3', 'project', 'burn'), ('3', 'project', 'burnData'), ('3', 'project', 'computeBurn'), ('3', 'project', 'doc'), ('3', 'project', 'dynamic'), ('3', 'project', 'grouptask'), ('3', 'project', 'importBug'), ('3', 'project', 'importtask'), ('3', 'project', 'index'), ('3', 'project', 'story'), ('3', 'project', 'task'), ('3', 'project', 'team'), ('3', 'project', 'testtask'), ('3', 'project', 'view'), ('3', 'qa', 'index'), ('3', 'release', 'browse'), ('3', 'release', 'export'), ('3', 'release', 'view'), ('3', 'report', 'bugAssign'), ('3', 'report', 'bugCreate'), ('3', 'report', 'index'), ('3', 'report', 'productSummary'), ('3', 'report', 'projectDeviation'), ('3', 'report', 'workload'), ('3', 'search', 'buildForm'), ('3', 'search', 'buildQuery'), ('3', 'search', 'deleteQuery'), ('3', 'search', 'saveQuery'), ('3', 'search', 'select'), ('3', 'story', 'export'), ('3', 'story', 'report'), ('3', 'story', 'tasks'), ('3', 'story', 'view'), ('3', 'story', 'zeroCase'), ('3', 'svn', 'apiSync'), ('3', 'svn', 'cat'), ('3', 'svn', 'diff'), ('3', 'task', 'activate'), ('3', 'task', 'assignTo'), ('3', 'task', 'batchAssignTo'), ('3', 'task', 'batchClose'), ('3', 'task', 'batchCreate'), ('3', 'task', 'batchEdit'), ('3', 'task', 'cancel'), ('3', 'task', 'close'), ('3', 'task', 'confirmStoryChange'), ('3', 'task', 'create'), ('3', 'task', 'deleteEstimate'), ('3', 'task', 'edit'), ('3', 'task', 'editEstimate'), ('3', 'task', 'export'), ('3', 'task', 'finish'), ('3', 'task', 'pause'), ('3', 'task', 'recordEstimate'), ('3', 'task', 'report'), ('3', 'task', 'restart'), ('3', 'task', 'start'), ('3', 'task', 'view'), ('3', 'testcase', 'batchCreate'), ('3', 'testcase', 'batchEdit'), ('3', 'testcase', 'browse'), ('3', 'testcase', 'confirmChange'), ('3', 'testcase', 'confirmStoryChange'), ('3', 'testcase', 'create'), ('3', 'testcase', 'createBug'), ('3', 'testcase', 'edit'), ('3', 'testcase', 'export'), ('3', 'testcase', 'exportTemplet'), ('3', 'testcase', 'groupCase'), ('3', 'testcase', 'import'), ('3', 'testcase', 'index'), ('3', 'testcase', 'linkCases'), ('3', 'testcase', 'showImport'), ('3', 'testcase', 'unlinkCase'), ('3', 'testcase', 'view'), ('3', 'testtask', 'batchAssign'), ('3', 'testtask', 'batchRun'), ('3', 'testtask', 'browse'), ('3', 'testtask', 'cases'), ('3', 'testtask', 'close'), ('3', 'testtask', 'create'), ('3', 'testtask', 'edit'), ('3', 'testtask', 'groupCase'), ('3', 'testtask', 'index'), ('3', 'testtask', 'linkcase'), ('3', 'testtask', 'results'), ('3', 'testtask', 'runcase'), ('3', 'testtask', 'start'), ('3', 'testtask', 'unlinkcase'), ('3', 'testtask', 'view'), ('3', 'todo', 'batchCreate'), ('3', 'todo', 'batchEdit'), ('3', 'todo', 'batchFinish'), ('3', 'todo', 'create'), ('3', 'todo', 'delete'), ('3', 'todo', 'edit'), ('3', 'todo', 'export'), ('3', 'todo', 'finish'), ('3', 'todo', 'import2Today'), ('3', 'todo', 'view'), ('3', 'user', 'bug'), ('3', 'user', 'deleteContacts'), ('3', 'user', 'dynamic'), ('3', 'user', 'manageContacts'), ('3', 'user', 'profile'), ('3', 'user', 'project'), ('3', 'user', 'story'), ('3', 'user', 'task'), ('3', 'user', 'testCase'), ('3', 'user', 'testTask'), ('3', 'user', 'todo'), ('3', 'user', 'view'), ('4', 'action', 'editComment'), ('4', 'action', 'hideAll'), ('4', 'action', 'hideOne'), ('4', 'action', 'trash'), ('4', 'action', 'undelete'), ('4', 'admin', 'index'), ('4', 'api', 'getModel'), ('4', 'bug', 'activate'), ('4', 'bug', 'assignTo'), ('4', 'bug', 'batchAssignTo'), ('4', 'bug', 'batchClose'), ('4', 'bug', 'batchConfirm'), ('4', 'bug', 'batchCreate'), ('4', 'bug', 'batchEdit'), ('4', 'bug', 'batchResolve'), ('4', 'bug', 'browse'), ('4', 'bug', 'close'), ('4', 'bug', 'confirmBug'), ('4', 'bug', 'confirmStoryChange'), ('4', 'bug', 'create'), ('4', 'bug', 'delete'), ('4', 'bug', 'deleteTemplate'), ('4', 'bug', 'edit'), ('4', 'bug', 'export'), ('4', 'bug', 'index'), ('4', 'bug', 'linkBugs'), ('4', 'bug', 'report'), ('4', 'bug', 'resolve'), ('4', 'bug', 'saveTemplate'), ('4', 'bug', 'unlinkBug'), ('4', 'bug', 'view'), ('4', 'build', 'batchUnlinkBug'), ('4', 'build', 'batchUnlinkStory'), ('4', 'build', 'create'), ('4', 'build', 'delete'), ('4', 'build', 'edit'), ('4', 'build', 'linkBug'), ('4', 'build', 'linkStory'), ('4', 'build', 'unlinkBug'), ('4', 'build', 'unlinkStory'), ('4', 'build', 'view'), ('4', 'company', 'browse'), ('4', 'company', 'dynamic'), ('4', 'company', 'index'), ('4', 'company', 'view'), ('4', 'doc', 'browse'), ('4', 'doc', 'create'), ('4', 'doc', 'createLib'), ('4', 'doc', 'delete'), ('4', 'doc', 'deleteLib'), ('4', 'doc', 'edit'), ('4', 'doc', 'editLib'), ('4', 'doc', 'index'), ('4', 'doc', 'view'), ('4', 'extension', 'browse'), ('4', 'extension', 'obtain'), ('4', 'extension', 'structure'), ('4', 'file', 'delete'), ('4', 'file', 'download'), ('4', 'file', 'edit'), ('4', 'file', 'uploadImages'), ('4', 'git', 'apiSync'), ('4', 'git', 'cat'), ('4', 'git', 'diff'), ('4', 'group', 'browse'), ('4', 'index', 'index'), ('4', 'misc', 'ping'), ('4', 'my', 'bug'), ('4', 'my', 'changePassword'), ('4', 'my', 'dynamic'), ('4', 'my', 'editProfile'), ('4', 'my', 'index'), ('4', 'my', 'profile'), ('4', 'my', 'project'), ('4', 'my', 'story'), ('4', 'my', 'task'), ('4', 'my', 'testCase'), ('4', 'my', 'testTask'), ('4', 'my', 'todo'), ('4', 'my', 'unbind'), ('4', 'product', 'browse'), ('4', 'product', 'doc'), ('4', 'product', 'dynamic'), ('4', 'product', 'index'), ('4', 'product', 'project'), ('4', 'product', 'roadmap'), ('4', 'product', 'view'), ('4', 'productplan', 'browse'), ('4', 'productplan', 'view'), ('4', 'project', 'activate'), ('4', 'project', 'batchedit'), ('4', 'project', 'batchUnlinkStory'), ('4', 'project', 'browse'), ('4', 'project', 'bug'), ('4', 'project', 'build'), ('4', 'project', 'burn'), ('4', 'project', 'burnData'), ('4', 'project', 'close'), ('4', 'project', 'computeBurn'), ('4', 'project', 'create'), ('4', 'project', 'delete'), ('4', 'project', 'doc'), ('4', 'project', 'dynamic'), ('4', 'project', 'edit'), ('4', 'project', 'grouptask'), ('4', 'project', 'importBug'), ('4', 'project', 'importtask'), ('4', 'project', 'index'), ('4', 'project', 'linkStory'), ('4', 'project', 'manageMembers'), ('4', 'project', 'manageProducts'), ('4', 'project', 'order'), ('4', 'project', 'putoff'), ('4', 'project', 'start'), ('4', 'project', 'story'), ('4', 'project', 'suspend'), ('4', 'project', 'task'), ('4', 'project', 'team'), ('4', 'project', 'testtask'), ('4', 'project', 'unlinkMember'), ('4', 'project', 'unlinkStory'), ('4', 'project', 'updateOrder'), ('4', 'project', 'view'), ('4', 'qa', 'index'), ('4', 'release', 'browse'), ('4', 'release', 'export'), ('4', 'release', 'view'), ('4', 'report', 'bugAssign'), ('4', 'report', 'bugCreate'), ('4', 'report', 'index'), ('4', 'report', 'productSummary'), ('4', 'report', 'projectDeviation'), ('4', 'report', 'workload'), ('4', 'search', 'buildForm'), ('4', 'search', 'buildQuery'), ('4', 'search', 'deleteQuery'), ('4', 'search', 'saveQuery'), ('4', 'search', 'select'), ('4', 'story', 'export'), ('4', 'story', 'report'), ('4', 'story', 'tasks'), ('4', 'story', 'view'), ('4', 'story', 'zeroCase'), ('4', 'svn', 'apiSync'), ('4', 'svn', 'cat'), ('4', 'svn', 'diff'), ('4', 'task', 'activate'), ('4', 'task', 'assignTo'), ('4', 'task', 'batchAssignTo'), ('4', 'task', 'batchClose'), ('4', 'task', 'batchCreate'), ('4', 'task', 'batchEdit'), ('4', 'task', 'cancel'), ('4', 'task', 'close'), ('4', 'task', 'confirmStoryChange'), ('4', 'task', 'create'), ('4', 'task', 'delete'), ('4', 'task', 'deleteEstimate'), ('4', 'task', 'edit'), ('4', 'task', 'editEstimate'), ('4', 'task', 'export'), ('4', 'task', 'finish'), ('4', 'task', 'pause'), ('4', 'task', 'recordEstimate'), ('4', 'task', 'report'), ('4', 'task', 'restart'), ('4', 'task', 'start'), ('4', 'task', 'view'), ('4', 'testcase', 'browse'), ('4', 'testcase', 'createBug'), ('4', 'testcase', 'export'), ('4', 'testcase', 'groupCase'), ('4', 'testcase', 'index'), ('4', 'testcase', 'view'), ('4', 'testtask', 'batchAssign'), ('4', 'testtask', 'browse'), ('4', 'testtask', 'cases'), ('4', 'testtask', 'create'), ('4', 'testtask', 'edit'), ('4', 'testtask', 'groupCase'), ('4', 'testtask', 'index'), ('4', 'testtask', 'results'), ('4', 'testtask', 'view'), ('4', 'todo', 'batchCreate'), ('4', 'todo', 'batchEdit'), ('4', 'todo', 'batchFinish'), ('4', 'todo', 'create'), ('4', 'todo', 'delete'), ('4', 'todo', 'edit'), ('4', 'todo', 'export'), ('4', 'todo', 'finish'), ('4', 'todo', 'import2Today'), ('4', 'todo', 'view'), ('4', 'tree', 'browse'), ('4', 'tree', 'browseTask'), ('4', 'tree', 'delete'), ('4', 'tree', 'edit'), ('4', 'tree', 'fix'), ('4', 'tree', 'manageChild'), ('4', 'tree', 'updateOrder'), ('4', 'user', 'bug'), ('4', 'user', 'deleteContacts'), ('4', 'user', 'dynamic'), ('4', 'user', 'manageContacts'), ('4', 'user', 'profile'), ('4', 'user', 'project'), ('4', 'user', 'story'), ('4', 'user', 'task'), ('4', 'user', 'testCase'), ('4', 'user', 'testTask'), ('4', 'user', 'todo'), ('4', 'user', 'view'), ('5', 'action', 'editComment'), ('5', 'action', 'hideAll'), ('5', 'action', 'hideOne'), ('5', 'action', 'trash'), ('5', 'action', 'undelete'), ('5', 'admin', 'index'), ('5', 'api', 'getModel'), ('5', 'branch', 'delete'), ('5', 'branch', 'manage'), ('5', 'bug', 'activate'), ('5', 'bug', 'assignTo'), ('5', 'bug', 'batchAssignTo'), ('5', 'bug', 'batchClose'), ('5', 'bug', 'batchConfirm'), ('5', 'bug', 'batchCreate'), ('5', 'bug', 'batchEdit'), ('5', 'bug', 'batchResolve'), ('5', 'bug', 'browse'), ('5', 'bug', 'close'), ('5', 'bug', 'confirmBug'), ('5', 'bug', 'confirmStoryChange'), ('5', 'bug', 'create'), ('5', 'bug', 'deleteTemplate'), ('5', 'bug', 'edit'), ('5', 'bug', 'export'), ('5', 'bug', 'index'), ('5', 'bug', 'linkBugs'), ('5', 'bug', 'report'), ('5', 'bug', 'resolve'), ('5', 'bug', 'saveTemplate'), ('5', 'bug', 'unlinkBug'), ('5', 'bug', 'view'), ('5', 'build', 'view'), ('5', 'company', 'browse'), ('5', 'company', 'dynamic'), ('5', 'company', 'index'), ('5', 'company', 'view'), ('5', 'doc', 'browse'), ('5', 'doc', 'create'), ('5', 'doc', 'createLib'), ('5', 'doc', 'delete'), ('5', 'doc', 'deleteLib'), ('5', 'doc', 'edit'), ('5', 'doc', 'editLib'), ('5', 'doc', 'index'), ('5', 'doc', 'view'), ('5', 'extension', 'browse'), ('5', 'extension', 'obtain'), ('5', 'extension', 'structure'), ('5', 'file', 'delete'), ('5', 'file', 'download'), ('5', 'file', 'edit'), ('5', 'file', 'uploadImages'), ('5', 'git', 'apiSync'), ('5', 'git', 'cat'), ('5', 'git', 'diff'), ('5', 'group', 'browse'), ('5', 'index', 'index'), ('5', 'misc', 'ping'), ('5', 'my', 'bug'), ('5', 'my', 'changePassword'), ('5', 'my', 'dynamic'), ('5', 'my', 'editProfile'), ('5', 'my', 'index'), ('5', 'my', 'profile'), ('5', 'my', 'project'), ('5', 'my', 'story'), ('5', 'my', 'task'), ('5', 'my', 'testCase'), ('5', 'my', 'testTask'), ('5', 'my', 'todo'), ('5', 'my', 'unbind'), ('5', 'product', 'batchEdit'), ('5', 'product', 'browse'), ('5', 'product', 'close'), ('5', 'product', 'create'), ('5', 'product', 'delete'), ('5', 'product', 'doc'), ('5', 'product', 'dynamic'), ('5', 'product', 'edit'), ('5', 'product', 'index'), ('5', 'product', 'order'), ('5', 'product', 'project'), ('5', 'product', 'roadmap'), ('5', 'product', 'updateOrder'), ('5', 'product', 'view'), ('5', 'productplan', 'batchUnlinkBug'), ('5', 'productplan', 'batchUnlinkStory'), ('5', 'productplan', 'browse'), ('5', 'productplan', 'create'), ('5', 'productplan', 'delete'), ('5', 'productplan', 'edit'), ('5', 'productplan', 'linkBug'), ('5', 'productplan', 'linkStory'), ('5', 'productplan', 'unlinkBug'), ('5', 'productplan', 'unlinkStory'), ('5', 'productplan', 'view'), ('5', 'project', 'activate'), ('5', 'project', 'batchedit'), ('5', 'project', 'batchUnlinkStory'), ('5', 'project', 'browse'), ('5', 'project', 'bug'), ('5', 'project', 'build'), ('5', 'project', 'burn'), ('5', 'project', 'burnData'), ('5', 'project', 'close'), ('5', 'project', 'computeBurn'), ('5', 'project', 'create'), ('5', 'project', 'delete'), ('5', 'project', 'doc'), ('5', 'project', 'dynamic'), ('5', 'project', 'edit'), ('5', 'project', 'grouptask'), ('5', 'project', 'importBug'), ('5', 'project', 'importtask'), ('5', 'project', 'index'), ('5', 'project', 'linkStory'), ('5', 'project', 'manageMembers'), ('5', 'project', 'manageProducts'), ('5', 'project', 'order'), ('5', 'project', 'putoff'), ('5', 'project', 'start'), ('5', 'project', 'story'), ('5', 'project', 'suspend'), ('5', 'project', 'task'), ('5', 'project', 'team'), ('5', 'project', 'testtask'), ('5', 'project', 'unlinkMember'), ('5', 'project', 'unlinkStory'), ('5', 'project', 'updateOrder'), ('5', 'project', 'view'), ('5', 'qa', 'index'), ('5', 'release', 'batchUnlinkBug'), ('5', 'release', 'batchUnlinkStory'), ('5', 'release', 'browse'), ('5', 'release', 'changeStatus'), ('5', 'release', 'create'), ('5', 'release', 'delete'), ('5', 'release', 'edit'), ('5', 'release', 'export'), ('5', 'release', 'linkBug'), ('5', 'release', 'linkStory'), ('5', 'release', 'unlinkBug'), ('5', 'release', 'unlinkStory'), ('5', 'release', 'view'), ('5', 'report', 'bugAssign'), ('5', 'report', 'bugCreate'), ('5', 'report', 'index'), ('5', 'report', 'productSummary'), ('5', 'report', 'projectDeviation'), ('5', 'report', 'workload'), ('5', 'search', 'buildForm'), ('5', 'search', 'buildQuery'), ('5', 'search', 'deleteQuery'), ('5', 'search', 'saveQuery'), ('5', 'search', 'select'), ('5', 'story', 'activate'), ('5', 'story', 'batchChangeBranch'), ('5', 'story', 'batchChangePlan'), ('5', 'story', 'batchChangeStage'), ('5', 'story', 'batchClose'), ('5', 'story', 'batchCreate'), ('5', 'story', 'batchEdit'), ('5', 'story', 'batchReview'), ('5', 'story', 'change'), ('5', 'story', 'close'), ('5', 'story', 'create'), ('5', 'story', 'delete'), ('5', 'story', 'edit'), ('5', 'story', 'export'), ('5', 'story', 'linkStory'), ('5', 'story', 'report'), ('5', 'story', 'review'), ('5', 'story', 'tasks'), ('5', 'story', 'unlinkStory'), ('5', 'story', 'view'), ('5', 'story', 'zeroCase'), ('5', 'svn', 'apiSync'), ('5', 'svn', 'cat'), ('5', 'svn', 'diff'), ('5', 'task', 'confirmStoryChange'), ('5', 'task', 'deleteEstimate'), ('5', 'task', 'editEstimate'), ('5', 'task', 'export'), ('5', 'task', 'recordEstimate'), ('5', 'task', 'report'), ('5', 'task', 'view'), ('5', 'testcase', 'browse'), ('5', 'testcase', 'createBug'), ('5', 'testcase', 'export'), ('5', 'testcase', 'groupCase'), ('5', 'testcase', 'index'), ('5', 'testcase', 'view'), ('5', 'testtask', 'browse'), ('5', 'testtask', 'cases'), ('5', 'testtask', 'groupCase'), ('5', 'testtask', 'index'), ('5', 'testtask', 'results'), ('5', 'testtask', 'view'), ('5', 'todo', 'batchCreate'), ('5', 'todo', 'batchEdit'), ('5', 'todo', 'batchFinish'), ('5', 'todo', 'create'), ('5', 'todo', 'delete'), ('5', 'todo', 'edit'), ('5', 'todo', 'export'), ('5', 'todo', 'finish'), ('5', 'todo', 'import2Today'), ('5', 'todo', 'view'), ('5', 'tree', 'browse'), ('5', 'tree', 'browseTask'), ('5', 'tree', 'delete'), ('5', 'tree', 'edit'), ('5', 'tree', 'fix'), ('5', 'tree', 'manageChild'), ('5', 'tree', 'updateOrder'), ('5', 'user', 'bug'), ('5', 'user', 'deleteContacts'), ('5', 'user', 'dynamic'), ('5', 'user', 'manageContacts'), ('5', 'user', 'profile'), ('5', 'user', 'project'), ('5', 'user', 'story'), ('5', 'user', 'task'), ('5', 'user', 'testCase'), ('5', 'user', 'testTask'), ('5', 'user', 'todo'), ('5', 'user', 'view'), ('6', 'action', 'editComment'), ('6', 'action', 'hideAll'), ('6', 'action', 'hideOne'), ('6', 'action', 'trash'), ('6', 'action', 'undelete'), ('6', 'admin', 'index'), ('6', 'api', 'getModel'), ('6', 'bug', 'activate'), ('6', 'bug', 'assignTo'), ('6', 'bug', 'batchAssignTo'), ('6', 'bug', 'batchClose'), ('6', 'bug', 'batchConfirm'), ('6', 'bug', 'batchCreate'), ('6', 'bug', 'batchEdit'), ('6', 'bug', 'batchResolve'), ('6', 'bug', 'browse'), ('6', 'bug', 'close'), ('6', 'bug', 'confirmBug'), ('6', 'bug', 'confirmStoryChange'), ('6', 'bug', 'create'), ('6', 'bug', 'delete'), ('6', 'bug', 'deleteTemplate'), ('6', 'bug', 'edit'), ('6', 'bug', 'export'), ('6', 'bug', 'index'), ('6', 'bug', 'linkBugs'), ('6', 'bug', 'report'), ('6', 'bug', 'resolve'), ('6', 'bug', 'saveTemplate'), ('6', 'bug', 'unlinkBug'), ('6', 'bug', 'view'), ('6', 'build', 'batchUnlinkBug'), ('6', 'build', 'batchUnlinkStory'), ('6', 'build', 'create'), ('6', 'build', 'delete'), ('6', 'build', 'edit'), ('6', 'build', 'linkBug'), ('6', 'build', 'linkStory'), ('6', 'build', 'unlinkBug'), ('6', 'build', 'unlinkStory'), ('6', 'build', 'view'), ('6', 'company', 'browse'), ('6', 'company', 'dynamic'), ('6', 'company', 'index'), ('6', 'company', 'view'), ('6', 'doc', 'browse'), ('6', 'doc', 'create'), ('6', 'doc', 'createLib'), ('6', 'doc', 'delete'), ('6', 'doc', 'deleteLib'), ('6', 'doc', 'edit'), ('6', 'doc', 'editLib'), ('6', 'doc', 'index'), ('6', 'doc', 'view'), ('6', 'extension', 'browse'), ('6', 'extension', 'obtain'), ('6', 'extension', 'structure'), ('6', 'file', 'delete'), ('6', 'file', 'download'), ('6', 'file', 'edit'), ('6', 'file', 'uploadImages'), ('6', 'git', 'apiSync'), ('6', 'git', 'cat'), ('6', 'git', 'diff'), ('6', 'group', 'browse'), ('6', 'index', 'index'), ('6', 'misc', 'ping'), ('6', 'my', 'bug'), ('6', 'my', 'changePassword'), ('6', 'my', 'dynamic'), ('6', 'my', 'editProfile'), ('6', 'my', 'index'), ('6', 'my', 'profile'), ('6', 'my', 'project'), ('6', 'my', 'story'), ('6', 'my', 'task'), ('6', 'my', 'testCase'), ('6', 'my', 'testTask'), ('6', 'my', 'todo'), ('6', 'my', 'unbind'), ('6', 'product', 'browse'), ('6', 'product', 'doc'), ('6', 'product', 'dynamic'), ('6', 'product', 'index'), ('6', 'product', 'project'), ('6', 'product', 'roadmap'), ('6', 'product', 'view'), ('6', 'productplan', 'browse'), ('6', 'productplan', 'view'), ('6', 'project', 'activate'), ('6', 'project', 'batchedit'), ('6', 'project', 'batchUnlinkStory'), ('6', 'project', 'browse'), ('6', 'project', 'bug'), ('6', 'project', 'build'), ('6', 'project', 'burn'), ('6', 'project', 'burnData'), ('6', 'project', 'close'), ('6', 'project', 'computeBurn'), ('6', 'project', 'create'), ('6', 'project', 'delete'), ('6', 'project', 'doc'), ('6', 'project', 'dynamic'), ('6', 'project', 'edit'), ('6', 'project', 'grouptask'), ('6', 'project', 'importBug'), ('6', 'project', 'importtask'), ('6', 'project', 'index'), ('6', 'project', 'linkStory'), ('6', 'project', 'manageMembers'), ('6', 'project', 'manageProducts'), ('6', 'project', 'order'), ('6', 'project', 'putoff'), ('6', 'project', 'start'), ('6', 'project', 'story'), ('6', 'project', 'suspend'), ('6', 'project', 'task'), ('6', 'project', 'team'), ('6', 'project', 'testtask'), ('6', 'project', 'unlinkMember'), ('6', 'project', 'unlinkStory'), ('6', 'project', 'updateOrder'), ('6', 'project', 'view'), ('6', 'qa', 'index'), ('6', 'release', 'browse'), ('6', 'release', 'export'), ('6', 'release', 'view'), ('6', 'report', 'bugAssign'), ('6', 'report', 'bugCreate'), ('6', 'report', 'index'), ('6', 'report', 'productSummary'), ('6', 'report', 'projectDeviation'), ('6', 'report', 'workload'), ('6', 'search', 'buildForm'), ('6', 'search', 'buildQuery'), ('6', 'search', 'deleteQuery'), ('6', 'search', 'saveQuery'), ('6', 'search', 'select'), ('6', 'story', 'export'), ('6', 'story', 'report'), ('6', 'story', 'tasks'), ('6', 'story', 'view'), ('6', 'story', 'zeroCase'), ('6', 'svn', 'apiSync'), ('6', 'svn', 'cat'), ('6', 'svn', 'diff'), ('6', 'task', 'activate'), ('6', 'task', 'assignTo'), ('6', 'task', 'batchAssignTo'), ('6', 'task', 'batchClose'), ('6', 'task', 'batchCreate'), ('6', 'task', 'batchEdit'), ('6', 'task', 'cancel'), ('6', 'task', 'close'), ('6', 'task', 'confirmStoryChange'), ('6', 'task', 'create'), ('6', 'task', 'delete'), ('6', 'task', 'deleteEstimate'), ('6', 'task', 'edit'), ('6', 'task', 'editEstimate'), ('6', 'task', 'export'), ('6', 'task', 'finish'), ('6', 'task', 'pause'), ('6', 'task', 'recordEstimate'), ('6', 'task', 'report'), ('6', 'task', 'restart'), ('6', 'task', 'start'), ('6', 'task', 'view'), ('6', 'testcase', 'browse'), ('6', 'testcase', 'export'), ('6', 'testcase', 'groupCase'), ('6', 'testcase', 'index'), ('6', 'testcase', 'view'), ('6', 'testtask', 'browse'), ('6', 'testtask', 'cases'), ('6', 'testtask', 'create'), ('6', 'testtask', 'edit'), ('6', 'testtask', 'groupCase'), ('6', 'testtask', 'index'), ('6', 'testtask', 'results'), ('6', 'testtask', 'view'), ('6', 'todo', 'batchCreate'), ('6', 'todo', 'batchEdit'), ('6', 'todo', 'batchFinish'), ('6', 'todo', 'create'), ('6', 'todo', 'delete'), ('6', 'todo', 'edit'), ('6', 'todo', 'export'), ('6', 'todo', 'finish'), ('6', 'todo', 'import2Today'), ('6', 'todo', 'view'), ('6', 'tree', 'browse'), ('6', 'tree', 'browseTask'), ('6', 'tree', 'delete'), ('6', 'tree', 'edit'), ('6', 'tree', 'fix'), ('6', 'tree', 'manageChild'), ('6', 'tree', 'updateOrder'), ('6', 'user', 'bug'), ('6', 'user', 'deleteContacts'), ('6', 'user', 'dynamic'), ('6', 'user', 'manageContacts'), ('6', 'user', 'profile'), ('6', 'user', 'project'), ('6', 'user', 'story'), ('6', 'user', 'task'), ('6', 'user', 'testCase'), ('6', 'user', 'testTask'), ('6', 'user', 'todo'), ('6', 'user', 'view'), ('7', 'action', 'editComment'), ('7', 'action', 'hideAll'), ('7', 'action', 'hideOne'), ('7', 'action', 'trash'), ('7', 'action', 'undelete'), ('7', 'admin', 'index'), ('7', 'api', 'getModel'), ('7', 'branch', 'delete'), ('7', 'branch', 'manage'), ('7', 'bug', 'activate'), ('7', 'bug', 'assignTo'), ('7', 'bug', 'batchClose'), ('7', 'bug', 'batchConfirm'), ('7', 'bug', 'batchCreate'), ('7', 'bug', 'batchEdit'), ('7', 'bug', 'batchResolve'), ('7', 'bug', 'browse'), ('7', 'bug', 'close'), ('7', 'bug', 'confirmBug'), ('7', 'bug', 'confirmStoryChange'), ('7', 'bug', 'create'), ('7', 'bug', 'delete'), ('7', 'bug', 'deleteTemplate'), ('7', 'bug', 'edit'), ('7', 'bug', 'export'), ('7', 'bug', 'index'), ('7', 'bug', 'linkBugs'), ('7', 'bug', 'report'), ('7', 'bug', 'resolve'), ('7', 'bug', 'saveTemplate'), ('7', 'bug', 'unlinkBug'), ('7', 'bug', 'view'), ('7', 'build', 'view'), ('7', 'company', 'browse'), ('7', 'company', 'dynamic'), ('7', 'company', 'index'), ('7', 'company', 'view'), ('7', 'doc', 'browse'), ('7', 'doc', 'create'), ('7', 'doc', 'createLib'), ('7', 'doc', 'delete'), ('7', 'doc', 'deleteLib'), ('7', 'doc', 'edit'), ('7', 'doc', 'editLib'), ('7', 'doc', 'index'), ('7', 'doc', 'view'), ('7', 'extension', 'browse'), ('7', 'extension', 'obtain'), ('7', 'extension', 'structure'), ('7', 'file', 'delete'), ('7', 'file', 'download'), ('7', 'file', 'edit'), ('7', 'file', 'uploadImages'), ('7', 'git', 'apiSync'), ('7', 'git', 'cat'), ('7', 'git', 'diff'), ('7', 'group', 'browse'), ('7', 'index', 'index'), ('7', 'misc', 'ping'), ('7', 'my', 'bug'), ('7', 'my', 'changePassword'), ('7', 'my', 'dynamic'), ('7', 'my', 'editProfile'), ('7', 'my', 'index'), ('7', 'my', 'profile'), ('7', 'my', 'project'), ('7', 'my', 'story'), ('7', 'my', 'task'), ('7', 'my', 'testCase'), ('7', 'my', 'testTask'), ('7', 'my', 'todo'), ('7', 'my', 'unbind'), ('7', 'product', 'batchEdit'), ('7', 'product', 'browse'), ('7', 'product', 'close'), ('7', 'product', 'create'), ('7', 'product', 'delete'), ('7', 'product', 'doc'), ('7', 'product', 'dynamic'), ('7', 'product', 'edit'), ('7', 'product', 'index'), ('7', 'product', 'order'), ('7', 'product', 'project'), ('7', 'product', 'roadmap'), ('7', 'product', 'updateOrder'), ('7', 'product', 'view'), ('7', 'productplan', 'batchUnlinkBug'), ('7', 'productplan', 'batchUnlinkStory'), ('7', 'productplan', 'browse'), ('7', 'productplan', 'create'), ('7', 'productplan', 'delete'), ('7', 'productplan', 'edit'), ('7', 'productplan', 'linkBug'), ('7', 'productplan', 'linkStory'), ('7', 'productplan', 'unlinkBug'), ('7', 'productplan', 'unlinkStory'), ('7', 'productplan', 'view'), ('7', 'project', 'browse'), ('7', 'project', 'bug'), ('7', 'project', 'build'), ('7', 'project', 'burn'), ('7', 'project', 'burnData'), ('7', 'project', 'doc'), ('7', 'project', 'dynamic'), ('7', 'project', 'grouptask'), ('7', 'project', 'index'), ('7', 'project', 'linkStory'), ('7', 'project', 'manageProducts'), ('7', 'project', 'story'), ('7', 'project', 'task'), ('7', 'project', 'team'), ('7', 'project', 'testtask'), ('7', 'project', 'unlinkStory'), ('7', 'project', 'view'), ('7', 'qa', 'index'), ('7', 'release', 'batchUnlinkBug'), ('7', 'release', 'batchUnlinkStory'), ('7', 'release', 'browse'), ('7', 'release', 'changeStatus'), ('7', 'release', 'create'), ('7', 'release', 'delete'), ('7', 'release', 'edit'), ('7', 'release', 'export'), ('7', 'release', 'linkBug'), ('7', 'release', 'linkStory'), ('7', 'release', 'unlinkBug'), ('7', 'release', 'unlinkStory'), ('7', 'release', 'view'), ('7', 'report', 'bugAssign'), ('7', 'report', 'bugCreate'), ('7', 'report', 'index'), ('7', 'report', 'productSummary'), ('7', 'report', 'projectDeviation'), ('7', 'report', 'workload'), ('7', 'search', 'buildForm'), ('7', 'search', 'buildQuery'), ('7', 'search', 'deleteQuery'), ('7', 'search', 'saveQuery'), ('7', 'search', 'select'), ('7', 'story', 'activate'), ('7', 'story', 'batchAssignTo'), ('7', 'story', 'batchChangeBranch'), ('7', 'story', 'batchChangePlan'), ('7', 'story', 'batchChangeStage'), ('7', 'story', 'batchClose'), ('7', 'story', 'batchCreate'), ('7', 'story', 'batchEdit'), ('7', 'story', 'batchReview'), ('7', 'story', 'change'), ('7', 'story', 'close'), ('7', 'story', 'create'), ('7', 'story', 'delete'), ('7', 'story', 'edit'), ('7', 'story', 'export'), ('7', 'story', 'linkStory'), ('7', 'story', 'report'), ('7', 'story', 'review'), ('7', 'story', 'tasks'), ('7', 'story', 'unlinkStory'), ('7', 'story', 'view'), ('7', 'story', 'zeroCase'), ('7', 'svn', 'apiSync'), ('7', 'svn', 'cat'), ('7', 'svn', 'diff'), ('7', 'task', 'confirmStoryChange'), ('7', 'task', 'deleteEstimate'), ('7', 'task', 'editEstimate'), ('7', 'task', 'export'), ('7', 'task', 'recordEstimate'), ('7', 'task', 'report'), ('7', 'task', 'view'), ('7', 'testcase', 'browse'), ('7', 'testcase', 'createBug'), ('7', 'testcase', 'export'), ('7', 'testcase', 'groupCase'), ('7', 'testcase', 'index'), ('7', 'testcase', 'view'), ('7', 'testtask', 'browse'), ('7', 'testtask', 'cases'), ('7', 'testtask', 'groupCase'), ('7', 'testtask', 'index'), ('7', 'testtask', 'results'), ('7', 'testtask', 'view'), ('7', 'todo', 'batchCreate'), ('7', 'todo', 'batchEdit'), ('7', 'todo', 'batchFinish'), ('7', 'todo', 'create'), ('7', 'todo', 'delete'), ('7', 'todo', 'edit'), ('7', 'todo', 'export'), ('7', 'todo', 'finish'), ('7', 'todo', 'import2Today'), ('7', 'todo', 'view'), ('7', 'tree', 'browse'), ('7', 'tree', 'browseTask'), ('7', 'tree', 'delete'), ('7', 'tree', 'edit'), ('7', 'tree', 'fix'), ('7', 'tree', 'manageChild'), ('7', 'tree', 'updateOrder'), ('7', 'user', 'bug'), ('7', 'user', 'deleteContacts'), ('7', 'user', 'dynamic'), ('7', 'user', 'manageContacts'), ('7', 'user', 'profile'), ('7', 'user', 'project'), ('7', 'user', 'story'), ('7', 'user', 'task'), ('7', 'user', 'testCase'), ('7', 'user', 'testTask'), ('7', 'user', 'todo'), ('7', 'user', 'view'), ('8', 'action', 'editComment'), ('8', 'action', 'hideAll'), ('8', 'action', 'hideOne'), ('8', 'action', 'trash'), ('8', 'action', 'undelete'), ('8', 'admin', 'index'), ('8', 'api', 'getModel'), ('8', 'bug', 'activate'), ('8', 'bug', 'assignTo'), ('8', 'bug', 'batchAssignTo'), ('8', 'bug', 'batchClose'), ('8', 'bug', 'batchConfirm'), ('8', 'bug', 'batchCreate'), ('8', 'bug', 'batchEdit'), ('8', 'bug', 'batchResolve'), ('8', 'bug', 'browse'), ('8', 'bug', 'close'), ('8', 'bug', 'confirmBug'), ('8', 'bug', 'confirmStoryChange'), ('8', 'bug', 'create'), ('8', 'bug', 'delete'), ('8', 'bug', 'deleteTemplate'), ('8', 'bug', 'edit'), ('8', 'bug', 'export'), ('8', 'bug', 'index'), ('8', 'bug', 'linkBugs'), ('8', 'bug', 'report'), ('8', 'bug', 'resolve'), ('8', 'bug', 'saveTemplate'), ('8', 'bug', 'unlinkBug'), ('8', 'bug', 'view'), ('8', 'build', 'create'), ('8', 'build', 'delete'), ('8', 'build', 'edit'), ('8', 'build', 'view'), ('8', 'company', 'browse'), ('8', 'company', 'dynamic'), ('8', 'company', 'index'), ('8', 'company', 'view'), ('8', 'doc', 'browse'), ('8', 'doc', 'create'), ('8', 'doc', 'createLib'), ('8', 'doc', 'delete'), ('8', 'doc', 'deleteLib'), ('8', 'doc', 'edit'), ('8', 'doc', 'editLib'), ('8', 'doc', 'index'), ('8', 'doc', 'view'), ('8', 'extension', 'browse'), ('8', 'extension', 'obtain'), ('8', 'extension', 'structure'), ('8', 'file', 'delete'), ('8', 'file', 'download'), ('8', 'file', 'edit'), ('8', 'file', 'uploadImages'), ('8', 'git', 'apiSync'), ('8', 'git', 'cat'), ('8', 'git', 'diff'), ('8', 'group', 'browse'), ('8', 'index', 'index'), ('8', 'misc', 'ping'), ('8', 'my', 'bug'), ('8', 'my', 'changePassword'), ('8', 'my', 'dynamic'), ('8', 'my', 'editProfile'), ('8', 'my', 'index'), ('8', 'my', 'profile'), ('8', 'my', 'project'), ('8', 'my', 'story'), ('8', 'my', 'task'), ('8', 'my', 'testCase'), ('8', 'my', 'testTask'), ('8', 'my', 'todo'), ('8', 'my', 'unbind'), ('8', 'product', 'browse'), ('8', 'product', 'doc'), ('8', 'product', 'dynamic'), ('8', 'product', 'index'), ('8', 'product', 'project'), ('8', 'product', 'roadmap'), ('8', 'product', 'view'), ('8', 'productplan', 'browse'), ('8', 'productplan', 'view'), ('8', 'project', 'bug'), ('8', 'project', 'build'), ('8', 'project', 'burn'), ('8', 'project', 'burnData'), ('8', 'project', 'doc'), ('8', 'project', 'dynamic'), ('8', 'project', 'grouptask'), ('8', 'project', 'importBug'), ('8', 'project', 'importtask'), ('8', 'project', 'index'), ('8', 'project', 'story'), ('8', 'project', 'task'), ('8', 'project', 'team'), ('8', 'project', 'testtask'), ('8', 'project', 'view'), ('8', 'qa', 'index'), ('8', 'release', 'browse'), ('8', 'release', 'export'), ('8', 'release', 'view'), ('8', 'report', 'bugAssign'), ('8', 'report', 'bugCreate'), ('8', 'report', 'index'), ('8', 'report', 'productSummary'), ('8', 'report', 'projectDeviation'), ('8', 'report', 'workload'), ('8', 'search', 'buildForm'), ('8', 'search', 'buildQuery'), ('8', 'search', 'deleteQuery'), ('8', 'search', 'saveQuery'), ('8', 'search', 'select'), ('8', 'story', 'export'), ('8', 'story', 'report'), ('8', 'story', 'tasks'), ('8', 'story', 'view'), ('8', 'story', 'zeroCase'), ('8', 'svn', 'apiSync'), ('8', 'svn', 'cat'), ('8', 'svn', 'diff'), ('8', 'task', 'activate'), ('8', 'task', 'assignTo'), ('8', 'task', 'batchAssignTo'), ('8', 'task', 'batchClose'), ('8', 'task', 'batchCreate'), ('8', 'task', 'batchEdit'), ('8', 'task', 'cancel'), ('8', 'task', 'close'), ('8', 'task', 'confirmStoryChange'), ('8', 'task', 'create'), ('8', 'task', 'delete'), ('8', 'task', 'deleteEstimate'), ('8', 'task', 'edit'), ('8', 'task', 'editEstimate'), ('8', 'task', 'export'), ('8', 'task', 'finish'), ('8', 'task', 'pause'), ('8', 'task', 'recordEstimate'), ('8', 'task', 'report'), ('8', 'task', 'restart'), ('8', 'task', 'start'), ('8', 'task', 'view'), ('8', 'testcase', 'batchCreate'), ('8', 'testcase', 'batchDelete'), ('8', 'testcase', 'batchEdit'), ('8', 'testcase', 'browse'), ('8', 'testcase', 'confirmChange'), ('8', 'testcase', 'confirmStoryChange'), ('8', 'testcase', 'create'), ('8', 'testcase', 'createBug'), ('8', 'testcase', 'delete'), ('8', 'testcase', 'edit'), ('8', 'testcase', 'export'), ('8', 'testcase', 'exportTemplet'), ('8', 'testcase', 'groupCase'), ('8', 'testcase', 'import'), ('8', 'testcase', 'index'), ('8', 'testcase', 'linkCases'), ('8', 'testcase', 'showImport'), ('8', 'testcase', 'unlinkCase'), ('8', 'testcase', 'view'), ('8', 'testtask', 'batchAssign'), ('8', 'testtask', 'batchRun'), ('8', 'testtask', 'browse'), ('8', 'testtask', 'cases'), ('8', 'testtask', 'close'), ('8', 'testtask', 'create'), ('8', 'testtask', 'delete'), ('8', 'testtask', 'edit'), ('8', 'testtask', 'groupCase'), ('8', 'testtask', 'index'), ('8', 'testtask', 'linkcase'), ('8', 'testtask', 'results'), ('8', 'testtask', 'runcase'), ('8', 'testtask', 'start'), ('8', 'testtask', 'unlinkcase'), ('8', 'testtask', 'view'), ('8', 'todo', 'batchCreate'), ('8', 'todo', 'batchEdit'), ('8', 'todo', 'batchFinish'), ('8', 'todo', 'create'), ('8', 'todo', 'delete'), ('8', 'todo', 'edit'), ('8', 'todo', 'export'), ('8', 'todo', 'finish'), ('8', 'todo', 'import2Today'), ('8', 'todo', 'view'), ('8', 'tree', 'browse'), ('8', 'tree', 'browseTask'), ('8', 'tree', 'delete'), ('8', 'tree', 'edit'), ('8', 'tree', 'fix'), ('8', 'tree', 'manageChild'), ('8', 'tree', 'updateOrder'), ('8', 'user', 'bug'), ('8', 'user', 'deleteContacts'), ('8', 'user', 'dynamic'), ('8', 'user', 'manageContacts'), ('8', 'user', 'profile'), ('8', 'user', 'project'), ('8', 'user', 'story'), ('8', 'user', 'task'), ('8', 'user', 'testCase'), ('8', 'user', 'testTask'), ('8', 'user', 'todo'), ('8', 'user', 'view'), ('9', 'action', 'editComment'), ('9', 'action', 'hideAll'), ('9', 'action', 'hideOne'), ('9', 'action', 'trash'), ('9', 'action', 'undelete'), ('9', 'admin', 'index'), ('9', 'api', 'getModel'), ('9', 'bug', 'browse'), ('9', 'bug', 'export'), ('9', 'bug', 'index'), ('9', 'bug', 'report'), ('9', 'bug', 'view'), ('9', 'build', 'view'), ('9', 'company', 'browse'), ('9', 'company', 'dynamic'), ('9', 'company', 'edit'), ('9', 'company', 'index'), ('9', 'company', 'view'), ('9', 'dept', 'browse'), ('9', 'dept', 'delete'), ('9', 'dept', 'manageChild'), ('9', 'dept', 'updateOrder'), ('9', 'doc', 'browse'), ('9', 'doc', 'create'), ('9', 'doc', 'createLib'), ('9', 'doc', 'delete'), ('9', 'doc', 'deleteLib'), ('9', 'doc', 'edit'), ('9', 'doc', 'editLib'), ('9', 'doc', 'index'), ('9', 'doc', 'view'), ('9', 'extension', 'browse'), ('9', 'extension', 'obtain'), ('9', 'extension', 'structure'), ('9', 'file', 'delete'), ('9', 'file', 'download'), ('9', 'file', 'edit'), ('9', 'file', 'uploadImages'), ('9', 'git', 'apiSync'), ('9', 'git', 'cat'), ('9', 'git', 'diff'), ('9', 'group', 'browse'), ('9', 'index', 'index'), ('9', 'misc', 'ping'), ('9', 'my', 'bug'), ('9', 'my', 'changePassword'), ('9', 'my', 'dynamic'), ('9', 'my', 'editProfile'), ('9', 'my', 'index'), ('9', 'my', 'profile'), ('9', 'my', 'project'), ('9', 'my', 'story'), ('9', 'my', 'task'), ('9', 'my', 'testCase'), ('9', 'my', 'testTask'), ('9', 'my', 'todo'), ('9', 'my', 'unbind'), ('9', 'product', 'browse'), ('9', 'product', 'doc'), ('9', 'product', 'dynamic'), ('9', 'product', 'index'), ('9', 'product', 'project'), ('9', 'product', 'roadmap'), ('9', 'product', 'view'), ('9', 'productplan', 'browse'), ('9', 'productplan', 'view'), ('9', 'project', 'browse'), ('9', 'project', 'bug'), ('9', 'project', 'build'), ('9', 'project', 'burn'), ('9', 'project', 'burnData'), ('9', 'project', 'computeBurn'), ('9', 'project', 'doc'), ('9', 'project', 'dynamic'), ('9', 'project', 'grouptask'), ('9', 'project', 'index'), ('9', 'project', 'story'), ('9', 'project', 'task'), ('9', 'project', 'team'), ('9', 'project', 'view'), ('9', 'qa', 'index'), ('9', 'release', 'browse'), ('9', 'release', 'export'), ('9', 'release', 'view'), ('9', 'report', 'bugAssign'), ('9', 'report', 'bugCreate'), ('9', 'report', 'index'), ('9', 'report', 'productSummary'), ('9', 'report', 'projectDeviation'), ('9', 'report', 'workload'), ('9', 'search', 'buildForm'), ('9', 'search', 'buildQuery'), ('9', 'search', 'deleteQuery'), ('9', 'search', 'saveQuery'), ('9', 'search', 'select'), ('9', 'story', 'export'), ('9', 'story', 'report'), ('9', 'story', 'review'), ('9', 'story', 'tasks'), ('9', 'story', 'view'), ('9', 'story', 'zeroCase'), ('9', 'svn', 'apiSync'), ('9', 'svn', 'cat'), ('9', 'svn', 'diff'), ('9', 'task', 'deleteEstimate'), ('9', 'task', 'editEstimate'), ('9', 'task', 'export'), ('9', 'task', 'recordEstimate'), ('9', 'task', 'report'), ('9', 'task', 'view'), ('9', 'testcase', 'browse'), ('9', 'testcase', 'export'), ('9', 'testcase', 'groupCase'), ('9', 'testcase', 'index'), ('9', 'testcase', 'view'), ('9', 'testtask', 'browse'), ('9', 'testtask', 'cases'), ('9', 'testtask', 'groupCase'), ('9', 'testtask', 'index'), ('9', 'testtask', 'results'), ('9', 'testtask', 'view'), ('9', 'todo', 'batchCreate'), ('9', 'todo', 'batchEdit'), ('9', 'todo', 'batchFinish'), ('9', 'todo', 'create'), ('9', 'todo', 'delete'), ('9', 'todo', 'edit'), ('9', 'todo', 'export'), ('9', 'todo', 'finish'), ('9', 'todo', 'import2Today'), ('9', 'todo', 'view'), ('9', 'user', 'batchCreate'), ('9', 'user', 'batchEdit'), ('9', 'user', 'bug'), ('9', 'user', 'create'), ('9', 'user', 'delete'), ('9', 'user', 'deleteContacts'), ('9', 'user', 'dynamic'), ('9', 'user', 'edit'), ('9', 'user', 'manageContacts'), ('9', 'user', 'profile'), ('9', 'user', 'project'), ('9', 'user', 'story'), ('9', 'user', 'task'), ('9', 'user', 'testCase'), ('9', 'user', 'testTask'), ('9', 'user', 'todo'), ('9', 'user', 'unbind'), ('9', 'user', 'unlock'), ('9', 'user', 'view'), ('10', 'action', 'editComment'), ('10', 'api', 'getModel'), ('10', 'bug', 'activate'), ('10', 'bug', 'browse'), ('10', 'bug', 'close'), ('10', 'bug', 'create'), ('10', 'bug', 'edit'), ('10', 'bug', 'index'), ('10', 'bug', 'linkBugs'), ('10', 'bug', 'report'), ('10', 'bug', 'unlinkBug'), ('10', 'bug', 'view'), ('10', 'build', 'view'), ('10', 'company', 'browse'), ('10', 'company', 'dynamic'), ('10', 'company', 'index'), ('10', 'company', 'view'), ('10', 'doc', 'browse'), ('10', 'doc', 'index'), ('10', 'doc', 'view'), ('10', 'file', 'download'), ('10', 'index', 'index'), ('10', 'misc', 'ping'), ('10', 'my', 'changePassword'), ('10', 'my', 'dynamic'), ('10', 'my', 'editProfile'), ('10', 'my', 'index'), ('10', 'my', 'profile'), ('10', 'my', 'task'), ('10', 'my', 'todo'), ('10', 'my', 'unbind'), ('10', 'product', 'browse'), ('10', 'product', 'doc'), ('10', 'product', 'dynamic'), ('10', 'product', 'index'), ('10', 'product', 'roadmap'), ('10', 'product', 'view'), ('10', 'productplan', 'browse'), ('10', 'productplan', 'view'), ('10', 'project', 'browse'), ('10', 'project', 'bug'), ('10', 'project', 'build'), ('10', 'project', 'burn'), ('10', 'project', 'doc'), ('10', 'project', 'dynamic'), ('10', 'project', 'grouptask'), ('10', 'project', 'index'), ('10', 'project', 'story'), ('10', 'project', 'task'), ('10', 'project', 'team'), ('10', 'project', 'testtask'), ('10', 'project', 'view'), ('10', 'qa', 'index'), ('10', 'release', 'browse'), ('10', 'release', 'view'), ('10', 'report', 'bugAssign'), ('10', 'report', 'bugCreate'), ('10', 'report', 'index'), ('10', 'report', 'productSummary'), ('10', 'report', 'projectDeviation'), ('10', 'report', 'workload'), ('10', 'search', 'buildForm'), ('10', 'search', 'buildQuery'), ('10', 'search', 'deleteQuery'), ('10', 'search', 'saveQuery'), ('10', 'story', 'tasks'), ('10', 'story', 'view'), ('10', 'task', 'deleteEstimate'), ('10', 'task', 'editEstimate'), ('10', 'task', 'recordEstimate'), ('10', 'task', 'view'), ('10', 'todo', 'batchCreate'), ('10', 'todo', 'batchEdit'), ('10', 'todo', 'batchFinish'), ('10', 'todo', 'create'), ('10', 'todo', 'delete'), ('10', 'todo', 'edit'), ('10', 'todo', 'export'), ('10', 'todo', 'finish'), ('10', 'todo', 'import2Today'), ('10', 'todo', 'view'), ('10', 'user', 'bug'), ('10', 'user', 'dynamic'), ('10', 'user', 'profile'), ('10', 'user', 'project'), ('10', 'user', 'story'), ('10', 'user', 'task'), ('10', 'user', 'testCase'), ('10', 'user', 'testTask'), ('10', 'user', 'todo'), ('10', 'user', 'view'), ('11', 'bug', 'browse'), ('11', 'bug', 'index'), ('11', 'bug', 'report'), ('11', 'bug', 'view'), ('11', 'build', 'view'), ('11', 'company', 'browse'), ('11', 'company', 'dynamic'), ('11', 'company', 'index'), ('11', 'company', 'view'), ('11', 'doc', 'browse'), ('11', 'doc', 'index'), ('11', 'doc', 'view'), ('11', 'file', 'download'), ('11', 'git', 'cat'), ('11', 'git', 'diff'), ('11', 'group', 'browse'), ('11', 'index', 'index'), ('11', 'misc', 'ping'), ('11', 'my', 'index'), ('11', 'product', 'browse'), ('11', 'product', 'doc'), ('11', 'product', 'dynamic'), ('11', 'product', 'index'), ('11', 'product', 'roadmap'), ('11', 'product', 'view'), ('11', 'productplan', 'browse'), ('11', 'productplan', 'view'), ('11', 'project', 'browse'), ('11', 'project', 'bug'), ('11', 'project', 'build'), ('11', 'project', 'burn'), ('11', 'project', 'doc'), ('11', 'project', 'dynamic'), ('11', 'project', 'grouptask'), ('11', 'project', 'index'), ('11', 'project', 'story'), ('11', 'project', 'task'), ('11', 'project', 'team'), ('11', 'project', 'testtask'), ('11', 'project', 'view'), ('11', 'qa', 'index'), ('11', 'release', 'browse'), ('11', 'release', 'view'), ('11', 'report', 'bugAssign'), ('11', 'report', 'bugCreate'), ('11', 'report', 'index'), ('11', 'report', 'productSummary'), ('11', 'report', 'projectDeviation'), ('11', 'report', 'workload'), ('11', 'search', 'buildForm'), ('11', 'search', 'buildQuery'), ('11', 'story', 'tasks'), ('11', 'story', 'view'), ('11', 'svn', 'cat'), ('11', 'svn', 'diff'), ('11', 'task', 'recordEstimate'), ('11', 'task', 'view'), ('11', 'testcase', 'browse'), ('11', 'testcase', 'groupCase'), ('11', 'testcase', 'index'), ('11', 'testcase', 'view'), ('11', 'testtask', 'browse'), ('11', 'testtask', 'cases'), ('11', 'testtask', 'groupCase'), ('11', 'testtask', 'index'), ('11', 'testtask', 'results'), ('11', 'testtask', 'view'), ('11', 'user', 'bug'), ('11', 'user', 'dynamic'), ('11', 'user', 'profile'), ('11', 'user', 'project'), ('11', 'user', 'story'), ('11', 'user', 'task'), ('11', 'user', 'testCase'), ('11', 'user', 'testTask'), ('11', 'user', 'todo'), ('11', 'user', 'view');
COMMIT;

-- ----------------------------
--  Table structure for `zt_history`
-- ----------------------------
DROP TABLE IF EXISTS `zt_history`;
CREATE TABLE `zt_history` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field` varchar(30) NOT NULL DEFAULT '',
  `old` text NOT NULL,
  `new` text NOT NULL,
  `diff` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `action` (`action`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_history`
-- ----------------------------
BEGIN;
INSERT INTO `zt_history` VALUES ('1', '3', 'status', 'wait', 'doing', ''), ('2', '6', 'realStarted', '0000-00-00', '2016-03-17', ''), ('3', '6', 'assignedTo', 'zhangdong', 'admin', ''), ('4', '6', 'status', 'wait', 'doing', ''), ('5', '19', 'realStarted', '0000-00-00', '2016-03-17', ''), ('6', '19', 'left', '0', '48', ''), ('7', '19', 'assignedTo', 'zhangtingrui', 'admin', ''), ('8', '19', 'status', 'wait', 'doing', ''), ('9', '20', 'realStarted', '0000-00-00', '2016-03-17', ''), ('10', '20', 'left', '0', '48', ''), ('11', '20', 'assignedTo', 'yuweiping', 'admin', ''), ('12', '20', 'status', 'wait', 'doing', ''), ('13', '21', 'realStarted', '0000-00-00', '2016-03-17', ''), ('14', '21', 'left', '0', '48', ''), ('15', '21', 'assignedTo', 'zhangdong', 'admin', ''), ('16', '21', 'status', 'wait', 'doing', ''), ('17', '22', 'realStarted', '0000-00-00', '2016-03-17', ''), ('18', '22', 'left', '0', '48', ''), ('19', '22', 'assignedTo', 'shiyongcan', 'admin', ''), ('20', '22', 'status', 'wait', 'doing', ''), ('21', '23', 'realStarted', '0000-00-00', '2016-03-17', ''), ('22', '23', 'left', '0', '48', ''), ('23', '23', 'assignedTo', 'yangkai', 'admin', ''), ('24', '23', 'status', 'wait', 'doing', ''), ('25', '24', 'realStarted', '0000-00-00', '2016-03-17', ''), ('26', '24', 'left', '0', '48', ''), ('27', '24', 'assignedTo', 'husize', 'admin', ''), ('28', '24', 'status', 'wait', 'doing', ''), ('29', '25', 'realStarted', '0000-00-00', '2016-03-17', ''), ('30', '25', 'left', '0', '48', ''), ('31', '25', 'assignedTo', 'diliniya', 'admin', ''), ('32', '25', 'status', 'wait', 'doing', ''), ('33', '26', 'realStarted', '0000-00-00', '2016-03-17', ''), ('34', '26', 'left', '0', '48', ''), ('35', '26', 'assignedTo', 'chenyongpeng', 'admin', ''), ('36', '26', 'status', 'wait', 'doing', ''), ('37', '27', 'realStarted', '0000-00-00', '2016-03-17', ''), ('38', '27', 'left', '0', '48', ''), ('39', '27', 'assignedTo', 'chengeyin', 'admin', ''), ('40', '27', 'status', 'wait', 'doing', ''), ('41', '28', 'realStarted', '0000-00-00', '2016-03-17', ''), ('42', '28', 'left', '0', '48', ''), ('43', '28', 'assignedTo', 'anjianfeng', 'admin', ''), ('44', '28', 'status', 'wait', 'doing', ''), ('45', '29', 'realStarted', '0000-00-00', '2016-03-17', ''), ('46', '29', 'left', '0', '48', ''), ('47', '29', 'status', 'wait', 'doing', ''), ('48', '30', 'realStarted', '0000-00-00', '2016-03-17', ''), ('49', '30', 'left', '0', '48', ''), ('50', '30', 'assignedTo', 'helin', 'admin', ''), ('51', '30', 'status', 'wait', 'doing', ''), ('52', '32', 'realStarted', '0000-00-00', '2016-03-17', ''), ('53', '32', 'assignedTo', 'yuweiping', 'admin', ''), ('54', '32', 'status', 'wait', 'doing', ''), ('55', '33', 'assignedTo', 'admin', 'yuweiping', ''), ('56', '34', 'assignedTo', 'admin', 'zhangdong', ''), ('57', '35', 'assignedTo', 'admin', 'anjianfeng', ''), ('58', '36', 'assignedTo', 'admin', 'chengeyin', ''), ('59', '37', 'assignedTo', 'admin', 'chenyongpeng', ''), ('60', '38', 'assignedTo', 'admin', 'diliniya', ''), ('61', '39', 'assignedTo', 'admin', 'helin', ''), ('62', '40', 'assignedTo', 'admin', 'husize', ''), ('63', '41', 'assignedTo', 'admin', 'shiyongcan', ''), ('64', '42', 'assignedTo', 'admin', 'yangkai', ''), ('65', '43', 'assignedTo', 'admin', 'yuweiping', ''), ('66', '43', 'pri', '0', '1', ''), ('67', '44', 'assignedTo', 'admin', 'zhangdong', ''), ('68', '44', 'pri', '0', '1', ''), ('69', '45', 'assignedTo', 'admin', 'zhangtingrui', ''), ('70', '45', 'pri', '0', '1', ''), ('71', '46', 'pri', '0', '1', ''), ('72', '47', 'pri', '0', '1', ''), ('73', '48', 'pri', '0', '1', ''), ('74', '49', 'pri', '0', '1', ''), ('75', '50', 'pri', '0', '1', ''), ('76', '51', 'pri', '0', '1', ''), ('77', '52', 'pri', '0', '1', ''), ('78', '53', 'pri', '0', '1', ''), ('79', '54', 'pri', '0', '1', ''), ('80', '56', 'realStarted', '0000-00-00', '2016-03-17', ''), ('81', '56', 'assignedTo', 'zhangdong', 'admin', ''), ('82', '56', 'status', 'wait', 'doing', ''), ('83', '57', 'assignedTo', 'admin', 'zhangdong', ''), ('84', '57', 'pri', '0', '1', ''), ('85', '59', 'realStarted', '0000-00-00', '2016-03-17', ''), ('86', '59', 'assignedTo', 'yuweiping', 'admin', ''), ('87', '59', 'status', 'wait', 'doing', ''), ('88', '61', 'realStarted', '0000-00-00', '2016-03-17', ''), ('89', '61', 'assignedTo', 'diliniya', 'admin', ''), ('90', '61', 'status', 'wait', 'doing', ''), ('91', '62', 'assignedTo', 'admin', 'diliniya', ''), ('92', '64', 'realStarted', '0000-00-00', '2016-03-17', ''), ('93', '64', 'assignedTo', 'yangkai', 'admin', ''), ('94', '64', 'status', 'wait', 'doing', ''), ('95', '65', 'assignedTo', 'admin', 'yangkai', ''), ('96', '68', 'realStarted', '0000-00-00', '2016-03-17', ''), ('97', '68', 'assignedTo', 'zhangtingrui', 'admin', ''), ('98', '68', 'status', 'wait', 'doing', ''), ('99', '69', 'assignedTo', 'admin', 'zhangtingrui', ''), ('100', '71', 'realStarted', '0000-00-00', '2016-03-17', ''), ('101', '71', 'assignedTo', 'zhangtingrui', 'admin', ''), ('102', '71', 'status', 'wait', 'doing', ''), ('103', '72', 'assignedTo', 'admin', 'zhangtingrui', ''), ('104', '74', 'realStarted', '0000-00-00', '2016-03-17', ''), ('105', '74', 'assignedTo', 'helin', 'admin', ''), ('106', '74', 'status', 'wait', 'doing', ''), ('107', '75', 'assignedTo', 'admin', 'helin', ''), ('108', '77', 'realStarted', '0000-00-00', '2016-03-17', ''), ('109', '77', 'assignedTo', 'helin', 'admin', ''), ('110', '77', 'status', 'wait', 'doing', ''), ('111', '78', 'assignedTo', 'admin', 'helin', ''), ('112', '80', 'realStarted', '0000-00-00', '2016-03-17', ''), ('113', '80', 'assignedTo', 'shiyongcan', 'admin', ''), ('114', '80', 'status', 'wait', 'doing', ''), ('115', '81', 'assignedTo', 'admin', 'shiyongcan', ''), ('116', '83', 'realStarted', '0000-00-00', '2016-03-17', ''), ('117', '83', 'assignedTo', 'shiyongcan', 'admin', ''), ('118', '83', 'status', 'wait', 'doing', ''), ('119', '84', 'assignedTo', 'admin', 'shiyongcan', ''), ('120', '86', 'realStarted', '0000-00-00', '2016-03-17', ''), ('121', '86', 'assignedTo', 'chenyongpeng', 'admin', ''), ('122', '86', 'status', 'wait', 'doing', ''), ('123', '87', 'assignedTo', 'admin', 'chenyongpeng', ''), ('124', '89', 'realStarted', '0000-00-00', '2016-03-17', ''), ('125', '89', 'assignedTo', 'anjianfeng', 'admin', ''), ('126', '89', 'status', 'wait', 'doing', ''), ('127', '90', 'assignedTo', 'admin', 'anjianfeng', ''), ('128', '92', 'assignedTo', 'admin', 'chenyongpeng', ''), ('129', '93', 'mailto', '', ',chenyongpeng', ''), ('130', '100', 'realStarted', '0000-00-00', '2016-03-17', ''), ('131', '100', 'assignedTo', 'husize', 'admin', ''), ('132', '100', 'status', 'wait', 'doing', ''), ('133', '101', 'assignedTo', 'admin', 'husize', ''), ('134', '106', 'name', '山东省人力资源市场数据采集系统	', '山东省人力资源市场数据采集系统', ''), ('135', '107', 'acl', 'private', 'open', ''), ('136', '121', 'estimate', '72', '48', ''), ('137', '121', 'mailto', '', ',chenyongpeng', ''), ('138', '121', 'assignedTo', 'admin', 'chenyongpeng', ''), ('139', '122', 'assignedTo', 'admin', 'yuweiping', ''), ('140', '124', 'mailto', '', ',chenyongpeng', ''), ('141', '124', 'assignedTo', 'admin', 'chenyongpeng', ''), ('142', '126', 'mailto', '', ',zhangtingrui', ''), ('143', '126', 'assignedTo', 'admin', 'zhangtingrui', ''), ('144', '129', 'mailto', '', ',zhangtingrui', ''), ('145', '129', 'assignedTo', 'admin', 'zhangtingrui', ''), ('146', '130', 'assignedTo', 'chenyongpeng', 'admin', ''), ('147', '130', 'title', '企业信息备案', '企业用户信息备案', '001- <del>企业信息备案</del>\n001+ <ins>企业用户信息备案</ins>'), ('148', '130', 'verify', '系统可以实现企业信息的录入和修改的功能', '系统可以实现企业用户对自个企业信息的录入和修改的功能', '001- <del>系统可以实现企业信息的录入和修改的功能</del>\n001+ <ins>系统可以实现企业用户对自个企业信息的录入和修改的功能</ins>'), ('149', '130', 'version', '1', '2', ''), ('150', '131', 'assignedTo', 'admin', 'chenyongpeng', ''), ('151', '132', 'title', '企业数据填报', '企业用户数据填报', '001- <del>企业数据填报</del>\n001+ <ins>企业用户数据填报</ins>'), ('152', '132', 'version', '1', '2', ''), ('153', '134', 'title', '企业数据查询', '企业用户数据查询', '001- <del>企业数据查询</del>\n001+ <ins>企业用户数据查询</ins>'), ('154', '134', 'verify', '系统可以实现用户对自己企业并且只能是自己企业数据的查询功能', '系统可以实现企业用户对自己企业并且只能是自己企业数据的查询功能', '001- <del>系统可以实现用户对自己企业并且只能是自己企业数据的查询功能</del>\n001+ <ins>系统可以实现企业用户对自己企业并且只能是自己企业数据的查询功能</ins>'), ('155', '134', 'version', '1', '2', ''), ('156', '135', 'title', '省企业备案', '省用户企业备案', '001- <del>省企业备案</del>\n001+ <ins>省用户企业备案</ins>'), ('157', '135', 'version', '1', '2', ''), ('158', '136', 'title', '省报表管理', '省用户报表管理', '001- <del>省报表管理</del>\n001+ <ins>省用户报表管理</ins>'), ('159', '136', 'version', '1', '2', ''), ('160', '138', 'mailto', '', ',chenyongpeng', ''), ('161', '138', 'assignedTo', 'admin', 'chenyongpeng', ''), ('162', '140', 'mailto', '', ',helin', ''), ('163', '142', 'mailto', '', ',helin', ''), ('164', '144', 'pri', '0', '1', ''), ('165', '144', 'estimate', '0', '72', ''), ('166', '144', 'mailto', '', ',helin', ''), ('167', '146', 'mailto', '', ',helin', ''), ('168', '148', 'pri', '0', '1', ''), ('169', '148', 'estimate', '0', '48', ''), ('170', '148', 'mailto', '', ',chenyongpeng', ''), ('171', '150', 'mailto', '', ',helin', ''), ('172', '152', 'mailto', '', ',helin', ''), ('173', '154', 'mailto', '', ',shiyongcan', ''), ('174', '156', 'mailto', '', ',shiyongcan', ''), ('175', '158', 'mailto', '', ',shiyongcan', ''), ('176', '160', 'mailto', '', ',zhangtingrui', ''), ('177', '161', 'title', '企业用户信息备案', '企业信息备案', '001- <del>企业用户信息备案</del>\n001+ <ins>企业信息备案</ins>'), ('178', '161', 'verify', '系统可以实现企业用户对自个企业信息的录入和修改的功能', '系统可以实现企业信息的录入和修改的功能', '001- <del>系统可以实现企业用户对自个企业信息的录入和修改的功能</del>\n001+ <ins>系统可以实现企业信息的录入和修改的功能</ins>'), ('179', '161', 'version', '2', '3', ''), ('180', '162', 'title', '企业用户数据填报', '企业数据填报', '001- <del>企业用户数据填报</del>\n001+ <ins>企业数据填报</ins>'), ('181', '162', 'verify', '系统可以实现企业用户的数据填报功能。', '系统可以实现数据填报功能。', '001- <del>系统可以实现企业用户的数据填报功能。</del>\n001+ <ins>系统可以实现数据填报功能。</ins>'), ('182', '162', 'version', '2', '3', ''), ('183', '163', 'title', '企业用户数据查询', '企业数据查询', '001- <del>企业用户数据查询</del>\n001+ <ins>企业数据查询</ins>'), ('184', '163', 'verify', '系统可以实现企业用户对自己企业并且只能是自己企业数据的查询功能', '系统可以实现企业数据的查询功能', '001- <del>系统可以实现企业用户对自己企业并且只能是自己企业数据的查询功能</del>\n001+ <ins>系统可以实现企业数据的查询功能</ins>'), ('185', '163', 'version', '2', '3', '');
COMMIT;

-- ----------------------------
--  Table structure for `zt_lang`
-- ----------------------------
DROP TABLE IF EXISTS `zt_lang`;
CREATE TABLE `zt_lang` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `section` varchar(30) NOT NULL,
  `key` varchar(60) NOT NULL,
  `value` text NOT NULL,
  `system` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang` (`lang`,`module`,`section`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_mailqueue`
-- ----------------------------
DROP TABLE IF EXISTS `zt_mailqueue`;
CREATE TABLE `zt_mailqueue` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `toList` varchar(255) NOT NULL,
  `ccList` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `addedBy` char(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `sendTime` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'wait',
  `failReason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sendTime` (`sendTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_module`
-- ----------------------------
DROP TABLE IF EXISTS `zt_module`;
CREATE TABLE `zt_module` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(60) NOT NULL DEFAULT '',
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` char(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`root`,`type`,`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_product`
-- ----------------------------
DROP TABLE IF EXISTS `zt_product`;
CREATE TABLE `zt_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `code` varchar(45) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'normal',
  `status` varchar(30) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `PO` varchar(30) NOT NULL,
  `QD` varchar(30) NOT NULL,
  `RD` varchar(30) NOT NULL,
  `acl` enum('open','private','custom') NOT NULL DEFAULT 'open',
  `whitelist` varchar(255) NOT NULL,
  `createdBy` varchar(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `createdVersion` varchar(20) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order` (`order`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_product`
-- ----------------------------
BEGIN;
INSERT INTO `zt_product` VALUES ('1', '山东省人力资源市场数据采集系统', 'HUMANRESOURCE', 'normal', 'normal', '<p class=\"MsoNormal\" style=\"text-indent:24pt;\">省管理部门创建企业账号；企业通过账号登录系统，补充企业基础信息；每个月企业按省规定的时间上报本企业就业失业情况，上报到省局，省局汇总后上报到部委，省局对上报的数据进行分析汇总并以图形形式显示。<span></span></p>', 'admin', 'yangkai', 'anjianfeng', 'open', '', 'admin', '2016-03-17 15:59:57', '8.1', '5', '0');
COMMIT;

-- ----------------------------
--  Table structure for `zt_productplan`
-- ----------------------------
DROP TABLE IF EXISTS `zt_productplan`;
CREATE TABLE `zt_productplan` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  `title` varchar(90) NOT NULL,
  `desc` text NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plan` (`product`,`end`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_project`
-- ----------------------------
DROP TABLE IF EXISTS `zt_project`;
CREATE TABLE `zt_project` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `isCat` enum('1','0') NOT NULL DEFAULT '0',
  `catID` mediumint(8) unsigned NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sprint',
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(90) NOT NULL,
  `code` varchar(45) NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `days` smallint(5) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `statge` enum('1','2','3','4','5') NOT NULL DEFAULT '1',
  `pri` enum('1','2','3','4') NOT NULL DEFAULT '1',
  `desc` text NOT NULL,
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` int(10) unsigned NOT NULL DEFAULT '0',
  `openedVersion` varchar(20) NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` int(10) unsigned NOT NULL DEFAULT '0',
  `canceledBy` varchar(30) NOT NULL DEFAULT '',
  `canceledDate` int(10) unsigned NOT NULL DEFAULT '0',
  `PO` varchar(30) NOT NULL DEFAULT '',
  `PM` varchar(30) NOT NULL DEFAULT '',
  `QD` varchar(30) NOT NULL DEFAULT '',
  `RD` varchar(30) NOT NULL DEFAULT '',
  `team` varchar(30) NOT NULL,
  `acl` enum('open','private','custom') NOT NULL DEFAULT 'open',
  `whitelist` varchar(255) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `project` (`parent`,`begin`,`end`,`status`,`order`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_project`
-- ----------------------------
BEGIN;
INSERT INTO `zt_project` VALUES ('1', '0', '0', 'sprint', '0', '山东省人力资源市场数据采集系统', '人力资源市场数据采集系统', '2016-03-01', '2016-04-10', '29', 'doing', '1', '1', '<p class=\"MsoNormal\" style=\"text-indent:24pt;\">省管理部门创建企业账号；企业通过账号登录系统，补充企业基础信息；每个月企业按省规定的时间上报本企业就业失业情况，上报到省局，省局汇总后上报到部委，省局对上报的数据进行分析汇总并以图形形式显示。<span></span></p>', '', '0', '8.1', '', '0', '', '0', '', '', '', '', '王韬懿小组', 'private', '', '5', '0');
COMMIT;

-- ----------------------------
--  Table structure for `zt_projectproduct`
-- ----------------------------
DROP TABLE IF EXISTS `zt_projectproduct`;
CREATE TABLE `zt_projectproduct` (
  `project` mediumint(8) unsigned NOT NULL,
  `product` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`project`,`product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_projectstory`
-- ----------------------------
DROP TABLE IF EXISTS `zt_projectstory`;
CREATE TABLE `zt_projectstory` (
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product` mediumint(8) unsigned NOT NULL,
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` smallint(6) NOT NULL DEFAULT '1',
  UNIQUE KEY `project` (`project`,`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_release`
-- ----------------------------
DROP TABLE IF EXISTS `zt_release`;
CREATE TABLE `zt_release` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `build` mediumint(8) unsigned NOT NULL,
  `name` char(30) NOT NULL DEFAULT '',
  `date` date NOT NULL,
  `stories` text NOT NULL,
  `bugs` text NOT NULL,
  `leftBugs` text NOT NULL,
  `desc` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'normal',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`build`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_story`
-- ----------------------------
DROP TABLE IF EXISTS `zt_story`;
CREATE TABLE `zt_story` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plan` text NOT NULL,
  `source` varchar(20) NOT NULL,
  `fromBug` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `estimate` float unsigned NOT NULL,
  `status` enum('','changed','active','draft','closed') NOT NULL DEFAULT '',
  `stage` enum('','wait','planned','projected','developing','developed','testing','tested','verified','released') NOT NULL DEFAULT 'wait',
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `assignedTo` varchar(30) NOT NULL DEFAULT '',
  `assignedDate` datetime NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `reviewedBy` varchar(255) NOT NULL,
  `reviewedDate` date NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` datetime NOT NULL,
  `closedReason` varchar(30) NOT NULL,
  `toBug` mediumint(9) NOT NULL,
  `childStories` varchar(255) NOT NULL,
  `linkStories` varchar(255) NOT NULL,
  `duplicateStory` mediumint(8) unsigned NOT NULL,
  `version` smallint(6) NOT NULL DEFAULT '1',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `story` (`product`,`module`,`status`,`assignedTo`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_story`
-- ----------------------------
BEGIN;
INSERT INTO `zt_story` VALUES ('1', '1', '0', '0', '', 'po', '0', '企业信息备案', '', '', '1', '72', 'draft', 'wait', ',chenyongpeng', 'admin', '2016-03-17 16:33:05', 'chenyongpeng', '2016-03-17 19:12:11', 'husize', '2016-03-17 19:52:41', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '3', '0'), ('2', '1', '0', '0', '', '', '0', '企业数据填报', '', '', '1', '48', 'draft', 'wait', ',chenyongpeng', 'husize', '2016-03-17 18:13:15', 'chenyongpeng', '2016-03-17 18:16:43', 'husize', '2016-03-17 19:53:34', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '3', '0'), ('3', '1', '0', '0', '', '', '0', '企业数据查询', '', '', '1', '48', 'draft', 'wait', ',chenyongpeng', 'husize', '2016-03-17 18:24:51', 'chenyongpeng', '2016-03-17 18:25:33', 'husize', '2016-03-17 19:54:25', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '3', '0'), ('4', '1', '0', '0', '', '', '0', '省用户企业备案', '', '', '1', '48', 'draft', 'wait', ',zhangtingrui', 'husize', '2016-03-17 18:33:57', 'zhangtingrui', '2016-03-17 18:34:38', 'husize', '2016-03-17 19:14:06', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '2', '0'), ('5', '1', '0', '0', '', '', '0', '省用户报表管理', '', '', '1', '48', 'draft', 'wait', ',zhangtingrui', 'husize', '2016-03-17 18:37:14', 'zhangtingrui', '2016-03-17 18:37:46', 'husize', '2016-03-17 19:14:26', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '2', '0'), ('6', '1', '0', '0', '', '', '0', '省用户数据汇总', '', '', '1', '48', 'draft', 'wait', ',chenyongpeng', 'husize', '2016-03-17 19:16:34', 'chenyongpeng', '2016-03-17 19:17:41', 'husize', '2016-03-17 19:17:41', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('7', '1', '0', '0', '', '', '0', '省用户数据修改', '', '', '1', '72', 'draft', 'wait', ',helin', 'husize', '2016-03-17 19:22:34', 'helin', '2016-03-17 19:22:34', 'husize', '2016-03-17 19:23:03', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('8', '1', '0', '0', '', '', '0', '省用户取样分析', '', '', '1', '72', 'draft', 'wait', ',helin', 'husize', '2016-03-17 19:27:36', 'helin', '2016-03-17 19:27:36', 'husize', '2016-03-17 19:27:56', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('9', '1', '0', '0', '', '', '0', '省用户对比分析', '', '', '1', '72', 'draft', 'wait', ',helin', 'husize', '2016-03-17 19:31:02', 'helin', '2016-03-17 19:31:02', 'husize', '2016-03-17 19:31:34', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('10', '1', '0', '0', '', '', '0', '省用户趋势分析', '', '', '1', '72', 'draft', 'wait', ',helin', 'husize', '2016-03-17 19:33:05', 'helin', '2016-03-17 19:33:05', 'husize', '2016-03-17 19:33:23', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('11', '1', '0', '0', '', '', '0', '省用户数据查询与导出', '', '', '1', '48', 'draft', 'wait', ',chenyongpeng', 'husize', '2016-03-17 19:36:59', 'chenyongpeng', '2016-03-17 19:36:59', 'husize', '2016-03-17 19:37:32', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('12', '1', '0', '0', '', '', '0', '省用户发布通知', '', '', '1', '48', 'draft', 'wait', ',helin', 'husize', '2016-03-17 19:39:50', 'helin', '2016-03-17 19:39:50', 'husize', '2016-03-17 19:40:11', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('13', '1', '0', '0', '', '', '0', '浏览通知', '', '', '1', '48', 'draft', 'wait', ',helin', 'husize', '2016-03-17 19:43:03', 'helin', '2016-03-17 19:43:03', 'husize', '2016-03-17 19:43:25', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('14', '1', '0', '0', '', '', '0', '上报时间', '', '', '1', '24', 'draft', 'wait', ',shiyongcan', 'husize', '2016-03-17 19:44:49', 'shiyongcan', '2016-03-17 19:44:49', 'husize', '2016-03-17 19:45:11', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('15', '1', '0', '0', '', '', '0', '用户管理', '', '', '1', '48', 'draft', 'wait', ',shiyongcan', 'husize', '2016-03-17 19:46:15', 'shiyongcan', '2016-03-17 19:46:15', 'husize', '2016-03-17 19:46:36', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('16', '1', '0', '0', '', '', '0', '角色管理', '', '', '1', '48', 'draft', 'wait', ',shiyongcan', 'husize', '2016-03-17 19:47:49', 'shiyongcan', '2016-03-17 19:47:49', 'husize', '2016-03-17 19:48:14', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0'), ('17', '1', '0', '0', '', '', '0', '系统监控', '', '', '1', '24', 'draft', 'wait', ',zhangtingrui', 'husize', '2016-03-17 19:49:19', 'zhangtingrui', '2016-03-17 19:49:19', 'husize', '2016-03-17 19:49:39', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `zt_storyspec`
-- ----------------------------
DROP TABLE IF EXISTS `zt_storyspec`;
CREATE TABLE `zt_storyspec` (
  `story` mediumint(9) NOT NULL,
  `version` smallint(6) NOT NULL,
  `title` varchar(90) NOT NULL,
  `spec` text NOT NULL,
  `verify` text NOT NULL,
  UNIQUE KEY `story` (`story`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_storyspec`
-- ----------------------------
BEGIN;
INSERT INTO `zt_storyspec` VALUES ('1', '1', '企业信息备案', '<p class=\"MsoNormal\"><b>基本描述：</b><b></b></p>\n<p class=\"MsoNormal\">&nbsp;&nbsp;&nbsp; 录入和修改企业详细信息的内容。保存后上报省备案。按照统一规范的模板进行填写和修改。</p>', '系统可以实现企业信息的录入和修改的功能'), ('2', '1', '企业数据填报', '<p class=\"MsoNormal\" style=\"text-indent:21pt;\">企业用户填报当期采集数据。根据预先设定的模板在规定的时间范围内进行填报，填写完成后保存，确认无误后上报。</p>', '系统可以实现企业用户的数据填报功能。'), ('3', '1', '企业数据查询', '查询以往调查期企业数据的状态。用户只能查询自己企业数据。基于一定的用户指定的条件进行查询，查询结果只可以浏览不可以导出。', '系统可以实现用户对自己企业并且只能是自己企业数据的查询功能'), ('4', '1', '省企业备案', '查看所有已备案企业的详细信息，但不可以修改。', '系统可以实现省用户对于备案企业的列表显示、查询、查看详细信息以及导出EXCEL的功能'), ('5', '1', '省报表管理', '审核企业上报的数据并汇总上报到部级单位', '系统可以实现省用户对于企业上报数据的查看、退回修改、审核通过以及上报的功能'), ('1', '2', '企业用户信息备案', '<p class=\"MsoNormal\"><b>基本描述：</b><b></b></p>\n<p class=\"MsoNormal\">&nbsp;&nbsp;&nbsp; 录入和修改企业详细信息的内容。保存后上报省备案。按照统一规范的模板进行填写和修改。</p>', '系统可以实现企业用户对自个企业信息的录入和修改的功能'), ('2', '2', '企业用户数据填报', '<p class=\"MsoNormal\" style=\"text-indent:21pt;\">企业用户填报当期采集数据。根据预先设定的模板在规定的时间范围内进行填报，填写完成后保存，确认无误后上报。</p>', '系统可以实现企业用户的数据填报功能。'), ('3', '2', '企业用户数据查询', '查询以往调查期企业数据的状态。用户只能查询自己企业数据。基于一定的用户指定的条件进行查询，查询结果只可以浏览不可以导出。', '系统可以实现企业用户对自己企业并且只能是自己企业数据的查询功能'), ('4', '2', '省用户企业备案', '查看所有已备案企业的详细信息，但不可以修改。', '系统可以实现省用户对于备案企业的列表显示、查询、查看详细信息以及导出EXCEL的功能'), ('5', '2', '省用户报表管理', '审核企业上报的数据并汇总上报到部级单位', '系统可以实现省用户对于企业上报数据的查看、退回修改、审核通过以及上报的功能'), ('6', '1', '省用户数据汇总', '查看企业的汇总数据', '系统可以实现省用户对企业汇总数据的查看功能'), ('7', '1', '省用户数据修改', '可以对有明显错误的企业数据进行修改。修改后的数据另外存储并不修改报送的原始数据。', '系统可以实现省用户对有明显错误的企业数据进行修改、保留原始数据和修改日志的功能'), ('8', '1', '省用户取样分析', '显示各市企业的数量和占比', '系统可以实现<span style=\"line-height:1.57143;\">显示全省各市企业的数量和占比以及相应的饼图以及查询的功能</span><br /><br />'), ('9', '1', '省用户对比分析', '使用折线图、表格形式对比两个调查期的企业岗位变动情况', '系统可以实现以折线图、表格形式对比企业岗位变动情况的功能'), ('10', '1', '省用户趋势分析', '使用折线图、表格形式展示多个连续调查期内的企业岗位变动情况', '系统可以实现使用折线图、表格形式展示多个连续调查期内的企业岗位变动情况的功能'), ('11', '1', '省用户数据查询与导出', '对全省已创建账号进行条件查询', '系统可以实现省用户对全省已创建账号进行条件查询、清除查询条件、导出查询后数据的功能'), ('12', '1', '省用户发布通知', '<p class=\"MsoNormal\" style=\"text-indent:21pt;\">发布、删除通知信息</p>', '系统可以实现省用户<span style=\"line-height:1.57143;\">发布、删除通知信息的功能</span>'), ('13', '1', '浏览通知', '<p class=\"MsoNormal\" style=\"text-indent:21pt;\">浏览查看通知信息。</p>', '系统可以实现对通知信息的浏览功能'), ('14', '1', '上报时间', '<p class=\"MsoNormal\" style=\"text-indent:23.25pt;\">新增或修改调查期。<span></span></p>', '系统可以实现对调查期的新增或修改的功能'), ('15', '1', '用户管理', '建立省和企业用户。', '系统可以实现建立省和企业用户的功能'), ('16', '1', '角色管理', '<p class=\"MsoNormal\">根据需要建立多种角色，不同角色对应不同功能。系统预定义一些角色。</p>', '系统可以实现角色定义、角色修改、角色删除的功能'), ('17', '1', '系统监控', '查看当前系统工作情况。包括<span>CPU</span>、内存、硬盘等信息和应用系统的一些信息。', '系统可以实现查看系统信息及当前系统使用情况的功能'), ('1', '3', '企业信息备案', '<p class=\"MsoNormal\"><b>基本描述：</b><b></b></p>\n<p class=\"MsoNormal\">&nbsp;&nbsp;&nbsp; 录入和修改企业详细信息的内容。保存后上报省备案。按照统一规范的模板进行填写和修改。</p>', '系统可以实现企业信息的录入和修改的功能'), ('2', '3', '企业数据填报', '<p class=\"MsoNormal\" style=\"text-indent:21pt;\">企业用户填报当期采集数据。根据预先设定的模板在规定的时间范围内进行填报，填写完成后保存，确认无误后上报。</p>', '系统可以实现数据填报功能。'), ('3', '3', '企业数据查询', '查询以往调查期企业数据的状态。用户只能查询自己企业数据。基于一定的用户指定的条件进行查询，查询结果只可以浏览不可以导出。', '系统可以实现企业数据的查询功能');
COMMIT;

-- ----------------------------
--  Table structure for `zt_storystage`
-- ----------------------------
DROP TABLE IF EXISTS `zt_storystage`;
CREATE TABLE `zt_storystage` (
  `story` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  `stage` varchar(50) NOT NULL,
  KEY `story` (`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_task`
-- ----------------------------
DROP TABLE IF EXISTS `zt_task`;
CREATE TABLE `zt_task` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `fromBug` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `estimate` float unsigned NOT NULL,
  `consumed` float unsigned NOT NULL,
  `left` float unsigned NOT NULL,
  `deadline` date NOT NULL,
  `status` enum('wait','doing','done','pause','cancel','closed') NOT NULL DEFAULT 'wait',
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `openedBy` varchar(30) NOT NULL,
  `openedDate` datetime NOT NULL,
  `assignedTo` varchar(30) NOT NULL,
  `assignedDate` datetime NOT NULL,
  `estStarted` date NOT NULL,
  `realStarted` date NOT NULL,
  `finishedBy` varchar(30) NOT NULL,
  `finishedDate` datetime NOT NULL,
  `canceledBy` varchar(30) NOT NULL,
  `canceledDate` datetime NOT NULL,
  `closedBy` varchar(30) NOT NULL,
  `closedDate` datetime NOT NULL,
  `closedReason` varchar(30) NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL,
  `lastEditedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `task` (`project`,`module`,`story`,`assignedTo`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_task`
-- ----------------------------
BEGIN;
INSERT INTO `zt_task` VALUES ('1', '1', '0', '0', '1', '0', '完成产品的界面原型', 'design', '1', '120', '0', '120', '2016-03-15', 'doing', ',anjianfeng', '完成这个产品的界面原型设计。', 'admin', '2016-03-17 16:05:41', 'zhangdong', '2016-03-17 16:10:53', '2016-03-05', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:10:53', '0'), ('2', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:29', 'anjianfeng', '2016-03-17 16:11:15', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:15:50', '0'), ('3', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:29', 'chengeyin', '2016-03-17 16:11:25', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:15:42', '0'), ('4', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:29', 'chenyongpeng', '2016-03-17 16:11:52', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:15:32', '0'), ('5', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:30', 'diliniya', '2016-03-17 16:12:08', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:15:23', '0'), ('6', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:30', 'helin', '2016-03-17 16:12:20', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:15:12', '0'), ('7', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:30', 'husize', '2016-03-17 16:12:32', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:15:03', '0'), ('8', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:30', 'shiyongcan', '2016-03-17 16:12:47', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:14:51', '0'), ('9', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:30', 'yangkai', '2016-03-17 16:13:00', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:14:42', '0'), ('10', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:30', 'yuweiping', '2016-03-17 16:13:24', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:13:24', '0'), ('11', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:30', 'zhangdong', '2016-03-17 16:13:37', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:13:37', '0'), ('12', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:30', 'zhangtingrui', '2016-03-17 16:14:00', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:14:00', '0'), ('13', '1', '0', '0', '1', '0', '熟悉这个项目管理系统的使用', 'affair', '1', '0', '0', '48', '2016-03-18', 'doing', '', '请大家这两天熟悉这个系统的使用。', 'admin', '2016-03-17 16:07:30', 'admin', '2016-03-17 16:07:56', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:14:33', '0'), ('14', '1', '0', '0', '1', '0', ' 完成该要设计', 'design', '1', '120', '0', '120', '2016-03-18', 'doing', '', '完成这个项目的该要设计V1.0版本', 'admin', '2016-03-17 16:09:51', 'yuweiping', '2016-03-17 16:10:27', '2016-03-10', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:10:27', '0'), ('15', '1', '0', '0', '1', '0', '完成详细设计文档', 'design', '1', '96', '0', '96', '2016-03-20', 'doing', '', '完成该项目的详细设计文档', 'admin', '2016-03-17 16:17:20', 'zhangdong', '2016-03-17 16:17:43', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:17:43', '0'), ('16', '1', '0', '0', '1', '0', '与张栋合作完成详细设计文档', 'design', '1', '96', '0', '96', '2016-03-20', 'doing', '', '与张栋合作完成详细设计文档', 'admin', '2016-03-17 16:18:49', 'yuweiping', '2016-03-17 18:19:10', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 18:19:10', '0'), ('17', '1', '0', '0', '1', '0', '完善数据库的设计，并完成相关文档', 'design', '1', '96', '0', '96', '2016-03-20', 'doing', '', '完善数据库的设计，并完成相关文档', 'admin', '2016-03-17 16:19:39', 'diliniya', '2016-03-17 16:19:59', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:19:59', '0'), ('18', '1', '0', '0', '1', '0', '设计测试用例，准备好测试', 'test', '1', '72', '0', '72', '2016-03-19', 'doing', '', '设计测试用例，准备好测试', 'admin', '2016-03-17 16:20:51', 'yangkai', '2016-03-17 16:21:03', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:21:03', '0'), ('19', '1', '0', '0', '1', '0', '完成企业备案功能', 'devel', '1', '72', '0', '72', '2016-03-19', 'doing', '', '完成企业备案功能', 'admin', '2016-03-17 16:22:12', 'zhangtingrui', '2016-03-17 16:22:34', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:22:34', '0'), ('20', '1', '0', '0', '1', '0', '完成报表管理', 'devel', '1', '72', '0', '72', '2016-03-19', 'doing', '', '完成报表管理', 'admin', '2016-03-17 16:23:27', 'zhangtingrui', '2016-03-17 16:23:37', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:23:37', '0'), ('21', '1', '0', '0', '1', '0', '完成发布通知的功能', 'devel', '1', '72', '0', '72', '2016-03-19', 'doing', '', '完成发布通知的功能', 'admin', '2016-03-17 16:25:41', 'helin', '2016-03-17 16:25:51', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:25:51', '0'), ('22', '1', '0', '0', '1', '0', '完成数据管理功能', 'devel', '1', '72', '0', '72', '2016-03-19', 'doing', '', '完成数据管理功能', 'admin', '2016-03-17 16:26:24', 'helin', '2016-03-17 16:26:33', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:26:33', '0'), ('23', '1', '0', '0', '1', '0', '完成上报时间管理的功能', 'devel', '1', '72', '0', '72', '2016-03-19', 'doing', '', '完成上报时间管理的功能', 'admin', '2016-03-17 16:27:26', 'shiyongcan', '2016-03-17 16:27:36', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:27:36', '0'), ('24', '1', '0', '0', '1', '0', '完成系统权限管理的功能', 'devel', '1', '72', '0', '72', '2016-03-19', 'doing', '', '完成系统权限管理的功能', 'admin', '2016-03-17 16:28:43', 'shiyongcan', '2016-03-17 16:28:51', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:28:51', '0'), ('25', '1', '0', '0', '1', '0', '完成企业信息的录入与修改功能', 'devel', '1', '72', '0', '72', '2016-03-19', 'doing', '', '完成企业信息的录入与修改功能', 'admin', '2016-03-17 16:29:34', 'chenyongpeng', '2016-03-17 16:29:44', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:29:44', '0'), ('26', '1', '0', '0', '1', '0', '完成项目的配置管理计划', 'study', '1', '72', '0', '72', '2016-03-19', 'doing', '', '<p class=\"p1\">完成项目的配置管理计划</p>', 'admin', '2016-03-17 16:30:29', 'anjianfeng', '2016-03-17 16:30:40', '2016-03-17', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:30:40', '0'), ('27', '1', '0', '0', '1', '0', '完成项目需求文档', 'design', '1', '72', '0', '72', '2016-03-18', 'doing', '', '完成项目需求文档', 'admin', '2016-03-17 16:42:04', 'husize', '2016-03-17 16:42:14', '2016-03-16', '2016-03-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'admin', '2016-03-17 16:42:14', '0');
COMMIT;

-- ----------------------------
--  Table structure for `zt_taskestimate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_taskestimate`;
CREATE TABLE `zt_taskestimate` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `left` float unsigned NOT NULL DEFAULT '0',
  `consumed` float unsigned NOT NULL,
  `account` char(30) NOT NULL DEFAULT '',
  `work` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `task` (`task`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_taskestimate`
-- ----------------------------
BEGIN;
INSERT INTO `zt_taskestimate` VALUES ('1', '1', '2016-03-17', '120', '0', 'admin', ''), ('2', '13', '2016-03-17', '48', '0', 'admin', ''), ('3', '11', '2016-03-17', '48', '0', 'admin', ''), ('4', '12', '2016-03-17', '48', '0', 'admin', ''), ('5', '9', '2016-03-17', '48', '0', 'admin', ''), ('6', '10', '2016-03-17', '48', '0', 'admin', ''), ('7', '8', '2016-03-17', '48', '0', 'admin', ''), ('8', '6', '2016-03-17', '48', '0', 'admin', ''), ('9', '5', '2016-03-17', '48', '0', 'admin', ''), ('10', '4', '2016-03-17', '48', '0', 'admin', ''), ('11', '3', '2016-03-17', '48', '0', 'admin', ''), ('12', '2', '2016-03-17', '48', '0', 'admin', ''), ('13', '7', '2016-03-17', '48', '0', 'admin', ''), ('14', '14', '2016-03-17', '120', '0', 'admin', ''), ('15', '15', '2016-03-17', '96', '0', 'admin', ''), ('16', '16', '2016-03-17', '96', '0', 'admin', ''), ('17', '17', '2016-03-17', '96', '0', 'admin', ''), ('18', '18', '2016-03-17', '72', '0', 'admin', ''), ('19', '19', '2016-03-17', '72', '0', 'admin', ''), ('20', '20', '2016-03-17', '72', '0', 'admin', ''), ('21', '21', '2016-03-17', '72', '0', 'admin', ''), ('22', '22', '2016-03-17', '72', '0', 'admin', ''), ('23', '23', '2016-03-17', '72', '0', 'admin', ''), ('24', '24', '2016-03-17', '72', '0', 'admin', ''), ('25', '25', '2016-03-17', '72', '0', 'admin', ''), ('26', '26', '2016-03-17', '72', '0', 'admin', ''), ('27', '27', '2016-03-17', '72', '0', 'admin', '');
COMMIT;

-- ----------------------------
--  Table structure for `zt_team`
-- ----------------------------
DROP TABLE IF EXISTS `zt_team`;
CREATE TABLE `zt_team` (
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `account` char(30) NOT NULL DEFAULT '',
  `role` char(30) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00',
  `days` smallint(5) unsigned NOT NULL,
  `hours` float(2,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`project`,`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_team`
-- ----------------------------
BEGIN;
INSERT INTO `zt_team` VALUES ('1', 'admin', '项目经理', '2016-03-17', '29', '7.0'), ('1', 'chenyongpeng', '研发', '2016-03-17', '29', '7.0'), ('1', 'helin', '研发', '2016-03-17', '29', '7.0'), ('1', 'shiyongcan', '研发', '2016-03-17', '29', '7.0'), ('1', 'zhangtingrui', '研发', '2016-03-17', '29', '7.0'), ('1', 'yangkai', '测试', '2016-03-17', '29', '7.0'), ('1', 'husize', '其他', '2016-03-17', '29', '7.0'), ('1', 'diliniya', '其他', '2016-03-17', '29', '7.0'), ('1', 'chengeyin', '其他', '2016-03-17', '29', '7.0'), ('1', 'anjianfeng', '产品主管', '2016-03-17', '29', '7.0'), ('1', 'zhangdong', '设计', '2016-03-17', '29', '7.0'), ('1', 'yuweiping', '设计', '2016-03-17', '29', '7.0');
COMMIT;

-- ----------------------------
--  Table structure for `zt_testresult`
-- ----------------------------
DROP TABLE IF EXISTS `zt_testresult`;
CREATE TABLE `zt_testresult` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `run` mediumint(8) unsigned NOT NULL,
  `case` mediumint(8) unsigned NOT NULL,
  `version` smallint(5) unsigned NOT NULL,
  `caseResult` char(30) NOT NULL,
  `stepResults` text NOT NULL,
  `lastRunner` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testresult` (`case`,`version`,`run`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_testrun`
-- ----------------------------
DROP TABLE IF EXISTS `zt_testrun`;
CREATE TABLE `zt_testrun` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `case` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `assignedTo` char(30) NOT NULL DEFAULT '',
  `lastRunner` varchar(30) NOT NULL,
  `lastRunDate` datetime NOT NULL,
  `lastRunResult` char(30) NOT NULL,
  `status` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task` (`task`,`case`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_testtask`
-- ----------------------------
DROP TABLE IF EXISTS `zt_testtask`;
CREATE TABLE `zt_testtask` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(90) NOT NULL,
  `product` mediumint(8) unsigned NOT NULL,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `build` char(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `report` text NOT NULL,
  `status` enum('blocked','doing','wait','done') NOT NULL DEFAULT 'wait',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`build`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_todo`
-- ----------------------------
DROP TABLE IF EXISTS `zt_todo`;
CREATE TABLE `zt_todo` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `date` date NOT NULL,
  `begin` smallint(4) unsigned zerofill NOT NULL,
  `end` smallint(4) unsigned zerofill NOT NULL,
  `type` char(10) NOT NULL,
  `idvalue` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pri` tinyint(3) unsigned NOT NULL,
  `name` char(150) NOT NULL,
  `desc` text NOT NULL,
  `status` enum('wait','doing','done') NOT NULL DEFAULT 'wait',
  `private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `todo` (`account`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_user`
-- ----------------------------
DROP TABLE IF EXISTS `zt_user`;
CREATE TABLE `zt_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `dept` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `account` char(30) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `role` char(10) NOT NULL DEFAULT '',
  `realname` char(30) NOT NULL DEFAULT '',
  `nickname` char(60) NOT NULL DEFAULT '',
  `commiter` varchar(100) NOT NULL,
  `avatar` char(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `gender` enum('f','m') NOT NULL DEFAULT 'f',
  `email` char(90) NOT NULL DEFAULT '',
  `skype` char(90) NOT NULL DEFAULT '',
  `qq` char(20) NOT NULL DEFAULT '',
  `yahoo` char(90) NOT NULL DEFAULT '',
  `gtalk` char(90) NOT NULL DEFAULT '',
  `wangwang` char(90) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `phone` char(20) NOT NULL DEFAULT '',
  `address` char(120) NOT NULL DEFAULT '',
  `zipcode` char(10) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00',
  `visits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `last` int(10) unsigned NOT NULL DEFAULT '0',
  `fails` tinyint(5) NOT NULL DEFAULT '0',
  `locked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ranzhi` char(30) NOT NULL DEFAULT '',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`),
  KEY `user` (`dept`,`email`,`commiter`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_user`
-- ----------------------------
BEGIN;
INSERT INTO `zt_user` VALUES ('1', '0', 'admin', '179168e1f7a862235a4c42e10dd97cd3', '', 'admin', '', '', '', '0000-00-00', 'm', 'tyee.noprom@qq.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '10', '111.200.1.212', '1458902694', '0', '0000-00-00 00:00:00', '', '0'), ('2', '1', 'husize', '6cbec82df462553b3b1010e32e8fe944', 'others', '胡思泽', '', '', '', '0000-00-00', 'm', '852005129@qq.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '8', '219.143.205.131', '1458871881', '0', '0000-00-00 00:00:00', '', '0'), ('3', '1', 'chengeyin', '0c298016f34ade3e8680bd48a35f3c34', 'others', '陈歌吟', '', '', '', '0000-00-00', 'm', '307332699@qq.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0'), ('4', '2', 'yuweiping', 'f26d5e4bd01f74b6bdb080b8e72700ad', 'dev', '于伟平', '', '', '', '0000-00-00', 'm', '380376987@qq.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0'), ('5', '2', 'zhangdong', 'f7d2b284daa50b2ca4a2f90ae9f7e55f', 'dev', '张栋', '', '', '', '0000-00-00', 'm', '471459413@qq.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '1', '61.148.243.13', '1458228298', '0', '0000-00-00 00:00:00', '', '0'), ('6', '5', 'anjianfeng', '1cd4cb8de89ba2b4ade0cec4c26130a7', 'pd', '安剑锋', '', '', '', '0000-00-00', 'm', '786915675@qq.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '3', '219.143.205.114', '1458522583', '0', '0000-00-00 00:00:00', '', '0'), ('7', '3', 'shiyongcan', '7f4e6af2d5c1b0fe3f7451f1bb8ad52b', 'dev', '石永璨', '', '', '', '0000-00-00', 'm', '522560298@qq.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '1', '1.202.222.147', '1458547512', '0', '0000-00-00 00:00:00', '', '0'), ('8', '3', 'zhangtingrui', '1f1953db27869018c30c0955e1fae301', 'dev', '张庭瑞', '', '', '', '0000-00-00', 'm', '1194479264@qq.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '1', '219.143.205.124', '1458570619', '0', '0000-00-00 00:00:00', '', '0'), ('9', '3', 'helin', 'c052d186add05bd3a9a410d5e8570042', 'dev', '何林', '', '', '', '0000-00-00', 'm', '1006604973@qq.con', '', '', '', '', '', '', '', '', '', '0000-00-00', '3', '111.195.182.92', '1458313372', '0', '0000-00-00 00:00:00', '', '0'), ('10', '3', 'chenyongpeng', '54c1337fc56a0d83f7f7499349e6ff42', 'dev', '陈永鹏', '', '', '', '0000-00-00', 'm', 'chen9121@foxmail.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0'), ('11', '4', 'yangkai', '6dfcac158b08f9234f0b569dd9c5ed87', 'qa', '杨锴', '', '', '', '0000-00-00', 'm', '1554618991@qq.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '3', '219.143.205.121', '1458473004', '0', '0000-00-00 00:00:00', '', '0'), ('12', '6', 'diliniya', '57c53f85de65520e0c829c35eb6982ab', 'others', '迪力尼亚·迪力夏提', '', '', '', '0000-00-00', 'm', '295511062@qq.com', '', '', '', '', '', '', '', '', '', '0000-00-00', '1', '219.143.205.7', '1458204668', '0', '0000-00-00 00:00:00', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `zt_usercontact`
-- ----------------------------
DROP TABLE IF EXISTS `zt_usercontact`;
CREATE TABLE `zt_usercontact` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `listName` varchar(60) NOT NULL,
  `userList` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `zt_usergroup`;
CREATE TABLE `zt_usergroup` (
  `account` char(30) NOT NULL DEFAULT '',
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `account` (`account`,`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zt_usergroup`
-- ----------------------------
BEGIN;
INSERT INTO `zt_usergroup` VALUES ('anjianfeng', '7'), ('chengeyin', '10'), ('chenyongpeng', '2'), ('diliniya', '10'), ('helin', '2'), ('husize', '5'), ('husize', '10'), ('shiyongcan', '2'), ('yangkai', '3'), ('yuweiping', '2'), ('zhangdong', '2'), ('zhangtingrui', '2');
COMMIT;

-- ----------------------------
--  Table structure for `zt_userquery`
-- ----------------------------
DROP TABLE IF EXISTS `zt_userquery`;
CREATE TABLE `zt_userquery` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(90) NOT NULL,
  `form` text NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `query` (`account`,`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zt_usertpl`
-- ----------------------------
DROP TABLE IF EXISTS `zt_usertpl`;
CREATE TABLE `zt_usertpl` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `type` char(30) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
