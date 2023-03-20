/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : ruoyi-vue-forum

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 27/09/2022 11:00:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_post
-- ----------------------------
DROP TABLE IF EXISTS `cms_post`;
CREATE TABLE `cms_post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型',
  `content` longblob COMMENT '内容',
  `Top` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '置顶（0否 1是）',
  `views` int(11) DEFAULT 0 COMMENT '阅读',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0暂存 1发布）',
  `post_pic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '首页图片',
  `post_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '简介',
  `post_files` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '附件列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '帖子信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_post
-- ----------------------------
INSERT INTO `cms_post` VALUES (7, 'admin', '2022-01-02 12:25:26', 'admin', '2022-09-27 10:56:23', '阿萨', '1', 0x3C683120636C6173733D22716C2D616C69676E2D63656E746572223EE6B58BE8AF953C2F68313E3C703E312EE58F91E7949FE79A84E59CB0E696B9E998BFE890A8E79A843C2F703E3C703E322EE5958AE6898BE58AA8E998803C2F703E3C703EE998BFE890A8E4BA8BE5AE9EE4B88A3C2F703E, '1', 61, '1', '', '置顶帖子', '[]');
INSERT INTO `cms_post` VALUES (10, 'admin', '2022-01-03 02:59:22', '', NULL, '2222', '1', NULL, '0', 0, '0', '', NULL, NULL);
INSERT INTO `cms_post` VALUES (13, 'admin', '2022-01-03 21:37:57', 'admin', '2022-01-13 14:45:08', '强强强强', '1', NULL, '0', 3, '1', '', NULL, NULL);
INSERT INTO `cms_post` VALUES (14, '若依', '2022-01-04 14:31:31', 'admin', '2022-06-16 10:57:18', '若依', '1', 0x3C703E3C62723E3C2F703E, '0', 4, '1', '', NULL, NULL);
INSERT INTO `cms_post` VALUES (16, 'admin', '2022-01-05 09:44:53', 'admin', '2022-09-26 09:36:15', '阿斯顿v奥迪的vvv从vvc从v从 啊高富帅是否公司费格式发给非钢是法国四个非钢', '1', 0x3C68323EE6ADA4E4BA8BE998BFE890A8E79A843C2F68323E3C68333EE5958AE6898BE58AA8E998803C2F68333E3C703E3C656D3EE5958A3C2F656D3E3C656D207374796C653D22636F6C6F723A20726762283233302C20302C2030293B223EE58F91E7949F3C2F656D3E3C656D3EE79A843C2F656D3E3C2F703E3C703E3C733EE5A5A5E8BFAAE58F913C2F733E3C2F703E3C703E3C7370616E207374796C653D226261636B67726F756E642D636F6C6F723A20726762283235352C203235352C2030293B223EE698AFE590A63C2F7370616E3E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C683220636C6173733D22716C2D616C69676E2D63656E746572223E3C7374726F6E673EE5A5A5E8BFAA3C2F7374726F6E673E3C2F68323E3C703E3C753EE5958AE6898BE58AA8E998803C2F753E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C626C6F636B71756F74653E7661722061203D20313B3C2F626C6F636B71756F74653E3C626C6F636B71756F74653E666F7220286C65742069203D20303B206920266C743B31303B20692B2B297B3C2F626C6F636B71756F74653E3C626C6F636B71756F74653E7D3C2F626C6F636B71756F74653E3C70726520636C6173733D22716C2D73796E74617822207370656C6C636865636B3D2266616C7365223E7661722061203D20313B0A666F7220286C65742069203D20303B206920266C743B31303B20692B2B297B0A7D0A3C2F7072653E3C703E3132333C2F703E3C703E3C62723E3C2F703E3C703E3C6120687265663D22687474703A2F2F7777772E62616964752E636F6D222072656C3D226E6F6F70656E6572206E6F726566657272657222207461726765743D225F626C616E6B223EE799BEE5BAA63C2F613E3C2F703E, '0', 144, '1', '', NULL, NULL);
INSERT INTO `cms_post` VALUES (17, 'admin', '2022-01-12 16:06:28', 'admin', '2022-06-23 16:16:54', '你好!!!!', '2', 0x3C703EE5928CE982A3E8B7AFE4B88AE79C8BE588B0E4BDA0E7ACACE4B889E696B93C2F703E3C703EE5A4A7E5B888E582853C2F703E3C703EE5958AE6898BE58AA8E998803C2F703E3C703EE5958AE6898BE58AA8E998803C2F703E3C703EE69292E697A63C2F703E, '0', 0, '1', '', NULL, NULL);
INSERT INTO `cms_post` VALUES (18, 'admin', '2022-01-12 16:55:46', 'admin', '2022-02-10 17:00:10', '啊调查啊', '2', 0x3C703EE5958AE5958A3C7374726F6E673EE5958AE588863C2F7374726F6E673E3C2F703E3C703E3C62723E3C2F703E3C6F6C3E3C6C693EE5A5A5E8BFAAE58F913C2F6C693E3C6C693EE5AE89E68A9A3C2F6C693E3C2F6F6C3E3C703E3C7370616E207374796C653D226261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20313032293B223EE5A5A5E8BFAAE58F913C2F7370616E3E3C2F703E3C703E3C7370616E207374796C653D226261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20313032293B223EEFBBBF3C2F7370616E3E3C2F703E, '0', 0, '1', '', NULL, NULL);
INSERT INTO `cms_post` VALUES (19, 'admin', '2022-01-12 17:40:54', 'admin', '2022-09-26 09:36:08', '是VSD v阿萨DVD v大是大非v阿斯蒂芬v地方', '1', 0x3C703E31323334353535E79A84E9A38EE6A0BC3C2F703E, '0', 204, '1', '', NULL, NULL);
INSERT INTO `cms_post` VALUES (22, 'admin', '2022-06-13 09:13:50', 'admin', '2022-09-27 10:31:41', '测试', '1', NULL, '0', 77, '1', '', '萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复', NULL);

-- ----------------------------
-- Table structure for cms_post_file
-- ----------------------------
DROP TABLE IF EXISTS `cms_post_file`;
CREATE TABLE `cms_post_file`  (
  `file_id` bigint(20) NOT NULL COMMENT '文件ID',
  `post_id` bigint(20) NOT NULL COMMENT 'postID',
  PRIMARY KEY (`file_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'post文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_post_file
-- ----------------------------
INSERT INTO `cms_post_file` VALUES (33, 17);
INSERT INTO `cms_post_file` VALUES (34, 17);
INSERT INTO `cms_post_file` VALUES (36, 17);
INSERT INTO `cms_post_file` VALUES (37, 17);

-- ----------------------------
-- Table structure for cms_post_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_post_tag`;
CREATE TABLE `cms_post_tag`  (
  `tag_id` bigint(20) NOT NULL COMMENT '标签ID',
  `post_id` bigint(20) NOT NULL COMMENT 'postID',
  PRIMARY KEY (`tag_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'post标签关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_post_tag
-- ----------------------------
INSERT INTO `cms_post_tag` VALUES (20, 7);
INSERT INTO `cms_post_tag` VALUES (20, 22);
INSERT INTO `cms_post_tag` VALUES (21, 16);
INSERT INTO `cms_post_tag` VALUES (21, 22);
INSERT INTO `cms_post_tag` VALUES (22, 22);
INSERT INTO `cms_post_tag` VALUES (23, 22);
INSERT INTO `cms_post_tag` VALUES (24, 7);
INSERT INTO `cms_post_tag` VALUES (24, 22);
INSERT INTO `cms_post_tag` VALUES (25, 7);
INSERT INTO `cms_post_tag` VALUES (25, 16);
INSERT INTO `cms_post_tag` VALUES (25, 22);
INSERT INTO `cms_post_tag` VALUES (26, 19);
INSERT INTO `cms_post_tag` VALUES (26, 22);

-- ----------------------------
-- Table structure for cms_post_type
-- ----------------------------
DROP TABLE IF EXISTS `cms_post_type`;
CREATE TABLE `cms_post_type`  (
  `type_id` bigint(20) NOT NULL COMMENT '类型ID',
  `post_id` bigint(20) NOT NULL COMMENT 'postID',
  PRIMARY KEY (`type_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'post分类关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_post_type
-- ----------------------------
INSERT INTO `cms_post_type` VALUES (10, 7);
INSERT INTO `cms_post_type` VALUES (10, 22);
INSERT INTO `cms_post_type` VALUES (11, 16);
INSERT INTO `cms_post_type` VALUES (11, 22);
INSERT INTO `cms_post_type` VALUES (13, 7);
INSERT INTO `cms_post_type` VALUES (13, 22);
INSERT INTO `cms_post_type` VALUES (14, 19);
INSERT INTO `cms_post_type` VALUES (14, 22);
INSERT INTO `cms_post_type` VALUES (15, 22);
INSERT INTO `cms_post_type` VALUES (16, 22);

-- ----------------------------
-- Table structure for cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父评论id',
  `main_id` bigint(20) DEFAULT NULL COMMENT '主评论id(第一级评论)',
  `like_num` int(11) DEFAULT NULL COMMENT '点赞数量',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '内容',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '评论类型：对人评论，对项目评论，对资源评论',
  `post_id` bigint(20) DEFAULT NULL COMMENT '被评论者id，可以是人、项目、资源',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `user_id` bigint(20) DEFAULT NULL COMMENT '评论者id',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
INSERT INTO `cms_comment` VALUES (1, NULL, NULL, 13, 'v地方', '0', 19, '0', 1, 'admin', '2022-01-28 17:43:08', '', NULL);
INSERT INTO `cms_comment` VALUES (2, 1, 1, NULL, '奥迪发', '1', 19, '0', 1, 'admin', '2022-01-28 17:43:47', '', NULL);
INSERT INTO `cms_comment` VALUES (3, NULL, NULL, 0, '啊吖吖', '0', 16, '0', 1, 'admin', '2022-01-28 18:09:23', '', NULL);
INSERT INTO `cms_comment` VALUES (4, 2, 1, NULL, '测试', '1', 19, '0', NULL, '匿名用户', '2022-06-16 15:44:28', '', NULL);
INSERT INTO `cms_comment` VALUES (5, NULL, NULL, NULL, '哈哈哈', '0', 19, '0', NULL, '匿名用户', '2022-06-16 15:45:17', '', NULL);

-- ----------------------------
-- Table structure for cms_comment_like
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment_like`;
CREATE TABLE `cms_comment_like`  (
  `comment_id` bigint(20) NOT NULL COMMENT '点赞评论ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`comment_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '留言点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_message
-- ----------------------------
DROP TABLE IF EXISTS `cms_message`;
CREATE TABLE `cms_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父留言id',
  `main_id` bigint(20) DEFAULT NULL COMMENT '主留言id(第一级留言)',
  `like_num` int(11) DEFAULT NULL COMMENT '点赞数量',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '内容',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '留言类型：对人评论，对项目评论，对资源评论（0代表留言 1代表回复）',
  `post_id` bigint(20) DEFAULT NULL COMMENT '被留言者id，可以是人、项目、资源',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `user_id` bigint(20) DEFAULT NULL COMMENT '留言者id',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '留言表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_message
-- ----------------------------
INSERT INTO `cms_message` VALUES (1, NULL, NULL, 22, '你好', '0', NULL, '0', 1, 'admin', '2022-01-15 15:24:46', '', NULL);
INSERT INTO `cms_message` VALUES (2, NULL, NULL, 10, 'hello!!  123', '0', NULL, '0', 1, 'admin', '2022-01-15 15:25:26', '', NULL);
INSERT INTO `cms_message` VALUES (3, 1, 1, 2, '我很好!', '1', NULL, '0', NULL, '匿名用户', '2022-01-15 15:25:51', '', NULL);
INSERT INTO `cms_message` VALUES (4, 1, 1, 3, '大家好', '1', NULL, '0', 1, 'admin', '2022-01-15 15:26:23', '', NULL);
INSERT INTO `cms_message` VALUES (5, 3, 1, 3, '好', '1', NULL, '0', 1, 'admin', '2022-01-15 15:26:39', '', NULL);
INSERT INTO `cms_message` VALUES (6, NULL, NULL, 2, '测试', '0', NULL, '0', NULL, '匿名用户', '2022-01-16 18:17:27', '', NULL);
INSERT INTO `cms_message` VALUES (17, 6, 6, NULL, '额', '1', NULL, '0', 1, 'admin', '2022-01-16 20:42:39', '', NULL);
INSERT INTO `cms_message` VALUES (23, 17, 6, NULL, '哈哈', '1', NULL, '0', NULL, '匿名用户', '2022-01-19 01:31:19', '', NULL);
INSERT INTO `cms_message` VALUES (24, 5, 1, NULL, '1', '1', NULL, '0', NULL, '匿名用户', '2022-01-19 01:33:03', '', NULL);
INSERT INTO `cms_message` VALUES (26, 23, 6, NULL, '啊', '1', NULL, '1', 1, 'admin', '2022-01-19 17:17:43', '', NULL);
INSERT INTO `cms_message` VALUES (27, NULL, NULL, 0, '阿斯顿v阿萨v发到付vDVD发v地方vv阿飞阿斯顿v阿萨v阿萨v阿斯顿v阿斯顿v沙发VS发VS的VS调查', '0', NULL, '0', 1, 'admin', '2022-01-19 17:30:29', '', NULL);
INSERT INTO `cms_message` VALUES (28, NULL, NULL, 0, '阿萨的顶顶顶顶顶顶顶顶顶', '0', NULL, '0', 1, 'admin', '2022-01-19 17:30:51', '', NULL);
INSERT INTO `cms_message` VALUES (48, NULL, NULL, 1, 'good!\n', '0', NULL, '0', 2, '若依', '2022-01-20 10:33:14', '', NULL);
INSERT INTO `cms_message` VALUES (49, 1, 1, NULL, '若依', '1', NULL, '0', 2, '若依', '2022-01-20 10:33:32', '', NULL);
INSERT INTO `cms_message` VALUES (50, 2, 2, NULL, '你好\n', '1', NULL, '0', 2, '若依', '2022-01-20 10:33:53', '', NULL);
INSERT INTO `cms_message` VALUES (51, 50, 2, NULL, 'yes', '1', NULL, '0', 1, 'admin', '2022-01-20 10:34:39', '', NULL);
INSERT INTO `cms_message` VALUES (52, 49, 1, NULL, '你好若依\n', '1', NULL, '0', 1, 'admin', '2022-01-20 17:20:24', '', NULL);
INSERT INTO `cms_message` VALUES (53, 26, 6, NULL, '问什么删评论', '1', NULL, '0', 1, 'admin', '2022-01-21 10:13:20', '', NULL);
INSERT INTO `cms_message` VALUES (54, 53, 6, NULL, 'why?', '1', NULL, '0', 2, '若依', '2022-01-21 10:15:47', '', NULL);

-- ----------------------------
-- Table structure for cms_message_like
-- ----------------------------
DROP TABLE IF EXISTS `cms_message_like`;
CREATE TABLE `cms_message_like`  (
  `message_id` bigint(20) NOT NULL COMMENT '点赞留言ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`message_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '留言点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_tag`;
CREATE TABLE `cms_tag`  (
  `tag_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `tag_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标签名称',
  PRIMARY KEY (`tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '标签信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_tag
-- ----------------------------
INSERT INTO `cms_tag` VALUES (20, 'admin', '2022-01-03 22:50:05', '', NULL, '啊实打实');
INSERT INTO `cms_tag` VALUES (21, 'admin', '2022-01-03 22:50:23', '', NULL, '打');
INSERT INTO `cms_tag` VALUES (22, 'admin', '2022-01-03 22:50:43', '', NULL, '问问');
INSERT INTO `cms_tag` VALUES (23, 'admin', '2022-01-03 23:30:28', '', NULL, '阿斯弗');
INSERT INTO `cms_tag` VALUES (24, 'admin', '2022-01-03 23:30:32', '', NULL, '阿松大');
INSERT INTO `cms_tag` VALUES (25, 'admin', '2022-01-03 23:30:38', '', NULL, '愤愤愤');
INSERT INTO `cms_tag` VALUES (26, '若依', '2022-01-04 14:48:26', '', NULL, '若依');

-- ----------------------------
-- Table structure for cms_type
-- ----------------------------
DROP TABLE IF EXISTS `cms_type`;
CREATE TABLE `cms_type`  (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `type_pic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '分类图像',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分类信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_type
-- ----------------------------
INSERT INTO `cms_type` VALUES (10, 'admin', '2022-01-03 23:31:10', '', NULL, '阿萨的', '');
INSERT INTO `cms_type` VALUES (11, 'admin', '2022-01-03 23:31:20', '', NULL, '人然', '');
INSERT INTO `cms_type` VALUES (13, 'admin', '2022-01-03 23:31:29', '', NULL, '啊啊', '');
INSERT INTO `cms_type` VALUES (14, '若依', '2022-01-04 14:31:23', 'admin', '2022-02-10 16:56:00', '若依', '');
INSERT INTO `cms_type` VALUES (15, 'admin', '2022-01-03 21:35:44', '', NULL, '33', '');
INSERT INTO `cms_type` VALUES (16, 'admin', '2022-06-10 16:08:50', 'admin', '2022-06-13 15:14:37', 'java', '');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'sys_order', '订单明细表', '', '', 'SysOrder', 'tree', 'com.ruoyi.system', 'order', 'order', '订单明细', 'ruoyi', '0', '/', '{\"treeCode\":\"order_id\",\"treeName\":\"order_name\",\"treeParentCode\":\"order_group\",\"parentMenuId\":\"2000\"}', 'admin', '2021-12-13 15:54:15', '', '2021-12-22 11:20:25', NULL);
INSERT INTO `gen_table` VALUES (4, 'sys_file_info', '文件信息表', NULL, NULL, 'SysFileInfo', 'crud', 'com.ruoyi.cms.fileInfo', 'cms', 'fileInfo', '文件管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2007}', 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08', NULL);
INSERT INTO `gen_table` VALUES (6, 'cms_post', '博客信息表', NULL, NULL, 'CmsPost', 'crud', 'com.ruoyi.cms.post', 'cms', 'post', '帖子管理', 'ning', '0', '/', '{\"parentMenuId\":2007}', 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47', NULL);
INSERT INTO `gen_table` VALUES (7, 'cms_tag', '标签信息表', NULL, NULL, 'CmsTag', 'crud', 'com.ruoyi.cms.tag', 'cms', 'tag', '标签管理', 'ning', '0', '/', '{\"parentMenuId\":2007}', 'admin', '2022-01-02 14:48:25', '', '2022-01-02 14:49:54', NULL);
INSERT INTO `gen_table` VALUES (8, 'cms_type', '分类信息表', NULL, NULL, 'CmsType', 'crud', 'com.ruoyi.cms.type', 'cms', 'type', '分类管理', 'ning', '0', '/', '{\"parentMenuId\":2007}', 'admin', '2022-01-02 15:01:07', '', '2022-01-02 15:02:27', NULL);
INSERT INTO `gen_table` VALUES (10, 'cms_message', '留言表', NULL, NULL, 'CmsMessage', 'crud', 'com.ruoyi.cms.message', 'cms', 'message', '留言管理', 'ning', '0', '/', '{\"parentMenuId\":2007}', 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57', NULL);
INSERT INTO `gen_table` VALUES (11, 'cms_comment', '评论表', NULL, NULL, 'CmsComment', 'crud', 'com.ruoyi.cms.comment', 'cms', 'comment', '评论管理', 'ning', '0', '/', '{\"parentMenuId\":2007}', 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'order_id', '订单ID', 'bigint(20)', 'Long', 'orderId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-13 15:54:15', '', '2021-12-22 11:20:25');
INSERT INTO `gen_table_column` VALUES (2, '1', 'order_name', '订单名称', 'varchar(64)', 'String', 'orderName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-13 15:54:15', '', '2021-12-22 11:20:25');
INSERT INTO `gen_table_column` VALUES (3, '1', 'order_group', '订单组名', 'varchar(64)', 'String', 'orderGroup', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_oper_type', 3, 'admin', '2021-12-13 15:54:15', '', '2021-12-22 11:20:25');
INSERT INTO `gen_table_column` VALUES (4, '1', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'editor', '', 4, '', '2021-12-22 11:16:52', '', '2021-12-22 11:20:25');
INSERT INTO `gen_table_column` VALUES (31, '4', 'file_id', '文件主键id', 'bigint(20)', 'Long', 'fileId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (32, '4', 'file_origin_name', '文件名称', 'varchar(255)', 'String', 'fileOriginName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (33, '4', 'file_suffix', '文件类型，例如txt', 'varchar(255)', 'String', 'fileSuffix', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (34, '4', 'file_size_info', '文件大小', 'varchar(255)', 'String', 'fileSizeInfo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (35, '4', 'file_object_name', '存储文件名称', 'varchar(255)', 'String', 'fileObjectName', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (36, '4', 'file_path', '存储路径', 'varchar(255)', 'String', 'filePath', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (37, '4', 'del_flag', '是否删除：Y-被删除，N-未删除', 'char(1)', 'String', 'delFlag', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (38, '4', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (39, '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (40, '4', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (41, '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2021-12-29 14:58:04', '', '2021-12-29 14:59:08');
INSERT INTO `gen_table_column` VALUES (52, '6', 'id', 'ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (53, '6', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (54, '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (55, '6', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (56, '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (57, '6', 'title', '标题', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (58, '6', 'type', '类型', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (59, '6', 'content', '内容', 'longblob', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 8, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (60, '6', 'Top', '置顶（0否 1是）', 'char(1)', 'String', 'top', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (61, '6', 'views', '阅读', 'int(11)', 'Long', 'views', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (62, '6', 'status', '状态（0暂存 1发布）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'cms_post_status', 11, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
INSERT INTO `gen_table_column` VALUES (63, '7', 'tag_id', '标签ID', 'bigint(20)', 'Long', 'tagId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-01-02 14:48:25', '', '2022-01-02 14:49:54');
INSERT INTO `gen_table_column` VALUES (64, '7', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2022-01-02 14:48:25', '', '2022-01-02 14:49:54');
INSERT INTO `gen_table_column` VALUES (65, '7', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2022-01-02 14:48:25', '', '2022-01-02 14:49:54');
INSERT INTO `gen_table_column` VALUES (66, '7', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2022-01-02 14:48:25', '', '2022-01-02 14:49:54');
INSERT INTO `gen_table_column` VALUES (67, '7', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2022-01-02 14:48:25', '', '2022-01-02 14:49:54');
INSERT INTO `gen_table_column` VALUES (68, '7', 'tag_name', '标签名称', 'varchar(50)', 'String', 'tagName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2022-01-02 14:48:25', '', '2022-01-02 14:49:54');
INSERT INTO `gen_table_column` VALUES (69, '8', 'type_id', '分类ID', 'bigint(20)', 'Long', 'typeId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-01-02 15:01:07', '', '2022-01-02 15:02:27');
INSERT INTO `gen_table_column` VALUES (70, '8', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2022-01-02 15:01:07', '', '2022-01-02 15:02:27');
INSERT INTO `gen_table_column` VALUES (71, '8', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2022-01-02 15:01:07', '', '2022-01-02 15:02:27');
INSERT INTO `gen_table_column` VALUES (72, '8', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2022-01-02 15:01:07', '', '2022-01-02 15:02:27');
INSERT INTO `gen_table_column` VALUES (73, '8', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2022-01-02 15:01:07', '', '2022-01-02 15:02:27');
INSERT INTO `gen_table_column` VALUES (74, '8', 'type_name', '分类名称', 'varchar(50)', 'String', 'typeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2022-01-02 15:01:07', '', '2022-01-02 15:02:27');
INSERT INTO `gen_table_column` VALUES (75, '8', 'type_pic', '分类图像', 'varchar(100)', 'String', 'typePic', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'imageUpload', '', 7, 'admin', '2022-01-02 15:01:07', '', '2022-01-02 15:02:27');
INSERT INTO `gen_table_column` VALUES (87, '10', 'id', 'ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (88, '10', 'parent_id', '父留言id', 'bigint(20)', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (89, '10', 'like_num', '点赞数量', 'int(11)', 'Long', 'likeNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (90, '10', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (91, '10', 'type', '留言类型：对人评论，对项目评论，对资源评论', 'char(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (92, '10', 'post_id', '被留言者id，可以是人、项目、资源', 'bigint(20)', 'Long', 'postId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (93, '10', 'user_id', '留言者id', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (94, '10', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (95, '10', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (96, '10', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (97, '10', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
INSERT INTO `gen_table_column` VALUES (98, '11', 'id', 'ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (99, '11', 'parent_id', '父评论id', 'bigint(20)', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (100, '11', 'main_id', '主评论id(第一级评论)', 'bigint(20)', 'Long', 'mainId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (101, '11', 'like_num', '点赞数量', 'int(11)', 'Long', 'likeNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (102, '11', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 5, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (103, '11', 'type', '评论类型：对人评论，对项目评论，对资源评论', 'char(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 6, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (104, '11', 'post_id', '被评论者id，可以是人、项目、资源', 'bigint(20)', 'Long', 'postId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (105, '11', 'del_flag', '删除标志（0代表存在 1代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (106, '11', 'user_id', '评论者id', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (107, '11', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (108, '11', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (109, '11', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
INSERT INTO `gen_table_column` VALUES (110, '11', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'GMT+08:00');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'GMT+08:00');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'GMT+08:00');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017DA2F87E3078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017DA2F87E3078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017DA2F87E3078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-UKNLDB61664239444539', 1664247641573, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1664239450000, -1, 5, 'PAUSED', 'CRON', 1664239444000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1664239455000, -1, 5, 'PAUSED', 'CRON', 1664239444000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1664239460000, -1, 5, 'PAUSED', 'CRON', 1664239444000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-12-10 14:12:14', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-12-10 14:12:14', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-12-10 14:12:14', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2021-12-10 14:12:14', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2021-12-10 14:12:14', 'admin', '2021-12-21 13:08:28', '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (102, 0, '已删除', 'Y', 'sys_file_info_del_flag', NULL, 'danger', 'N', '0', 'admin', '2021-12-27 22:21:32', 'admin', '2021-12-27 22:23:48', NULL);
INSERT INTO `sys_dict_data` VALUES (103, 1, '正常', 'N', 'sys_file_info_del_flag', NULL, 'success', 'N', '0', 'admin', '2021-12-27 22:22:01', 'admin', '2021-12-27 22:23:55', NULL);
INSERT INTO `sys_dict_data` VALUES (104, 0, '暂存', '0', 'cms_post_status', NULL, 'primary', 'N', '0', 'admin', '2022-01-01 22:37:00', 'admin', '2022-01-01 22:37:35', NULL);
INSERT INTO `sys_dict_data` VALUES (105, 0, '发布', '1', 'cms_post_status', NULL, 'success', 'N', '0', 'admin', '2022-01-01 22:37:51', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (101, '文件状态', 'sys_file_info_del_flag', '0', 'admin', '2021-12-27 22:20:51', 'admin', '2021-12-27 22:21:04', '是否删除');
INSERT INTO `sys_dict_type` VALUES (102, '内容状态', 'cms_post_status', '0', 'admin', '2022-01-01 22:36:30', '', NULL, '暂存或发布');

-- ----------------------------
-- Table structure for sys_file_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_info`;
CREATE TABLE `sys_file_info`  (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件主键id',
  `file_origin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件名称',
  `file_suffix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件类型，例如txt',
  `file_size_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件大小',
  `file_object_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存储文件名称',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存储路径',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '是否删除：Y-被删除，N-未删除',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-12-10 14:12:14', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 154 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-15 16:11:23');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-09 14:11:37');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 17:52:06');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-22 16:51:11');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-22 16:51:17');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-22 16:53:10');
INSERT INTO `sys_logininfor` VALUES (7, '若依', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 16:54:49');
INSERT INTO `sys_logininfor` VALUES (8, '若依', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-22 16:55:42');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-22 16:55:58');
INSERT INTO `sys_logininfor` VALUES (10, 'administrator', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-22 16:56:10');
INSERT INTO `sys_logininfor` VALUES (11, 'administrator', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：administrator 不存在', '2022-04-22 16:56:14');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-22 16:56:28');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-22 16:56:32');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-22 17:28:04');
INSERT INTO `sys_logininfor` VALUES (15, '若依', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 17:28:20');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 09:40:36');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-24 15:47:06');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 15:47:12');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 16:30:46');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 18:06:16');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 08:36:53');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 10:05:33');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 11:30:42');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-25 11:31:04');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 11:31:10');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-25 11:32:12');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 11:32:15');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 14:10:18');
INSERT INTO `sys_logininfor` VALUES (29, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 15:37:07');
INSERT INTO `sys_logininfor` VALUES (30, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-27 08:55:20');
INSERT INTO `sys_logininfor` VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-27 10:22:48');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-27 10:55:48');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-27 14:33:47');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-27 15:53:52');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-27 17:16:52');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-28 08:47:26');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-28 09:30:09');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 09:16:53');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-05-09 16:34:57');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码错误', '2022-05-09 16:35:10');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-05-09 16:35:14');
INSERT INTO `sys_logininfor` VALUES (42, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-05-09 16:35:30');
INSERT INTO `sys_logininfor` VALUES (43, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-05-09 16:35:41');
INSERT INTO `sys_logininfor` VALUES (44, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 16:38:00');
INSERT INTO `sys_logininfor` VALUES (45, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-09 16:44:54');
INSERT INTO `sys_logininfor` VALUES (46, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 16:44:58');
INSERT INTO `sys_logininfor` VALUES (47, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-05-09 16:46:29');
INSERT INTO `sys_logininfor` VALUES (48, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 16:53:32');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 17:01:02');
INSERT INTO `sys_logininfor` VALUES (50, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码已失效', '2022-05-09 17:17:39');
INSERT INTO `sys_logininfor` VALUES (51, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-05-09 17:17:49');
INSERT INTO `sys_logininfor` VALUES (52, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-23 09:38:02');
INSERT INTO `sys_logininfor` VALUES (53, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-10 10:10:43');
INSERT INTO `sys_logininfor` VALUES (54, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-10 15:33:17');
INSERT INTO `sys_logininfor` VALUES (55, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-10 16:42:03');
INSERT INTO `sys_logininfor` VALUES (56, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-13 08:41:22');
INSERT INTO `sys_logininfor` VALUES (57, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-13 10:49:37');
INSERT INTO `sys_logininfor` VALUES (58, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-13 14:04:02');
INSERT INTO `sys_logininfor` VALUES (59, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-06-13 14:59:35');
INSERT INTO `sys_logininfor` VALUES (60, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-13 15:05:01');
INSERT INTO `sys_logininfor` VALUES (61, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-14 17:47:57');
INSERT INTO `sys_logininfor` VALUES (62, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-15 08:07:53');
INSERT INTO `sys_logininfor` VALUES (63, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-06-15 14:36:45');
INSERT INTO `sys_logininfor` VALUES (64, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-15 14:36:47');
INSERT INTO `sys_logininfor` VALUES (65, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-15 15:23:19');
INSERT INTO `sys_logininfor` VALUES (66, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-15 16:24:51');
INSERT INTO `sys_logininfor` VALUES (67, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-06-15 17:17:06');
INSERT INTO `sys_logininfor` VALUES (68, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-15 17:17:09');
INSERT INTO `sys_logininfor` VALUES (69, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-16 08:44:41');
INSERT INTO `sys_logininfor` VALUES (70, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-16 10:03:18');
INSERT INTO `sys_logininfor` VALUES (71, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-16 17:05:02');
INSERT INTO `sys_logininfor` VALUES (72, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-17 09:53:17');
INSERT INTO `sys_logininfor` VALUES (73, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-17 10:52:30');
INSERT INTO `sys_logininfor` VALUES (74, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-17 14:17:10');
INSERT INTO `sys_logininfor` VALUES (75, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-17 14:41:40');
INSERT INTO `sys_logininfor` VALUES (76, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-17 16:44:53');
INSERT INTO `sys_logininfor` VALUES (77, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-21 08:48:45');
INSERT INTO `sys_logininfor` VALUES (78, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-21 10:02:40');
INSERT INTO `sys_logininfor` VALUES (79, 'admin123', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码已失效', '2022-06-21 10:30:38');
INSERT INTO `sys_logininfor` VALUES (80, 'admin123', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '登录用户：admin123 不存在', '2022-06-21 10:30:43');
INSERT INTO `sys_logininfor` VALUES (81, 'admin1234', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '登录用户：admin1234 不存在', '2022-06-21 10:31:00');
INSERT INTO `sys_logininfor` VALUES (82, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-06-21 10:31:16');
INSERT INTO `sys_logininfor` VALUES (83, 'admin123', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '登录用户：admin123 不存在', '2022-06-21 10:31:25');
INSERT INTO `sys_logininfor` VALUES (84, 'admin123', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '登录用户：admin123 不存在', '2022-06-21 10:32:08');
INSERT INTO `sys_logininfor` VALUES (85, 'admin123', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '登录用户：admin123 不存在', '2022-06-21 10:32:08');
INSERT INTO `sys_logininfor` VALUES (86, 'admin123', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码错误', '2022-06-21 10:32:11');
INSERT INTO `sys_logininfor` VALUES (87, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-06-21 10:32:42');
INSERT INTO `sys_logininfor` VALUES (88, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-06-21 10:33:02');
INSERT INTO `sys_logininfor` VALUES (89, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-06-21 10:33:16');
INSERT INTO `sys_logininfor` VALUES (90, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-06-21 10:33:30');
INSERT INTO `sys_logininfor` VALUES (91, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-21 10:34:33');
INSERT INTO `sys_logininfor` VALUES (92, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-06-21 11:06:47');
INSERT INTO `sys_logininfor` VALUES (93, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-21 11:06:51');
INSERT INTO `sys_logininfor` VALUES (94, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-21 11:24:29');
INSERT INTO `sys_logininfor` VALUES (95, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-21 11:24:57');
INSERT INTO `sys_logininfor` VALUES (96, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-21 11:28:02');
INSERT INTO `sys_logininfor` VALUES (97, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-21 11:28:11');
INSERT INTO `sys_logininfor` VALUES (98, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-21 11:34:41');
INSERT INTO `sys_logininfor` VALUES (99, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-21 11:34:49');
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-06-21 11:35:42');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-21 11:35:45');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-21 11:36:19');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-21 11:36:30');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-06-21 11:37:09');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-21 11:37:14');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-06-21 11:38:25');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-21 11:38:30');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-21 14:10:46');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-21 14:22:27');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-21 14:22:37');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-21 14:24:08');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-21 14:24:21');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-22 08:17:31');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-22 08:52:04');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-22 09:52:33');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-22 10:58:32');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-22 11:28:02');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-06-22 14:08:00');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-22 14:08:05');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-22 14:09:55');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-06-22 14:54:14');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-22 14:54:17');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-06-22 14:58:21');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-22 14:58:25');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-22 16:04:59');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '1', '验证码错误', '2022-06-22 17:29:32');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2022-06-22 17:29:36');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-22 17:30:05');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-22 17:30:15');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-22 17:36:25');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-22 17:36:48');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-22 17:55:19');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-22 17:57:17');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2022-06-22 18:04:46');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码已失效', '2022-06-22 18:13:36');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-22 18:13:40');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-23 14:40:35');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-06-23 14:42:53');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-23 16:15:00');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-23 17:17:56');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-28 09:56:34');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-07-28 09:57:16');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-23 15:53:08');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-26 08:40:55');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-09-26 09:34:28');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-26 09:34:31');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-26 10:07:34');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-26 11:11:36');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-26 14:03:55');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-26 15:21:41');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-26 15:53:16');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-26 16:52:52');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-27 08:27:54');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2074 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-12-10 14:12:14', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2021-12-10 14:12:14', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2021-12-10 14:12:14', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '博客官网', 0, 4, 'http://localhost/cms/main/cmsIndex', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2021-12-10 14:12:14', 'admin', '2022-01-20 09:22:17', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 3, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-12-10 14:12:14', 'admin', '2021-12-10 15:43:44', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 4, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-12-10 14:12:14', 'admin', '2021-12-10 15:43:58', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 5, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-12-10 14:12:14', 'admin', '2021-12-10 15:44:17', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 1, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-12-10 14:12:14', 'admin', '2021-12-10 15:43:17', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 2, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-12-10 14:12:14', 'admin', '2021-12-10 15:43:28', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-12-10 14:12:14', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-12-10 14:12:14', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-12-10 14:12:14', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-12-10 14:12:14', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-12-10 14:12:14', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-12-10 14:12:14', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-12-10 14:12:14', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-12-10 14:12:14', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-12-10 14:12:14', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-12-10 14:12:14', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-12-10 14:12:14', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-12-10 14:12:14', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-12-10 14:12:14', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-12-10 14:12:14', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '内容管理', 0, 1, 'cms', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'documentation', 'admin', '2021-12-20 14:53:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '文件管理', 2007, 8, 'fileInfo', 'cms/fileInfo/index', NULL, 1, 0, 'C', '0', '0', 'cms:fileInfo:list', '#', 'admin', '2021-12-27 22:29:53', 'admin', '2022-01-21 10:28:14', '文件管理菜单');
INSERT INTO `sys_menu` VALUES (2027, '文件管理查询', 2026, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:fileInfo:query', '#', 'admin', '2021-12-27 22:29:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '文件管理新增', 2026, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:fileInfo:add', '#', 'admin', '2021-12-27 22:29:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '文件管理修改', 2026, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:fileInfo:edit', '#', 'admin', '2021-12-27 22:29:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '文件管理删除', 2026, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:fileInfo:remove', '#', 'admin', '2021-12-27 22:29:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '文件管理导出', 2026, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:fileInfo:export', '#', 'admin', '2021-12-27 22:29:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '帖子管理', 2007, 1, 'post', 'cms/post/index', NULL, 1, 0, 'C', '0', '0', 'cms:post:list', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '帖子管理菜单');
INSERT INTO `sys_menu` VALUES (2033, '帖子管理查询', 2032, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:query', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '帖子管理新增', 2032, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:add', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '帖子管理修改', 2032, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:edit', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '帖子管理删除', 2032, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:remove', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '帖子管理导出', 2032, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:export', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '随笔管理', 2007, 2, 'essay', 'cms/post/essay', NULL, 1, 0, 'C', '0', '0', 'cms:post:list', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '随笔管理菜单');
INSERT INTO `sys_menu` VALUES (2039, '随笔管理查询', 2038, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:query', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '随笔管理新增', 2038, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:add', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '随笔管理修改', 2038, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:edit', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '随笔管理删除', 2038, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:remove', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '随笔管理导出', 2038, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:export', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '文档管理', 2007, 3, 'doucuments', 'cms/post/doucuments', NULL, 1, 0, 'C', '0', '1', 'cms:post:list', '#', 'admin', '2022-01-02 02:58:41', 'admin', '2022-02-08 18:01:09', '文档管理菜单');
INSERT INTO `sys_menu` VALUES (2045, '文档管理查询', 2044, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:query', '#', 'admin', '2022-01-02 02:58:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '文档管理新增', 2044, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:add', '#', 'admin', '2022-01-02 02:58:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '文档管理修改', 2044, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:edit', '#', 'admin', '2022-01-02 02:58:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '文档管理删除', 2044, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:remove', '#', 'admin', '2022-01-02 02:58:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '文档管理导出', 2044, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:post:export', '#', 'admin', '2022-01-02 02:58:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '标签管理', 2007, 5, 'tag', 'cms/tag/index', NULL, 1, 0, 'C', '0', '0', 'cms:tag:list', '#', 'admin', '2022-01-02 14:51:38', 'admin', '2022-01-02 14:52:31', '标签管理菜单');
INSERT INTO `sys_menu` VALUES (2051, '标签管理查询', 2050, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:tag:query', '#', 'admin', '2022-01-02 14:51:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '标签管理新增', 2050, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:tag:add', '#', 'admin', '2022-01-02 14:51:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '标签管理修改', 2050, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:tag:edit', '#', 'admin', '2022-01-02 14:51:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '标签管理删除', 2050, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:tag:remove', '#', 'admin', '2022-01-02 14:51:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '标签管理导出', 2050, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:tag:export', '#', 'admin', '2022-01-02 14:51:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '分类管理', 2007, 4, 'type', 'cms/type/index', NULL, 1, 0, 'C', '0', '0', 'cms:type:list', '#', 'admin', '2022-01-02 15:04:23', 'admin', '2022-01-02 15:05:03', '分类管理菜单');
INSERT INTO `sys_menu` VALUES (2057, '分类管理查询', 2056, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:type:query', '#', 'admin', '2022-01-02 15:04:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '分类管理新增', 2056, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:type:add', '#', 'admin', '2022-01-02 15:04:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '分类管理修改', 2056, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:type:edit', '#', 'admin', '2022-01-02 15:04:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '分类管理删除', 2056, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:type:remove', '#', 'admin', '2022-01-02 15:04:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2061, '分类管理导出', 2056, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:type:export', '#', 'admin', '2022-01-02 15:04:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2062, '留言管理', 2007, 6, 'message', 'cms/message/index', NULL, 1, 0, 'C', '0', '0', 'cms:message:list', '#', 'admin', '2022-01-15 13:47:29', 'admin', '2022-01-15 13:49:11', '留言管理菜单');
INSERT INTO `sys_menu` VALUES (2063, '留言管理查询', 2062, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:message:query', '#', 'admin', '2022-01-15 13:47:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '留言管理新增', 2062, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:message:add', '#', 'admin', '2022-01-15 13:47:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '留言管理修改', 2062, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:message:edit', '#', 'admin', '2022-01-15 13:47:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2066, '留言管理删除', 2062, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:message:remove', '#', 'admin', '2022-01-15 13:47:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2067, '留言管理导出', 2062, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:message:export', '#', 'admin', '2022-01-15 13:47:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2068, '评论管理', 2007, 7, 'comment', 'cms/comment/index', NULL, 1, 0, 'C', '0', '0', 'cms:comment:list', '#', 'admin', '2022-01-21 10:27:25', 'admin', '2022-01-21 10:28:24', '评论管理菜单');
INSERT INTO `sys_menu` VALUES (2069, '评论管理查询', 2068, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:comment:query', '#', 'admin', '2022-01-21 10:27:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '评论管理新增', 2068, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:comment:add', '#', 'admin', '2022-01-21 10:27:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2071, '评论管理修改', 2068, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:comment:edit', '#', 'admin', '2022-01-21 10:27:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2072, '评论管理删除', 2068, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:comment:remove', '#', 'admin', '2022-01-21 10:27:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2073, '评论管理导出', 2068, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:comment:export', '#', 'admin', '2022-01-21 10:27:25', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-12-10 14:12:14', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0x3C683120636C6173733D22716C2D616C69676E2D63656E746572223EE7BBB4E68AA4E9809AE79FA53C2F68313E3C703E09E9809AE79FA53A323031382D30372D303120E88BA5E4BE9DE7B3BBE7BB9FE5878CE699A8E7BBB4E68AA43C2F703E3C7020636C6173733D22716C2D616C69676E2D63656E746572223E3C62723E3C2F703E, '0', 'admin', '2021-12-10 14:12:14', 'admin', '2022-01-15 14:41:23', '管理员');

-- ----------------------------
-- Table structure for sys_notice_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_file`;
CREATE TABLE `sys_notice_file`  (
  `file_id` bigint(20) NOT NULL COMMENT '文件ID',
  `notice_id` bigint(20) NOT NULL COMMENT '通知公告ID',
  PRIMARY KEY (`file_id`, `notice_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-10 17:02:40');
INSERT INTO `sys_oper_log` VALUES (2, '登录日志', 9, 'com.ruoyi.web.controller.monitor.SysLogininforController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-10 17:02:44');
INSERT INTO `sys_oper_log` VALUES (3, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '若依', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"userName\":\"若依\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-22 16:54:51');
INSERT INTO `sys_oper_log` VALUES (4, '帖子管理', 1, 'com.ruoyi.cms.post.controller.CmsPostController.add()', 'POST', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"tagIds\":[26],\"params\":{},\"title\":\"1\",\"type\":\"1\",\"content\":\"<p>1</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1651044433314,\"typeIds\":[14],\"id\":20,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":20}', 0, NULL, '2022-04-27 15:27:13');
INSERT INTO `sys_oper_log` VALUES (5, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[26],\"updateTime\":1651048297168,\"params\":{},\"title\":\"是VSD v阿萨DVD v大是大非v阿斯蒂芬v地方\",\"type\":\"1\",\"content\":\"<p>1234555的风格</p>\",\"tags\":[],\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641980454000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":19,\"views\":132,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-27 16:31:37');
INSERT INTO `sys_oper_log` VALUES (6, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[26],\"updateTime\":1651048332392,\"params\":{},\"title\":\"是VSD v阿萨DVD v大是大非v阿斯蒂芬v地方\",\"type\":\"1\",\"content\":\"<p>1234555的风格</p>\",\"tags\":[{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641980454000,\"updateBy\":\"admin\",\"typeIds\":[14],\"id\":19,\"views\":132,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-27 16:32:12');
INSERT INTO `sys_oper_log` VALUES (7, '帖子管理', 1, 'com.ruoyi.cms.post.controller.CmsPostController.add()', 'POST', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"1\",\"type\":\"2\",\"content\":\"<p>1</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1651051851159,\"id\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":21}', 0, NULL, '2022-04-27 17:30:51');
INSERT INTO `sys_oper_log` VALUES (8, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-09 16:35:42');
INSERT INTO `sys_oper_log` VALUES (9, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"avatar\":\"/static/img/profile.066e0938.jpg\",\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-09 16:36:01');
INSERT INTO `sys_oper_log` VALUES (10, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-09 17:17:49');
INSERT INTO `sys_oper_log` VALUES (11, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1654848530432,\"typeName\":\"java\",\"typeId\":16,\"params\":{},\"postNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-10 16:08:50');
INSERT INTO `sys_oper_log` VALUES (12, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1654855014192,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/10/9732e55b-4f32-4047-a3cb-0897eae747da.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":17,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-10 17:56:54');
INSERT INTO `sys_oper_log` VALUES (13, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1654855389623,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":17,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-10 18:03:09');
INSERT INTO `sys_oper_log` VALUES (14, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1654855390000,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/10/af4514e3-b16e-4fdf-8d7a-2c378d4ff10b.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":17,\"status\":\"1\"}', NULL, 1, '', '2022-06-10 18:13:04');
INSERT INTO `sys_oper_log` VALUES (15, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1654856025492,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/10/af4514e3-b16e-4fdf-8d7a-2c378d4ff10b.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":17,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-10 18:13:45');
INSERT INTO `sys_oper_log` VALUES (16, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1654856033732,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":17,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-10 18:13:53');
INSERT INTO `sys_oper_log` VALUES (17, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"/profile/upload/2022/06/13/1c8a0c5d-dad8-4148-8b73-12d9022ae789.jpg\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655081170437,\"params\":{},\"postNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 08:46:10');
INSERT INTO `sys_oper_log` VALUES (18, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655081179069,\"params\":{},\"postNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 08:46:19');
INSERT INTO `sys_oper_log` VALUES (19, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655082303922,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/13/17e6a094-718f-4726-bf76-708e37211527.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"1111\",\"id\":7,\"views\":17,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 09:05:03');
INSERT INTO `sys_oper_log` VALUES (20, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655082373200,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"\",\"id\":7,\"views\":17,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 09:06:13');
INSERT INTO `sys_oper_log` VALUES (21, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655082750457,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/13/09ecbf24-1d65-40e0-aa0b-8781f0d100e4.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"1111\",\"id\":7,\"views\":17,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 09:12:30');
INSERT INTO `sys_oper_log` VALUES (22, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655082757826,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"\",\"id\":7,\"views\":17,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 09:12:37');
INSERT INTO `sys_oper_log` VALUES (23, '帖子管理', 1, 'com.ruoyi.cms.post.controller.CmsPostController.add()', 'POST', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082829600,\"typeIds\":[],\"id\":22,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":22}', 0, NULL, '2022-06-13 09:13:49');
INSERT INTO `sys_oper_log` VALUES (24, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655082863197,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[],\"postPic\":\"/profile/upload/2022/06/13/9879dd8b-0c06-479b-bdaa-a80e5eb89996.jpg\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[],\"postDesc\":\"1\",\"id\":22,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 09:14:23');
INSERT INTO `sys_oper_log` VALUES (25, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655082870552,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[],\"postDesc\":\"\",\"id\":22,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 09:14:30');
INSERT INTO `sys_oper_log` VALUES (26, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655089352096,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":17,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 11:02:32');
INSERT INTO `sys_oper_log` VALUES (27, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655089395651,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 11:03:15');
INSERT INTO `sys_oper_log` VALUES (28, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655089425847,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 11:03:45');
INSERT INTO `sys_oper_log` VALUES (29, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655090296381,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[],\"postPic\":\"/profile/upload/2022/06/13/eb89b26a-24e9-49a1-9309-36b67bfd1e26.jpg\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":2,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 11:18:16');
INSERT INTO `sys_oper_log` VALUES (30, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655090320152,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":2,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 11:18:40');
INSERT INTO `sys_oper_log` VALUES (31, '帖子管理', 1, 'com.ruoyi.cms.post.controller.CmsPostController.add()', 'POST', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"2\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655090423899,\"typeIds\":[],\"id\":23,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":23}', 0, NULL, '2022-06-13 11:20:23');
INSERT INTO `sys_oper_log` VALUES (32, '帖子管理', 1, 'com.ruoyi.cms.post.controller.CmsPostController.add()', 'POST', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"3\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655090428846,\"typeIds\":[],\"id\":24,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":24}', 0, NULL, '2022-06-13 11:20:28');
INSERT INTO `sys_oper_log` VALUES (33, '帖子管理', 1, 'com.ruoyi.cms.post.controller.CmsPostController.add()', 'POST', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"4\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655090434324,\"typeIds\":[],\"id\":25,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":25}', 0, NULL, '2022-06-13 11:20:34');
INSERT INTO `sys_oper_log` VALUES (34, '帖子管理', 1, 'com.ruoyi.cms.post.controller.CmsPostController.add()', 'POST', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"5\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655091478518,\"typeIds\":[],\"id\":26,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":26}', 0, NULL, '2022-06-13 11:37:58');
INSERT INTO `sys_oper_log` VALUES (35, '帖子管理', 3, 'com.ruoyi.cms.post.controller.CmsPostController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/post/26', '127.0.0.1', '内网IP', '{ids=26}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 14:41:00');
INSERT INTO `sys_oper_log` VALUES (36, '帖子管理', 3, 'com.ruoyi.cms.post.controller.CmsPostController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/post/25', '127.0.0.1', '内网IP', '{ids=25}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 14:41:11');
INSERT INTO `sys_oper_log` VALUES (37, '帖子管理', 3, 'com.ruoyi.cms.post.controller.CmsPostController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/post/24', '127.0.0.1', '内网IP', '{ids=24}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 14:41:23');
INSERT INTO `sys_oper_log` VALUES (38, '帖子管理', 3, 'com.ruoyi.cms.post.controller.CmsPostController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/post/23', '127.0.0.1', '内网IP', '{ids=23}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 14:41:26');
INSERT INTO `sys_oper_log` VALUES (39, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[26,25,24,23,22,21,20],\"updateTime\":1655102508994,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[16,14,13,11,10,15],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":2,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 14:41:49');
INSERT INTO `sys_oper_log` VALUES (40, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641216944000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"33\",\"typeId\":15,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655081179000,\"params\":{},\"postNum\":0}],\"tagIds\":[20,21,22,23,24,25,26],\"updateTime\":1655103390898,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221443000,\"tagId\":22,\"updateBy\":\"\",\"params\":{},\"tagName\":\"问问\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223828000,\"tagId\":23,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿斯弗\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/13/1b2b7b5e-5a83-4620-b87b-35acaf9da950.jpg\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[10,11,13,14,15,16],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":2,\"status', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 14:56:30');
INSERT INTO `sys_oper_log` VALUES (41, '帖子管理', 3, 'com.ruoyi.cms.post.controller.CmsPostController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/post/20', '127.0.0.1', '内网IP', '{ids=20}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 14:57:03');
INSERT INTO `sys_oper_log` VALUES (42, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0}],\"tagIds\":[26],\"updateTime\":1655103452650,\"params\":{},\"title\":\"是VSD v阿萨DVD v大是大非v阿斯蒂芬v地方\",\"type\":\"1\",\"content\":\"<p>1234555的风格</p>\",\"tags\":[{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/13/a0e3a25a-2b05-4128-8820-db5eb7cd98a9.jpg\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641980454000,\"updateBy\":\"admin\",\"typeIds\":[14],\"id\":19,\"views\":133,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 14:57:32');
INSERT INTO `sys_oper_log` VALUES (43, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0}],\"tagIds\":[21,25],\"updateTime\":1655103481866,\"params\":{},\"title\":\"阿斯顿v奥迪的vvv从vvc从v从 啊高富帅是否公司费格式发给非钢是法国四个非钢\",\"type\":\"1\",\"content\":\"<h2>此事阿萨的</h2><h3>啊手动阀</h3><p><em>啊</em><em style=\\\"color: rgb(230, 0, 0);\\\">发生</em><em>的</em></p><p><s>奥迪发</s></p><p><span style=\\\"background-color: rgb(255, 255, 0);\\\">是否</span></p><p><br></p><p><br></p><p><br></p><h2 class=\\\"ql-align-center\\\"><strong>奥迪</strong></h2><p><u>啊手动阀</u></p><p><br></p><p><br></p><p><br></p><blockquote>var a = 1;</blockquote><blockquote>for (let i = 0; i &lt;10; i++){</blockquote><blockquote>}</blockquote><pre class=\\\"ql-syntax\\\" spellcheck=\\\"false\\\">var a = 1;\\nfor (let i = 0; i &lt;10; i++){\\n}\\n</pre><p>123</p><p><br></p><p><a href=\\\"http://www.baidu.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">百度</a></p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/13/574a6102-08b2-4928-b991-97aedc7df8f8.jpg\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641347093000,\"updateBy\":\"admin\",\"typeIds\":[11],\"id\":16,\"views\":79,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 14:58:01');
INSERT INTO `sys_oper_log` VALUES (44, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"/profile/upload/2022/06/13/d9ed31b7-49b0-4590-9279-9b3948dfc660.jpg\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655103526214,\"params\":{},\"postNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 14:58:46');
INSERT INTO `sys_oper_log` VALUES (45, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655104476895,\"params\":{},\"postNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 15:14:36');
INSERT INTO `sys_oper_log` VALUES (46, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641216944000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"33\",\"typeId\":15,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655104477000,\"params\":{},\"postNum\":0}],\"tagIds\":[20,21,22,23,24,25,26],\"updateTime\":1655104485177,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221443000,\"tagId\":22,\"updateBy\":\"\",\"params\":{},\"tagName\":\"问问\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223828000,\"tagId\":23,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿斯弗\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[10,11,13,14,15,16],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":3,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 15:14:45');
INSERT INTO `sys_oper_log` VALUES (47, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0}],\"tagIds\":[26],\"updateTime\":1655104490134,\"params\":{},\"title\":\"是VSD v阿萨DVD v大是大非v阿斯蒂芬v地方\",\"type\":\"1\",\"content\":\"<p>1234555的风格</p>\",\"tags\":[{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641980454000,\"updateBy\":\"admin\",\"typeIds\":[14],\"id\":19,\"views\":133,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 15:14:50');
INSERT INTO `sys_oper_log` VALUES (48, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0}],\"tagIds\":[21,25],\"updateTime\":1655104495721,\"params\":{},\"title\":\"阿斯顿v奥迪的vvv从vvc从v从 啊高富帅是否公司费格式发给非钢是法国四个非钢\",\"type\":\"1\",\"content\":\"<h2>此事阿萨的</h2><h3>啊手动阀</h3><p><em>啊</em><em style=\\\"color: rgb(230, 0, 0);\\\">发生</em><em>的</em></p><p><s>奥迪发</s></p><p><span style=\\\"background-color: rgb(255, 255, 0);\\\">是否</span></p><p><br></p><p><br></p><p><br></p><p><br></p><h2 class=\\\"ql-align-center\\\"><strong>奥迪</strong></h2><p><u>啊手动阀</u></p><p><br></p><p><br></p><p><br></p><p><br></p><blockquote>var a = 1;</blockquote><blockquote>for (let i = 0; i &lt;10; i++){</blockquote><blockquote>}</blockquote><pre class=\\\"ql-syntax\\\" spellcheck=\\\"false\\\">var a = 1;\\nfor (let i = 0; i &lt;10; i++){\\n}\\n</pre><p>123</p><p><br></p><p><a href=\\\"http://www.baidu.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">百度</a></p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641347093000,\"updateBy\":\"admin\",\"typeIds\":[11],\"id\":16,\"views\":79,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 15:14:55');
INSERT INTO `sys_oper_log` VALUES (49, '帖子管理', 3, 'com.ruoyi.cms.post.controller.CmsPostController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/post/21', '127.0.0.1', '内网IP', '{ids=21}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-13 15:27:27');
INSERT INTO `sys_oper_log` VALUES (50, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655200174466,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/14/44119643-1fa9-4963-8752-4cccefce523d.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-14 17:49:34');
INSERT INTO `sys_oper_log` VALUES (51, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655200459176,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-14 17:54:19');
INSERT INTO `sys_oper_log` VALUES (52, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655200471177,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/14/6142a7e1-4ed8-4fce-97a6-10140aea2354.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-14 17:54:31');
INSERT INTO `sys_oper_log` VALUES (53, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655202098677,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-14 18:21:38');
INSERT INTO `sys_oper_log` VALUES (54, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655252127390,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/15/95bf30dd-24d1-4757-8f4e-0527939b1cd0.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-15 08:15:27');
INSERT INTO `sys_oper_log` VALUES (55, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655252140428,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-15 08:15:40');
INSERT INTO `sys_oper_log` VALUES (56, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655252385679,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/15/9c6698b6-2a7a-452b-a0a2-a5275e2363e3.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-15 08:19:45');
INSERT INTO `sys_oper_log` VALUES (57, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655252407795,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-15 08:20:07');
INSERT INTO `sys_oper_log` VALUES (58, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655277823272,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/15/b8f9d310-2faa-45ce-a953-0fd740761c88.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-15 15:23:43');
INSERT INTO `sys_oper_log` VALUES (59, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655277925006,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-15 15:25:25');
INSERT INTO `sys_oper_log` VALUES (60, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655281507813,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/15/a54bb98f-ec5c-4aa6-a637-77f95f62cbeb.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-15 16:25:07');
INSERT INTO `sys_oper_log` VALUES (61, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1655281526011,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":21,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-15 16:25:26');
INSERT INTO `sys_oper_log` VALUES (62, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641216944000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"33\",\"typeId\":15,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655104477000,\"params\":{},\"postNum\":0}],\"tagIds\":[20,21,22,23,24,25,26],\"updateTime\":1655285433208,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221443000,\"tagId\":22,\"updateBy\":\"\",\"params\":{},\"tagName\":\"问问\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223828000,\"tagId\":23,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿斯弗\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/15/b7644c02-9f55-43cb-96fd-04484517ebcd.jpg\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[10,11,13,14,15,16],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":3,\"status', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-15 17:30:33');
INSERT INTO `sys_oper_log` VALUES (63, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641216944000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"33\",\"typeId\":15,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655104477000,\"params\":{},\"postNum\":0}],\"tagIds\":[20,21,22,23,24,25,26],\"updateTime\":1655285469118,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221443000,\"tagId\":22,\"updateBy\":\"\",\"params\":{},\"tagName\":\"问问\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223828000,\"tagId\":23,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿斯弗\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[10,11,13,14,15,16],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":3,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-15 17:31:09');
INSERT INTO `sys_oper_log` VALUES (64, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/29', '127.0.0.1', '内网IP', '{fileIds=29}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-16 09:05:22');
INSERT INTO `sys_oper_log` VALUES (65, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641216944000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"33\",\"typeId\":15,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655104477000,\"params\":{},\"postNum\":0}],\"tagIds\":[20,21,22,23,24,25,26],\"updateTime\":1655434491746,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221443000,\"tagId\":22,\"updateBy\":\"\",\"params\":{},\"tagName\":\"问问\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223828000,\"tagId\":23,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿斯弗\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/17/8c97fbb8-e872-4af0-871f-45d665cafcb9.jpg\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[10,11,13,14,15,16],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":71,\"statu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-17 10:54:51');
INSERT INTO `sys_oper_log` VALUES (66, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0}],\"tagIds\":[26],\"updateTime\":1655434512037,\"params\":{},\"title\":\"是VSD v阿萨DVD v大是大非v阿斯蒂芬v地方\",\"type\":\"1\",\"content\":\"<p>1234555的风格</p>\",\"tags\":[{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/17/fbcfd2e2-058d-4cbe-8b2c-d444cd47ade7.jpg\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641980454000,\"updateBy\":\"admin\",\"typeIds\":[14],\"id\":19,\"views\":191,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-17 10:55:12');
INSERT INTO `sys_oper_log` VALUES (67, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0}],\"tagIds\":[21,25],\"updateTime\":1655434523174,\"params\":{},\"title\":\"阿斯顿v奥迪的vvv从vvc从v从 啊高富帅是否公司费格式发给非钢是法国四个非钢\",\"type\":\"1\",\"content\":\"<h2>此事阿萨的</h2><h3>啊手动阀</h3><p><em>啊</em><em style=\\\"color: rgb(230, 0, 0);\\\">发生</em><em>的</em></p><p><s>奥迪发</s></p><p><span style=\\\"background-color: rgb(255, 255, 0);\\\">是否</span></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><h2 class=\\\"ql-align-center\\\"><strong>奥迪</strong></h2><p><u>啊手动阀</u></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><blockquote>var a = 1;</blockquote><blockquote>for (let i = 0; i &lt;10; i++){</blockquote><blockquote>}</blockquote><pre class=\\\"ql-syntax\\\" spellcheck=\\\"false\\\">var a = 1;\\nfor (let i = 0; i &lt;10; i++){\\n}\\n</pre><p>123</p><p><br></p><p><a href=\\\"http://www.baidu.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">百度</a></p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/17/651f8890-a4a8-4f86-a9ea-eddeba5cf1da.jpg\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641347093000,\"updateBy\":\"admin\",\"typeIds\":[11],\"id\":16,\"views\":137,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-17 10:55:23');
INSERT INTO `sys_oper_log` VALUES (68, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-17 14:17:10');
INSERT INTO `sys_oper_log` VALUES (69, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641216944000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"33\",\"typeId\":15,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655104477000,\"params\":{},\"postNum\":0}],\"tagIds\":[20,21,22,23,24,25,26],\"updateTime\":1655772579575,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221443000,\"tagId\":22,\"updateBy\":\"\",\"params\":{},\"tagName\":\"问问\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223828000,\"tagId\":23,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿斯弗\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[10,11,13,14,15,16],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":73,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 08:49:39');
INSERT INTO `sys_oper_log` VALUES (70, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0}],\"tagIds\":[26],\"updateTime\":1655772584960,\"params\":{},\"title\":\"是VSD v阿萨DVD v大是大非v阿斯蒂芬v地方\",\"type\":\"1\",\"content\":\"<p>1234555的风格</p>\",\"tags\":[{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641980454000,\"updateBy\":\"admin\",\"typeIds\":[14],\"id\":19,\"views\":200,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 08:49:44');
INSERT INTO `sys_oper_log` VALUES (71, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0}],\"tagIds\":[21,25],\"updateTime\":1655772590844,\"params\":{},\"title\":\"阿斯顿v奥迪的vvv从vvc从v从 啊高富帅是否公司费格式发给非钢是法国四个非钢\",\"type\":\"1\",\"content\":\"<h2>此事阿萨的</h2><h3>啊手动阀</h3><p><em>啊</em><em style=\\\"color: rgb(230, 0, 0);\\\">发生</em><em>的</em></p><p><s>奥迪发</s></p><p><span style=\\\"background-color: rgb(255, 255, 0);\\\">是否</span></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><h2 class=\\\"ql-align-center\\\"><strong>奥迪</strong></h2><p><u>啊手动阀</u></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><blockquote>var a = 1;</blockquote><blockquote>for (let i = 0; i &lt;10; i++){</blockquote><blockquote>}</blockquote><pre class=\\\"ql-syntax\\\" spellcheck=\\\"false\\\">var a = 1;\\nfor (let i = 0; i &lt;10; i++){\\n}\\n</pre><p>123</p><p><br></p><p><a href=\\\"http://www.baidu.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">百度</a></p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641347093000,\"updateBy\":\"admin\",\"typeIds\":[11],\"id\":16,\"views\":140,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 08:49:50');
INSERT INTO `sys_oper_log` VALUES (72, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655772652949,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p><p><img src=\\\"/dev-api/profile/upload/2022/06/21/5251ff35-7d85-4b0a-afee-27d1444d933c.jpg\\\"></p>\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":17,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 08:50:52');
INSERT INTO `sys_oper_log` VALUES (73, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655772768346,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p>\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":17,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 08:52:48');
INSERT INTO `sys_oper_log` VALUES (74, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/33', '127.0.0.1', '内网IP', '{fileIds=33}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 08:52:52');
INSERT INTO `sys_oper_log` VALUES (75, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655772816630,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p><p><img src=\\\"/dev-api/profile/upload/2022/06/21/8795b399-ad96-46ec-b0f9-1d9490324b0c.jpg\\\"></p>\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":17,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 08:53:36');
INSERT INTO `sys_oper_log` VALUES (76, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641216944000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"33\",\"typeId\":15,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655104477000,\"params\":{},\"postNum\":0}],\"tagIds\":[20,21,22,23,24,25,26],\"updateTime\":1655776982525,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221443000,\"tagId\":22,\"updateBy\":\"\",\"params\":{},\"tagName\":\"问问\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223828000,\"tagId\":23,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿斯弗\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/06/21/fd8d3842-1916-4b70-ae12-cc5ae7d01df0.jpg\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[10,11,13,14,15,16],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":73,\"statu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 10:03:02');
INSERT INTO `sys_oper_log` VALUES (77, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223880000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1644483360000,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641216944000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"33\",\"typeId\":15,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1654848530000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"java\",\"typeId\":16,\"updateTime\":1655104477000,\"params\":{},\"postNum\":0}],\"tagIds\":[20,21,22,23,24,25,26],\"updateTime\":1655777232276,\"params\":{},\"title\":\"测试\",\"type\":\"1\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221423000,\"tagId\":21,\"updateBy\":\"\",\"params\":{},\"tagName\":\"打\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641221443000,\"tagId\":22,\"updateBy\":\"\",\"params\":{},\"tagName\":\"问问\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223828000,\"tagId\":23,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿斯弗\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0},{\"createBy\":\"若依\",\"createTime\":1641278906000,\"tagId\":26,\"updateBy\":\"\",\"params\":{},\"tagName\":\"若依\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1655082830000,\"updateBy\":\"admin\",\"typeIds\":[10,11,13,14,15,16],\"postDesc\":\"萨达VS奥迪发奥迪发奥迪发答复答复答复奥迪奥迪发奥迪发奥迪发答复奥迪发奥迪发奥迪发奥迪发答复答复答复\",\"id\":22,\"views\":73,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 10:07:12');
INSERT INTO `sys_oper_log` VALUES (78, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655778749393,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p>\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":17,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 10:32:29');
INSERT INTO `sys_oper_log` VALUES (79, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/34', '127.0.0.1', '内网IP', '{fileIds=34}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 10:32:33');
INSERT INTO `sys_oper_log` VALUES (80, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 10:34:33');
INSERT INTO `sys_oper_log` VALUES (81, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 11:24:57');
INSERT INTO `sys_oper_log` VALUES (82, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 11:28:11');
INSERT INTO `sys_oper_log` VALUES (83, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2022/06/21/3ab3c21f-3675-4f70-a533-7feffcdf9a02.jpeg\",\"code\":200}', 0, NULL, '2022-06-21 11:32:55');
INSERT INTO `sys_oper_log` VALUES (84, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 11:34:49');
INSERT INTO `sys_oper_log` VALUES (85, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"avatar\":\"/profile/avatar/2022/06/21/3ab3c21f-3675-4f70-a533-7feffcdf9a02.jpeg\",\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 11:35:01');
INSERT INTO `sys_oper_log` VALUES (86, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 11:36:30');
INSERT INTO `sys_oper_log` VALUES (87, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"avatar\":\"/static/img/profile.473f5971.jpg\",\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 11:36:47');
INSERT INTO `sys_oper_log` VALUES (88, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 11:48:01');
INSERT INTO `sys_oper_log` VALUES (89, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 14:10:46');
INSERT INTO `sys_oper_log` VALUES (90, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 14:22:37');
INSERT INTO `sys_oper_log` VALUES (91, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-21 14:24:21');
INSERT INTO `sys_oper_log` VALUES (92, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 08:17:33');
INSERT INTO `sys_oper_log` VALUES (93, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 08:52:04');
INSERT INTO `sys_oper_log` VALUES (94, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 09:52:33');
INSERT INTO `sys_oper_log` VALUES (95, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 11:28:02');
INSERT INTO `sys_oper_log` VALUES (96, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:09:55');
INSERT INTO `sys_oper_log` VALUES (97, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:47:07');
INSERT INTO `sys_oper_log` VALUES (98, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15888888889\",\"admin\":true,\"email\":\"ry@163.com\",\"sex\":\"1\",\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:51:09');
INSERT INTO `sys_oper_log` VALUES (99, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15888888887\",\"admin\":true,\"email\":\"ry@163.com\",\"sex\":\"1\",\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:54:03');
INSERT INTO `sys_oper_log` VALUES (100, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1655878196000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"admin\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:54:50');
INSERT INTO `sys_oper_log` VALUES (101, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15888888888\",\"admin\":true,\"email\":\"ry@163.com\",\"sex\":\"2\",\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:55:33');
INSERT INTO `sys_oper_log` VALUES (102, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1655878196000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"admin\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:55:39');
INSERT INTO `sys_oper_log` VALUES (103, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15888888888\",\"admin\":true,\"email\":\"ry@163.com\",\"sex\":\"1\",\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:56:20');
INSERT INTO `sys_oper_log` VALUES (104, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1655878196000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"admin\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:56:40');
INSERT INTO `sys_oper_log` VALUES (105, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1655878196000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"admin\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:57:50');
INSERT INTO `sys_oper_log` VALUES (106, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1655878196000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"admin\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:57:58');
INSERT INTO `sys_oper_log` VALUES (107, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1655878196000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"admin\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 14:59:37');
INSERT INTO `sys_oper_log` VALUES (108, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 17:29:36');
INSERT INTO `sys_oper_log` VALUES (109, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 17:30:15');
INSERT INTO `sys_oper_log` VALUES (110, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 17:36:48');
INSERT INTO `sys_oper_log` VALUES (111, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 17:57:17');
INSERT INTO `sys_oper_log` VALUES (112, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-22 18:13:40');
INSERT INTO `sys_oper_log` VALUES (113, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userName\":\"admin\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 14:42:54');
INSERT INTO `sys_oper_log` VALUES (114, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655968301964,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p><p><img src=\\\"/dev-api/profile/upload/2022/06/23/4d7c82f1-00fc-474c-950d-d9a2fcd9191a.jpg\\\"></p>\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":17,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 15:11:41');
INSERT INTO `sys_oper_log` VALUES (115, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655968333743,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p>\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":17,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 15:12:13');
INSERT INTO `sys_oper_log` VALUES (116, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/36', '127.0.0.1', '内网IP', '{fileIds=36}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 15:12:19');
INSERT INTO `sys_oper_log` VALUES (117, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655968459850,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p><p><img src=\\\"/dev-api/profile/upload/2022/06/23/edc44ffe-8cd9-4ca3-ab20-cbd563ed86f1.jpg\\\"></p>\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":17,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 15:14:19');
INSERT INTO `sys_oper_log` VALUES (118, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/37', '127.0.0.1', '内网IP', '{fileIds=37}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 15:14:29');
INSERT INTO `sys_oper_log` VALUES (119, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655968476356,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p>\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":17,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 15:14:36');
INSERT INTO `sys_oper_log` VALUES (120, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655969883360,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p><p><img src=\\\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAeAB4AAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCABtAFoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9uf2uvjIf2df2UPif8QVhuLlvAvhLVfEIht3SOaX7JZy3G1GkV0Vj5eAWVlBIypGQf5qv2qf+DrD9pzxv8R7eb4X+Mb74f+GrXTre2exvdI0TVrq4uRzLcyzNY7fmZgAqKqgKOM5J/pA/by8c23ww/Yb+M3ia80eDxBZ+HfAut6nPpc0hjj1KOHT55Gt2YAlVkClCQCQGzg1/EV4l1OK912+1BbVbOO8uZJYbZGLLBGWJWNSeSqjCg+gFe9k2Go1OadVXt933GdS+yPuqL/g5x/bqnKKnxraRpmAQJ4N0DJJ/hH+g17X8Mv8AgtT+394xihe8+OLWvnfME/4QvQGbHof9B4r5j/Yn/Y4+0aRaeJNYt1kvtQO+2RkJECHpjtvPUfWvu74Q/AKG1WPzdox2YAN+OO9eZnefYTDXhThG/oj7TIeG/rCVWv8ACXbD/gqf+21d2y7vjdeCTABYeDtBIJP/AG5V5H8YPiP+2T8UPHl94jv/ANo/4uWt5qBiMkOk+ILrRLFAsSIvl2lk0VvFlVBPlxruYszZZmY/Y/gj4S2dpGNscbKAOdma6DUPhHb3MzSC3jYMvXGO1fAy44qwl7kV9yPt48J5W7Re5+Z3jT4i/te6BAZE/aW+OTAZOE8eatnH/f8Arwz4mft1ftefD64P2j9or9oDyVUtvHxA1YZH/gRX6xePPg9bsrBY0LDhoj9018wftLfsp6fqukS5tl3Mcnb0AxX0WUcX+2aVWK+487NOCcPyOWH3Pgf/AIes/tR5X/jJL4+/j8QdW/8Akivr3/gjz/wXR179mj9rzQPFXx68f/E7x5pM27QG1LWtcm1kaJp97JCbtyLkzTLEr2trcMtqBJK1mifMDtPxV+0Z+zbdfDeSS/s4pG09XO+Mf8s/9qoP2SvjP4L+DXjHU9S8beA', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 15:38:03');
INSERT INTO `sys_oper_log` VALUES (121, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655970148039,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p>\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":17,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 15:42:28');
INSERT INTO `sys_oper_log` VALUES (122, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655972185276,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p class=\\\"ql-align-center\\\"><img src=\\\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAeAB4AAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCABtAFoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9uf2uvjIf2df2UPif8QVhuLlvAvhLVfEIht3SOaX7JZy3G1GkV0Vj5eAWVlBIypGQf5qv2qf+DrD9pzxv8R7eb4X+Mb74f+GrXTre2exvdI0TVrq4uRzLcyzNY7fmZgAqKqgKOM5J/pA/by8c23ww/Yb+M3ia80eDxBZ+HfAut6nPpc0hjj1KOHT55Gt2YAlVkClCQCQGzg1/EV4l1OK912+1BbVbOO8uZJYbZGLLBGWJWNSeSqjCg+gFe9k2Go1OadVXt933GdS+yPuqL/g5x/bqnKKnxraRpmAQJ4N0DJJ/hH+g17X8Mv8AgtT+394xihe8+OLWvnfME/4QvQGbHof9B4r5j/Yn/Y4+0aRaeJNYt1kvtQO+2RkJECHpjtvPUfWvu74Q/AKG1WPzdox2YAN+OO9eZnefYTDXhThG/oj7TIeG/rCVWv8ACXbD/gqf+21d2y7vjdeCTABYeDtBIJP/AG5V5H8YPiP+2T8UPHl94jv/ANo/4uWt5qBiMkOk+ILrRLFAsSIvl2lk0VvFlVBPlxruYszZZmY/Y/gj4S2dpGNscbKAOdma6DUPhHb3MzSC3jYMvXGO1fAy44qwl7kV9yPt48J5W7Re5+Z3jT4i/te6BAZE/aW+OTAZOE8eatnH/f8Arwz4mft1ftefD64P2j9or9oDyVUtvHxA1YZH/gRX6xePPg9bsrBY0LDhoj9018wftLfsp6fqukS5tl3Mcnb0AxX0WUcX+2aVWK+487NOCcPyOWH3Pgf/AIes/tR5X/jJL4+/j8QdW/8Akivr3/gjz/wXR179mj9rzQPFXx68f/E7x5pM27QG1LWtcm1kaJp97JCbtyLkzTLEr2trcMtqBJK1mifMDtPxV+0Z+zbdfDeSS/s4pG09XO+Mf8s/9qoP2S', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 16:16:25');
INSERT INTO `sys_oper_log` VALUES (123, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1655972213893,\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p>\",\"tags\":[],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":17,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-06-23 16:16:53');
INSERT INTO `sys_oper_log` VALUES (124, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650619700000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"若依\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-28 09:57:07');
INSERT INTO `sys_oper_log` VALUES (125, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1663923853095,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/09/23/e15e8c97-4029-4346-9f45-b3d6064b86ad.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":44,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-23 17:04:13');
INSERT INTO `sys_oper_log` VALUES (126, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1663924471230,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-23 17:14:31');
INSERT INTO `sys_oper_log` VALUES (127, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1663925380132,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"/profile/upload/2022/09/23/145645ec-e0a4-4d6f-84e1-069c6ba79350.jpg\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-23 17:29:40');
INSERT INTO `sys_oper_log` VALUES (128, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664152911772,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 08:41:51');
INSERT INTO `sys_oper_log` VALUES (129, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/6', '127.0.0.1', '内网IP', '{fileIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 14:08:57');
INSERT INTO `sys_oper_log` VALUES (130, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/8', '127.0.0.1', '内网IP', '{fileIds=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 14:49:41');
INSERT INTO `sys_oper_log` VALUES (131, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/9', '127.0.0.1', '内网IP', '{fileIds=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 14:55:38');
INSERT INTO `sys_oper_log` VALUES (132, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/10', '127.0.0.1', '内网IP', '{fileIds=10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 14:56:22');
INSERT INTO `sys_oper_log` VALUES (133, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/11', '127.0.0.1', '内网IP', '{fileIds=11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 14:57:14');
INSERT INTO `sys_oper_log` VALUES (134, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/12', '127.0.0.1', '内网IP', '{fileIds=12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 16:53:44');
INSERT INTO `sys_oper_log` VALUES (135, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/13', '127.0.0.1', '内网IP', '{fileIds=13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 17:20:16');
INSERT INTO `sys_oper_log` VALUES (136, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/14', '127.0.0.1', '内网IP', '{fileIds=14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 17:23:24');
INSERT INTO `sys_oper_log` VALUES (137, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/15', '127.0.0.1', '内网IP', '{fileIds=15}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 17:34:09');
INSERT INTO `sys_oper_log` VALUES (138, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/16', '127.0.0.1', '内网IP', '{fileIds=16}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 17:46:18');
INSERT INTO `sys_oper_log` VALUES (139, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664186580258,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 18:03:00');
INSERT INTO `sys_oper_log` VALUES (140, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[{\\\"id\\\":\\\"9d022e7e-e71b-4a85-aff1-b4b37fb5d372\\\",\\\"fileId\\\":\\\"/profile/upload/2022/09/26/4c2bac99-ef29-4ead-9f59-45a4481f3c22.docx\\\",\\\"remark\\\":\\\"萨达哈哈\\\"}]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664186822468,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 18:07:02');
INSERT INTO `sys_oper_log` VALUES (141, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/18', '127.0.0.1', '内网IP', '{fileIds=18}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 18:07:22');
INSERT INTO `sys_oper_log` VALUES (142, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/17', '127.0.0.1', '内网IP', '{fileIds=17}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 18:07:24');
INSERT INTO `sys_oper_log` VALUES (143, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664186856411,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-26 18:07:36');
INSERT INTO `sys_oper_log` VALUES (144, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/19', '127.0.0.1', '内网IP', '{fileIds=19}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 08:31:17');
INSERT INTO `sys_oper_log` VALUES (145, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/20', '127.0.0.1', '内网IP', '{fileIds=20}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 08:33:10');
INSERT INTO `sys_oper_log` VALUES (146, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/21', '127.0.0.1', '内网IP', '{fileIds=21}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 08:44:18');
INSERT INTO `sys_oper_log` VALUES (147, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/24', '127.0.0.1', '内网IP', '{fileIds=24}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:38:09');
INSERT INTO `sys_oper_log` VALUES (148, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/23', '127.0.0.1', '内网IP', '{fileIds=23}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:38:12');
INSERT INTO `sys_oper_log` VALUES (149, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/22', '127.0.0.1', '内网IP', '{fileIds=22}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:38:13');
INSERT INTO `sys_oper_log` VALUES (150, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/25', '127.0.0.1', '内网IP', '{fileIds=25}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:39:51');
INSERT INTO `sys_oper_log` VALUES (151, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/27', '127.0.0.1', '内网IP', '{fileIds=27}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:41:06');
INSERT INTO `sys_oper_log` VALUES (152, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/26', '127.0.0.1', '内网IP', '{fileIds=26}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:41:08');
INSERT INTO `sys_oper_log` VALUES (153, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[{\\\"id\\\":\\\"0ff944fe-7b0c-47bf-8600-99368ef31bef\\\",\\\"fileId\\\":\\\"\\\",\\\"fileOriginName\\\":\\\"\\\",\\\"fileSuffix\\\":\\\"\\\",\\\"fileSize\\\":\\\"\\\",\\\"remark\\\":\\\"\\\"}]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664243596257,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:53:16');
INSERT INTO `sys_oper_log` VALUES (154, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664243603587,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:53:23');
INSERT INTO `sys_oper_log` VALUES (155, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[{\\\"id\\\":\\\"1ea8b15c-685f-4ca0-93f3-9612864d8628\\\",\\\"fileId\\\":\\\"/profile/upload/2022/09/27/fe314261-dde9-43bd-83de-a1f149bc23a5.docx\\\",\\\"fileOriginName\\\":\\\"新建 Microsoft Word 文档.docx\\\",\\\"fileSuffix\\\":\\\"docx\\\",\\\"fileSize\\\":\\\"0kB\\\",\\\"remark\\\":\\\"阿萨\\\"}]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664243764496,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:56:04');
INSERT INTO `sys_oper_log` VALUES (156, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[{\\\"id\\\":\\\"1ea8b15c-685f-4ca0-93f3-9612864d8628\\\",\\\"fileId\\\":\\\"/profile/upload/2022/09/27/fe314261-dde9-43bd-83de-a1f149bc23a5.docx\\\",\\\"fileOriginName\\\":\\\"新建 Microsoft Word 文档.docx\\\",\\\"fileSuffix\\\":\\\"docx\\\",\\\"fileSize\\\":\\\"0kB\\\",\\\"remark\\\":\\\"阿萨\\\"}]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664243857015,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:57:37');
INSERT INTO `sys_oper_log` VALUES (157, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[{\\\"id\\\":\\\"1ea8b15c-685f-4ca0-93f3-9612864d8628\\\",\\\"fileId\\\":\\\"/profile/upload/2022/09/27/fe314261-dde9-43bd-83de-a1f149bc23a5.docx\\\",\\\"fileOriginName\\\":\\\"新建 Microsoft Word 文档.docx\\\",\\\"fileSuffix\\\":\\\"docx\\\",\\\"fileSize\\\":\\\"0kB\\\",\\\"remark\\\":\\\"阿萨\\\"}]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664243869980,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 09:57:50');
INSERT INTO `sys_oper_log` VALUES (158, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[{\\\"id\\\":\\\"1ea8b15c-685f-4ca0-93f3-9612864d8628\\\",\\\"fileId\\\":\\\"/profile/upload/2022/09/27/fe314261-dde9-43bd-83de-a1f149bc23a5.docx\\\",\\\"fileOriginName\\\":\\\"新建 Microsoft Word 文档.docx\\\",\\\"fileSuffix\\\":\\\"docx\\\",\\\"fileSize\\\":\\\"0kB\\\",\\\"remark\\\":\\\"阿萨\\\"}]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664244221447,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:03:41');
INSERT INTO `sys_oper_log` VALUES (159, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664244336965,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:05:37');
INSERT INTO `sys_oper_log` VALUES (160, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664244345275,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:05:45');
INSERT INTO `sys_oper_log` VALUES (161, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/28', '127.0.0.1', '内网IP', '{fileIds=28}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:06:03');
INSERT INTO `sys_oper_log` VALUES (162, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[{\\\"id\\\":\\\"51bea44c-17a6-4120-8472-e9b481c044f1\\\",\\\"fileId\\\":\\\"/profile/upload/2022/09/27/cffa8b9b-fbbc-41ce-9581-eab3c1549cdb.xlsx\\\",\\\"fileOriginName\\\":\\\"新建 Microsoft Excel 工作表.xlsx\\\",\\\"fileSuffix\\\":\\\"xlsx\\\",\\\"fileSize\\\":\\\"8.51 kB\\\",\\\"remark\\\":\\\"去\\\"}]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664244378308,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:06:18');
INSERT INTO `sys_oper_log` VALUES (163, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664245057591,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:17:37');
INSERT INTO `sys_oper_log` VALUES (164, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/29', '127.0.0.1', '内网IP', '{fileIds=29}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:17:42');
INSERT INTO `sys_oper_log` VALUES (165, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/30', '127.0.0.1', '内网IP', '{fileIds=30}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:18:50');
INSERT INTO `sys_oper_log` VALUES (166, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[{\\\"id\\\":\\\"9993df63-41c6-4532-acf9-204870ea4fa2\\\",\\\"fileId\\\":\\\"/profile/upload/2022/09/27/50a8815a-ba58-43e4-be19-7e83b808e591.xlsx\\\",\\\"fileOriginName\\\":\\\"新建 Microsoft Excel 工作表.xlsx\\\",\\\"fileSuffix\\\":\\\"xlsx\\\",\\\"fileSize\\\":\\\"8.51 kB\\\",\\\"filePath\\\":\\\"/profile/upload/2022/09/27/50a8815a-ba58-43e4-be19-7e83b808e591.xlsx\\\",\\\"remark\\\":\\\"1\\\"}]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664245158024,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":45,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:19:18');
INSERT INTO `sys_oper_log` VALUES (167, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/32', '127.0.0.1', '内网IP', '{fileIds=32}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:20:31');
INSERT INTO `sys_oper_log` VALUES (168, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/31', '127.0.0.1', '内网IP', '{fileIds=31}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:20:33');
INSERT INTO `sys_oper_log` VALUES (169, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664246027571,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":49,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:33:47');
INSERT INTO `sys_oper_log` VALUES (170, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[{\\\"id\\\":\\\"b058b435-9196-4e30-8347-738b3cdc2539\\\",\\\"fileId\\\":\\\"/profile/upload/2022/09/27/46b96ff0-cbfb-4783-8d0f-38913de75c6c.xlsx\\\",\\\"fileOriginName\\\":\\\"新建 Microsoft Excel 工作表.xlsx\\\",\\\"fileSuffix\\\":\\\"xlsx\\\",\\\"fileSize\\\":\\\"8.51 kB\\\",\\\"filePath\\\":\\\"/profile/upload/2022/09/27/46b96ff0-cbfb-4783-8d0f-38913de75c6c.xlsx\\\",\\\"remark\\\":\\\"是\\\"}]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664246041688,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":49,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:34:01');
INSERT INTO `sys_oper_log` VALUES (171, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664246859741,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":58,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:47:39');
INSERT INTO `sys_oper_log` VALUES (172, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/33', '127.0.0.1', '内网IP', '{fileIds=33}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:47:43');
INSERT INTO `sys_oper_log` VALUES (173, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/34', '127.0.0.1', '内网IP', '{fileIds=34}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:48:49');
INSERT INTO `sys_oper_log` VALUES (174, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/35', '127.0.0.1', '内网IP', '{fileIds=35}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:51:05');
INSERT INTO `sys_oper_log` VALUES (175, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/37', '127.0.0.1', '内网IP', '{fileIds=37}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:52:29');
INSERT INTO `sys_oper_log` VALUES (176, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/36', '127.0.0.1', '内网IP', '{fileIds=36}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:52:31');
INSERT INTO `sys_oper_log` VALUES (177, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[{\\\"id\\\":\\\"eb6fb0a8-9827-4b98-b93c-be467872f489\\\",\\\"fileId\\\":\\\"/profile/upload/2022/09/27/c639cf14-aeb0-46ec-aafb-2101e59f094d.docx\\\",\\\"fileOriginName\\\":\\\"新建 Microsoft Word 文档.docx\\\",\\\"fileSuffix\\\":\\\"docx\\\",\\\"fileSize\\\":\\\"0kB\\\",\\\"filePath\\\":\\\"/profile/upload/2022/09/27/c639cf14-aeb0-46ec-aafb-2101e59f094d.docx\\\",\\\"remark\\\":\\\"阿萨\\\"}]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664247196349,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":59,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:53:16');
INSERT INTO `sys_oper_log` VALUES (178, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/38', '127.0.0.1', '内网IP', '{fileIds=38}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:55:00');
INSERT INTO `sys_oper_log` VALUES (179, '帖子管理', 2, 'com.ruoyi.cms.post.controller.CmsPostController.edit()', 'PUT', 1, 'admin', NULL, '/cms/post', '127.0.0.1', '内网IP', '{\"postFiles\":\"[]\",\"types\":[{\"createBy\":\"admin\",\"createTime\":1641223870000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223889000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"postNum\":0}],\"tagIds\":[20,24,25],\"updateTime\":1664247308906,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"tags\":[{\"createBy\":\"admin\",\"createTime\":1641221405000,\"tagId\":20,\"updateBy\":\"\",\"params\":{},\"tagName\":\"啊实打实\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223832000,\"tagId\":24,\"updateBy\":\"\",\"params\":{},\"tagName\":\"阿松大\",\"postNum\":0},{\"createBy\":\"admin\",\"createTime\":1641223838000,\"tagId\":25,\"updateBy\":\"\",\"params\":{},\"tagName\":\"愤愤愤\",\"postNum\":0}],\"postPic\":\"\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"postDesc\":\"置顶帖子\",\"id\":7,\"views\":60,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-27 10:55:08');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-12-10 14:12:14', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-12-10 14:12:14', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-12-10 14:12:14', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2021-12-10 14:12:14', 'admin', '2022-01-20 10:35:26', '普通角色');
INSERT INTO `sys_role` VALUES (3, '内容管理员角色', 'cms', 3, '1', 1, 1, '0', '0', 'admin', '2022-01-04 00:32:39', 'admin', '2022-01-21 10:27:52', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (2, 2028);
INSERT INTO `sys_role_menu` VALUES (2, 2029);
INSERT INTO `sys_role_menu` VALUES (2, 2030);
INSERT INTO `sys_role_menu` VALUES (2, 2031);
INSERT INTO `sys_role_menu` VALUES (2, 2032);
INSERT INTO `sys_role_menu` VALUES (2, 2033);
INSERT INTO `sys_role_menu` VALUES (2, 2034);
INSERT INTO `sys_role_menu` VALUES (2, 2035);
INSERT INTO `sys_role_menu` VALUES (2, 2036);
INSERT INTO `sys_role_menu` VALUES (2, 2037);
INSERT INTO `sys_role_menu` VALUES (2, 2038);
INSERT INTO `sys_role_menu` VALUES (2, 2039);
INSERT INTO `sys_role_menu` VALUES (2, 2040);
INSERT INTO `sys_role_menu` VALUES (2, 2041);
INSERT INTO `sys_role_menu` VALUES (2, 2042);
INSERT INTO `sys_role_menu` VALUES (2, 2043);
INSERT INTO `sys_role_menu` VALUES (2, 2044);
INSERT INTO `sys_role_menu` VALUES (2, 2045);
INSERT INTO `sys_role_menu` VALUES (2, 2046);
INSERT INTO `sys_role_menu` VALUES (2, 2047);
INSERT INTO `sys_role_menu` VALUES (2, 2048);
INSERT INTO `sys_role_menu` VALUES (2, 2049);
INSERT INTO `sys_role_menu` VALUES (2, 2050);
INSERT INTO `sys_role_menu` VALUES (2, 2051);
INSERT INTO `sys_role_menu` VALUES (2, 2052);
INSERT INTO `sys_role_menu` VALUES (2, 2053);
INSERT INTO `sys_role_menu` VALUES (2, 2054);
INSERT INTO `sys_role_menu` VALUES (2, 2055);
INSERT INTO `sys_role_menu` VALUES (2, 2056);
INSERT INTO `sys_role_menu` VALUES (2, 2057);
INSERT INTO `sys_role_menu` VALUES (2, 2058);
INSERT INTO `sys_role_menu` VALUES (2, 2059);
INSERT INTO `sys_role_menu` VALUES (2, 2060);
INSERT INTO `sys_role_menu` VALUES (2, 2061);
INSERT INTO `sys_role_menu` VALUES (2, 2062);
INSERT INTO `sys_role_menu` VALUES (2, 2063);
INSERT INTO `sys_role_menu` VALUES (2, 2064);
INSERT INTO `sys_role_menu` VALUES (2, 2065);
INSERT INTO `sys_role_menu` VALUES (2, 2066);
INSERT INTO `sys_role_menu` VALUES (2, 2067);
INSERT INTO `sys_role_menu` VALUES (3, 4);
INSERT INTO `sys_role_menu` VALUES (3, 2007);
INSERT INTO `sys_role_menu` VALUES (3, 2026);
INSERT INTO `sys_role_menu` VALUES (3, 2027);
INSERT INTO `sys_role_menu` VALUES (3, 2028);
INSERT INTO `sys_role_menu` VALUES (3, 2029);
INSERT INTO `sys_role_menu` VALUES (3, 2030);
INSERT INTO `sys_role_menu` VALUES (3, 2031);
INSERT INTO `sys_role_menu` VALUES (3, 2032);
INSERT INTO `sys_role_menu` VALUES (3, 2033);
INSERT INTO `sys_role_menu` VALUES (3, 2034);
INSERT INTO `sys_role_menu` VALUES (3, 2035);
INSERT INTO `sys_role_menu` VALUES (3, 2036);
INSERT INTO `sys_role_menu` VALUES (3, 2037);
INSERT INTO `sys_role_menu` VALUES (3, 2038);
INSERT INTO `sys_role_menu` VALUES (3, 2039);
INSERT INTO `sys_role_menu` VALUES (3, 2040);
INSERT INTO `sys_role_menu` VALUES (3, 2041);
INSERT INTO `sys_role_menu` VALUES (3, 2042);
INSERT INTO `sys_role_menu` VALUES (3, 2043);
INSERT INTO `sys_role_menu` VALUES (3, 2044);
INSERT INTO `sys_role_menu` VALUES (3, 2045);
INSERT INTO `sys_role_menu` VALUES (3, 2046);
INSERT INTO `sys_role_menu` VALUES (3, 2047);
INSERT INTO `sys_role_menu` VALUES (3, 2048);
INSERT INTO `sys_role_menu` VALUES (3, 2049);
INSERT INTO `sys_role_menu` VALUES (3, 2050);
INSERT INTO `sys_role_menu` VALUES (3, 2051);
INSERT INTO `sys_role_menu` VALUES (3, 2052);
INSERT INTO `sys_role_menu` VALUES (3, 2053);
INSERT INTO `sys_role_menu` VALUES (3, 2054);
INSERT INTO `sys_role_menu` VALUES (3, 2055);
INSERT INTO `sys_role_menu` VALUES (3, 2056);
INSERT INTO `sys_role_menu` VALUES (3, 2057);
INSERT INTO `sys_role_menu` VALUES (3, 2058);
INSERT INTO `sys_role_menu` VALUES (3, 2059);
INSERT INTO `sys_role_menu` VALUES (3, 2060);
INSERT INTO `sys_role_menu` VALUES (3, 2061);
INSERT INTO `sys_role_menu` VALUES (3, 2062);
INSERT INTO `sys_role_menu` VALUES (3, 2063);
INSERT INTO `sys_role_menu` VALUES (3, 2064);
INSERT INTO `sys_role_menu` VALUES (3, 2065);
INSERT INTO `sys_role_menu` VALUES (3, 2066);
INSERT INTO `sys_role_menu` VALUES (3, 2067);
INSERT INTO `sys_role_menu` VALUES (3, 2068);
INSERT INTO `sys_role_menu` VALUES (3, 2069);
INSERT INTO `sys_role_menu` VALUES (3, 2070);
INSERT INTO `sys_role_menu` VALUES (3, 2071);
INSERT INTO `sys_role_menu` VALUES (3, 2072);
INSERT INTO `sys_role_menu` VALUES (3, 2073);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'admin', '00', 'ry@163.com', '15888888888', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-09-27 08:27:54', 'admin', '2021-12-10 14:12:14', '', '2022-09-27 08:27:54', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, '若依', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$824HoRUuGXB3z/.Ei8jVy.LNBinXUc5iZM2alU7zqgWE4RSpFkyuW', '0', '0', '127.0.0.1', '2022-04-22 17:28:20', 'admin', '2021-12-10 14:12:14', 'admin', '2022-07-28 09:57:07', '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
