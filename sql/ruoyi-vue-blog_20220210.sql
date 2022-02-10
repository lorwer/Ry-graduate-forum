/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : ruoyi-vue

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 10/02/2022 15:48:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_blog
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog`;
CREATE TABLE `cms_blog`  (
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '博客信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_blog
-- ----------------------------
INSERT INTO `cms_blog` VALUES (7, 'admin', '2022-01-02 12:25:26', 'admin', '2022-02-10 10:23:04', '阿萨', '1', 0x3C683120636C6173733D22716C2D616C69676E2D63656E746572223EE6B58BE8AF953C2F68313E3C703E312EE58F91E7949FE79A84E59CB0E696B9E998BFE890A8E79A843C2F703E3C703E322EE5958AE6898BE58AA8E998803C2F703E3C703EE998BFE890A8E4BA8BE5AE9EE4B88A3C2F703E, '1', 13, '1');
INSERT INTO `cms_blog` VALUES (10, 'admin', '2022-01-03 02:59:22', '', NULL, '2222', '1', NULL, '0', 0, '0');
INSERT INTO `cms_blog` VALUES (13, 'admin', '2022-01-03 21:37:57', 'admin', '2022-01-13 14:45:08', '强强强强', '1', NULL, '0', 3, '1');
INSERT INTO `cms_blog` VALUES (14, '若依', '2022-01-04 14:31:31', 'admin', '2022-01-13 09:37:24', '若依', '1', 0x3C703E3C62723E3C2F703E, '0', 1, '1');
INSERT INTO `cms_blog` VALUES (16, 'admin', '2022-01-05 09:44:53', 'admin', '2022-02-10 11:01:20', '阿斯顿v奥迪的vvv从vvc从v从 啊高富帅是否公司费格式发给非钢是法国四个非钢', '1', 0x3C68323EE6ADA4E4BA8BE998BFE890A8E79A843C2F68323E3C68333EE5958AE6898BE58AA8E998803C2F68333E3C703E3C656D3EE5958A3C2F656D3E3C656D207374796C653D22636F6C6F723A20726762283233302C20302C2030293B223EE58F91E7949F3C2F656D3E3C656D3EE79A843C2F656D3E3C2F703E3C703E3C733EE5A5A5E8BFAAE58F913C2F733E3C2F703E3C703E3C7370616E207374796C653D226261636B67726F756E642D636F6C6F723A20726762283235352C203235352C2030293B223EE698AFE590A63C2F7370616E3E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C683220636C6173733D22716C2D616C69676E2D63656E746572223E3C7374726F6E673EE5A5A5E8BFAA3C2F7374726F6E673E3C2F68323E3C703E3C753EE5958AE6898BE58AA8E998803C2F753E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C626C6F636B71756F74653E7661722061203D20313B3C2F626C6F636B71756F74653E3C626C6F636B71756F74653E666F7220286C65742069203D20303B206920266C743B31303B20692B2B297B3C2F626C6F636B71756F74653E3C626C6F636B71756F74653E7D3C2F626C6F636B71756F74653E3C70726520636C6173733D22716C2D73796E74617822207370656C6C636865636B3D2266616C7365223E7661722061203D20313B0A666F7220286C65742069203D20303B206920266C743B31303B20692B2B297B0A7D0A3C2F7072653E3C703E3132333C2F703E3C703E3C62723E3C2F703E3C703E3C6120687265663D22687474703A2F2F7777772E62616964752E636F6D222072656C3D226E6F6F70656E6572206E6F726566657272657222207461726765743D225F626C616E6B223EE799BEE5BAA63C2F613E3C2F703E, '0', 77, '1');
INSERT INTO `cms_blog` VALUES (17, 'admin', '2022-01-12 16:06:28', '', NULL, '你好!!!!', '2', 0x3C703EE5928CE982A3E8B7AFE4B88AE79C8BE588B0E4BDA0E7ACACE4B889E696B93C2F703E3C703EE5A4A7E5B888E582853C2F703E3C703EE5958AE6898BE58AA8E998803C2F703E3C703EE5958AE6898BE58AA8E998803C2F703E3C703EE69292E697A63C2F703E, '0', 0, '1');
INSERT INTO `cms_blog` VALUES (18, 'admin', '2022-01-12 16:55:46', 'admin', '2022-02-10 11:16:23', '啊调查啊', '2', 0x3C703EE5958AE5958A3C7374726F6E673EE5958AE588863C2F7374726F6E673E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C6F6C3E3C6C693EE5A5A5E8BFAAE58F913C2F6C693E3C6C693EE5AE89E68A9A3C2F6C693E3C2F6F6C3E3C703E3C7370616E207374796C653D226261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20313032293B223EE5A5A5E8BFAAE58F913C2F7370616E3E3C2F703E3C703E3C7370616E207374796C653D226261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20313032293B223EEFBBBF3C2F7370616E3E3C696D67207372633D222F6465762D6170692F70726F66696C652F75706C6F61642F323032322F30322F31302F38386530356634332D386365322D346266322D626336382D3131666430323136663262342E6A7067223E3C2F703E, '0', 0, '1');
INSERT INTO `cms_blog` VALUES (19, 'admin', '2022-01-12 17:40:54', '', '2022-02-10 11:01:23', '是VSD v阿萨DVD v大是大非v阿斯蒂芬v地方', '1', 0x3C703E31323334353535E79A84E9A38EE6A0BC3C2F703E, '0', 131, '1');

-- ----------------------------
-- Table structure for cms_blog_file
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog_file`;
CREATE TABLE `cms_blog_file`  (
  `file_id` bigint(20) NOT NULL COMMENT '文件ID',
  `blog_id` bigint(20) NOT NULL COMMENT 'blogID',
  PRIMARY KEY (`file_id`, `blog_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'blog文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_blog_file
-- ----------------------------
INSERT INTO `cms_blog_file` VALUES (1, 14);
INSERT INTO `cms_blog_file` VALUES (2, 7);
INSERT INTO `cms_blog_file` VALUES (6, 18);
INSERT INTO `cms_blog_file` VALUES (7, 18);

-- ----------------------------
-- Table structure for cms_blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog_tag`;
CREATE TABLE `cms_blog_tag`  (
  `tag_id` bigint(20) NOT NULL COMMENT '标签ID',
  `blog_id` bigint(20) NOT NULL COMMENT 'blogID',
  PRIMARY KEY (`tag_id`, `blog_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'blog标签关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_blog_tag
-- ----------------------------
INSERT INTO `cms_blog_tag` VALUES (20, 7);
INSERT INTO `cms_blog_tag` VALUES (21, 16);
INSERT INTO `cms_blog_tag` VALUES (24, 7);
INSERT INTO `cms_blog_tag` VALUES (25, 7);
INSERT INTO `cms_blog_tag` VALUES (25, 16);

-- ----------------------------
-- Table structure for cms_blog_type
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog_type`;
CREATE TABLE `cms_blog_type`  (
  `type_id` bigint(20) NOT NULL COMMENT '类型ID',
  `blog_id` bigint(20) NOT NULL COMMENT 'blogID',
  PRIMARY KEY (`type_id`, `blog_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'blog分类关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_blog_type
-- ----------------------------
INSERT INTO `cms_blog_type` VALUES (10, 7);
INSERT INTO `cms_blog_type` VALUES (11, 16);
INSERT INTO `cms_blog_type` VALUES (13, 7);

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
  `blog_id` bigint(20) DEFAULT NULL COMMENT '被评论者id，可以是人、项目、资源',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `user_id` bigint(20) DEFAULT NULL COMMENT '评论者id',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
INSERT INTO `cms_comment` VALUES (1, NULL, NULL, 13, 'v地方', '0', 19, '0', 1, 'admin', '2022-01-28 17:43:08', '', NULL);
INSERT INTO `cms_comment` VALUES (2, 1, 1, NULL, '奥迪发', '1', 19, '0', 1, 'admin', '2022-01-28 17:43:47', '', NULL);
INSERT INTO `cms_comment` VALUES (3, NULL, NULL, 0, '啊吖吖', '0', 16, '0', 1, 'admin', '2022-01-28 18:09:23', '', NULL);

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
  `blog_id` bigint(20) DEFAULT NULL COMMENT '被留言者id，可以是人、项目、资源',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `user_id` bigint(20) DEFAULT NULL COMMENT '留言者id',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '留言表' ROW_FORMAT = Dynamic;

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
INSERT INTO `cms_message` VALUES (27, NULL, NULL, 0, '阿斯顿v阿萨v发到付vDVD发v地方vv阿飞阿斯顿v阿萨v阿萨v阿斯顿v阿斯顿v沙发VS发VS的VS调查C ACVASVASVSAVASFVASFVASFVSAVASVASVASFVSVFVSFVSA', '0', NULL, '0', 1, 'admin', '2022-01-19 17:30:29', '', NULL);
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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分类信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_type
-- ----------------------------
INSERT INTO `cms_type` VALUES (10, 'admin', '2022-01-03 23:31:10', '', NULL, '阿萨的', '');
INSERT INTO `cms_type` VALUES (11, 'admin', '2022-01-03 23:31:20', '', NULL, '人然', '');
INSERT INTO `cms_type` VALUES (13, 'admin', '2022-01-03 23:31:29', '', NULL, '啊啊', '');
INSERT INTO `cms_type` VALUES (14, '若依', '2022-01-04 14:31:23', 'admin', '2022-01-11 11:37:08', '若依', '/profile/upload/2022/01/11/67f2d789-9bf7-45ae-a317-ce68744fba51.jpg');
INSERT INTO `cms_type` VALUES (15, 'admin', '2022-01-03 21:35:44', '', NULL, '33', '');

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
INSERT INTO `gen_table` VALUES (6, 'cms_blog', '博客信息表', NULL, NULL, 'CmsBlog', 'crud', 'com.ruoyi.cms.blog', 'cms', 'blog', '文章管理', 'ning', '0', '/', '{\"parentMenuId\":2007}', 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47', NULL);
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
INSERT INTO `gen_table_column` VALUES (62, '6', 'status', '状态（0暂存 1发布）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'cms_blog_status', 11, 'admin', '2022-01-01 22:38:51', '', '2022-01-01 22:40:47');
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
INSERT INTO `gen_table_column` VALUES (92, '10', 'blog_id', '被留言者id，可以是人、项目、资源', 'bigint(20)', 'Long', 'blogId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-01-15 13:56:24', '', '2022-01-15 13:56:57');
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
INSERT INTO `gen_table_column` VALUES (104, '11', 'blog_id', '被评论者id，可以是人、项目、资源', 'bigint(20)', 'Long', 'blogId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-01-21 09:16:31', '', '2022-01-21 10:13:56');
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
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-UKNLDB61644459668283', 1644474987823, 15000);

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
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1644459670000, -1, 5, 'PAUSED', 'CRON', 1644459668000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1644459675000, -1, 5, 'PAUSED', 'CRON', 1644459668000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1644459680000, -1, 5, 'PAUSED', 'CRON', 1644459668000, 0, NULL, 2, '');

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
INSERT INTO `sys_dict_data` VALUES (104, 0, '暂存', '0', 'cms_blog_status', NULL, 'primary', 'N', '0', 'admin', '2022-01-01 22:37:00', 'admin', '2022-01-01 22:37:35', NULL);
INSERT INTO `sys_dict_data` VALUES (105, 0, '发布', '1', 'cms_blog_status', NULL, 'success', 'N', '0', 'admin', '2022-01-01 22:37:51', '', NULL, NULL);

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
INSERT INTO `sys_dict_type` VALUES (102, '内容状态', 'cms_blog_status', '0', 'admin', '2022-01-01 22:36:30', '', NULL, '暂存或发布');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file_info
-- ----------------------------
INSERT INTO `sys_file_info` VALUES (5, '头像3.jpg', 'jpg', '213.49 kB', '67f2d789-9bf7-45ae-a317-ce68744fba51.jpg', '/profile/upload/2022/01/11/67f2d789-9bf7-45ae-a317-ce68744fba51.jpg', 'N', 'admin', '2022-01-11 11:37:07', '', NULL);
INSERT INTO `sys_file_info` VALUES (7, '1.jpg', 'jpg', '21.64 kB', '88e05f43-8ce2-4bf2-bc68-11fd0216f2b4.jpg', '/profile/upload/2022/02/10/88e05f43-8ce2-4bf2-bc68-11fd0216f2b4.jpg', 'N', 'admin', '2022-02-10 11:16:20', '', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 198 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-26 21:28:03');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-26 21:28:08');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-26 21:31:25');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-26 21:32:38');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-26 22:44:56');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-26 22:45:44');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-26 22:47:07');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-26 22:47:35');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-26 23:03:52');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-26 23:40:45');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-26 23:40:57');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 16:26:32');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 16:33:58');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-27 16:34:24');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 18:01:21');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:29:10');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-27 20:32:47');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:33:25');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:31:50');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-28 13:58:05');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-28 15:30:35');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-28 17:02:46');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-29 08:27:54');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-12-29 10:54:35');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-29 10:54:38');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-29 14:07:01');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-29 16:35:43');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-29 16:35:59');
INSERT INTO `sys_logininfor` VALUES (29, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-30 10:16:38');
INSERT INTO `sys_logininfor` VALUES (30, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-30 12:44:40');
INSERT INTO `sys_logininfor` VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-30 14:53:16');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-30 21:12:12');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-31 12:47:48');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-31 14:34:14');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-31 14:34:22');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-31 21:40:02');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-12-31 22:12:22');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-31 22:12:29');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-01 01:25:14');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-01 19:00:25');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-01 19:00:30');
INSERT INTO `sys_logininfor` VALUES (42, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-01 21:45:53');
INSERT INTO `sys_logininfor` VALUES (43, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 01:37:34');
INSERT INTO `sys_logininfor` VALUES (44, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 10:51:20');
INSERT INTO `sys_logininfor` VALUES (45, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 11:36:59');
INSERT INTO `sys_logininfor` VALUES (46, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 12:25:20');
INSERT INTO `sys_logininfor` VALUES (47, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 14:15:22');
INSERT INTO `sys_logininfor` VALUES (48, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 14:42:42');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-02 14:44:26');
INSERT INTO `sys_logininfor` VALUES (50, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 14:44:30');
INSERT INTO `sys_logininfor` VALUES (51, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-02 18:22:35');
INSERT INTO `sys_logininfor` VALUES (52, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 18:22:41');
INSERT INTO `sys_logininfor` VALUES (53, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-02 20:10:57');
INSERT INTO `sys_logininfor` VALUES (54, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-03 00:38:20');
INSERT INTO `sys_logininfor` VALUES (55, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-03 03:20:36');
INSERT INTO `sys_logininfor` VALUES (56, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-03 03:21:01');
INSERT INTO `sys_logininfor` VALUES (57, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-03 21:24:44');
INSERT INTO `sys_logininfor` VALUES (58, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-03 22:40:51');
INSERT INTO `sys_logininfor` VALUES (59, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 00:10:09');
INSERT INTO `sys_logininfor` VALUES (60, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 00:24:21');
INSERT INTO `sys_logininfor` VALUES (61, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 00:25:23');
INSERT INTO `sys_logininfor` VALUES (62, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-04 00:25:44');
INSERT INTO `sys_logininfor` VALUES (63, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 00:26:07');
INSERT INTO `sys_logininfor` VALUES (64, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 14:18:14');
INSERT INTO `sys_logininfor` VALUES (65, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 14:20:49');
INSERT INTO `sys_logininfor` VALUES (66, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-04 14:30:32');
INSERT INTO `sys_logininfor` VALUES (67, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 14:30:52');
INSERT INTO `sys_logininfor` VALUES (68, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 15:32:22');
INSERT INTO `sys_logininfor` VALUES (69, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 15:37:40');
INSERT INTO `sys_logininfor` VALUES (70, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-04 15:38:01');
INSERT INTO `sys_logininfor` VALUES (71, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 15:38:17');
INSERT INTO `sys_logininfor` VALUES (72, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 16:18:34');
INSERT INTO `sys_logininfor` VALUES (73, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 16:19:16');
INSERT INTO `sys_logininfor` VALUES (74, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-04 16:25:11');
INSERT INTO `sys_logininfor` VALUES (75, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 16:25:31');
INSERT INTO `sys_logininfor` VALUES (76, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 21:44:36');
INSERT INTO `sys_logininfor` VALUES (77, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 21:44:56');
INSERT INTO `sys_logininfor` VALUES (78, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 08:49:40');
INSERT INTO `sys_logininfor` VALUES (79, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 14:06:06');
INSERT INTO `sys_logininfor` VALUES (80, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-05 14:23:35');
INSERT INTO `sys_logininfor` VALUES (81, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 14:23:52');
INSERT INTO `sys_logininfor` VALUES (82, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-05 14:23:59');
INSERT INTO `sys_logininfor` VALUES (83, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 14:24:09');
INSERT INTO `sys_logininfor` VALUES (84, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 15:47:51');
INSERT INTO `sys_logininfor` VALUES (85, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 22:14:19');
INSERT INTO `sys_logininfor` VALUES (86, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 23:01:14');
INSERT INTO `sys_logininfor` VALUES (87, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 23:42:46');
INSERT INTO `sys_logininfor` VALUES (88, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-11 09:26:00');
INSERT INTO `sys_logininfor` VALUES (89, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-11 14:08:25');
INSERT INTO `sys_logininfor` VALUES (90, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-11 17:18:38');
INSERT INTO `sys_logininfor` VALUES (91, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-11 17:18:42');
INSERT INTO `sys_logininfor` VALUES (92, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-12 15:27:39');
INSERT INTO `sys_logininfor` VALUES (93, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-12 15:32:49');
INSERT INTO `sys_logininfor` VALUES (94, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-12 15:32:49');
INSERT INTO `sys_logininfor` VALUES (95, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-12 15:33:11');
INSERT INTO `sys_logininfor` VALUES (96, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-12 15:42:49');
INSERT INTO `sys_logininfor` VALUES (97, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-12 15:49:49');
INSERT INTO `sys_logininfor` VALUES (98, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-12 16:55:43');
INSERT INTO `sys_logininfor` VALUES (99, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-13 16:10:50');
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-14 17:51:55');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-14 18:34:50');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-15 13:00:12');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-15 15:13:18');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-15 16:19:32');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-15 20:49:46');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-15 21:27:07');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-15 22:56:40');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-16 13:21:04');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-16 15:29:39');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-16 15:29:57');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-16 17:26:05');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-16 19:44:42');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-16 20:26:30');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-16 20:26:50');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-16 21:30:01');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-17 08:49:40');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-17 11:18:33');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-17 15:07:06');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-17 17:09:14');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-17 18:11:23');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-18 16:51:04');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-18 17:26:57');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-18 21:13:21');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-19 01:31:08');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 10:39:44');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 11:10:21');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 14:10:56');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-19 14:13:29');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 14:13:50');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 17:09:33');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 18:16:20');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-19 21:56:04');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 09:19:07');
INSERT INTO `sys_logininfor` VALUES (134, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 10:32:45');
INSERT INTO `sys_logininfor` VALUES (135, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-20 10:37:27');
INSERT INTO `sys_logininfor` VALUES (136, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-20 10:37:41');
INSERT INTO `sys_logininfor` VALUES (137, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 10:37:44');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-20 11:19:40');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 11:19:45');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-20 11:19:51');
INSERT INTO `sys_logininfor` VALUES (141, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-20 11:20:01');
INSERT INTO `sys_logininfor` VALUES (142, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 11:20:04');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 14:08:10');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-20 14:08:26');
INSERT INTO `sys_logininfor` VALUES (145, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 14:08:43');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 14:37:52');
INSERT INTO `sys_logininfor` VALUES (147, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-20 14:55:13');
INSERT INTO `sys_logininfor` VALUES (148, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 14:55:33');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 16:42:54');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 17:06:01');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-20 17:06:05');
INSERT INTO `sys_logininfor` VALUES (152, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 17:06:15');
INSERT INTO `sys_logininfor` VALUES (153, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-20 18:06:22');
INSERT INTO `sys_logininfor` VALUES (154, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-21 08:48:32');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-21 08:54:25');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-21 09:22:55');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-21 09:23:01');
INSERT INTO `sys_logininfor` VALUES (158, '若依', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-21 09:23:13');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-21 10:11:56');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-21 10:12:00');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-21 11:43:49');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-21 17:31:56');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-21 18:42:23');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-22 10:21:24');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-22 11:07:53');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-22 17:14:09');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-22 20:18:46');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-22 21:48:56');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-28 11:26:25');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-28 14:40:28');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-28 16:01:00');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-28 16:28:23');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-28 16:28:27');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-28 16:28:36');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-28 16:28:41');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-28 16:31:53');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-28 16:32:07');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-29 08:38:17');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-29 09:17:16');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-07 09:51:19');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-07 14:17:35');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-07 15:44:30');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-07 16:26:28');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-07 17:20:53');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 18:00:30');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-09 08:50:04');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-09 09:50:22');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-09 11:30:27');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-09 16:33:44');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-09 17:29:52');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-09 17:43:44');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-09 18:22:27');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 11:12:44');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-10 11:21:12');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 11:21:34');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-10 11:49:22');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 12:32:10');

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
INSERT INTO `sys_menu` VALUES (2032, '文章管理', 2007, 1, 'blog', 'cms/blog/index', NULL, 1, 0, 'C', '0', '0', 'cms:blog:list', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '文章管理菜单');
INSERT INTO `sys_menu` VALUES (2033, '文章管理查询', 2032, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:query', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '文章管理新增', 2032, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:add', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '文章管理修改', 2032, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:edit', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '文章管理删除', 2032, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:remove', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '文章管理导出', 2032, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:export', '#', 'admin', '2022-01-01 22:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '随笔管理', 2007, 2, 'essay', 'cms/blog/essay', NULL, 1, 0, 'C', '0', '0', 'cms:blog:list', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '随笔管理菜单');
INSERT INTO `sys_menu` VALUES (2039, '随笔管理查询', 2038, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:query', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '随笔管理新增', 2038, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:add', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '随笔管理修改', 2038, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:edit', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '随笔管理删除', 2038, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:remove', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '随笔管理导出', 2038, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:export', '#', 'admin', '2022-01-02 02:48:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '文档管理', 2007, 3, 'doucuments', 'cms/blog/doucuments', NULL, 1, 0, 'C', '0', '1', 'cms:blog:list', '#', 'admin', '2022-01-02 02:58:41', 'admin', '2022-02-08 18:01:09', '文档管理菜单');
INSERT INTO `sys_menu` VALUES (2045, '文档管理查询', 2044, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:query', '#', 'admin', '2022-01-02 02:58:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '文档管理新增', 2044, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:add', '#', 'admin', '2022-01-02 02:58:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '文档管理修改', 2044, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:edit', '#', 'admin', '2022-01-02 02:58:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '文档管理删除', 2044, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:remove', '#', 'admin', '2022-01-02 02:58:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '文档管理导出', 2044, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cms:blog:export', '#', 'admin', '2022-01-02 02:58:41', '', NULL, '');
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
) ENGINE = InnoDB AUTO_INCREMENT = 428 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-26 21:01:47');
INSERT INTO `sys_oper_log` VALUES (2, '登录日志', 9, 'com.ruoyi.web.controller.monitor.SysLogininforController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-26 21:01:52');
INSERT INTO `sys_oper_log` VALUES (3, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2021/12/26/59040fe3-54dc-4e94-ab6e-e0e3ef7fd2b0.jpeg\",\"code\":200}', 0, NULL, '2021-12-26 21:14:12');
INSERT INTO `sys_oper_log` VALUES (4, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2021/12/26/365d164a-8eaa-4d48-8e69-56570e4eeac9.jpeg\",\"code\":200}', 0, NULL, '2021-12-26 21:27:53');
INSERT INTO `sys_oper_log` VALUES (5, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2021/12/26/0a9e64b3-aa4c-4f8f-a542-7c6f111c7cfc.jpeg\",\"code\":200}', 0, NULL, '2021-12-26 23:05:34');
INSERT INTO `sys_oper_log` VALUES (6, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2021/12/26/1a955e76-65d1-4a48-b8f2-ec86371b515b.jpeg\",\"code\":200}', 0, NULL, '2021-12-26 23:14:14');
INSERT INTO `sys_oper_log` VALUES (7, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2021/12/26/4569233f-e942-40c9-9181-1b34cb3d18da.jpeg\",\"code\":200}', 0, NULL, '2021-12-26 23:19:13');
INSERT INTO `sys_oper_log` VALUES (8, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p><img src=\\\"/dev-api/profile/upload/2021/12/26/626baca1-a49f-4bd0-a0a3-0c42ffa668c0.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640499114000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-26 23:53:26');
INSERT INTO `sys_oper_log` VALUES (9, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p><br></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640534006000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-26 23:55:28');
INSERT INTO `sys_oper_log` VALUES (10, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p><img src=\\\"/dev-api/profile/upload/2021/12/27/97fef00e-d4f8-446c-845e-83a6049a6069.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640534128000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 16:55:19');
INSERT INTO `sys_oper_log` VALUES (11, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2025', '127.0.0.1', '内网IP', '{menuId=2025}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 21:32:11');
INSERT INTO `sys_oper_log` VALUES (12, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2024', '127.0.0.1', '内网IP', '{menuId=2024}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 21:32:14');
INSERT INTO `sys_oper_log` VALUES (13, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2023', '127.0.0.1', '内网IP', '{menuId=2023}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 21:32:17');
INSERT INTO `sys_oper_log` VALUES (14, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2022', '127.0.0.1', '内网IP', '{menuId=2022}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 21:32:19');
INSERT INTO `sys_oper_log` VALUES (15, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2021', '127.0.0.1', '内网IP', '{menuId=2021}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 21:32:22');
INSERT INTO `sys_oper_log` VALUES (16, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2020', '127.0.0.1', '内网IP', '{menuId=2020}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 21:32:25');
INSERT INTO `sys_oper_log` VALUES (17, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_file_info', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:02:03');
INSERT INTO `sys_oper_log` VALUES (18, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_file_info', '127.0.0.1', '内网IP', '{tableName=sys_file_info}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:04:49');
INSERT INTO `sys_oper_log` VALUES (19, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/2', '127.0.0.1', '内网IP', '{tableIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:04:55');
INSERT INTO `sys_oper_log` VALUES (20, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_file_info', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:05:00');
INSERT INTO `sys_oper_log` VALUES (21, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"文件类型\",\"remark\":\"是否为私密文件\",\"params\":{},\"dictType\":\"sys_file_info_secret_flag\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:15:19');
INSERT INTO `sys_oper_log` VALUES (22, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"Y\",\"listClass\":\"default\",\"dictSort\":0,\"params\":{},\"dictType\":\"sys_file_info_secret_flag\",\"dictLabel\":\"私密\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:17:50');
INSERT INTO `sys_oper_log` VALUES (23, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"N\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"sys_file_info_secret_flag\",\"dictLabel\":\"公共\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:19:16');
INSERT INTO `sys_oper_log` VALUES (24, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"文件状态\",\"params\":{},\"dictType\":\"sys_file_info_del_flag\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:20:51');
INSERT INTO `sys_oper_log` VALUES (25, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1640614851000,\"updateBy\":\"admin\",\"dictName\":\"文件状态\",\"remark\":\"是否删除\",\"dictId\":101,\"params\":{},\"dictType\":\"sys_file_info_del_flag\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:21:04');
INSERT INTO `sys_oper_log` VALUES (26, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"Y\",\"listClass\":\"default\",\"dictSort\":0,\"params\":{},\"dictType\":\"sys_file_info_del_flag\",\"dictLabel\":\"已删除\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:21:32');
INSERT INTO `sys_oper_log` VALUES (27, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"N\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"sys_file_info_del_flag\",\"dictLabel\":\"正常\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:22:02');
INSERT INTO `sys_oper_log` VALUES (28, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"Y\",\"listClass\":\"warning\",\"dictSort\":0,\"params\":{},\"dictType\":\"sys_file_info_secret_flag\",\"dictLabel\":\"私密\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1640614670000,\"dictCode\":100,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:23:22');
INSERT INTO `sys_oper_log` VALUES (29, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"N\",\"listClass\":\"success\",\"dictSort\":1,\"params\":{},\"dictType\":\"sys_file_info_secret_flag\",\"dictLabel\":\"公共\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1640614756000,\"dictCode\":101,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:23:29');
INSERT INTO `sys_oper_log` VALUES (30, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"Y\",\"listClass\":\"danger\",\"dictSort\":0,\"params\":{},\"dictType\":\"sys_file_info_del_flag\",\"dictLabel\":\"已删除\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1640614892000,\"dictCode\":102,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:23:49');
INSERT INTO `sys_oper_log` VALUES (31, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"N\",\"listClass\":\"success\",\"dictSort\":1,\"params\":{},\"dictType\":\"sys_file_info_del_flag\",\"dictLabel\":\"正常\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1640614921000,\"dictCode\":103,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:23:55');
INSERT INTO `sys_oper_log` VALUES (32, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"FileId\",\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"文件主键id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1640613900000,\"tableId\":3,\"pk\":true,\"columnName\":\"file_id\"},{\"capJavaField\":\"FileOriginName\",\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileOriginName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件名称（上传时候的文件全名）\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1640613900000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"file_origin_name\"},{\"capJavaField\":\"FileSuffix\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileSuffix\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件后缀，例如txt\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1640613900000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"file_suffix\"},{\"capJavaField\":\"FileSizeKb\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileSizeKb\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件大小kb为单位\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-27 22:28:31');
INSERT INTO `sys_oper_log` VALUES (33, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2021-12-27 22:28:34');
INSERT INTO `sys_oper_log` VALUES (34, '文件管理', 5, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.export()', 'POST', 1, 'admin', NULL, '/cms/fileInfo/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2021-12-27 22:39:59');
INSERT INTO `sys_oper_log` VALUES (35, '文件管理', 5, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.export()', 'POST', 1, 'admin', NULL, '/cms/fileInfo/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2021-12-27 22:54:30');
INSERT INTO `sys_oper_log` VALUES (36, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p><br></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640595319000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 10:55:21');
INSERT INTO `sys_oper_log` VALUES (37, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"FileId\",\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"文件主键id\",\"updateTime\":1640615311000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1640613900000,\"tableId\":3,\"pk\":true,\"columnName\":\"file_id\"},{\"capJavaField\":\"FileOriginName\",\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileOriginName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件名称（上传时候的文件全名）\",\"isQuery\":\"1\",\"updateTime\":1640615311000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1640613900000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"file_origin_name\"},{\"capJavaField\":\"FileSuffix\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileSuffix\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件后缀，例如txt\",\"isQuery\":\"1\",\"updateTime\":1640615311000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1640613900000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"file_suffix\"},{\"capJavaField\":\"FileSizeKb\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileSizeKb\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"co', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 11:14:54');
INSERT INTO `sys_oper_log` VALUES (38, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2021-12-29 11:14:57');
INSERT INTO `sys_oper_log` VALUES (39, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p><img src=\\\"/dev-api/profile/upload/2021/12/29/5ca83d0b-c8c7-4d37-877e-7896660620bd.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640746521000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 11:32:37');
INSERT INTO `sys_oper_log` VALUES (40, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_file_info', '127.0.0.1', '内网IP', '{tableName=sys_file_info}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 14:56:40');
INSERT INTO `sys_oper_log` VALUES (41, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_file_info', '127.0.0.1', '内网IP', '{tableName=sys_file_info}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 14:57:19');
INSERT INTO `sys_oper_log` VALUES (42, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/3', '127.0.0.1', '内网IP', '{tableIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 14:58:00');
INSERT INTO `sys_oper_log` VALUES (43, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_file_info', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 14:58:04');
INSERT INTO `sys_oper_log` VALUES (44, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"FileId\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"文件主键id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1640761084000,\"tableId\":4,\"pk\":true,\"columnName\":\"file_id\"},{\"capJavaField\":\"FileOriginName\",\"usableColumn\":false,\"columnId\":32,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileOriginName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1640761084000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"file_origin_name\"},{\"capJavaField\":\"FileSuffix\",\"usableColumn\":false,\"columnId\":33,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileSuffix\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件类型，例如txt\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1640761084000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"file_suffix\"},{\"capJavaField\":\"FileSizeInfo\",\"usableColumn\":false,\"columnId\":34,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileSizeInfo\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件大小\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 14:59:08');
INSERT INTO `sys_oper_log` VALUES (45, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2021-12-29 14:59:11');
INSERT INTO `sys_oper_log` VALUES (46, '字典类型', 3, 'com.ruoyi.web.controller.system.SysDictTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/100', '127.0.0.1', '内网IP', '{dictIds=100}', NULL, 1, '文件类型已分配,不能删除', '2021-12-29 15:36:36');
INSERT INTO `sys_oper_log` VALUES (47, '字典类型', 3, 'com.ruoyi.web.controller.system.SysDictDataController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/data/101', '127.0.0.1', '内网IP', '{dictCodes=101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 15:36:46');
INSERT INTO `sys_oper_log` VALUES (48, '字典类型', 3, 'com.ruoyi.web.controller.system.SysDictDataController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/data/100', '127.0.0.1', '内网IP', '{dictCodes=100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 15:36:48');
INSERT INTO `sys_oper_log` VALUES (49, '字典类型', 3, 'com.ruoyi.web.controller.system.SysDictTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/100', '127.0.0.1', '内网IP', '{dictIds=100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 15:36:54');
INSERT INTO `sys_oper_log` VALUES (50, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/1', '127.0.0.1', '内网IP', '{fileIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 15:50:30');
INSERT INTO `sys_oper_log` VALUES (51, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p><img src=\\\"/dev-api/profile/upload/2021/12/29/7e69e512-f04d-4541-a506-cdd7f3d31325.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640748757000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 16:08:50');
INSERT INTO `sys_oper_log` VALUES (52, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/2', '127.0.0.1', '内网IP', '{fileIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 16:09:32');
INSERT INTO `sys_oper_log` VALUES (53, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2021/12/29/d0e2cc36-ceff-43bd-ad2d-f7ae9d84c64c.jpeg\",\"code\":200}', 0, NULL, '2021-12-29 16:14:24');
INSERT INTO `sys_oper_log` VALUES (54, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p><br></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640765330000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 16:17:45');
INSERT INTO `sys_oper_log` VALUES (55, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p><img src=\\\"/dev-api/profile/upload/2021/12/29/5c7c12a8-426f-46f1-8a03-64562230f340.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640765865000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 16:21:45');
INSERT INTO `sys_oper_log` VALUES (56, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p><img src=\\\"/dev-api/profile/upload/2021/12/29/8ad3cd53-8355-45f1-9f15-709825f5a93e.png\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640766105000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 16:34:20');
INSERT INTO `sys_oper_log` VALUES (57, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/3', '127.0.0.1', '内网IP', '{fileIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 16:35:43');
INSERT INTO `sys_oper_log` VALUES (58, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/5', '127.0.0.1', '内网IP', '{fileIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 17:46:44');
INSERT INTO `sys_oper_log` VALUES (59, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/6', '127.0.0.1', '内网IP', '{fileIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 17:55:55');
INSERT INTO `sys_oper_log` VALUES (60, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/7', '127.0.0.1', '内网IP', '{fileIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-29 18:06:31');
INSERT INTO `sys_oper_log` VALUES (61, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/8', '127.0.0.1', '内网IP', '{fileIds=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-30 16:19:36');
INSERT INTO `sys_oper_log` VALUES (62, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/9', '127.0.0.1', '内网IP', '{fileIds=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-30 17:03:44');
INSERT INTO `sys_oper_log` VALUES (63, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/10', '127.0.0.1', '内网IP', '{fileIds=10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-30 17:04:27');
INSERT INTO `sys_oper_log` VALUES (64, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/11', '127.0.0.1', '内网IP', '{fileIds=11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-30 17:06:21');
INSERT INTO `sys_oper_log` VALUES (65, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/1', '127.0.0.1', '内网IP', '{fileIds=1}', NULL, 1, '', '2021-12-31 14:48:22');
INSERT INTO `sys_oper_log` VALUES (66, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/5', '127.0.0.1', '内网IP', '{fileIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-31 14:48:51');
INSERT INTO `sys_oper_log` VALUES (67, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/1,1', '127.0.0.1', '内网IP', '{fileIds=1,1}', NULL, 1, '', '2021-12-31 14:55:14');
INSERT INTO `sys_oper_log` VALUES (68, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/1,1', '127.0.0.1', '内网IP', '{fileIds=1,1}', NULL, 1, '', '2021-12-31 14:55:54');
INSERT INTO `sys_oper_log` VALUES (69, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/6', '127.0.0.1', '内网IP', '{fileIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-31 14:56:23');
INSERT INTO `sys_oper_log` VALUES (70, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/1,1,1', '127.0.0.1', '内网IP', '{fileIds=1,1,1}', NULL, 1, '', '2021-12-31 14:57:04');
INSERT INTO `sys_oper_log` VALUES (71, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/7', '127.0.0.1', '内网IP', '{fileIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-31 14:57:17');
INSERT INTO `sys_oper_log` VALUES (72, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/1,1,1', '127.0.0.1', '内网IP', '{fileIds=1,1,1}', NULL, 1, '', '2021-12-31 15:00:27');
INSERT INTO `sys_oper_log` VALUES (73, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/1', '127.0.0.1', '内网IP', '{fileIds=1}', NULL, 1, '', '2021-12-31 15:04:13');
INSERT INTO `sys_oper_log` VALUES (74, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/8', '127.0.0.1', '内网IP', '{fileIds=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-31 15:06:46');
INSERT INTO `sys_oper_log` VALUES (75, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/9', '127.0.0.1', '内网IP', '{fileIds=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-31 15:07:12');
INSERT INTO `sys_oper_log` VALUES (76, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/9', '127.0.0.1', '内网IP', '{fileIds=9}', NULL, 1, '', '2021-12-31 15:08:02');
INSERT INTO `sys_oper_log` VALUES (77, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/9', '127.0.0.1', '内网IP', '{fileIds=9}', NULL, 1, '', '2021-12-31 15:08:08');
INSERT INTO `sys_oper_log` VALUES (78, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/9', '127.0.0.1', '内网IP', '{fileIds=9}', NULL, 1, '', '2021-12-31 15:08:47');
INSERT INTO `sys_oper_log` VALUES (79, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/9', '127.0.0.1', '内网IP', '{fileIds=9}', NULL, 1, '', '2021-12-31 15:10:15');
INSERT INTO `sys_oper_log` VALUES (80, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p class=\\\"ql-align-center\\\"><img src=\\\"/dev-api/profile/upload/2021/12/29/8ad3cd53-8355-45f1-9f15-709825f5a93e.png\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640766860000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-31 22:13:35');
INSERT INTO `sys_oper_log` VALUES (81, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/10', '127.0.0.1', '内网IP', '{fileIds=10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 01:48:31');
INSERT INTO `sys_oper_log` VALUES (82, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/88118d86-9c8f-499e-9b88-772cdcf16c1f.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"123\",\"status\":\"0\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-01-01 01:49:28');
INSERT INTO `sys_oper_log` VALUES (83, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/88118d86-9c8f-499e-9b88-772cdcf16c1f.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"123\",\"status\":\"0\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-01-01 01:51:08');
INSERT INTO `sys_oper_log` VALUES (84, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/11', '127.0.0.1', '内网IP', '{fileIds=11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 01:51:24');
INSERT INTO `sys_oper_log` VALUES (85, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/3', '127.0.0.1', '内网IP', '{noticeIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 01:52:03');
INSERT INTO `sys_oper_log` VALUES (86, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/4', '127.0.0.1', '内网IP', '{noticeIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 01:53:50');
INSERT INTO `sys_oper_log` VALUES (87, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/ecd168bf-cf6f-4370-9f0c-b327b6f95428.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"333\",\"status\":\"0\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-01-01 01:58:01');
INSERT INTO `sys_oper_log` VALUES (88, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/5', '127.0.0.1', '内网IP', '{noticeIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 01:59:38');
INSERT INTO `sys_oper_log` VALUES (89, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/12', '127.0.0.1', '内网IP', '{fileIds=12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:00:12');
INSERT INTO `sys_oper_log` VALUES (90, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/2cf86259-7237-4269-9df6-c8a2f92060e0.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"阿达v\",\"status\":\"0\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-01-01 02:03:31');
INSERT INTO `sys_oper_log` VALUES (91, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/6', '127.0.0.1', '内网IP', '{noticeIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:04:27');
INSERT INTO `sys_oper_log` VALUES (92, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/13', '127.0.0.1', '内网IP', '{fileIds=13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:04:40');
INSERT INTO `sys_oper_log` VALUES (93, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/61a07435-3703-49a8-ac33-d60467c8b416.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"33\",\"status\":\"0\"}', NULL, 1, 'nested exception is org.apache.ibatis.executor.ExecutorException: Error getting generated key or setting result to parameter object. Cause: org.apache.ibatis.executor.ExecutorException: No setter found for the keyProperty \'id\' in \'com.ruoyi.system.domain.SysNotice\'.', '2022-01-01 02:13:58');
INSERT INTO `sys_oper_log` VALUES (94, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/7', '127.0.0.1', '内网IP', '{noticeIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:15:45');
INSERT INTO `sys_oper_log` VALUES (95, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/14', '127.0.0.1', '内网IP', '{fileIds=14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:16:00');
INSERT INTO `sys_oper_log` VALUES (96, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/4f6a5734-5445-4947-88c3-6710e727249a.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"111\",\"status\":\"0\"}', NULL, 1, 'nested exception is org.apache.ibatis.executor.ExecutorException: Error getting generated key or setting result to parameter object. Cause: org.apache.ibatis.executor.ExecutorException: No setter found for the keyProperty \'notice_id\' in \'com.ruoyi.system.domain.SysNotice\'.', '2022-01-01 02:16:44');
INSERT INTO `sys_oper_log` VALUES (97, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/8', '127.0.0.1', '内网IP', '{noticeIds=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:18:21');
INSERT INTO `sys_oper_log` VALUES (98, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/15', '127.0.0.1', '内网IP', '{fileIds=15}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:18:28');
INSERT INTO `sys_oper_log` VALUES (99, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/cfba1867-8902-49b0-9a7d-a17bda035be6.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":9,\"noticeTitle\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":9}', 0, NULL, '2022-01-01 02:18:49');
INSERT INTO `sys_oper_log` VALUES (100, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/b20339c5-5eb1-4622-ae16-06ea494281cc.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1640974724000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":9,\"noticeTitle\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:19:51');
INSERT INTO `sys_oper_log` VALUES (101, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/9', '127.0.0.1', '内网IP', '{noticeIds=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:20:28');
INSERT INTO `sys_oper_log` VALUES (102, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/16', '127.0.0.1', '内网IP', '{fileIds=16}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:21:02');
INSERT INTO `sys_oper_log` VALUES (103, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/17', '127.0.0.1', '内网IP', '{fileIds=17}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:21:04');
INSERT INTO `sys_oper_log` VALUES (104, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/341b8e8c-6f6f-46b8-bfd4-6c5482757f72.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":10,\"noticeTitle\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":10}', 0, NULL, '2022-01-01 02:29:04');
INSERT INTO `sys_oper_log` VALUES (105, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/341b8e8c-6f6f-46b8-bfd4-6c5482757f72.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/d1deb7d6-415d-423b-ba95-c3b0374cfffb.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1640975341000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":10,\"noticeTitle\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:30:34');
INSERT INTO `sys_oper_log` VALUES (106, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/10', '127.0.0.1', '内网IP', '{noticeIds=10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:31:38');
INSERT INTO `sys_oper_log` VALUES (107, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/19', '127.0.0.1', '内网IP', '{fileIds=19}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:31:58');
INSERT INTO `sys_oper_log` VALUES (108, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/18', '127.0.0.1', '内网IP', '{fileIds=18}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:32:00');
INSERT INTO `sys_oper_log` VALUES (109, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/3c7d8b09-e6e1-4206-842b-797004571adb.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":11,\"noticeTitle\":\"12\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":11}', 0, NULL, '2022-01-01 02:32:49');
INSERT INTO `sys_oper_log` VALUES (110, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/11', '127.0.0.1', '内网IP', '{noticeIds=11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:34:01');
INSERT INTO `sys_oper_log` VALUES (111, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/20', '127.0.0.1', '内网IP', '{fileIds=20}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:34:09');
INSERT INTO `sys_oper_log` VALUES (112, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/c5939a9e-a85d-4993-a3ef-bc033b38a185.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":12,\"noticeTitle\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":12}', 0, NULL, '2022-01-01 02:34:24');
INSERT INTO `sys_oper_log` VALUES (113, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/1b361c10-067e-4d21-abc8-f798006eb995.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1640975664000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":12,\"noticeTitle\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:34:37');
INSERT INTO `sys_oper_log` VALUES (114, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/12', '127.0.0.1', '内网IP', '{noticeIds=12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:37:32');
INSERT INTO `sys_oper_log` VALUES (115, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/22', '127.0.0.1', '内网IP', '{fileIds=22}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:38:24');
INSERT INTO `sys_oper_log` VALUES (116, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/21', '127.0.0.1', '内网IP', '{fileIds=21}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:38:26');
INSERT INTO `sys_oper_log` VALUES (117, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/3c8fb322-6571-4a94-a218-bd129ed69c02.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/a3c9fb6f-fe82-4fdf-a3ba-a40f1a2a4244.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":13,\"noticeTitle\":\"33\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":13}', 0, NULL, '2022-01-01 02:44:04');
INSERT INTO `sys_oper_log` VALUES (118, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/3c8fb322-6571-4a94-a218-bd129ed69c02.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/a2684938-7247-4078-a6ea-f33d0742ced2.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1640976244000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":13,\"noticeTitle\":\"33\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:44:37');
INSERT INTO `sys_oper_log` VALUES (119, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/13', '127.0.0.1', '内网IP', '{noticeIds=13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:44:51');
INSERT INTO `sys_oper_log` VALUES (120, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/26', '127.0.0.1', '内网IP', '{fileIds=26}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 02:45:35');
INSERT INTO `sys_oper_log` VALUES (121, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p class=\\\"ql-align-center\\\"><img src=\\\"/dev-api/profile/upload/2022/01/01/cb878adb-d9d7-43d0-b609-d6e89f5651b2.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640960015000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 03:10:03');
INSERT INTO `sys_oper_log` VALUES (122, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/4', '127.0.0.1', '内网IP', '{fileIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 03:10:15');
INSERT INTO `sys_oper_log` VALUES (123, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/efa5b69c-13d7-4901-91c3-029ffbdd1087.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":14,\"noticeTitle\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":14}', 0, NULL, '2022-01-01 03:25:04');
INSERT INTO `sys_oper_log` VALUES (124, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/efa5b69c-13d7-4901-91c3-029ffbdd1087.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/e22855f5-738a-422d-b1f3-147ed6ba6ecf.png\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/6f3c1816-c066-4108-8f55-86231a41e5a7.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/9b05b2ec-bfe0-4bf1-b1bd-73e779f5d744.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/f13919a5-8c2e-4272-ab7b-26f3a4aa71f8.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/67d8ac1c-1df7-4b13-813c-8cd46a99510f.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/8ed8cd80-f53c-4682-b747-4a0984bed41a.jpg\\\"><img src=\\\"/dev-api/profile/upload/2022/01/01/38fc0ddf-6ef0-4729-8a82-75470adb4045.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1640978704000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":14,\"noticeTitle\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 03:25:46');
INSERT INTO `sys_oper_log` VALUES (125, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/01/efa5b69c-13d7-4901-91c3-029ffbdd1087.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/e22855f5-738a-422d-b1f3-147ed6ba6ecf.png\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/6f3c1816-c066-4108-8f55-86231a41e5a7.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/9b05b2ec-bfe0-4bf1-b1bd-73e779f5d744.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/f13919a5-8c2e-4272-ab7b-26f3a4aa71f8.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/67d8ac1c-1df7-4b13-813c-8cd46a99510f.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/8ed8cd80-f53c-4682-b747-4a0984bed41a.jpg\\\"><img src=\\\"/dev-api/profile/upload/2022/01/01/38fc0ddf-6ef0-4729-8a82-75470adb4045.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/6ed5870a-b886-4570-be10-a10ad78c8543.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/e8fa010a-11bf-4396-86bf-4cf45e465358.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/b467af86-0c78-41ff-8bd0-06177217bdd8.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/01/30d1f2fa-b1ea-434e-a509-8125682a3a75.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1640978704000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"updateTime\":1640978746000,\"params\":{},\"noticeId\":14,\"noticeTitle\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 03:26:32');
INSERT INTO `sys_oper_log` VALUES (126, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/14', '127.0.0.1', '内网IP', '{noticeIds=14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 03:27:04');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'cms_blog', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:18:10');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ning\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":42,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1641046690000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"CreateBy\",\"usableColumn\":false,\"columnId\":43,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createBy\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"创建者\",\"sort\":2,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641046690000,\"tableId\":5,\"pk\":false,\"columnName\":\"create_by\"},{\"capJavaField\":\"CreateTime\",\"usableColumn\":false,\"columnId\":44,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createTime\",\"htmlType\":\"datetime\",\"edit\":false,\"query\":false,\"columnComment\":\"创建时间\",\"sort\":3,\"list\":false,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641046690000,\"tableId\":5,\"pk\":false,\"columnName\":\"create_time\"},{\"capJavaField\":\"UpdateBy\",\"usableColumn\":false,\"columnId\":45,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"updateBy\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"更新者\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641046690000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"update_by\"},{\"capJavaField\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:20:39');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ning\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":42,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"updateTime\":1641046839000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1641046690000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"CreateBy\",\"usableColumn\":false,\"columnId\":43,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createBy\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"创建者\",\"updateTime\":1641046839000,\"sort\":2,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641046690000,\"tableId\":5,\"pk\":false,\"columnName\":\"create_by\"},{\"capJavaField\":\"CreateTime\",\"usableColumn\":false,\"columnId\":44,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createTime\",\"htmlType\":\"datetime\",\"edit\":false,\"query\":false,\"columnComment\":\"创建时间\",\"updateTime\":1641046839000,\"sort\":3,\"list\":false,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641046690000,\"tableId\":5,\"pk\":false,\"columnName\":\"create_time\"},{\"capJavaField\":\"UpdateBy\",\"usableColumn\":false,\"columnId\":45,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"updateBy\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"更新者\",\"updateTime\":1641046839000,\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:22:58');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ning\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":42,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"updateTime\":1641046978000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1641046690000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"CreateBy\",\"usableColumn\":false,\"columnId\":43,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createBy\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"创建者\",\"updateTime\":1641046978000,\"sort\":2,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641046690000,\"tableId\":5,\"pk\":false,\"columnName\":\"create_by\"},{\"capJavaField\":\"CreateTime\",\"usableColumn\":false,\"columnId\":44,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createTime\",\"htmlType\":\"datetime\",\"edit\":false,\"query\":false,\"columnComment\":\"创建时间\",\"updateTime\":1641046978000,\"sort\":3,\"list\":false,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641046690000,\"tableId\":5,\"pk\":false,\"columnName\":\"create_time\"},{\"capJavaField\":\"UpdateBy\",\"usableColumn\":false,\"columnId\":45,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"updateBy\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"更新者\",\"updateTime\":1641046978000,\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:23:20');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-01 22:23:23');
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"7\",\"menuName\":\"文件管理\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"fileInfo\",\"component\":\"cms/fileInfo/index\",\"children\":[],\"createTime\":1640615393000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2026,\"menuType\":\"C\",\"perms\":\"cms:fileInfo:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:27:56');
INSERT INTO `sys_oper_log` VALUES (133, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"内容状态\",\"remark\":\"暂存或发布\",\"params\":{},\"dictType\":\"cms_blog_status\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:36:30');
INSERT INTO `sys_oper_log` VALUES (134, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":0,\"params\":{},\"dictType\":\"cms_blog_status\",\"dictLabel\":\"暂存\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:37:00');
INSERT INTO `sys_oper_log` VALUES (135, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"listClass\":\"primary\",\"dictSort\":0,\"params\":{},\"dictType\":\"cms_blog_status\",\"dictLabel\":\"暂存\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1641047820000,\"dictCode\":104,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:37:35');
INSERT INTO `sys_oper_log` VALUES (136, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"success\",\"dictSort\":0,\"params\":{},\"dictType\":\"cms_blog_status\",\"dictLabel\":\"发布\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:37:51');
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/5', '127.0.0.1', '内网IP', '{tableIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:38:46');
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'cms_blog', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:38:51');
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ning\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":52,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1641047931000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"CreateBy\",\"usableColumn\":false,\"columnId\":53,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createBy\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"创建者\",\"sort\":2,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641047931000,\"tableId\":6,\"pk\":false,\"columnName\":\"create_by\"},{\"capJavaField\":\"CreateTime\",\"usableColumn\":false,\"columnId\":54,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createTime\",\"htmlType\":\"datetime\",\"edit\":false,\"query\":false,\"columnComment\":\"创建时间\",\"sort\":3,\"list\":false,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641047931000,\"tableId\":6,\"pk\":false,\"columnName\":\"create_time\"},{\"capJavaField\":\"UpdateBy\",\"usableColumn\":false,\"columnId\":55,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"updateBy\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"更新者\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641047931000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"update_by\"},{\"capJavaField\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 22:40:47');
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-01 22:40:50');
INSERT INTO `sys_oper_log` VALUES (141, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"123\",\"content\":\"<p>早点报在新材把这些从</p><p> 支持v在</p><p>支持vzdf </p><p>指定</p>\",\"top\":\"0\",\"createTime\":1641050152697,\"views\":1,\"status\":\"0\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'type\' doesn\'t have a default value\r\n### The error may exist in file [E:\\project\\HBIS\\RuoYi-Vue\\RuoYi-Vue\\ruoyi-cms\\target\\classes\\mapper\\cms\\CmsBlogMapper.xml]\r\n### The error may involve com.ruoyi.cms.blog.mapper.CmsBlogMapper.insertCmsBlog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into cms_blog          ( create_time,                                       title,                          content,             Top,             views,             status )           values ( ?,                                       ?,                          ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'type\' doesn\'t have a default value\n; Field \'type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'type\' doesn\'t have a default value', '2022-01-01 23:15:52');
INSERT INTO `sys_oper_log` VALUES (142, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"top\":\"0\",\"createTime\":1641050641079,\"id\":1,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:24:01');
INSERT INTO `sys_oper_log` VALUES (143, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641051570164,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"0\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:39:30');
INSERT INTO `sys_oper_log` VALUES (144, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641051573106,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"0\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:39:33');
INSERT INTO `sys_oper_log` VALUES (145, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641051578299,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"0\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:39:38');
INSERT INTO `sys_oper_log` VALUES (146, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641051585207,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"0\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:39:45');
INSERT INTO `sys_oper_log` VALUES (147, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641051593378,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"0\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:39:53');
INSERT INTO `sys_oper_log` VALUES (148, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641052132728,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"1\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:48:52');
INSERT INTO `sys_oper_log` VALUES (149, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641052142140,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"1\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:49:02');
INSERT INTO `sys_oper_log` VALUES (150, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641052144909,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"1\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:49:04');
INSERT INTO `sys_oper_log` VALUES (151, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641052147757,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"1\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:49:07');
INSERT INTO `sys_oper_log` VALUES (152, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641052211162,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"0\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:50:11');
INSERT INTO `sys_oper_log` VALUES (153, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641052219146,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"1\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:50:19');
INSERT INTO `sys_oper_log` VALUES (154, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641052225016,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"0\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:50:25');
INSERT INTO `sys_oper_log` VALUES (155, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641052447118,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"0\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-01 23:54:07');
INSERT INTO `sys_oper_log` VALUES (156, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641052928068,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"1\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 00:02:08');
INSERT INTO `sys_oper_log` VALUES (157, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641052936953,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p>\",\"createBy\":\"\",\"top\":\"0\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 00:02:16');
INSERT INTO `sys_oper_log` VALUES (158, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641059005597,\"params\":{},\"title\":\"123\",\"type\":\"1\",\"content\":\"<p>啊手动阀</p><p>奥迪发阿斯弗撒旦发撒旦发</p><p>爱的色放</p><p>啊手动阀</p><p>阿斯弗</p><p>安抚</p><p><img src=\\\"/dev-api/profile/upload/2022/01/02/ec6b1638-1415-412f-ac03-8c40dbf28e33.jpg\\\"></p>\",\"createBy\":\"\",\"top\":\"0\",\"createTime\":1641050641000,\"updateBy\":\"\",\"id\":1,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 01:43:25');
INSERT INTO `sys_oper_log` VALUES (159, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/41', '127.0.0.1', '内网IP', '{fileIds=41}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 01:45:14');
INSERT INTO `sys_oper_log` VALUES (160, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/blog/1', '127.0.0.1', '内网IP', '{ids=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 01:50:24');
INSERT INTO `sys_oper_log` VALUES (161, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"阿斯弗\",\"type\":\"1\",\"content\":\"<p>啊阿斯弗<img src=\\\"/dev-api/profile/upload/2022/01/02/6e751581-7470-46a3-a097-208727ffa43c.jpg\\\"></p>\",\"top\":\"0\",\"createTime\":1641059454321,\"id\":2,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 01:50:54');
INSERT INTO `sys_oper_log` VALUES (162, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/blog/2', '127.0.0.1', '内网IP', '{ids=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 01:52:50');
INSERT INTO `sys_oper_log` VALUES (163, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/42', '127.0.0.1', '内网IP', '{fileIds=42}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 01:54:03');
INSERT INTO `sys_oper_log` VALUES (164, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"阿松大\",\"type\":\"1\",\"content\":\"<p>撒旦<img src=\\\"/dev-api/profile/upload/2022/01/02/1dd7fec8-9115-490f-b9a1-d8c9c81be2db.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641060065244,\"id\":3,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":3}', 0, NULL, '2022-01-02 02:01:05');
INSERT INTO `sys_oper_log` VALUES (165, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641060081138,\"params\":{},\"title\":\"阿松大\",\"type\":\"1\",\"content\":\"<p>撒旦<img src=\\\"/dev-api/profile/upload/2022/01/02/1dd7fec8-9115-490f-b9a1-d8c9c81be2db.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/02/bb51258d-0838-4d9e-96ed-be6801596afc.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641060065000,\"updateBy\":\"\",\"id\":3,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:01:21');
INSERT INTO `sys_oper_log` VALUES (166, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641060103526,\"params\":{},\"title\":\"阿松大\",\"type\":\"1\",\"content\":\"<p>撒旦<img src=\\\"/dev-api/profile/upload/2022/01/02/1dd7fec8-9115-490f-b9a1-d8c9c81be2db.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/02/bb51258d-0838-4d9e-96ed-be6801596afc.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641060065000,\"updateBy\":\"\",\"id\":3,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:01:43');
INSERT INTO `sys_oper_log` VALUES (167, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641060257958,\"params\":{},\"title\":\"阿松大\",\"type\":\"1\",\"content\":\"<p>撒旦<img src=\\\"/dev-api/profile/upload/2022/01/02/1dd7fec8-9115-490f-b9a1-d8c9c81be2db.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/02/bb51258d-0838-4d9e-96ed-be6801596afc.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641060065000,\"updateBy\":\"\",\"id\":3,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:04:17');
INSERT INTO `sys_oper_log` VALUES (168, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641060451133,\"params\":{},\"title\":\"阿松大\",\"type\":\"1\",\"content\":\"<p>撒旦<img src=\\\"/dev-api/profile/upload/2022/01/02/1dd7fec8-9115-490f-b9a1-d8c9c81be2db.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/02/bb51258d-0838-4d9e-96ed-be6801596afc.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641060065000,\"updateBy\":\"\",\"id\":3,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:07:31');
INSERT INTO `sys_oper_log` VALUES (169, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641060488198,\"params\":{},\"title\":\"阿松大\",\"type\":\"1\",\"content\":\"<p>撒旦<img src=\\\"/dev-api/profile/upload/2022/01/02/1dd7fec8-9115-490f-b9a1-d8c9c81be2db.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/02/bb51258d-0838-4d9e-96ed-be6801596afc.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641060065000,\"updateBy\":\"\",\"id\":3,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:08:08');
INSERT INTO `sys_oper_log` VALUES (170, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641060522082,\"params\":{},\"title\":\"阿松大\",\"type\":\"1\",\"content\":\"<p>撒旦<img src=\\\"/dev-api/profile/upload/2022/01/02/1dd7fec8-9115-490f-b9a1-d8c9c81be2db.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/02/bb51258d-0838-4d9e-96ed-be6801596afc.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641060065000,\"updateBy\":\"\",\"id\":3,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:08:42');
INSERT INTO `sys_oper_log` VALUES (171, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>签为<img src=\\\"/dev-api/profile/upload/2022/01/02/f470a1e1-f12a-4573-8e73-1dd714cabc90.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":15,\"noticeTitle\":\"签为\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":15}', 0, NULL, '2022-01-02 02:10:00');
INSERT INTO `sys_oper_log` VALUES (172, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/15', '127.0.0.1', '内网IP', '{noticeIds=15}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:10:07');
INSERT INTO `sys_oper_log` VALUES (173, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641060649838,\"params\":{},\"title\":\"阿松大\",\"type\":\"1\",\"content\":\"<p>撒旦<img src=\\\"/dev-api/profile/upload/2022/01/02/1dd7fec8-9115-490f-b9a1-d8c9c81be2db.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/02/bb51258d-0838-4d9e-96ed-be6801596afc.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641060065000,\"updateBy\":\"\",\"id\":3,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:10:49');
INSERT INTO `sys_oper_log` VALUES (174, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>阿萨<img src=\\\"/dev-api/profile/upload/2022/01/02/d3a5bd0e-398d-45e5-b596-313abcd3a2d4.jpg\\\"></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":16,\"noticeTitle\":\"啊\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":16}', 0, NULL, '2022-01-02 02:12:41');
INSERT INTO `sys_oper_log` VALUES (175, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>阿萨<img src=\\\"/dev-api/profile/upload/2022/01/02/d3a5bd0e-398d-45e5-b596-313abcd3a2d4.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1641060761000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":16,\"noticeTitle\":\"啊\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:12:44');
INSERT INTO `sys_oper_log` VALUES (176, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>阿萨<img src=\\\"/dev-api/profile/upload/2022/01/02/d3a5bd0e-398d-45e5-b596-313abcd3a2d4.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1641060761000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"updateTime\":1641060764000,\"params\":{},\"noticeId\":16,\"noticeTitle\":\"啊\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:15:06');
INSERT INTO `sys_oper_log` VALUES (177, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>阿萨<img src=\\\"/dev-api/profile/upload/2022/01/02/d3a5bd0e-398d-45e5-b596-313abcd3a2d4.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1641060761000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"updateTime\":1641060906000,\"params\":{},\"noticeId\":16,\"noticeTitle\":\"啊\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:15:14');
INSERT INTO `sys_oper_log` VALUES (178, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>阿萨<img src=\\\"/dev-api/profile/upload/2022/01/02/d3a5bd0e-398d-45e5-b596-313abcd3a2d4.jpg\\\"></p>\",\"createBy\":\"admin\",\"createTime\":1641060761000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"updateTime\":1641060914000,\"params\":{},\"noticeId\":16,\"noticeTitle\":\"啊\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:15:21');
INSERT INTO `sys_oper_log` VALUES (179, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/16', '127.0.0.1', '内网IP', '{noticeIds=16}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:15:31');
INSERT INTO `sys_oper_log` VALUES (180, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>阿萨</p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":17,\"noticeTitle\":\"阿松大\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":17}', 0, NULL, '2022-01-02 02:15:40');
INSERT INTO `sys_oper_log` VALUES (181, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/17', '127.0.0.1', '内网IP', '{noticeIds=17}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:15:49');
INSERT INTO `sys_oper_log` VALUES (182, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641061055977,\"params\":{},\"title\":\"阿松大\",\"type\":\"1\",\"content\":\"<p>撒旦<img src=\\\"/dev-api/profile/upload/2022/01/02/1dd7fec8-9115-490f-b9a1-d8c9c81be2db.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/02/bb51258d-0838-4d9e-96ed-be6801596afc.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641060065000,\"updateBy\":\"\",\"id\":3,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:17:35');
INSERT INTO `sys_oper_log` VALUES (183, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641061059558,\"params\":{},\"title\":\"阿松大\",\"type\":\"1\",\"content\":\"<p>撒旦<img src=\\\"/dev-api/profile/upload/2022/01/02/1dd7fec8-9115-490f-b9a1-d8c9c81be2db.jpg\\\"></p><p><img src=\\\"/dev-api/profile/upload/2022/01/02/bb51258d-0838-4d9e-96ed-be6801596afc.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641060065000,\"updateBy\":\"\",\"id\":3,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:17:39');
INSERT INTO `sys_oper_log` VALUES (184, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/blog/3', '127.0.0.1', '内网IP', '{ids=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:17:46');
INSERT INTO `sys_oper_log` VALUES (185, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p>\\t维护内容:</p><p>1.更新啊手动阀</p><p>2.跟i自行车能力</p><p>3.啊手动阀</p><p class=\\\"ql-align-center\\\"><br></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1640977803000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:31:35');
INSERT INTO `sys_oper_log` VALUES (186, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"啊沙发上\",\"type\":\"1\",\"content\":\"<p>阿松大啊</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641062109424,\"id\":4,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":4}', 0, NULL, '2022-01-02 02:35:09');
INSERT INTO `sys_oper_log` VALUES (187, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/blog/4', '127.0.0.1', '内网IP', '{ids=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:36:47');
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-02 02:42:10');
INSERT INTO `sys_oper_log` VALUES (189, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"阿萨\",\"type\":\"2\",\"content\":\"<p>阿萨<img src=\\\"/dev-api/profile/upload/2022/01/02/ce33c662-a7d3-4dc5-b546-72644e89b909.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641063297441,\"id\":5,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":5}', 0, NULL, '2022-01-02 02:54:57');
INSERT INTO `sys_oper_log` VALUES (190, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/blog/5', '127.0.0.1', '内网IP', '{ids=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 02:55:26');
INSERT INTO `sys_oper_log` VALUES (191, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"阿萨\",\"type\":\"3\",\"content\":\"<p>阿萨</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641063747893,\"id\":6,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":6}', 0, NULL, '2022-01-02 03:02:27');
INSERT INTO `sys_oper_log` VALUES (192, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/blog/6', '127.0.0.1', '内网IP', '{ids=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 03:03:10');
INSERT INTO `sys_oper_log` VALUES (193, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526273,\"id\":7,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":7}', 0, NULL, '2022-01-02 12:25:26');
INSERT INTO `sys_oper_log` VALUES (194, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"若依\",\"params\":{},\"userName\":\"若依\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"新增用户\'若依\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2022-01-02 12:42:43');
INSERT INTO `sys_oper_log` VALUES (195, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2000', '127.0.0.1', '内网IP', '{menuId=2000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:24:33');
INSERT INTO `sys_oper_log` VALUES (196, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '若依', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1640499209000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依1\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"若依\",\"userId\":2,\"createBy\":\"admin\",\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:43:15');
INSERT INTO `sys_oper_log` VALUES (197, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '若依', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1640499209000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"若依\",\"userId\":2,\"createBy\":\"admin\",\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:43:42');
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'cms_tag', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:48:25');
INSERT INTO `sys_oper_log` VALUES (199, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ning\",\"columns\":[{\"capJavaField\":\"TagId\",\"usableColumn\":false,\"columnId\":63,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"tagId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"标签ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1641106105000,\"tableId\":7,\"pk\":true,\"columnName\":\"tag_id\"},{\"capJavaField\":\"CreateBy\",\"usableColumn\":false,\"columnId\":64,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createBy\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"创建者\",\"sort\":2,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641106105000,\"tableId\":7,\"pk\":false,\"columnName\":\"create_by\"},{\"capJavaField\":\"CreateTime\",\"usableColumn\":false,\"columnId\":65,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createTime\",\"htmlType\":\"datetime\",\"edit\":false,\"query\":false,\"columnComment\":\"创建时间\",\"sort\":3,\"list\":false,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641106105000,\"tableId\":7,\"pk\":false,\"columnName\":\"create_time\"},{\"capJavaField\":\"UpdateBy\",\"usableColumn\":false,\"columnId\":66,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"updateBy\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"更新者\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641106105000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"update_by\"},{\"c', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:49:54');
INSERT INTO `sys_oper_log` VALUES (200, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-02 14:49:59');
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"5\",\"menuName\":\"标签管理\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"tag\",\"component\":\"cms/tag/index\",\"children\":[],\"createTime\":1641106298000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2050,\"menuType\":\"C\",\"perms\":\"cms:tag:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:52:31');
INSERT INTO `sys_oper_log` VALUES (202, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641106372906,\"tagId\":1,\"params\":{},\"tagName\":\"阿萨\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:52:53');
INSERT INTO `sys_oper_log` VALUES (203, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/1', '127.0.0.1', '内网IP', '{tagIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:52:58');
INSERT INTO `sys_oper_log` VALUES (204, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641106668323,\"tagId\":2,\"params\":{},\"tagName\":\"是的v\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:57:48');
INSERT INTO `sys_oper_log` VALUES (205, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641106681151,\"tagId\":3,\"params\":{},\"tagName\":\"方法\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:58:01');
INSERT INTO `sys_oper_log` VALUES (206, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/2,3', '127.0.0.1', '内网IP', '{tagIds=2,3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 14:58:06');
INSERT INTO `sys_oper_log` VALUES (207, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'cms_type', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 15:01:07');
INSERT INTO `sys_oper_log` VALUES (208, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ning\",\"columns\":[{\"capJavaField\":\"TypeId\",\"usableColumn\":false,\"columnId\":69,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"typeId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"分类ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1641106867000,\"tableId\":8,\"pk\":true,\"columnName\":\"type_id\"},{\"capJavaField\":\"CreateBy\",\"usableColumn\":false,\"columnId\":70,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createBy\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"创建者\",\"sort\":2,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641106867000,\"tableId\":8,\"pk\":false,\"columnName\":\"create_by\"},{\"capJavaField\":\"CreateTime\",\"usableColumn\":false,\"columnId\":71,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createTime\",\"htmlType\":\"datetime\",\"edit\":false,\"query\":false,\"columnComment\":\"创建时间\",\"sort\":3,\"list\":false,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641106867000,\"tableId\":8,\"pk\":false,\"columnName\":\"create_time\"},{\"capJavaField\":\"UpdateBy\",\"usableColumn\":false,\"columnId\":72,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"updateBy\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"更新者\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1641106867000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"update_by\"},', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 15:02:27');
INSERT INTO `sys_oper_log` VALUES (209, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-02 15:02:35');
INSERT INTO `sys_oper_log` VALUES (210, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"分类管理\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"type\",\"component\":\"cms/type/index\",\"children\":[],\"createTime\":1641107063000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2056,\"menuType\":\"C\",\"perms\":\"cms:type:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 15:05:03');
INSERT INTO `sys_oper_log` VALUES (211, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createTime\":1641108599505,\"typeName\":\"啊v\",\"typeId\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 15:29:59');
INSERT INTO `sys_oper_log` VALUES (212, '分类管理', 3, 'com.ruoyi.cms.type.controller.CmsTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/type/1', '127.0.0.1', '内网IP', '{typeIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 15:30:10');
INSERT INTO `sys_oper_log` VALUES (213, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createTime\":1641109886592,\"typePic\":\"/profile/upload/2022/01/02/35986c41-83be-48ea-ac46-5f65d3ecae60.jpg\",\"typeName\":\"额外v\",\"typeId\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 15:51:26');
INSERT INTO `sys_oper_log` VALUES (214, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"额外v\",\"typeId\":2,\"updateTime\":1641109922666,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 15:52:02');
INSERT INTO `sys_oper_log` VALUES (215, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/48', '127.0.0.1', '内网IP', '{fileIds=48}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 15:52:26');
INSERT INTO `sys_oper_log` VALUES (216, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/af1f9911-cb83-40d0-9107-ad490fd7c182.jpg,/profile/upload/2022/01/02/264d603d-936c-4d5b-94c8-98417878b46d.jpg\",\"typeName\":\"额外v\",\"typeId\":2,\"updateTime\":1641109968770,\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'type_pic\' at row 1\r\n### The error may exist in file [E:\\project\\HBIS\\RuoYi-Vue\\RuoYi-Vue\\ruoyi-cms\\target\\classes\\mapper\\cms\\CmsTypeMapper.xml]\r\n### The error may involve com.ruoyi.cms.type.mapper.CmsTypeMapper.updateCmsType-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update cms_type          SET create_by = ?,             create_time = ?,             update_by = ?,             update_time = ?,             type_name = ?,             type_pic = ?          where type_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'type_pic\' at row 1\n; Data truncation: Data too long for column \'type_pic\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'type_pic\' at row 1', '2022-01-02 15:52:48');
INSERT INTO `sys_oper_log` VALUES (217, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/49', '127.0.0.1', '内网IP', '{fileIds=49}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 15:53:00');
INSERT INTO `sys_oper_log` VALUES (218, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/50', '127.0.0.1', '内网IP', '{fileIds=50}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 15:53:02');
INSERT INTO `sys_oper_log` VALUES (219, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/0874b947-4eaa-4c66-9457-093e0c20f8d7.jpg\",\"typeName\":\"额外v\",\"typeId\":2,\"updateTime\":1641110735959,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 16:05:35');
INSERT INTO `sys_oper_log` VALUES (220, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"额外v\",\"typeId\":2,\"updateTime\":1641110971222,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 16:09:31');
INSERT INTO `sys_oper_log` VALUES (221, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/b3f37398-7043-4164-a7dc-080e1af4da36.png\",\"typeName\":\"额外v\",\"typeId\":2,\"updateTime\":1641110978864,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 16:09:38');
INSERT INTO `sys_oper_log` VALUES (222, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/52', '127.0.0.1', '内网IP', '{fileIds=52}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 16:09:48');
INSERT INTO `sys_oper_log` VALUES (223, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/51', '127.0.0.1', '内网IP', '{fileIds=51}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 16:09:50');
INSERT INTO `sys_oper_log` VALUES (224, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"额外v\",\"typeId\":2,\"updateTime\":1641110996220,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 16:09:56');
INSERT INTO `sys_oper_log` VALUES (225, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createTime\":1641111441351,\"typeName\":\"阿萨\",\"typeId\":3,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 16:17:21');
INSERT INTO `sys_oper_log` VALUES (226, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641111441000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/84cd4fd4-0015-4fd4-84af-c71a5a2b534f.jpg\",\"typeName\":\"阿萨\",\"typeId\":3,\"updateTime\":1641112724502,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 16:38:44');
INSERT INTO `sys_oper_log` VALUES (227, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/54', '127.0.0.1', '内网IP', '{fileIds=54}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:00:03');
INSERT INTO `sys_oper_log` VALUES (228, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/53', '127.0.0.1', '内网IP', '{fileIds=53}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:00:06');
INSERT INTO `sys_oper_log` VALUES (229, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641111441000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨\",\"typeId\":3,\"updateTime\":1641114027698,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:00:27');
INSERT INTO `sys_oper_log` VALUES (230, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641111441000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/0bb4f143-ea8e-4c86-96da-a8414bd3577c.jpg\",\"typeName\":\"阿萨\",\"typeId\":3,\"updateTime\":1641115777603,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:29:37');
INSERT INTO `sys_oper_log` VALUES (231, '分类管理', 3, 'com.ruoyi.cms.type.controller.CmsTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/type/3', '127.0.0.1', '内网IP', '{typeIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:29:45');
INSERT INTO `sys_oper_log` VALUES (232, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/323e6df6-5899-4029-b3d2-858d38a8fd91.jpg\",\"typeName\":\"额外v\",\"typeId\":2,\"updateTime\":1641116097376,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:34:57');
INSERT INTO `sys_oper_log` VALUES (233, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/323e6df6-5899-4029-b3d2-858d38a8fd91.jpg\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641116107833,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:35:07');
INSERT INTO `sys_oper_log` VALUES (234, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641116197927,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:36:37');
INSERT INTO `sys_oper_log` VALUES (235, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/ea14a0b7-0e48-4827-b01e-c2a70ac3b597.jpg\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641116221214,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:37:01');
INSERT INTO `sys_oper_log` VALUES (236, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/ea14a0b7-0e48-4827-b01e-c2a70ac3b597.jpg\",\"typeName\":\"额外1\",\"typeId\":2,\"updateTime\":1641116236058,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:37:16');
INSERT INTO `sys_oper_log` VALUES (237, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"额外1\",\"typeId\":2,\"updateTime\":1641116295329,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:38:15');
INSERT INTO `sys_oper_log` VALUES (238, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/c80ddcf0-ad80-46dc-a6bd-f61933c2d770.png\",\"typeName\":\"额外1\",\"typeId\":2,\"updateTime\":1641116326234,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:38:46');
INSERT INTO `sys_oper_log` VALUES (239, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/c80ddcf0-ad80-46dc-a6bd-f61933c2d770.png\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641116378163,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:39:46');
INSERT INTO `sys_oper_log` VALUES (240, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641116441807,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:40:41');
INSERT INTO `sys_oper_log` VALUES (241, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/eda8b4be-25c8-41b4-bf80-df71f9c4420b.jpg\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641117011466,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:50:11');
INSERT INTO `sys_oper_log` VALUES (242, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/eda8b4be-25c8-41b4-bf80-df71f9c4420b.jpg\",\"typeName\":\"额外1\",\"typeId\":2,\"updateTime\":1641117031868,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:50:31');
INSERT INTO `sys_oper_log` VALUES (243, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/09fee3ba-f5a9-46bc-9b11-56af0f79e880.png\",\"typeName\":\"额外1\",\"typeId\":2,\"updateTime\":1641117049236,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:50:49');
INSERT INTO `sys_oper_log` VALUES (244, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641117072374,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 17:51:12');
INSERT INTO `sys_oper_log` VALUES (245, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641118970180,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 18:22:50');
INSERT INTO `sys_oper_log` VALUES (246, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/61', '127.0.0.1', '内网IP', '{fileIds=61}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 18:27:32');
INSERT INTO `sys_oper_log` VALUES (247, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/62', '127.0.0.1', '内网IP', '{fileIds=62}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 18:29:31');
INSERT INTO `sys_oper_log` VALUES (248, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/531c8537-9755-4269-9041-f52635f5d103.jpg\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641119389413,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 18:29:49');
INSERT INTO `sys_oper_log` VALUES (249, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/a81243f0-b01f-4cf3-b14d-84e16db84ab9.png\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641119421119,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 18:30:21');
INSERT INTO `sys_oper_log` VALUES (250, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641119443266,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 18:30:43');
INSERT INTO `sys_oper_log` VALUES (251, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/1fe1e698-9371-41cb-9106-f6453ac329a7.jpg\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641119575318,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 18:32:55');
INSERT INTO `sys_oper_log` VALUES (252, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641109887000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"额外\",\"typeId\":2,\"updateTime\":1641119589599,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 18:33:09');
INSERT INTO `sys_oper_log` VALUES (253, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createTime\":1641130777210,\"typeName\":\"111\",\"typeId\":4,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 21:39:37');
INSERT INTO `sys_oper_log` VALUES (254, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createTime\":1641130782653,\"typeName\":\"阿松大\",\"typeId\":5,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 21:39:42');
INSERT INTO `sys_oper_log` VALUES (255, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641130790754,\"tagId\":4,\"params\":{},\"tagName\":\"阿达v\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 21:39:50');
INSERT INTO `sys_oper_log` VALUES (256, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641130794902,\"tagId\":5,\"params\":{},\"tagName\":\"安抚发布\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 21:39:54');
INSERT INTO `sys_oper_log` VALUES (257, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132722467,\"tagId\":6,\"params\":{},\"tagName\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:02');
INSERT INTO `sys_oper_log` VALUES (258, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132725100,\"tagId\":7,\"params\":{},\"tagName\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:05');
INSERT INTO `sys_oper_log` VALUES (259, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132727499,\"tagId\":8,\"params\":{},\"tagName\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:07');
INSERT INTO `sys_oper_log` VALUES (260, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132731772,\"tagId\":9,\"params\":{},\"tagName\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:11');
INSERT INTO `sys_oper_log` VALUES (261, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132734656,\"tagId\":10,\"params\":{},\"tagName\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:14');
INSERT INTO `sys_oper_log` VALUES (262, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132737216,\"tagId\":11,\"params\":{},\"tagName\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:17');
INSERT INTO `sys_oper_log` VALUES (263, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132740247,\"tagId\":12,\"params\":{},\"tagName\":\"打副本\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:20');
INSERT INTO `sys_oper_log` VALUES (264, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132743446,\"tagId\":13,\"params\":{},\"tagName\":\"啊打发把对方\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:23');
INSERT INTO `sys_oper_log` VALUES (265, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132757391,\"tagId\":14,\"params\":{},\"tagName\":\"啊的发表\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:37');
INSERT INTO `sys_oper_log` VALUES (266, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132760183,\"tagId\":15,\"params\":{},\"tagName\":\"奥迪\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:40');
INSERT INTO `sys_oper_log` VALUES (267, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132762506,\"tagId\":16,\"params\":{},\"tagName\":\"奥迪发\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:42');
INSERT INTO `sys_oper_log` VALUES (268, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132764735,\"tagId\":17,\"params\":{},\"tagName\":\"奥迪发\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:44');
INSERT INTO `sys_oper_log` VALUES (269, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132767610,\"tagId\":18,\"params\":{},\"tagName\":\"噶发\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:47');
INSERT INTO `sys_oper_log` VALUES (270, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createTime\":1641132771080,\"tagId\":19,\"params\":{},\"tagName\":\"给是法国是法国是法国\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:12:51');
INSERT INTO `sys_oper_log` VALUES (271, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createTime\":1641133902513,\"typeName\":\"阿萨\",\"typeId\":6,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:31:42');
INSERT INTO `sys_oper_log` VALUES (272, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641133903000,\"updateBy\":\"\",\"typePic\":\"/profile/upload/2022/01/02/009105f8-5f23-45cc-87ac-8df44cce3737.jpg\",\"typeName\":\"阿萨\",\"typeId\":6,\"updateTime\":1641133937506,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:32:17');
INSERT INTO `sys_oper_log` VALUES (273, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641133903000,\"updateBy\":\"\",\"typePic\":\"\",\"typeName\":\"阿萨\",\"typeId\":6,\"updateTime\":1641133953744,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-02 22:32:33');
INSERT INTO `sys_oper_log` VALUES (274, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641142471676,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"id\":7,\"views\":0,\"status\":\"1\"}', NULL, 1, '', '2022-01-03 00:54:31');
INSERT INTO `sys_oper_log` VALUES (275, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641142473917,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"id\":7,\"views\":0,\"status\":\"0\"}', NULL, 1, '', '2022-01-03 00:54:33');
INSERT INTO `sys_oper_log` VALUES (276, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641142567345,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"id\":7,\"views\":0,\"status\":\"0\"}', NULL, 1, '', '2022-01-03 00:56:07');
INSERT INTO `sys_oper_log` VALUES (277, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641142615520,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"id\":7,\"views\":0,\"status\":\"0\"}', NULL, 1, '', '2022-01-03 00:57:17');
INSERT INTO `sys_oper_log` VALUES (278, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641142964425,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"id\":7,\"views\":0,\"status\":\"0\"}', NULL, 1, '', '2022-01-03 01:02:53');
INSERT INTO `sys_oper_log` VALUES (279, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641143004352,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"id\":7,\"views\":0,\"status\":\"0\"}', NULL, 1, '', '2022-01-03 01:03:34');
INSERT INTO `sys_oper_log` VALUES (280, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"updateTime\":1641143151396,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 01:05:53');
INSERT INTO `sys_oper_log` VALUES (281, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[4],\"updateTime\":1641146515694,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 02:01:55');
INSERT INTO `sys_oper_log` VALUES (282, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[4,5],\"updateTime\":1641146938737,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 02:08:58');
INSERT INTO `sys_oper_log` VALUES (283, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[5],\"updateTime\":1641146944108,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 02:09:04');
INSERT INTO `sys_oper_log` VALUES (284, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[5],\"updateTime\":1641146952012,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2,4],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 02:09:12');
INSERT INTO `sys_oper_log` VALUES (285, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[12,13],\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p> 的的的</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641147027126,\"typeIds\":[6],\"id\":8,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":8}', 0, NULL, '2022-01-03 02:10:27');
INSERT INTO `sys_oper_log` VALUES (286, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/blog/8', '127.0.0.1', '内网IP', '{ids=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 02:10:41');
INSERT INTO `sys_oper_log` VALUES (287, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[5,4],\"updateTime\":1641147987232,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2,4],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 02:26:27');
INSERT INTO `sys_oper_log` VALUES (288, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[4,5,12],\"updateTime\":1641149015774,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2,4],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 02:43:35');
INSERT INTO `sys_oper_log` VALUES (289, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"111\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641149954825,\"typeIds\":[],\"id\":9,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":9}', 0, NULL, '2022-01-03 02:59:14');
INSERT INTO `sys_oper_log` VALUES (290, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"2222\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641149961784,\"typeIds\":[],\"id\":10,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":10}', 0, NULL, '2022-01-03 02:59:21');
INSERT INTO `sys_oper_log` VALUES (291, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[4,5,12],\"updateTime\":1641151282522,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2,4],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:21:22');
INSERT INTO `sys_oper_log` VALUES (292, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[4,5,12],\"updateTime\":1641151290419,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2,4],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:21:30');
INSERT INTO `sys_oper_log` VALUES (293, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"的\",\"type\":\"1\",\"content\":\"<p><br></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641151300898,\"typeIds\":[],\"id\":11,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":11}', 0, NULL, '2022-01-03 03:21:40');
INSERT INTO `sys_oper_log` VALUES (294, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[4,5,12],\"updateTime\":1641151324754,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2,4],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:22:04');
INSERT INTO `sys_oper_log` VALUES (295, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createTime\":1641151537151,\"typeName\":\"1\",\"typeId\":7,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:25:37');
INSERT INTO `sys_oper_log` VALUES (296, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[4,5,12],\"updateTime\":1641152257748,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2,4],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:37:37');
INSERT INTO `sys_oper_log` VALUES (297, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641152262642,\"params\":{},\"title\":\"111\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641149955000,\"updateBy\":\"\",\"typeIds\":[],\"id\":9,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:37:42');
INSERT INTO `sys_oper_log` VALUES (298, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[4,5,12],\"updateTime\":1641152278831,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"\",\"typeIds\":[2,4],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:37:58');
INSERT INTO `sys_oper_log` VALUES (299, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641152295015,\"params\":{},\"title\":\"111\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641149955000,\"updateBy\":\"\",\"typeIds\":[],\"id\":9,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:38:15');
INSERT INTO `sys_oper_log` VALUES (300, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641152395715,\"params\":{},\"title\":\"111\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641149955000,\"updateBy\":\"\",\"typeIds\":[],\"id\":9,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:39:55');
INSERT INTO `sys_oper_log` VALUES (301, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641152404128,\"params\":{},\"title\":\"111\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641149955000,\"updateBy\":\"\",\"typeIds\":[],\"id\":9,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:40:04');
INSERT INTO `sys_oper_log` VALUES (302, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createTime\":1641152621125,\"typeName\":\"去 \",\"typeId\":8,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:43:41');
INSERT INTO `sys_oper_log` VALUES (303, '分类管理', 3, 'com.ruoyi.cms.type.controller.CmsTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/type/8', '127.0.0.1', '内网IP', '{typeIds=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:43:44');
INSERT INTO `sys_oper_log` VALUES (304, '分类管理', 3, 'com.ruoyi.cms.type.controller.CmsTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/type/7', '127.0.0.1', '内网IP', '{typeIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 03:43:48');
INSERT INTO `sys_oper_log` VALUES (305, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"111\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641216333613,\"typeIds\":[],\"id\":12,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":12}', 0, NULL, '2022-01-03 21:25:33');
INSERT INTO `sys_oper_log` VALUES (306, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/blog/12', '127.0.0.1', '内网IP', '{ids=12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 21:26:06');
INSERT INTO `sys_oper_log` VALUES (307, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/blog/11', '127.0.0.1', '内网IP', '{ids=11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 21:37:44');
INSERT INTO `sys_oper_log` VALUES (308, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[19],\"params\":{},\"title\":\"强强强强\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641217077100,\"typeIds\":[2],\"id\":13,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":13}', 0, NULL, '2022-01-03 21:37:57');
INSERT INTO `sys_oper_log` VALUES (309, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createTime\":1641217284585,\"typeName\":\"1\",\"typeId\":9,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 21:41:32');
INSERT INTO `sys_oper_log` VALUES (310, '分类管理', 3, 'com.ruoyi.cms.type.controller.CmsTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/type/9', '127.0.0.1', '内网IP', '{typeIds=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 21:41:40');
INSERT INTO `sys_oper_log` VALUES (311, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[19],\"updateTime\":1641221117348,\"params\":{},\"title\":\"强强强强\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641217077000,\"updateBy\":\"admin\",\"typeIds\":[2,5,4],\"id\":13,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:45:17');
INSERT INTO `sys_oper_log` VALUES (312, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[19],\"updateTime\":1641221131986,\"params\":{},\"title\":\"强强强强\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641217077000,\"updateBy\":\"admin\",\"typeIds\":[2,5],\"id\":13,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:45:32');
INSERT INTO `sys_oper_log` VALUES (313, '分类管理', 3, 'com.ruoyi.cms.type.controller.CmsTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/type/4', '127.0.0.1', '内网IP', '{typeIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:45:48');
INSERT INTO `sys_oper_log` VALUES (314, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/5', '127.0.0.1', '内网IP', '{tagIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:48:58');
INSERT INTO `sys_oper_log` VALUES (315, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/4', '127.0.0.1', '内网IP', '{tagIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:49:22');
INSERT INTO `sys_oper_log` VALUES (316, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/6', '127.0.0.1', '内网IP', '{tagIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:49:48');
INSERT INTO `sys_oper_log` VALUES (317, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/7', '127.0.0.1', '内网IP', '{tagIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:49:51');
INSERT INTO `sys_oper_log` VALUES (318, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1641221405200,\"tagId\":20,\"params\":{},\"tagName\":\"啊实打实\",\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:50:05');
INSERT INTO `sys_oper_log` VALUES (319, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/10', '127.0.0.1', '内网IP', '{tagIds=10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:50:19');
INSERT INTO `sys_oper_log` VALUES (320, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1641221423411,\"tagId\":21,\"params\":{},\"tagName\":\"打\",\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:50:23');
INSERT INTO `sys_oper_log` VALUES (321, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/11', '127.0.0.1', '内网IP', '{tagIds=11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:50:32');
INSERT INTO `sys_oper_log` VALUES (322, '标签管理', 2, 'com.ruoyi.cms.tag.controller.CmsTagController.edit()', 'PUT', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1641132732000,\"tagId\":9,\"updateBy\":\"admin\",\"updateTime\":1641221436580,\"params\":{},\"tagName\":\"啊\",\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:50:36');
INSERT INTO `sys_oper_log` VALUES (323, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1641221443071,\"tagId\":22,\"params\":{},\"tagName\":\"问问\",\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:50:43');
INSERT INTO `sys_oper_log` VALUES (324, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/8', '127.0.0.1', '内网IP', '{tagIds=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:50:55');
INSERT INTO `sys_oper_log` VALUES (325, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/9', '127.0.0.1', '内网IP', '{tagIds=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 22:50:57');
INSERT INTO `sys_oper_log` VALUES (326, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"typeName\":\"阿萨\",\"params\":{},\"blogNum\":0}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-01-03 23:19:07');
INSERT INTO `sys_oper_log` VALUES (327, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"typeName\":\"阿萨\",\"params\":{},\"blogNum\":0}', NULL, 1, '分类名称已存在', '2022-01-03 23:29:25');
INSERT INTO `sys_oper_log` VALUES (328, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"typeName\":\"阿萨\",\"params\":{},\"blogNum\":0}', NULL, 1, '分类名称已存在', '2022-01-03 23:29:29');
INSERT INTO `sys_oper_log` VALUES (329, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"params\":{},\"tagName\":\"给是法国是法国是法国\",\"blogNum\":0}', NULL, 1, '标签名称已存在', '2022-01-03 23:29:54');
INSERT INTO `sys_oper_log` VALUES (330, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/19,18,17,16,15,14,13', '127.0.0.1', '内网IP', '{tagIds=19,18,17,16,15,14,13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:30:16');
INSERT INTO `sys_oper_log` VALUES (331, '标签管理', 3, 'com.ruoyi.cms.tag.controller.CmsTagController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/tag/12', '127.0.0.1', '内网IP', '{tagIds=12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:30:24');
INSERT INTO `sys_oper_log` VALUES (332, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1641223828486,\"tagId\":23,\"params\":{},\"tagName\":\"阿斯弗\",\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:30:28');
INSERT INTO `sys_oper_log` VALUES (333, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1641223831510,\"tagId\":24,\"params\":{},\"tagName\":\"阿松大\",\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:30:31');
INSERT INTO `sys_oper_log` VALUES (334, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"params\":{},\"tagName\":\"阿松大\",\"blogNum\":0}', NULL, 1, '标签名称已存在', '2022-01-03 23:30:34');
INSERT INTO `sys_oper_log` VALUES (335, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, 'admin', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1641223838402,\"tagId\":25,\"params\":{},\"tagName\":\"愤愤愤\",\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:30:38');
INSERT INTO `sys_oper_log` VALUES (336, '分类管理', 3, 'com.ruoyi.cms.type.controller.CmsTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/type/6,5,2', '127.0.0.1', '内网IP', '{typeIds=6,5,2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:30:49');
INSERT INTO `sys_oper_log` VALUES (337, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1641223869620,\"typeName\":\"阿萨的\",\"typeId\":10,\"params\":{},\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:31:09');
INSERT INTO `sys_oper_log` VALUES (338, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"typeName\":\"阿萨的\",\"params\":{},\"blogNum\":0}', NULL, 1, '分类名称已存在', '2022-01-03 23:31:12');
INSERT INTO `sys_oper_log` VALUES (339, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1641223879730,\"typeName\":\"人然\",\"typeId\":11,\"params\":{},\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:31:19');
INSERT INTO `sys_oper_log` VALUES (340, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1641223884715,\"typeName\":\"爱人果然\",\"typeId\":12,\"params\":{},\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:31:24');
INSERT INTO `sys_oper_log` VALUES (341, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1641223888573,\"typeName\":\"啊啊\",\"typeId\":13,\"params\":{},\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:31:28');
INSERT INTO `sys_oper_log` VALUES (342, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[25,24],\"updateTime\":1641223907163,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[13,11,10],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:31:47');
INSERT INTO `sys_oper_log` VALUES (343, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[24,25],\"updateTime\":1641223914160,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:31:54');
INSERT INTO `sys_oper_log` VALUES (344, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[24,25,20],\"updateTime\":1641223921771,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:32:01');
INSERT INTO `sys_oper_log` VALUES (345, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/blog/9', '127.0.0.1', '内网IP', '{ids=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-03 23:37:50');
INSERT INTO `sys_oper_log` VALUES (346, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"typeName\":\"啊啊\",\"params\":{},\"blogNum\":0}', NULL, 1, '分类名称已存在', '2022-01-04 00:24:43');
INSERT INTO `sys_oper_log` VALUES (347, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"cms\",\"roleName\":\"内容管理角色\",\"deptIds\":[],\"menuIds\":[2007,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2050,2051,2052,2053,2054,2055,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 00:32:39');
INSERT INTO `sys_oper_log` VALUES (348, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1641227167000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"若依\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2,3],\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 00:33:14');
INSERT INTO `sys_oper_log` VALUES (349, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"},{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cms\",\"roleName\":\"内容管理角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1641227167000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"若依\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 00:48:50');
INSERT INTO `sys_oper_log` VALUES (350, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2007,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2050,2051,2052,2053,2054,2055,2026,2027,2028,2029,2030,2031,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 00:49:09');
INSERT INTO `sys_oper_log` VALUES (351, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, '若依', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"若依\",\"createTime\":1641277882837,\"typeName\":\"若依\",\"typeId\":14,\"params\":{},\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 14:31:22');
INSERT INTO `sys_oper_log` VALUES (352, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, '若依', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"若依\",\"type\":\"1\",\"createBy\":\"若依\",\"top\":\"0\",\"createTime\":1641277891139,\"typeIds\":[],\"id\":14,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":14}', 0, NULL, '2022-01-04 14:31:31');
INSERT INTO `sys_oper_log` VALUES (353, '标签管理', 1, 'com.ruoyi.cms.tag.controller.CmsTagController.add()', 'POST', 1, '若依', NULL, '/cms/tag', '127.0.0.1', '内网IP', '{\"createBy\":\"若依\",\"createTime\":1641278905609,\"tagId\":26,\"params\":{},\"tagName\":\"若依\",\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 14:48:25');
INSERT INTO `sys_oper_log` VALUES (354, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, '若依', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"11\",\"type\":\"1\",\"createBy\":\"若依\",\"top\":\"0\",\"createTime\":1641279043005,\"typeIds\":[],\"id\":15,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":15}', 0, NULL, '2022-01-04 14:50:43');
INSERT INTO `sys_oper_log` VALUES (355, '文章管理', 3, 'com.ruoyi.cms.blog.controller.CmsBlogController.remove()', 'DELETE', 1, '若依', NULL, '/cms/blog/15', '127.0.0.1', '内网IP', '{ids=15}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 14:50:59');
INSERT INTO `sys_oper_log` VALUES (356, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[2007,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2050,2051,2052,2053,2054,2055,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 15:37:28');
INSERT INTO `sys_oper_log` VALUES (357, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1641227559000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"cms\",\"roleName\":\"内容管理员角色\",\"menuIds\":[2007,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2050,2051,2052,2053,2054,2055,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 15:39:02');
INSERT INTO `sys_oper_log` VALUES (358, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1641284356000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"若依\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2,3],\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 16:20:04');
INSERT INTO `sys_oper_log` VALUES (359, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"},{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cms\",\"roleName\":\"内容管理员角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1641284356000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"若依\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 16:20:16');
INSERT INTO `sys_oper_log` VALUES (360, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, '若依', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641284572226,\"params\":{},\"title\":\"若依\",\"type\":\"1\",\"content\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/04/459a471e-d91b-4a7d-9484-9cab3b4229b9.jpg\\\"></p>\",\"createBy\":\"若依\",\"top\":\"0\",\"createTime\":1641277891000,\"updateBy\":\"若依\",\"typeIds\":[],\"id\":14,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 16:22:52');
INSERT INTO `sys_oper_log` VALUES (361, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[20,24,25],\"updateTime\":1641284754601,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/04/3f0c7af4-1192-457d-82ed-dbfec3d810a0.png\\\">阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 16:25:54');
INSERT INTO `sys_oper_log` VALUES (362, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1641284356000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"若依\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2,3],\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 16:26:18');
INSERT INTO `sys_oper_log` VALUES (363, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"},{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cms\",\"roleName\":\"内容管理员角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1641284356000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"若依\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1639116734000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-04 16:26:57');
INSERT INTO `sys_oper_log` VALUES (364, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"阿斯顿v奥迪的vvv从vvc从v从\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641347092596,\"typeIds\":[],\"id\":16,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":16}', 0, NULL, '2022-01-05 09:44:52');
INSERT INTO `sys_oper_log` VALUES (365, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641353518542,\"params\":{},\"title\":\"阿斯顿v奥迪的vvv从vvc从v从\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641347093000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":16,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-05 11:31:58');
INSERT INTO `sys_oper_log` VALUES (366, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641353533903,\"params\":{},\"title\":\"阿斯顿v奥迪的vvv从vvc从v从\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641347093000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":16,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-05 11:32:13');
INSERT INTO `sys_oper_log` VALUES (367, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[20,24,25],\"updateTime\":1641368938538,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p class=\\\"ql-align-center\\\"><img src=\\\"/dev-api/profile/upload/2022/01/04/3f0c7af4-1192-457d-82ed-dbfec3d810a0.png\\\"></p><p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-05 15:48:58');
INSERT INTO `sys_oper_log` VALUES (368, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[20,24,25],\"updateTime\":1641827008958,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p class=\\\"ql-align-center\\\"><img src=\\\"/dev-api/profile/upload/2022/01/04/3f0c7af4-1192-457d-82ed-dbfec3d810a0.png\\\"></p><p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-10 23:03:29');
INSERT INTO `sys_oper_log` VALUES (369, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641827163476,\"params\":{},\"title\":\"若依\",\"type\":\"1\",\"content\":\"<p><img src=\\\"/dev-api/profile/upload/2022/01/04/459a471e-d91b-4a7d-9484-9cab3b4229b9.jpg\\\"></p>\",\"createBy\":\"若依\",\"top\":\"0\",\"createTime\":1641277891000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":14,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-10 23:06:03');
INSERT INTO `sys_oper_log` VALUES (370, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[21,25],\"updateTime\":1641865059401,\"params\":{},\"title\":\"阿斯顿v奥迪的vvv从vvc从v从\",\"type\":\"1\",\"content\":\"<h2>此事阿萨的</h2><h3>啊手动阀</h3><p><em>啊</em><em style=\\\"color: rgb(230, 0, 0);\\\">发生</em><em>的</em></p><p><s>奥迪发</s></p><p><span style=\\\"background-color: rgb(255, 255, 0);\\\">是否</span></p><h2 class=\\\"ql-align-center\\\"><strong>奥迪</strong></h2><p><u>啊手动阀</u></p><blockquote>var a = 1;</blockquote><blockquote>for (let i = 0; i &lt;10; i++){</blockquote><blockquote>}</blockquote><pre class=\\\"ql-syntax\\\" spellcheck=\\\"false\\\">var a = 1;\\nfor (let i = 0; i &lt;10; i++){\\n}\\n</pre><p>123</p><p><br></p><p><a href=\\\"www.baidu.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">百度</a></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641347093000,\"updateBy\":\"admin\",\"typeIds\":[11],\"id\":16,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-11 09:37:39');
INSERT INTO `sys_oper_log` VALUES (371, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[21,25],\"updateTime\":1641865129217,\"params\":{},\"title\":\"阿斯顿v奥迪的vvv从vvc从v从\",\"type\":\"1\",\"content\":\"<h2>此事阿萨的</h2><h3>啊手动阀</h3><p><em>啊</em><em style=\\\"color: rgb(230, 0, 0);\\\">发生</em><em>的</em></p><p><s>奥迪发</s></p><p><span style=\\\"background-color: rgb(255, 255, 0);\\\">是否</span></p><p><br></p><h2 class=\\\"ql-align-center\\\"><strong>奥迪</strong></h2><p><u>啊手动阀</u></p><p><br></p><blockquote>var a = 1;</blockquote><blockquote>for (let i = 0; i &lt;10; i++){</blockquote><blockquote>}</blockquote><pre class=\\\"ql-syntax\\\" spellcheck=\\\"false\\\">var a = 1;\\nfor (let i = 0; i &lt;10; i++){\\n}\\n</pre><p>123</p><p><br></p><p><a href=\\\"http://www.baidu.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">百度</a></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641347093000,\"updateBy\":\"admin\",\"typeIds\":[11],\"id\":16,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-11 09:38:49');
INSERT INTO `sys_oper_log` VALUES (372, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"/profile/upload/2022/01/11/0faea82a-9391-4135-9a61-4053de116c86.png\",\"typeName\":\"若依\",\"typeId\":14,\"params\":{},\"blogNum\":0}', NULL, 1, '分类名称已存在', '2022-01-11 11:31:24');
INSERT INTO `sys_oper_log` VALUES (373, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"/profile/upload/2022/01/11/0faea82a-9391-4135-9a61-4053de116c86.png\",\"typeName\":\"若依\",\"typeId\":14,\"params\":{},\"blogNum\":0}', NULL, 1, '分类名称已存在', '2022-01-11 11:31:30');
INSERT INTO `sys_oper_log` VALUES (374, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"params\":{},\"blogNum\":0}', NULL, 1, '分类名称已存在', '2022-01-11 11:33:13');
INSERT INTO `sys_oper_log` VALUES (375, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1641872049553,\"params\":{},\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-11 11:34:09');
INSERT INTO `sys_oper_log` VALUES (376, '分类管理', 2, 'com.ruoyi.cms.type.controller.CmsTypeController.edit()', 'PUT', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"若依\",\"createTime\":1641277883000,\"updateBy\":\"admin\",\"typePic\":\"/profile/upload/2022/01/11/67f2d789-9bf7-45ae-a317-ce68744fba51.jpg\",\"typeName\":\"若依\",\"typeId\":14,\"updateTime\":1641872228204,\"params\":{},\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-11 11:37:08');
INSERT INTO `sys_oper_log` VALUES (377, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641888845873,\"params\":{},\"title\":\"强强强强\",\"type\":\"1\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641217077000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":13,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-11 16:14:05');
INSERT INTO `sys_oper_log` VALUES (378, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[21,25],\"updateTime\":1641973931633,\"params\":{},\"title\":\"阿斯顿v奥迪的vvv从vvc从v从 啊高富帅是否公司费格式发给非钢是法国四个非钢\",\"type\":\"1\",\"content\":\"<h2>此事阿萨的</h2><h3>啊手动阀</h3><p><em>啊</em><em style=\\\"color: rgb(230, 0, 0);\\\">发生</em><em>的</em></p><p><s>奥迪发</s></p><p><span style=\\\"background-color: rgb(255, 255, 0);\\\">是否</span></p><p><br></p><p><br></p><h2 class=\\\"ql-align-center\\\"><strong>奥迪</strong></h2><p><u>啊手动阀</u></p><p><br></p><p><br></p><blockquote>var a = 1;</blockquote><blockquote>for (let i = 0; i &lt;10; i++){</blockquote><blockquote>}</blockquote><pre class=\\\"ql-syntax\\\" spellcheck=\\\"false\\\">var a = 1;\\nfor (let i = 0; i &lt;10; i++){\\n}\\n</pre><p>123</p><p><br></p><p><a href=\\\"http://www.baidu.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">百度</a></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641347093000,\"updateBy\":\"admin\",\"typeIds\":[11],\"id\":16,\"views\":7,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 15:52:11');
INSERT INTO `sys_oper_log` VALUES (379, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"你好!!!!\",\"type\":\"2\",\"content\":\"<p>和那路上看到你第三方</p><p>大师傅</p><p>啊手动阀</p><p>啊手动阀</p><p>撒旦</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641974788065,\"id\":17,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":17}', 0, NULL, '2022-01-12 16:06:28');
INSERT INTO `sys_oper_log` VALUES (380, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"params\":{},\"title\":\"啊调查啊\",\"type\":\"2\",\"content\":\"<p>啊啊<strong>啊分</strong></p><ol><li>奥迪发</li><li>安抚</li></ol><p><span style=\\\"background-color: rgb(255, 255, 102);\\\">奥迪发</span></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641977746032,\"id\":18,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":18}', 0, NULL, '2022-01-12 16:55:46');
INSERT INTO `sys_oper_log` VALUES (381, '文章管理', 1, 'com.ruoyi.cms.blog.controller.CmsBlogController.add()', 'POST', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"params\":{},\"title\":\"是VSD v阿萨DVD v大是大非v阿斯蒂芬v地方\",\"type\":\"1\",\"content\":\"<p>1234555的风格</p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641980454331,\"typeIds\":[],\"id\":19,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":19}', 0, NULL, '2022-01-12 17:40:54');
INSERT INTO `sys_oper_log` VALUES (382, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[20,24,25],\"updateTime\":1641981403259,\"params\":{},\"title\":\"阿萨\",\"type\":\"1\",\"content\":\"<h1 class=\\\"ql-align-center\\\">测试</h1><p>1.发生的地方阿萨的</p><p>2.啊手动阀</p><p>阿萨事实上</p>\",\"createBy\":\"admin\",\"top\":\"1\",\"createTime\":1641097526000,\"updateBy\":\"admin\",\"typeIds\":[10,13],\"id\":7,\"views\":5,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 17:56:43');
INSERT INTO `sys_oper_log` VALUES (383, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641981417357,\"params\":{},\"title\":\"若依\",\"type\":\"1\",\"content\":\"<p><br></p>\",\"createBy\":\"若依\",\"top\":\"0\",\"createTime\":1641277891000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":14,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 17:56:57');
INSERT INTO `sys_oper_log` VALUES (384, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/1', '127.0.0.1', '内网IP', '{fileIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 17:57:12');
INSERT INTO `sys_oper_log` VALUES (385, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/2', '127.0.0.1', '内网IP', '{fileIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 17:57:14');
INSERT INTO `sys_oper_log` VALUES (386, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1641981454531,\"params\":{},\"title\":\"啊调查啊\",\"type\":\"2\",\"content\":\"<p>啊啊<strong>啊分</strong></p><p><br></p><ol><li>奥迪发</li><li>安抚</li></ol><p><span style=\\\"background-color: rgb(255, 255, 102);\\\">奥迪发</span></p><p><span style=\\\"background-color: rgb(255, 255, 102);\\\"><span class=\\\"ql-cursor\\\">﻿</span></span><img src=\\\"/dev-api/profile/upload/2022/01/12/7a317330-3b48-4cd0-a299-bb3fad7fc56f.jpg\\\"></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641977746000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":18,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-12 17:57:34');
INSERT INTO `sys_oper_log` VALUES (387, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'cms_message', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 13:01:17');
INSERT INTO `sys_oper_log` VALUES (388, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ning\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":76,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1642222877000,\"tableId\":9,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ParentId\",\"usableColumn\":true,\"columnId\":77,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"parentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"父留言id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1642222877000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"parent_id\"},{\"capJavaField\":\"Like\",\"usableColumn\":false,\"columnId\":78,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"like\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"点赞数量\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1642222877000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"like\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":79,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"content\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"内容\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1642222877000,', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 13:18:13');
INSERT INTO `sys_oper_log` VALUES (389, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-15 13:23:22');
INSERT INTO `sys_oper_log` VALUES (390, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1641227559000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"cms\",\"roleName\":\"内容管理员角色\",\"menuIds\":[2007,2062,2063,2064,2065,2066,2067,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2050,2051,2052,2053,2054,2055,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 13:48:03');
INSERT INTO `sys_oper_log` VALUES (391, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"6\",\"menuName\":\"留言管理\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"message\",\"component\":\"cms/message/index\",\"children\":[],\"createTime\":1642225649000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2062,\"menuType\":\"C\",\"perms\":\"cms:message:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 13:49:11');
INSERT INTO `sys_oper_log` VALUES (392, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/9', '127.0.0.1', '内网IP', '{tableIds=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 13:56:19');
INSERT INTO `sys_oper_log` VALUES (393, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'cms_message', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 13:56:24');
INSERT INTO `sys_oper_log` VALUES (394, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ning\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":87,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1642226184000,\"tableId\":10,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ParentId\",\"usableColumn\":true,\"columnId\":88,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"parentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"父留言id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1642226184000,\"isEdit\":\"1\",\"tableId\":10,\"pk\":false,\"columnName\":\"parent_id\"},{\"capJavaField\":\"LikeNum\",\"usableColumn\":false,\"columnId\":89,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"likeNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"点赞数量\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1642226184000,\"isEdit\":\"1\",\"tableId\":10,\"pk\":false,\"columnName\":\"like_num\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"content\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"内容\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 13:56:57');
INSERT INTO `sys_oper_log` VALUES (395, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-15 13:57:04');
INSERT INTO `sys_oper_log` VALUES (396, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<h1 class=\\\"ql-align-center\\\">维护通知</h1><p>\\t通知:2018-07-01 若依系统凌晨维护</p><p class=\\\"ql-align-center\\\"><br></p>\",\"createBy\":\"admin\",\"createTime\":1639116734000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1641061895000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 14:41:23');
INSERT INTO `sys_oper_log` VALUES (397, '留言管理', 1, 'com.ruoyi.cms.message.controller.CmsMessageController.add()', 'POST', 1, 'admin', NULL, '/cms/message', '127.0.0.1', '内网IP', '{\"params\":{},\"content\":\"你好\",\"likeNum\":22,\"createTime\":1642231486272,\"id\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 15:24:46');
INSERT INTO `sys_oper_log` VALUES (398, '留言管理', 1, 'com.ruoyi.cms.message.controller.CmsMessageController.add()', 'POST', 1, 'admin', NULL, '/cms/message', '127.0.0.1', '内网IP', '{\"params\":{},\"content\":\"hello!!  123\",\"likeNum\":10,\"createTime\":1642231525823,\"id\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 15:25:25');
INSERT INTO `sys_oper_log` VALUES (399, '留言管理', 1, 'com.ruoyi.cms.message.controller.CmsMessageController.add()', 'POST', 1, 'admin', NULL, '/cms/message', '127.0.0.1', '内网IP', '{\"params\":{},\"content\":\"我很好!\",\"parentId\":1,\"likeNum\":2,\"createTime\":1642231550693,\"id\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 15:25:50');
INSERT INTO `sys_oper_log` VALUES (400, '留言管理', 1, 'com.ruoyi.cms.message.controller.CmsMessageController.add()', 'POST', 1, 'admin', NULL, '/cms/message', '127.0.0.1', '内网IP', '{\"params\":{},\"content\":\"大家好\",\"parentId\":1,\"likeNum\":3,\"createTime\":1642231583238,\"id\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 15:26:23');
INSERT INTO `sys_oper_log` VALUES (401, '留言管理', 1, 'com.ruoyi.cms.message.controller.CmsMessageController.add()', 'POST', 1, 'admin', NULL, '/cms/message', '127.0.0.1', '内网IP', '{\"params\":{},\"content\":\"好\",\"parentId\":3,\"likeNum\":3,\"createTime\":1642231599004,\"id\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 15:26:39');
INSERT INTO `sys_oper_log` VALUES (402, '留言管理', 3, 'com.ruoyi.cms.message.controller.CmsMessageController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/message/5', '127.0.0.1', '内网IP', '{ids=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-15 23:18:42');
INSERT INTO `sys_oper_log` VALUES (403, '留言管理', 3, 'com.ruoyi.cms.message.controller.CmsMessageController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/message/5', '127.0.0.1', '内网IP', '{ids=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-16 00:05:55');
INSERT INTO `sys_oper_log` VALUES (404, '留言管理', 3, 'com.ruoyi.cms.message.controller.CmsMessageController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/message/5', '127.0.0.1', '内网IP', '{ids=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-16 01:10:17');
INSERT INTO `sys_oper_log` VALUES (405, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2022/01/16/17888208-5f71-4c98-9f44-e26a2e114c1c.jpeg\",\"code\":200}', 0, NULL, '2022-01-16 14:56:22');
INSERT INTO `sys_oper_log` VALUES (406, '留言管理', 1, 'com.ruoyi.cms.message.controller.CmsMessageController.add()', 'POST', 1, 'admin', NULL, '/cms/message', '127.0.0.1', '内网IP', '{\"params\":{},\"type\":\"1\",\"userId\":1,\"content\":\"额\",\"parentId\":6,\"createBy\":\"admin\",\"createTime\":1642336958905,\"id\":17}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-16 20:42:38');
INSERT INTO `sys_oper_log` VALUES (407, '分类管理', 3, 'com.ruoyi.cms.type.controller.CmsTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/type/12', '127.0.0.1', '内网IP', '{typeIds=12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-16 21:34:59');
INSERT INTO `sys_oper_log` VALUES (408, '分类管理', 1, 'com.ruoyi.cms.type.controller.CmsTypeController.add()', 'POST', 1, 'admin', NULL, '/cms/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1642340144236,\"typeName\":\"33\",\"typeId\":15,\"params\":{},\"blogNum\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-16 21:35:44');
INSERT INTO `sys_oper_log` VALUES (409, '留言管理', 1, 'com.ruoyi.cms.message.controller.CmsMessageController.add()', 'POST', 1, 'admin', NULL, '/cms/message', '127.0.0.1', '内网IP', '{\"params\":{},\"type\":\"1\",\"userId\":1,\"content\":\"1\",\"parentId\":17,\"createBy\":\"admin\",\"createTime\":1642406971502,\"id\":18,\"mainId\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-17 16:09:31');
INSERT INTO `sys_oper_log` VALUES (410, '留言管理', 1, 'com.ruoyi.cms.message.controller.CmsMessageController.add()', 'POST', 1, 'admin', NULL, '/cms/message', '127.0.0.1', '内网IP', '{\"params\":{},\"type\":\"1\",\"userId\":1,\"content\":\"@admin 1\",\"parentId\":17,\"createBy\":\"admin\",\"createTime\":1642512057762,\"id\":19,\"mainId\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-18 21:20:57');
INSERT INTO `sys_oper_log` VALUES (411, '留言管理', 3, 'com.ruoyi.cms.message.controller.CmsMessageController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/message/19', '127.0.0.1', '内网IP', '{ids=19}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-18 23:36:15');
INSERT INTO `sys_oper_log` VALUES (412, '留言管理', 1, 'com.ruoyi.cms.message.controller.CmsMessageController.add()', 'POST', 1, 'admin', NULL, '/cms/message', '127.0.0.1', '内网IP', '{\"params\":{},\"type\":\"1\",\"userId\":1,\"content\":\"ascccccccccccccccccddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd\",\"parentId\":17,\"createBy\":\"admin\",\"createTime\":1642522961973,\"mainId\":6}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'content\' at row 1\r\n### The error may exist in file [E:\\project\\HBIS\\RuoYi-Vue\\RuoYi-Vue\\ruoyi-cms\\target\\classes\\mapper\\cms\\CmsMessageMapper.xml]\r\n### The error may involve com.ruoyi.cms.message.mapper.CmsMessageMapper.insertCmsMessage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into cms_message          ( parent_id,             main_id,                          content,             type,                          user_id,                          create_by,             create_time )           values ( ?,             ?,                          ?,             ?,                          ?,                          ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'content\' at row 1\n; Data truncation: Data too long for column \'content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'content\' at row 1', '2022-01-19 00:22:42');
INSERT INTO `sys_oper_log` VALUES (413, '留言管理', 1, 'com.ruoyi.cms.message.controller.CmsMessageController.add()', 'POST', 1, 'admin', NULL, '/cms/message', '127.0.0.1', '内网IP', '{\"params\":{},\"type\":\"1\",\"userId\":1,\"content\":\"ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\",\"parentId\":17,\"createBy\":\"admin\",\"createTime\":1642523018880,\"id\":21,\"mainId\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-19 00:23:38');
INSERT INTO `sys_oper_log` VALUES (414, '留言管理', 3, 'com.ruoyi.cms.message.controller.CmsMessageController.remove()', 'DELETE', 1, 'admin', NULL, '/cms/message/28', '127.0.0.1', '内网IP', '{ids=28}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-19 21:56:17');
INSERT INTO `sys_oper_log` VALUES (415, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"博客官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"/cms/main/cmsIndex\",\"children\":[],\"createTime\":1639116734000,\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"修改菜单\'博客官网\'失败，地址必须以http(s)://开头\",\"code\":500}', 0, NULL, '2022-01-20 09:20:32');
INSERT INTO `sys_oper_log` VALUES (416, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"博客官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://localhost/cms/main/cmsIndex\",\"children\":[],\"createTime\":1639116734000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-20 09:22:17');
INSERT INTO `sys_oper_log` VALUES (417, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1639116734000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[2007,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2050,2051,2052,2053,2054,2055,2062,2063,2064,2065,2066,2067,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-20 10:35:26');
INSERT INTO `sys_oper_log` VALUES (418, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'cms_comment', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-21 09:16:31');
INSERT INTO `sys_oper_log` VALUES (419, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ning\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":98,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1642727791000,\"tableId\":11,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ParentId\",\"usableColumn\":true,\"columnId\":99,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"parentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"父评论id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1642727791000,\"isEdit\":\"1\",\"tableId\":11,\"pk\":false,\"columnName\":\"parent_id\"},{\"capJavaField\":\"MainId\",\"usableColumn\":false,\"columnId\":100,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"mainId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"主评论id(第一级评论)\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1642727791000,\"isEdit\":\"1\",\"tableId\":11,\"pk\":false,\"columnName\":\"main_id\"},{\"capJavaField\":\"LikeNum\",\"usableColumn\":false,\"columnId\":101,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"likeNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"点赞数量\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-21 10:13:56');
INSERT INTO `sys_oper_log` VALUES (420, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-01-21 10:14:13');
INSERT INTO `sys_oper_log` VALUES (421, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1641227559000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"cms\",\"roleName\":\"内容管理员角色\",\"menuIds\":[2007,2068,2069,2070,2071,2072,2073,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2050,2051,2052,2053,2054,2055,2062,2063,2064,2065,2066,2067,2026,2027,2028,2029,2030,2031,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-21 10:27:52');
INSERT INTO `sys_oper_log` VALUES (422, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"8\",\"menuName\":\"文件管理\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"fileInfo\",\"component\":\"cms/fileInfo/index\",\"children\":[],\"createTime\":1640615393000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2026,\"menuType\":\"C\",\"perms\":\"cms:fileInfo:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-21 10:28:14');
INSERT INTO `sys_oper_log` VALUES (423, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"7\",\"menuName\":\"评论管理\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"comment\",\"component\":\"cms/comment/index\",\"children\":[],\"createTime\":1642732045000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2068,\"menuType\":\"C\",\"perms\":\"cms:comment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-01-21 10:28:24');
INSERT INTO `sys_oper_log` VALUES (424, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"tagIds\":[],\"updateTime\":1644198743363,\"params\":{},\"title\":\"啊调查啊\",\"type\":\"2\",\"content\":\"<p>啊啊<strong>啊分</strong></p><p><br></p><p><br></p><ol><li>奥迪发</li><li>安抚</li></ol><p><span style=\\\"background-color: rgb(255, 255, 102);\\\">奥迪发</span></p><p><span style=\\\"background-color: rgb(255, 255, 102);\\\">﻿</span></p>\",\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641977746000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":18,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-07 09:52:23');
INSERT INTO `sys_oper_log` VALUES (425, '文件管理', 3, 'com.ruoyi.cms.fileInfo.controller.SysFileInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/fileInfo/6', '127.0.0.1', '内网IP', '{fileIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-07 09:52:37');
INSERT INTO `sys_oper_log` VALUES (426, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"文档管理\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"doucuments\",\"component\":\"cms/blog/doucuments\",\"children\":[],\"createTime\":1641063521000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2044,\"menuType\":\"C\",\"perms\":\"cms:blog:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-08 18:01:09');
INSERT INTO `sys_oper_log` VALUES (427, '文章管理', 2, 'com.ruoyi.cms.blog.controller.CmsBlogController.edit()', 'PUT', 1, 'admin', NULL, '/cms/blog', '127.0.0.1', '内网IP', '{\"types\":[],\"tagIds\":[],\"updateTime\":1644462982927,\"params\":{},\"title\":\"啊调查啊\",\"type\":\"2\",\"content\":\"<p>啊啊<strong>啊分</strong></p><p><br></p><p><br></p><p><br></p><ol><li>奥迪发</li><li>安抚</li></ol><p><span style=\\\"background-color: rgb(255, 255, 102);\\\">奥迪发</span></p><p><span style=\\\"background-color: rgb(255, 255, 102);\\\">﻿</span><img src=\\\"/dev-api/profile/upload/2022/02/10/88e05f43-8ce2-4bf2-bc68-11fd0216f2b4.jpg\\\"></p>\",\"tags\":[],\"createBy\":\"admin\",\"top\":\"0\",\"createTime\":1641977746000,\"updateBy\":\"admin\",\"typeIds\":[],\"id\":18,\"views\":0,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-10 11:16:22');

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
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'admin', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-02-10 12:32:10', 'admin', '2021-12-10 14:12:14', '', '2022-02-10 12:32:10', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, '若依', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$824HoRUuGXB3z/.Ei8jVy.LNBinXUc5iZM2alU7zqgWE4RSpFkyuW', '0', '0', '127.0.0.1', '2022-01-21 09:23:14', 'admin', '2021-12-10 14:12:14', 'admin', '2022-01-21 09:23:13', '测试员');

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
