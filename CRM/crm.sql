/*
 Navicat MySQL Data Transfer

 Source Server         : MariaDB
 Source Server Type    : MariaDB
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : crm

 Target Server Type    : MariaDB
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 15/12/2018 11:43:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (14, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (15, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (16, 'Can add 账户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (17, 'Can change 账户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (18, 'Can delete 账户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (19, 'Can add campuses', 7, 'add_campuses');
INSERT INTO `auth_permission` VALUES (20, 'Can change campuses', 7, 'change_campuses');
INSERT INTO `auth_permission` VALUES (21, 'Can delete campuses', 7, 'delete_campuses');
INSERT INTO `auth_permission` VALUES (22, 'Can add class list', 8, 'add_classlist');
INSERT INTO `auth_permission` VALUES (23, 'Can change class list', 8, 'change_classlist');
INSERT INTO `auth_permission` VALUES (24, 'Can delete class list', 8, 'delete_classlist');
INSERT INTO `auth_permission` VALUES (25, 'Can add consult record', 9, 'add_consultrecord');
INSERT INTO `auth_permission` VALUES (26, 'Can change consult record', 9, 'change_consultrecord');
INSERT INTO `auth_permission` VALUES (27, 'Can delete consult record', 9, 'delete_consultrecord');
INSERT INTO `auth_permission` VALUES (28, 'Can add contract template', 10, 'add_contracttemplate');
INSERT INTO `auth_permission` VALUES (29, 'Can change contract template', 10, 'change_contracttemplate');
INSERT INTO `auth_permission` VALUES (30, 'Can delete contract template', 10, 'delete_contracttemplate');
INSERT INTO `auth_permission` VALUES (31, 'Can add course record', 11, 'add_courserecord');
INSERT INTO `auth_permission` VALUES (32, 'Can change course record', 11, 'change_courserecord');
INSERT INTO `auth_permission` VALUES (33, 'Can delete course record', 11, 'delete_courserecord');
INSERT INTO `auth_permission` VALUES (34, 'Can add customer', 12, 'add_customer');
INSERT INTO `auth_permission` VALUES (35, 'Can change customer', 12, 'change_customer');
INSERT INTO `auth_permission` VALUES (36, 'Can delete customer', 12, 'delete_customer');
INSERT INTO `auth_permission` VALUES (37, 'Can add department', 13, 'add_department');
INSERT INTO `auth_permission` VALUES (38, 'Can change department', 13, 'change_department');
INSERT INTO `auth_permission` VALUES (39, 'Can delete department', 13, 'delete_department');
INSERT INTO `auth_permission` VALUES (40, 'Can add enrollment', 14, 'add_enrollment');
INSERT INTO `auth_permission` VALUES (41, 'Can change enrollment', 14, 'change_enrollment');
INSERT INTO `auth_permission` VALUES (42, 'Can delete enrollment', 14, 'delete_enrollment');
INSERT INTO `auth_permission` VALUES (43, 'Can add payment record', 15, 'add_paymentrecord');
INSERT INTO `auth_permission` VALUES (44, 'Can change payment record', 15, 'change_paymentrecord');
INSERT INTO `auth_permission` VALUES (45, 'Can delete payment record', 15, 'delete_paymentrecord');
INSERT INTO `auth_permission` VALUES (46, 'Can add study record', 16, 'add_studyrecord');
INSERT INTO `auth_permission` VALUES (47, 'Can change study record', 16, 'change_studyrecord');
INSERT INTO `auth_permission` VALUES (48, 'Can delete study record', 16, 'delete_studyrecord');

-- ----------------------------
-- Table structure for crm_campuses
-- ----------------------------
DROP TABLE IF EXISTS `crm_campuses`;
CREATE TABLE `crm_campuses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_campuses
-- ----------------------------
INSERT INTO `crm_campuses` VALUES (1, '深圳校区', '西丽平山村');
INSERT INTO `crm_campuses` VALUES (2, '北京校区', '北京昌平区沙河镇');
INSERT INTO `crm_campuses` VALUES (3, '上海校区', '浦东张江镇');

-- ----------------------------
-- Table structure for crm_classlist
-- ----------------------------
DROP TABLE IF EXISTS `crm_classlist`;
CREATE TABLE `crm_classlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `memo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_date` date NOT NULL,
  `graduate_date` date NULL DEFAULT NULL,
  `class_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `campuses_id` int(11) NOT NULL,
  `contract_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_classlist_course_semester_campuses_id_118b09f0_uniq`(`course`, `semester`, `campuses_id`) USING BTREE,
  INDEX `crm_classlist_campuses_id_34b62f4c_fk_crm_campuses_id`(`campuses_id`) USING BTREE,
  INDEX `crm_classlist_contract_id_99c5c1b3_fk_crm_contracttemplate_id`(`contract_id`) USING BTREE,
  CONSTRAINT `crm_classlist_campuses_id_34b62f4c_fk_crm_campuses_id` FOREIGN KEY (`campuses_id`) REFERENCES `crm_campuses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_classlist_contract_id_99c5c1b3_fk_crm_contracttemplate_id` FOREIGN KEY (`contract_id`) REFERENCES `crm_contracttemplate` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_classlist
-- ----------------------------
INSERT INTO `crm_classlist` VALUES (1, 'PythonFullStack', 1, 19800, NULL, '2018-11-27', NULL, 'fulltime', 1, NULL);
INSERT INTO `crm_classlist` VALUES (2, 'Go', 1, 10000, NULL, '2018-12-01', NULL, 'fulltime', 3, NULL);

-- ----------------------------
-- Table structure for crm_classlist_teachers
-- ----------------------------
DROP TABLE IF EXISTS `crm_classlist_teachers`;
CREATE TABLE `crm_classlist_teachers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classlist_id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_classlist_teachers_classlist_id_userprofile_id_fdeb6cf0_uniq`(`classlist_id`, `userprofile_id`) USING BTREE,
  INDEX `crm_classlist_teache_userprofile_id_4ba87056_fk_crm_userp`(`userprofile_id`) USING BTREE,
  CONSTRAINT `crm_classlist_teache_userprofile_id_4ba87056_fk_crm_userp` FOREIGN KEY (`userprofile_id`) REFERENCES `crm_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_classlist_teachers_classlist_id_4b676750_fk_crm_classlist_id` FOREIGN KEY (`classlist_id`) REFERENCES `crm_classlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_classlist_teachers
-- ----------------------------
INSERT INTO `crm_classlist_teachers` VALUES (1, 1, 3);
INSERT INTO `crm_classlist_teachers` VALUES (2, 2, 3);

-- ----------------------------
-- Table structure for crm_consultrecord
-- ----------------------------
DROP TABLE IF EXISTS `crm_consultrecord`;
CREATE TABLE `crm_consultrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  `delete_status` tinyint(1) NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `crm_consultrecord_consultant_id_0a04c00c_fk_crm_userprofile_id`(`consultant_id`) USING BTREE,
  INDEX `crm_consultrecord_customer_id_c1259023_fk_crm_customer_id`(`customer_id`) USING BTREE,
  CONSTRAINT `crm_consultrecord_consultant_id_0a04c00c_fk_crm_userprofile_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_consultrecord_customer_id_c1259023_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_consultrecord
-- ----------------------------
INSERT INTO `crm_consultrecord` VALUES (1, '今天很不错', 'C', '2018-11-26 19:24:00.586829', 0, 1, 3);
INSERT INTO `crm_consultrecord` VALUES (2, '好好干', 'B', '2018-11-26 19:31:20.883785', 0, 1, 3);

-- ----------------------------
-- Table structure for crm_contracttemplate
-- ----------------------------
DROP TABLE IF EXISTS `crm_contracttemplate`;
CREATE TABLE `crm_contracttemplate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for crm_courserecord
-- ----------------------------
DROP TABLE IF EXISTS `crm_courserecord`;
CREATE TABLE `crm_courserecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_num` int(11) NOT NULL,
  `date` date NOT NULL,
  `course_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_memo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `has_homework` tinyint(1) NOT NULL,
  `homework_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homework_memo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `scoring_point` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `re_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_courserecord_re_class_id_day_num_90a7cd93_uniq`(`re_class_id`, `day_num`) USING BTREE,
  INDEX `crm_courserecord_teacher_id_3ace9808_fk_crm_userprofile_id`(`teacher_id`) USING BTREE,
  CONSTRAINT `crm_courserecord_re_class_id_f13402af_fk_crm_classlist_id` FOREIGN KEY (`re_class_id`) REFERENCES `crm_classlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_courserecord_teacher_id_3ace9808_fk_crm_userprofile_id` FOREIGN KEY (`teacher_id`) REFERENCES `crm_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_courserecord
-- ----------------------------
INSERT INTO `crm_courserecord` VALUES (1, 1, '2018-11-27', '函数', '详细讲解了函数的要理', 1, NULL, '', '', 2, 3);
INSERT INTO `crm_courserecord` VALUES (2, 2, '2018-11-27', '面向对象', '面向对象详解', 1, NULL, '', '', 2, 1);

-- ----------------------------
-- Table structure for crm_customer
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer`;
CREATE TABLE `crm_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qq` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `phone` bigint(20) NULL DEFAULT NULL,
  `source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer_note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `network_consult_note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date` datetime(6) NOT NULL,
  `last_consult_date` date NOT NULL,
  `next_date` date NULL DEFAULT NULL,
  `consultant_id` int(11) NULL DEFAULT NULL,
  `introduce_from_id` int(11) NULL DEFAULT NULL,
  `network_consultant_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `qq`(`qq`) USING BTREE,
  INDEX `crm_customer_consultant_id_11f5298a_fk_crm_userprofile_id`(`consultant_id`) USING BTREE,
  INDEX `crm_customer_introduce_from_id_2ca323af_fk_crm_customer_id`(`introduce_from_id`) USING BTREE,
  INDEX `crm_customer_network_consultant_i_1b6675eb_fk_crm_userp`(`network_consultant_id`) USING BTREE,
  CONSTRAINT `crm_customer_consultant_id_11f5298a_fk_crm_userprofile_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_customer_introduce_from_id_2ca323af_fk_crm_customer_id` FOREIGN KEY (`introduce_from_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_customer_network_consultant_i_1b6675eb_fk_crm_userp` FOREIGN KEY (`network_consultant_id`) REFERENCES `crm_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 502 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_customer
-- ----------------------------
INSERT INTO `crm_customer` VALUES (1, '44451938', '客户0', '0客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', '', 'unregistered', '', '2018-11-24 14:30:58.375112', '2018-11-24', NULL, 1, NULL, NULL);
INSERT INTO `crm_customer` VALUES (3, '52449550', '客户2', '2客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.375635', '2018-11-24', NULL, 1, NULL, NULL);
INSERT INTO `crm_customer` VALUES (4, '23457016', '客户3', '3客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.375716', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (5, '95276600', '客户4', '4客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.375811', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (6, '66905525', '客户5', '5客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.375895', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (7, '54805850', '客户6', '6客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.375975', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (8, '32514914', '客户7', '7客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376056', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (9, '61821911', '客户8', '8客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376138', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (10, '09205908', '客户9', '9客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376248', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (11, '29046424', '客户10', '10客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376334', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (12, '15664621', '客户11', '11客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376415', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (13, '38764009', '客户12', '12客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376496', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (14, '31425111', '客户13', '13客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376577', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (15, '40735066', '客户14', '14客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376659', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (16, '68839680', '客户15', '15客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376740', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (17, '18726403', '客户16', '16客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376821', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (18, '10541904', '客户17', '17客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.376927', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (19, '20549523', '客户18', '18客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377087', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (20, '99223834', '客户19', '19客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377174', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (21, '55959081', '客户20', '20客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377262', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (22, '88463564', '客户21', '21客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377344', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (23, '22134166', '客户22', '22客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377425', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (24, '44922204', '客户23', '23客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377506', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (25, '04331583', '客户24', '24客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377589', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (26, '65404093', '客户25', '25客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377671', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (27, '68592857', '客户26', '26客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377752', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (28, '65561721', '客户27', '27客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377833', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (29, '17562708', '客户28', '28客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377915', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (30, '29273245', '客户29', '29客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.377996', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (31, '36650941', '客户30', '30客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378077', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (32, '61958958', '客户31', '31客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378167', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (33, '64408000', '客户32', '32客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378251', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (34, '35575897', '客户33', '33客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378332', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (35, '19848911', '客户34', '34客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378416', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (36, '52604655', '客户35', '35客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378498', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (37, '68914184', '客户36', '36客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378579', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (38, '86754688', '客户37', '37客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378660', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (39, '53203327', '客户38', '38客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378741', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (40, '36554976', '客户39', '39客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378822', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (41, '68675090', '客户40', '40客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378908', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (42, '91788684', '客户41', '41客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.378992', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (43, '49604017', '客户42', '42客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379074', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (44, '30309662', '客户43', '43客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379155', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (45, '67865428', '客户44', '44客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379245', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (46, '82542277', '客户45', '45客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379329', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (47, '86028869', '客户46', '46客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379410', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (48, '38744209', '客户47', '47客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379491', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (49, '87943072', '客户48', '48客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379588', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (50, '68314445', '客户49', '49客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379672', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (51, '85559547', '客户50', '50客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379753', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (52, '94485230', '客户51', '51客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379835', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (53, '13708875', '客户52', '52客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379916', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (54, '54213104', '客户53', '53客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.379998', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (55, '82381755', '客户54', '54客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380079', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (56, '80290237', '客户55', '55客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380161', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (57, '33683899', '客户56', '56客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380242', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (58, '43052044', '客户57', '57客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380343', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (59, '45618848', '客户58', '58客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380428', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (60, '67491820', '客户59', '59客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380511', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (61, '33231910', '客户60', '60客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380593', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (62, '66919347', '客户61', '61客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380677', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (63, '12059397', '客户62', '62客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380758', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (64, '26221831', '客户63', '63客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380839', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (65, '38905404', '客户64', '64客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.380921', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (66, '04128895', '客户65', '65客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381005', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (67, '73174438', '客户66', '66客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381087', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (68, '36791364', '客户67', '67客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381168', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (69, '37698302', '客户68', '68客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381250', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (70, '34408316', '客户69', '69客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381342', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (71, '07834551', '客户70', '70客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381437', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (72, '78416147', '客户71', '71客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381521', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (73, '41723369', '客户72', '72客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381603', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (74, '61996893', '客户73', '73客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381685', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (75, '95914660', '客户74', '74客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381770', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (76, '61879637', '客户75', '75客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381851', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (77, '85449262', '客户76', '76客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.381932', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (78, '29627503', '客户77', '77客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382014', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (79, '75855124', '客户78', '78客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382094', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (80, '29019297', '客户79', '79客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382176', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (81, '52886047', '客户80', '80客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382257', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (82, '56107445', '客户81', '81客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382340', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (83, '93663979', '客户82', '82客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382421', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (84, '20968374', '客户83', '83客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382513', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (85, '58966240', '客户84', '84客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382603', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (86, '71852131', '客户85', '85客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382686', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (87, '44402544', '客户86', '86客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382767', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (88, '89423703', '客户87', '87客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382857', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (89, '77433031', '客户88', '88客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.382940', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (90, '38358494', '客户89', '89客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383022', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (91, '51977128', '客户90', '90客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383103', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (92, '05076733', '客户91', '91客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383184', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (93, '66391456', '客户92', '92客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383266', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (94, '26497356', '客户93', '93客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383347', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (95, '83768646', '客户94', '94客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383428', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (96, '69681861', '客户95', '95客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383509', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (97, '14111238', '客户96', '96客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383590', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (98, '20823058', '客户97', '97客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383694', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (99, '34535314', '客户98', '98客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383790', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (100, '06163938', '客户99', '99客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383872', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (101, '07091506', '客户100', '100客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.383953', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (102, '59094818', '客户101', '101客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384036', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (103, '87379857', '客户102', '102客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384118', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (104, '46589622', '客户103', '103客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384199', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (105, '86210655', '客户104', '104客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384280', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (106, '31251947', '客户105', '105客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384361', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (107, '92957626', '客户106', '106客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384443', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (108, '18467897', '客户107', '107客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384524', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (109, '30298852', '客户108', '108客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384605', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (110, '77882897', '客户109', '109客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384690', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (111, '12907714', '客户110', '110客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384773', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (112, '03424677', '客户111', '111客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384867', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (113, '00486755', '客户112', '112客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.384949', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (114, '72266230', '客户113', '113客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385030', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (115, '92833461', '客户114', '114客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385111', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (116, '22013463', '客户115', '115客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385192', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (117, '75857311', '客户116', '116客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385273', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (118, '80128858', '客户117', '117客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385354', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (119, '61882900', '客户118', '118客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385435', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (120, '20877315', '客户119', '119客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385516', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (121, '87527849', '客户120', '120客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385597', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (122, '57895467', '客户121', '121客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385681', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (123, '10250859', '客户122', '122客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385763', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (124, '07133364', '客户123', '123客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385845', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (125, '33538713', '客户124', '124客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.385938', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (126, '99457628', '客户125', '125客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386022', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (127, '60348363', '客户126', '126客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386103', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (128, '84506101', '客户127', '127客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386192', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (129, '93073791', '客户128', '128客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386279', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (130, '93344015', '客户129', '129客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386370', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (131, '13837746', '客户130', '130客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386454', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (132, '82016331', '客户131', '131客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386535', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (133, '39611046', '客户132', '132客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386616', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (134, '26155412', '客户133', '133客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386697', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (135, '32833670', '客户134', '134客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386778', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (136, '51193568', '客户135', '135客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386859', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (137, '66016490', '客户136', '136客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.386942', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (138, '10485019', '客户137', '137客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387103', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (139, '17210077', '客户138', '138客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387199', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (140, '21760544', '客户139', '139客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387281', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (141, '28268101', '客户140', '140客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387362', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (142, '60326206', '客户141', '141客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387447', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (143, '03052167', '客户142', '142客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387528', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (144, '70177961', '客户143', '143客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387609', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (145, '66068200', '客户144', '144客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387690', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (146, '31042889', '客户145', '145客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387771', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (147, '93000008', '客户146', '146客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387853', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (148, '35408333', '客户147', '147客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.387934', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (149, '35215491', '客户148', '148客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388015', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (150, '63978637', '客户149', '149客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388097', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (151, '27998442', '客户150', '150客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388180', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (152, '39204936', '客户151', '151客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388271', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (153, '23318429', '客户152', '152客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388353', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (154, '12030343', '客户153', '153客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388434', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (155, '33833487', '客户154', '154客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388515', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (156, '07812043', '客户155', '155客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388597', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (157, '75453824', '客户156', '156客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388679', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (158, '83330258', '客户157', '157客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388760', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (159, '52460826', '客户158', '158客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388841', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (160, '76844146', '客户159', '159客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.388923', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (161, '84147870', '客户160', '160客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389008', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (162, '30431144', '客户161', '161客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389092', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (163, '92957226', '客户162', '162客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389174', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (164, '59158576', '客户163', '163客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389256', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (165, '91791706', '客户164', '164客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389347', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (166, '56860679', '客户165', '165客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389428', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (167, '76480310', '客户166', '166客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389517', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (168, '59500681', '客户167', '167客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389601', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (169, '21016389', '客户168', '168客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389683', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (170, '89168462', '客户169', '169客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389766', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (171, '18740777', '客户170', '170客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389847', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (172, '89307118', '客户171', '171客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.389928', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (173, '12733519', '客户172', '172客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390014', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (174, '28528886', '客户173', '173客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390097', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (175, '52096629', '客户174', '174客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390181', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (176, '61200445', '客户175', '175客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390264', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (177, '01725586', '客户176', '176客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390354', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (178, '42727851', '客户177', '177客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390448', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (179, '90742143', '客户178', '178客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390530', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (180, '10932533', '客户179', '179客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390611', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (181, '12471208', '客户180', '180客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390692', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (182, '87635161', '客户181', '181客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390776', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (183, '57471680', '客户182', '182客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390857', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (184, '95589932', '客户183', '183客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.390939', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (185, '76695595', '客户184', '184客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.391020', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (186, '30316263', '客户185', '185客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.391102', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (187, '86209739', '客户186', '186客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.391184', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (188, '56768843', '客户187', '187客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.391264', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (189, '36008023', '客户188', '188客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.391345', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (190, '15229820', '客户189', '189客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.391457', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (191, '12263534', '客户190', '190客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.391587', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (192, '60951041', '客户191', '191客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.391738', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (193, '82392081', '客户192', '192客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.391864', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (194, '71344124', '客户193', '193客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392010', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (195, '25151746', '客户194', '194客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392104', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (196, '93502827', '客户195', '195客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392185', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (197, '82908712', '客户196', '196客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392266', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (198, '86879657', '客户197', '197客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392347', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (199, '94585281', '客户198', '198客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392428', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (200, '54809292', '客户199', '199客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392509', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (201, '45684785', '客户200', '200客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392589', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (202, '08357821', '客户201', '201客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392674', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (203, '35052228', '客户202', '202客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392755', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (204, '97214650', '客户203', '203客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392846', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (205, '57784253', '客户204', '204客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.392930', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (206, '00877479', '客户205', '205客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393010', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (207, '87646795', '客户206', '206客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393099', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (208, '32241821', '客户207', '207客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393186', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (209, '42051492', '客户208', '208客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393267', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (210, '01195246', '客户209', '209客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393348', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (211, '91974776', '客户210', '210客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393432', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (212, '71010651', '客户211', '211客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393513', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (213, '06099093', '客户212', '212客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393594', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (214, '41034386', '客户213', '213客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393675', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (215, '16172817', '客户214', '214客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393756', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (216, '87135214', '客户215', '215客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393837', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (217, '93533037', '客户216', '216客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393918', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (218, '41621012', '客户217', '217客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.393999', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (219, '40521233', '客户218', '218客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394079', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (220, '32050602', '客户219', '219客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394165', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (221, '74457757', '客户220', '220客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394272', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (222, '62392751', '客户221', '221客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394359', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (223, '00015106', '客户222', '222客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394441', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (224, '23227393', '客户223', '223客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394527', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (225, '64182790', '客户224', '224客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394611', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (226, '52384287', '客户225', '225客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394692', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (227, '47449210', '客户226', '226客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394773', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (228, '87262935', '客户227', '227客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394854', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (229, '97575180', '客户228', '228客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.394936', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (230, '35854014', '客户229', '229客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395018', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (231, '42200108', '客户230', '230客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395099', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (232, '08364805', '客户231', '231客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395180', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (233, '97158993', '客户232', '232客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395263', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (234, '45066469', '客户233', '233客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395372', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (235, '06142840', '客户234', '234客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395457', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (236, '42153468', '客户235', '235客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395538', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (237, '09878571', '客户236', '236客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395619', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (238, '48772754', '客户237', '237客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395701', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (239, '03745092', '客户238', '238客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395782', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (240, '58063485', '客户239', '239客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395865', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (241, '65290830', '客户240', '240客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.395946', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (242, '24863676', '客户241', '241客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396034', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (243, '67978733', '客户242', '242客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396115', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (244, '91648917', '客户243', '243客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396216', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (245, '61848918', '客户244', '244客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396301', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (246, '15356166', '客户245', '245客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396383', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (247, '46056008', '客户246', '246客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396484', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (248, '55156519', '客户247', '247客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396599', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (249, '64447026', '客户248', '248客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396702', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (250, '24835908', '客户249', '249客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396786', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (251, '69292746', '客户250', '250客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396867', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (252, '92735200', '客户251', '251客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.396948', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (253, '84876027', '客户252', '252客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397030', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (254, '68985203', '客户253', '253客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397111', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (255, '04198785', '客户254', '254客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397200', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (256, '83386228', '客户255', '255客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397282', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (257, '55899401', '客户256', '256客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397363', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (258, '72114811', '客户257', '257客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397444', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (259, '67000888', '客户258', '258客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397525', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (260, '50710422', '客户259', '259客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397606', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (261, '28966904', '客户260', '260客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397688', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (262, '14120209', '客户261', '261客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397790', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (263, '33099645', '客户262', '262客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397874', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (264, '53103291', '客户263', '263客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.397956', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (265, '63131703', '客户264', '264客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398037', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (266, '80052011', '客户265', '265客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398118', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (267, '19699525', '客户266', '266客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398200', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (268, '95217473', '客户267', '267客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398280', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (269, '33736210', '客户268', '268客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398362', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (270, '78466931', '客户269', '269客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398442', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (271, '05813315', '客户270', '270客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398524', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (272, '85788354', '客户271', '271客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398606', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (273, '77701424', '客户272', '272客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398687', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (274, '83650980', '客户273', '273客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398768', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (275, '48420884', '客户274', '274客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398865', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (276, '19882813', '客户275', '275客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.398950', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (277, '07111767', '客户276', '276客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.413292', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (278, '19548877', '客户277', '277客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.413410', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (279, '94548643', '客户278', '278客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.413494', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (280, '58684676', '客户279', '279客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.413593', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (281, '31190096', '客户280', '280客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.413685', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (282, '07505506', '客户281', '281客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.413767', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (283, '76350713', '客户282', '282客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.413849', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (284, '32023482', '客户283', '283客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.413939', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (285, '02743052', '客户284', '284客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414023', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (286, '89720053', '客户285', '285客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414105', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (287, '89807749', '客户286', '286客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414187', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (288, '28989677', '客户287', '287客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414269', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (289, '81366732', '客户288', '288客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414350', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (290, '24987443', '客户289', '289客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414432', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (291, '10107654', '客户290', '290客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414514', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (292, '81568272', '客户291', '291客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414596', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (293, '17869012', '客户292', '292客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414710', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (294, '84004038', '客户293', '293客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414797', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (295, '09919587', '客户294', '294客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414880', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (296, '81939468', '客户295', '295客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.414962', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (297, '31857904', '客户296', '296客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.415044', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (298, '03074039', '客户297', '297客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.415126', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (299, '18014189', '客户298', '298客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.415209', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (300, '41923918', '客户299', '299客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.415291', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (301, '87988703', '客户300', '300客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.415373', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (302, '99920417', '客户301', '301客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.415454', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (303, '00787297', '客户302', '302客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.415536', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (304, '57403939', '客户303', '303客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.415622', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (305, '23300939', '客户304', '304客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.415705', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (306, '55170727', '客户305', '305客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.415856', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (307, '33198822', '客户306', '306客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.416025', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (308, '89916822', '客户307', '307客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.416210', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (309, '57415403', '客户308', '308客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.416387', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (310, '35326308', '客户309', '309客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.416561', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (311, '44338641', '客户310', '310客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.416736', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (312, '73970968', '客户311', '311客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.416835', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (313, '09554202', '客户312', '312客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.416968', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (314, '20114335', '客户313', '313客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.417091', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (315, '32173932', '客户314', '314客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.417177', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (316, '62730011', '客户315', '315客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.417259', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (317, '74582986', '客户316', '316客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.417341', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (318, '44196277', '客户317', '317客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.417423', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (319, '56526395', '客户318', '318客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.417505', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (320, '83957181', '客户319', '319客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.417587', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (321, '28085395', '客户320', '320客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.417679', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (322, '44054345', '客户321', '321客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.417835', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (323, '70526884', '客户322', '322客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.417925', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (324, '94394322', '客户323', '323客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418012', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (325, '88359358', '客户324', '324客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418094', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (326, '48707674', '客户325', '325客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418199', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (327, '10332905', '客户326', '326客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418290', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (328, '00924674', '客户327', '327客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418373', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (329, '55852636', '客户328', '328客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418456', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (330, '33834637', '客户329', '329客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418538', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (331, '01621968', '客户330', '330客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418621', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (332, '81093399', '客户331', '331客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418704', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (333, '39191198', '客户332', '332客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418787', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (334, '25089740', '客户333', '333客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418870', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (335, '20538694', '客户334', '334客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.418952', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (336, '69449602', '客户335', '335客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419034', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (337, '88933087', '客户336', '336客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419121', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (338, '17758546', '客户337', '337客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419204', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (339, '42745350', '客户338', '338客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419303', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (340, '14302188', '客户339', '339客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419389', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (341, '94229401', '客户340', '340客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419471', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (342, '60198601', '客户341', '341客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419560', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (343, '44717877', '客户342', '342客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419644', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (344, '46972693', '客户343', '343客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419729', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (345, '47262154', '客户344', '344客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419812', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (346, '82753298', '客户345', '345客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419895', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (347, '14165700', '客户346', '346客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.419978', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (348, '43227572', '客户347', '347客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420059', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (349, '61300293', '客户348', '348客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420142', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (350, '27890317', '客户349', '349客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420224', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (351, '45604732', '客户350', '350客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420307', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (352, '94600658', '客户351', '351客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420402', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (353, '89685933', '客户352', '352客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420488', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (354, '35132902', '客户353', '353客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420569', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (355, '40509067', '客户354', '354客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420651', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (356, '38824749', '客户355', '355客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420734', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (357, '00082155', '客户356', '356客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420816', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (358, '11588404', '客户357', '357客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420898', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (359, '83621336', '客户358', '358客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.420979', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (360, '76692715', '客户359', '359客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421061', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (361, '46447244', '客户360', '360客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421143', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (362, '40671535', '客户361', '361客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421225', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (363, '47362863', '客户362', '362客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421307', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (364, '55168708', '客户363', '363客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421392', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (365, '67806170', '客户364', '364客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421497', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (366, '72112333', '客户365', '365客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421583', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (367, '78539998', '客户366', '366客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421665', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (368, '73048570', '客户367', '367客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421747', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (369, '96584177', '客户368', '368客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421832', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (370, '90425761', '客户369', '369客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.421924', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (371, '54969183', '客户370', '370客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422008', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (372, '70928539', '客户371', '371客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422090', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (373, '64536670', '客户372', '372客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422172', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (374, '73917601', '客户373', '373客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422253', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (375, '56112559', '客户374', '374客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422335', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (376, '34626315', '客户375', '375客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422416', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (377, '71319758', '客户376', '376客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422498', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (378, '02654298', '客户377', '377客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422591', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (379, '82076151', '客户378', '378客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422675', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (380, '97926664', '客户379', '379客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422756', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (381, '87780236', '客户380', '380客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422852', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (382, '73471881', '客户381', '381客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.422937', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (383, '35963432', '客户382', '382客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423019', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (384, '12919601', '客户383', '383客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423104', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (385, '27957983', '客户384', '384客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423186', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (386, '19238693', '客户385', '385客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423268', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (387, '34773106', '客户386', '386客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423349', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (388, '36503994', '客户387', '387客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423431', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (389, '42079514', '客户388', '388客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423514', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (390, '61633734', '客户389', '389客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423596', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (391, '79435085', '客户390', '390客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423692', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (392, '29419947', '客户391', '391客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423776', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (393, '63023413', '客户392', '392客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423858', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (394, '07176888', '客户393', '393客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.423939', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (395, '26170668', '客户394', '394客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424020', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (396, '93466736', '客户395', '395客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424102', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (397, '74373493', '客户396', '396客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424184', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (398, '14674763', '客户397', '397客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424265', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (399, '50968890', '客户398', '398客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424346', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (400, '13315369', '客户399', '399客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424431', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (401, '82753297', '客户400', '400客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424513', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (402, '40449170', '客户401', '401客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424596', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (403, '26260570', '客户402', '402客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424677', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (404, '67299665', '客户403', '403客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424785', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (405, '27313371', '客户404', '404客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424870', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (406, '70252753', '客户405', '405客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.424952', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (407, '22180965', '客户406', '406客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425034', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (408, '96141645', '客户407', '407客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425116', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (409, '31826819', '客户408', '408客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425199', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (410, '45352816', '客户409', '409客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425280', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (411, '63801588', '客户410', '410客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425363', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (412, '16488353', '客户411', '411客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425444', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (413, '94153944', '客户412', '412客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425529', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (414, '62667369', '客户413', '413客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425611', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (415, '81708002', '客户414', '414客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425693', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (416, '94907077', '客户415', '415客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425774', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (417, '42034364', '客户416', '416客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425870', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (418, '45389044', '客户417', '417客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.425954', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (419, '20046010', '客户418', '418客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426036', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (420, '18890476', '客户419', '419客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426118', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (421, '21853378', '客户420', '420客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426205', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (422, '97451447', '客户421', '421客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426288', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (423, '53820323', '客户422', '422客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426369', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (424, '23140218', '客户423', '423客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426455', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (425, '21867081', '客户424', '424客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426537', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (426, '52344134', '客户425', '425客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426618', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (427, '24250403', '客户426', '426客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426700', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (428, '80520609', '客户427', '427客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426781', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (429, '44474395', '客户428', '428客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426863', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (430, '67275827', '客户429', '429客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.426983', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (431, '00949780', '客户430', '430客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427097', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (432, '20708020', '客户431', '431客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427186', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (433, '33495136', '客户432', '432客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427270', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (434, '20873186', '客户433', '433客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427351', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (435, '25295001', '客户434', '434客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427433', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (436, '77854200', '客户435', '435客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427515', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (437, '61244326', '客户436', '436客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427598', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (438, '07438776', '客户437', '437客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427680', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (439, '83232889', '客户438', '438客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427764', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (440, '22245984', '客户439', '439客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427850', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (441, '16470192', '客户440', '440客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.427940', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (442, '57419088', '客户441', '441客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428022', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (443, '28450768', '客户442', '442客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428103', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (444, '06365533', '客户443', '443客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428199', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (445, '40063725', '客户444', '444客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428284', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (446, '15856989', '客户445', '445客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428364', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (447, '38380259', '客户446', '446客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428445', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (448, '88104127', '客户447', '447客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428526', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (449, '57202374', '客户448', '448客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428607', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (450, '78523077', '客户449', '449客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428688', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (451, '87999173', '客户450', '450客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428770', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (452, '18545005', '客户451', '451客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428851', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (453, '49935655', '客户452', '452客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.428932', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (454, '46028601', '客户453', '453客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429013', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (455, '59083961', '客户454', '454客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429095', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (456, '75322221', '客户455', '455客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429176', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (457, '33081106', '客户456', '456客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429275', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (458, '35739012', '客户457', '457客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429359', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (459, '34807741', '客户458', '458客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429441', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (460, '09056377', '客户459', '459客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429528', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (461, '91024032', '客户460', '460客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429611', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (462, '64738412', '客户461', '461客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429693', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (463, '05435684', '客户462', '462客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429778', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (464, '85361582', '客户463', '463客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429863', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (465, '49689125', '客户464', '464客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.429945', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (466, '99264728', '客户465', '465客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430027', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (467, '41805002', '客户466', '466客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430108', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (468, '06157700', '客户467', '467客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430190', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (469, '24559027', '客户468', '468客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430271', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (470, '76465226', '客户469', '469客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430366', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (471, '04419039', '客户470', '470客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430450', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (472, '62406624', '客户471', '471客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430532', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (473, '80491530', '客户472', '472客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430613', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (474, '10896057', '客户473', '473客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430695', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (475, '87215030', '客户474', '474客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430776', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (476, '09984308', '客户475', '475客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430858', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (477, '84527366', '客户476', '476客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.430939', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (478, '27188623', '客户477', '477客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431021', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (479, '29134345', '客户478', '478客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431102', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (480, '36660434', '客户479', '479客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431184', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (481, '65918464', '客户480', '480客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431265', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (482, '54452960', '客户481', '481客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431347', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (483, '76766697', '客户482', '482客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431441', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (484, '68979150', '客户483', '483客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431528', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (485, '50117975', '客户484', '484客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431610', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (486, '93643846', '客户485', '485客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431692', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (487, '48284202', '客户486', '486客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431773', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (488, '06756931', '客户487', '487客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431855', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (489, '32397626', '客户488', '488客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.431938', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (490, '87260922', '客户489', '489客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432020', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (491, '16967273', '客户490', '490客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432110', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (492, '08209035', '客户491', '491客户', 'male', NULL, NULL, 'qq', 'Go', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432194', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (493, '70551610', '客户492', '492客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432275', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (494, '36922552', '客户493', '493客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432357', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (495, '82968109', '客户494', '494客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432443', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (496, '13832051', '客户495', '495客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432543', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (497, '61232979', '客户496', '496客户', 'male', NULL, NULL, 'qq', 'PythonFullStack', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432627', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (498, '41256932', '客户497', '497客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432709', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (499, '84154933', '客户498', '498客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432790', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (500, '52948824', '客户499', '499客户', 'male', NULL, NULL, 'qq', 'Linux', 'fulltime', NULL, 'unregistered', NULL, '2018-11-24 14:30:58.432877', '2018-11-24', NULL, NULL, NULL, NULL);
INSERT INTO `crm_customer` VALUES (501, '992988405', '〇灬尛', '凌睿智', 'male', '1996-11-28', 13786151400, 'WoM', 'Linux,Go', 'fulltime', '', 'unregistered', '', '2018-11-26 13:42:06.242708', '2018-11-26', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_customer_class_list
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer_class_list`;
CREATE TABLE `crm_customer_class_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `classlist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_customer_class_list_customer_id_classlist_id_965b57d6_uniq`(`customer_id`, `classlist_id`) USING BTREE,
  INDEX `crm_customer_class_l_classlist_id_d6308406_fk_crm_class`(`classlist_id`) USING BTREE,
  CONSTRAINT `crm_customer_class_l_classlist_id_d6308406_fk_crm_class` FOREIGN KEY (`classlist_id`) REFERENCES `crm_classlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_customer_class_list_customer_id_bd17a54f_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_customer_class_list
-- ----------------------------
INSERT INTO `crm_customer_class_list` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for crm_department
-- ----------------------------
DROP TABLE IF EXISTS `crm_department`;
CREATE TABLE `crm_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for crm_enrollment
-- ----------------------------
DROP TABLE IF EXISTS `crm_enrollment`;
CREATE TABLE `crm_enrollment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `why_us` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `your_expectation` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `contract_agreed` tinyint(1) NOT NULL,
  `contract_approved` tinyint(1) NOT NULL,
  `enrolled_date` datetime(6) NOT NULL,
  `memo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `delete_status` tinyint(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `enrolment_class_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_enrollment_enrolment_class_id_customer_id_8283d1dd_uniq`(`enrolment_class_id`, `customer_id`) USING BTREE,
  INDEX `crm_enrollment_customer_id_4e9336cf_fk_crm_customer_id`(`customer_id`) USING BTREE,
  INDEX `crm_enrollment_school_id_b5e8c943_fk_crm_campuses_id`(`school_id`) USING BTREE,
  CONSTRAINT `crm_enrollment_customer_id_4e9336cf_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_enrollment_enrolment_class_id_8500dce0_fk_crm_classlist_id` FOREIGN KEY (`enrolment_class_id`) REFERENCES `crm_classlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_enrollment_school_id_b5e8c943_fk_crm_campuses_id` FOREIGN KEY (`school_id`) REFERENCES `crm_campuses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_enrollment
-- ----------------------------
INSERT INTO `crm_enrollment` VALUES (1, 'dasdasd', 'dasda', 0, 0, '2018-11-27 15:07:07.545890', '', 0, 1, 1, 2);
INSERT INTO `crm_enrollment` VALUES (2, 'kkk', '我想更强', 1, 0, '2018-11-27 15:28:33.027387', '', 0, 3, 1, 1);
INSERT INTO `crm_enrollment` VALUES (3, '', '', 0, 0, '2018-11-27 17:41:10.577155', '', 0, 1, 2, 1);

-- ----------------------------
-- Table structure for crm_paymentrecord
-- ----------------------------
DROP TABLE IF EXISTS `crm_paymentrecord`;
CREATE TABLE `crm_paymentrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `paid_fee` int(11) NOT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date` datetime(6) NOT NULL,
  `course` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_status` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL,
  `confirm_date` datetime(6) NULL DEFAULT NULL,
  `confirm_user_id` int(11) NULL DEFAULT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `enrolment_class_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `crm_paymentrecord_confirm_user_id_e88e5f25_fk_crm_userprofile_id`(`confirm_user_id`) USING BTREE,
  INDEX `crm_paymentrecord_consultant_id_45289fb8_fk_crm_userprofile_id`(`consultant_id`) USING BTREE,
  INDEX `crm_paymentrecord_customer_id_cd6d33f2_fk_crm_customer_id`(`customer_id`) USING BTREE,
  INDEX `crm_paymentrecord_enrolment_class_id_36cbd119_fk_crm_class`(`enrolment_class_id`) USING BTREE,
  CONSTRAINT `crm_paymentrecord_confirm_user_id_e88e5f25_fk_crm_userprofile_id` FOREIGN KEY (`confirm_user_id`) REFERENCES `crm_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_paymentrecord_consultant_id_45289fb8_fk_crm_userprofile_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_paymentrecord_customer_id_cd6d33f2_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_paymentrecord_enrolment_class_id_36cbd119_fk_crm_class` FOREIGN KEY (`enrolment_class_id`) REFERENCES `crm_classlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_paymentrecord
-- ----------------------------
INSERT INTO `crm_paymentrecord` VALUES (1, 'deposit', 500, '', '2018-11-27 16:20:45.844343', 'PythonFullStack', 'fulltime', 0, 1, NULL, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for crm_studyrecord
-- ----------------------------
DROP TABLE IF EXISTS `crm_studyrecord`;
CREATE TABLE `crm_studyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) NOT NULL,
  `homework_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homework` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_record_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_studyrecord_course_record_id_student_id_c1b4eb36_uniq`(`course_record_id`, `student_id`) USING BTREE,
  INDEX `crm_studyrecord_student_id_18b0c323_fk_crm_customer_id`(`student_id`) USING BTREE,
  CONSTRAINT `crm_studyrecord_course_record_id_e3601e93_fk_crm_courserecord_id` FOREIGN KEY (`course_record_id`) REFERENCES `crm_courserecord` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_studyrecord_student_id_18b0c323_fk_crm_customer_id` FOREIGN KEY (`student_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for crm_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `crm_userprofile`;
CREATE TABLE `crm_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_joined` datetime(6) NOT NULL,
  `department_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  INDEX `crm_userprofile_department_id_b7469aef_fk_crm_department_id`(`department_id`) USING BTREE,
  CONSTRAINT `crm_userprofile_department_id_b7469aef_fk_crm_department_id` FOREIGN KEY (`department_id`) REFERENCES `crm_department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_userprofile
-- ----------------------------
INSERT INTO `crm_userprofile` VALUES (1, 'pbkdf2_sha256$36000$Y1bPfvGmsR9e$Iu7mwEk/gw4C34R5I8R3cPVnq/Ct5DSS+m4YHGXfu6U=', '2018-12-15 11:38:57.815729', 1, 'abner@qq.com', 1, 1, 'Abner', NULL, NULL, '2018-11-23 17:37:30.361733', NULL);
INSERT INTO `crm_userprofile` VALUES (3, 'pbkdf2_sha256$36000$25pFPJjAOaEy$gB7wP2WbEQKvhwV2scbvKYerYno0C350sMXIsjwwl+s=', '2018-11-23 22:46:12.668475', 0, 'xcxc@qq.com', 0, 1, '川川', '18508494494', NULL, '2018-11-23 22:45:59.253735', NULL);

-- ----------------------------
-- Table structure for crm_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `crm_userprofile_groups`;
CREATE TABLE `crm_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_userprofile_groups_userprofile_id_group_id_3639bc47_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `crm_userprofile_groups_group_id_50fd12ae_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `crm_userprofile_grou_userprofile_id_c8440cbf_fk_crm_userp` FOREIGN KEY (`userprofile_id`) REFERENCES `crm_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_userprofile_groups_group_id_50fd12ae_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for crm_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `crm_userprofile_user_permissions`;
CREATE TABLE `crm_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_userprofile_user_per_userprofile_id_permissio_d2888764_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `crm_userprofile_user_permission_id_28bdda74_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `crm_userprofile_user_permission_id_28bdda74_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_userprofile_user_userprofile_id_566784f9_fk_crm_userp` FOREIGN KEY (`userprofile_id`) REFERENCES `crm_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_crm_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_crm_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `crm_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2018-11-27 14:55:01.115829', '1', 'Campuses object', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2018-11-27 14:55:06.515539', '2', 'Campuses object', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2018-11-27 14:55:18.147966', '3', 'Campuses object', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2018-11-27 15:04:50.610029', '1', 'ClassList object', 1, '[{\"added\": {}}]', 8, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'crm', 'campuses');
INSERT INTO `django_content_type` VALUES (8, 'crm', 'classlist');
INSERT INTO `django_content_type` VALUES (9, 'crm', 'consultrecord');
INSERT INTO `django_content_type` VALUES (10, 'crm', 'contracttemplate');
INSERT INTO `django_content_type` VALUES (11, 'crm', 'courserecord');
INSERT INTO `django_content_type` VALUES (12, 'crm', 'customer');
INSERT INTO `django_content_type` VALUES (13, 'crm', 'department');
INSERT INTO `django_content_type` VALUES (14, 'crm', 'enrollment');
INSERT INTO `django_content_type` VALUES (15, 'crm', 'paymentrecord');
INSERT INTO `django_content_type` VALUES (16, 'crm', 'studyrecord');
INSERT INTO `django_content_type` VALUES (6, 'crm', 'userprofile');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-11-23 17:02:23.676008');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2018-11-23 17:02:23.881707');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2018-11-23 17:02:25.420092');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2018-11-23 17:02:25.736001');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2018-11-23 17:02:25.757490');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2018-11-23 17:02:25.777098');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2018-11-23 17:02:25.798032');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2018-11-23 17:02:25.810184');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2018-11-23 17:02:25.831444');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2018-11-23 17:02:25.851575');
INSERT INTO `django_migrations` VALUES (11, 'crm', '0001_initial', '2018-11-23 17:02:30.573558');
INSERT INTO `django_migrations` VALUES (12, 'admin', '0001_initial', '2018-11-23 17:02:30.695275');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0002_logentry_remove_auto_add', '2018-11-23 17:02:30.732674');
INSERT INTO `django_migrations` VALUES (14, 'sessions', '0001_initial', '2018-11-23 17:02:30.768567');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('14nxun0j3rwy9uiqty8hoqk8hxfs2487', 'NTQ5MjZmYzE4Njc0MDk5ZGNmOGE1NjU3ZTUzY2YzMWQwZTBhNWU0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOGUxZWQxNGM2MzZjMGM3MDRkZGVjZjJiYjFiNGZlNTg0ZTVlNTVlIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MDQ4MDB9', '2018-12-02 22:54:57.039272');
INSERT INTO `django_session` VALUES ('583ay461659aur4wx2lyyct2q01xdze5', 'NTQ5MjZmYzE4Njc0MDk5ZGNmOGE1NjU3ZTUzY2YzMWQwZTBhNWU0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOGUxZWQxNGM2MzZjMGM3MDRkZGVjZjJiYjFiNGZlNTg0ZTVlNTVlIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MDQ4MDB9', '2018-12-04 11:58:18.812353');
INSERT INTO `django_session` VALUES ('b4g1ir8in6xpv15nl39cbkya7bkpmumz', 'NTQ5MjZmYzE4Njc0MDk5ZGNmOGE1NjU3ZTUzY2YzMWQwZTBhNWU0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOGUxZWQxNGM2MzZjMGM3MDRkZGVjZjJiYjFiNGZlNTg0ZTVlNTVlIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MDQ4MDB9', '2018-12-22 11:38:57.840538');
INSERT INTO `django_session` VALUES ('hmrkk8v7m7495a2u6ltn3nfedidw8xvw', 'NTQ5MjZmYzE4Njc0MDk5ZGNmOGE1NjU3ZTUzY2YzMWQwZTBhNWU0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOGUxZWQxNGM2MzZjMGM3MDRkZGVjZjJiYjFiNGZlNTg0ZTVlNTVlIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MDQ4MDB9', '2018-12-03 16:38:17.679643');
INSERT INTO `django_session` VALUES ('ig3i8d24w618qf2sguyhmp5qu7sulhoo', 'NTQ5MjZmYzE4Njc0MDk5ZGNmOGE1NjU3ZTUzY2YzMWQwZTBhNWU0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOGUxZWQxNGM2MzZjMGM3MDRkZGVjZjJiYjFiNGZlNTg0ZTVlNTVlIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MDQ4MDB9', '2018-11-30 20:07:47.294094');
INSERT INTO `django_session` VALUES ('tvmswft2zk92tz8iko36l4thfmj93v5m', 'NTQ5MjZmYzE4Njc0MDk5ZGNmOGE1NjU3ZTUzY2YzMWQwZTBhNWU0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOGUxZWQxNGM2MzZjMGM3MDRkZGVjZjJiYjFiNGZlNTg0ZTVlNTVlIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MDQ4MDB9', '2018-12-05 19:14:20.581410');

SET FOREIGN_KEY_CHECKS = 1;
