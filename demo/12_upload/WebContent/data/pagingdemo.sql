/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : pagingdemo

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 01/11/2018 09:46:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `book_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_auth` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_publisher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_price` decimal(7, 2) UNSIGNED NULL DEFAULT NULL,
  `book_image_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 498 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '我喜欢生命本来的样子', '周国平', '作家出版社', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (2, '牙细菌大作战', '北京健康协会', '中国人口出版社', 82.30, 'images/book/2.JPG');
INSERT INTO `book` VALUES (3, '我喜欢生命本来的样子3', '周国平3', '作家出版社3', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (4, '我喜欢生命本来的样子4', '周国平4', '作家出版社4', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (5, '我喜欢生命本来的样子5', '周国平5', '作家出版社5', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (6, '我喜欢生命本来的样子6', '周国平6', '作家出版社6', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (7, '我喜欢生命本来的样子7', '周国平7', '作家出版社7', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (8, '我喜欢生命本来的样子8', '周国平8', '作家出版社8', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (9, '我喜欢生命本来的样子9', '周国平9', '作家出版社9', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (10, '我喜欢生命本来的样子10', '周国平10', '作家出版社10', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (11, '我喜欢生命本来的样子11', '周国平11', '作家出版社11', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (12, '我喜欢生命本来的样子12', '周国平12', '作家出版社12', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (13, '我喜欢生命本来的样子13', '周国平13', '作家出版社13', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (14, '我喜欢生命本来的样子14', '周国平14', '作家出版社14', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (15, '我喜欢生命本来的样子15', '周国平15', '作家出版社15', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (16, '我喜欢生命本来的样子16', '周国平16', '作家出版社16', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (17, '我喜欢生命本来的样子17', '周国平17', '作家出版社17', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (18, '我喜欢生命本来的样子18', '周国平18', '作家出版社18', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (19, '我喜欢生命本来的样子19', '周国平19', '作家出版社19', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (20, '我喜欢生命本来的样子20', '周国平20', '作家出版社20', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (21, '我喜欢生命本来的样子21', '周国平21', '作家出版社21', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (22, '我喜欢生命本来的样子22', '周国平22', '作家出版社22', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (23, '我喜欢生命本来的样子23', '周国平23', '作家出版社23', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (24, '我喜欢生命本来的样子24', '周国平24', '作家出版社24', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (25, '我喜欢生命本来的样子25', '周国平25', '作家出版社25', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (26, '我喜欢生命本来的样子26', '周国平26', '作家出版社26', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (27, '我喜欢生命本来的样子27', '周国平27', '作家出版社27', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (28, '我喜欢生命本来的样子28', '周国平28', '作家出版社28', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (29, '我喜欢生命本来的样子29', '周国平29', '作家出版社29', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (30, '我喜欢生命本来的样子30', '周国平30', '作家出版社30', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (31, '我喜欢生命本来的样子31', '周国平31', '作家出版社31', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (32, '我喜欢生命本来的样子32', '周国平32', '作家出版社32', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (33, '我喜欢生命本来的样子33', '周国平33', '作家出版社33', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (34, '我喜欢生命本来的样子34', '周国平34', '作家出版社34', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (35, '我喜欢生命本来的样子35', '周国平35', '作家出版社35', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (36, '我喜欢生命本来的样子36', '周国平36', '作家出版社36', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (37, '我喜欢生命本来的样子37', '周国平37', '作家出版社37', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (38, '我喜欢生命本来的样子38', '周国平38', '作家出版社38', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (39, '我喜欢生命本来的样子39', '周国平39', '作家出版社39', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (40, '我喜欢生命本来的样子40', '周国平40', '作家出版社40', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (41, '我喜欢生命本来的样子41', '周国平41', '作家出版社41', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (42, '我喜欢生命本来的样子42', '周国平42', '作家出版社42', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (43, '我喜欢生命本来的样子43', '周国平43', '作家出版社43', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (44, '我喜欢生命本来的样子44', '周国平44', '作家出版社44', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (45, '我喜欢生命本来的样子45', '周国平45', '作家出版社45', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (46, '我喜欢生命本来的样子46', '周国平46', '作家出版社46', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (47, '我喜欢生命本来的样子47', '周国平47', '作家出版社47', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (48, '我喜欢生命本来的样子48', '周国平48', '作家出版社48', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (49, '我喜欢生命本来的样子49', '周国平49', '作家出版社49', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (50, '我喜欢生命本来的样子50', '周国平50', '作家出版社50', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (51, '我喜欢生命本来的样子51', '周国平51', '作家出版社51', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (52, '我喜欢生命本来的样子52', '周国平52', '作家出版社52', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (53, '我喜欢生命本来的样子53', '周国平53', '作家出版社53', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (54, '我喜欢生命本来的样子54', '周国平54', '作家出版社54', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (55, '我喜欢生命本来的样子55', '周国平55', '作家出版社55', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (56, '我喜欢生命本来的样子56', '周国平56', '作家出版社56', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (57, '我喜欢生命本来的样子57', '周国平57', '作家出版社57', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (58, '我喜欢生命本来的样子58', '周国平58', '作家出版社58', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (59, '我喜欢生命本来的样子59', '周国平59', '作家出版社59', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (60, '我喜欢生命本来的样子60', '周国平60', '作家出版社60', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (61, '我喜欢生命本来的样子61', '周国平61', '作家出版社61', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (62, '我喜欢生命本来的样子62', '周国平62', '作家出版社62', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (63, '我喜欢生命本来的样子63', '周国平63', '作家出版社63', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (64, '我喜欢生命本来的样子64', '周国平64', '作家出版社64', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (65, '我喜欢生命本来的样子65', '周国平65', '作家出版社65', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (66, '我喜欢生命本来的样子66', '周国平66', '作家出版社66', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (67, '我喜欢生命本来的样子67', '周国平67', '作家出版社67', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (68, '我喜欢生命本来的样子68', '周国平68', '作家出版社68', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (69, '我喜欢生命本来的样子69', '周国平69', '作家出版社69', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (70, '我喜欢生命本来的样子70', '周国平70', '作家出版社70', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (71, '我喜欢生命本来的样子71', '周国平71', '作家出版社71', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (72, '我喜欢生命本来的样子72', '周国平72', '作家出版社72', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (73, '我喜欢生命本来的样子73', '周国平73', '作家出版社73', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (74, '我喜欢生命本来的样子74', '周国平74', '作家出版社74', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (75, '我喜欢生命本来的样子75', '周国平75', '作家出版社75', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (76, '我喜欢生命本来的样子76', '周国平76', '作家出版社76', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (77, '我喜欢生命本来的样子77', '周国平77', '作家出版社77', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (78, '我喜欢生命本来的样子78', '周国平78', '作家出版社78', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (79, '我喜欢生命本来的样子79', '周国平79', '作家出版社79', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (80, '我喜欢生命本来的样子80', '周国平80', '作家出版社80', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (81, '我喜欢生命本来的样子81', '周国平81', '作家出版社81', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (82, '我喜欢生命本来的样子82', '周国平82', '作家出版社82', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (83, '我喜欢生命本来的样子83', '周国平83', '作家出版社83', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (84, '我喜欢生命本来的样子84', '周国平84', '作家出版社84', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (85, '我喜欢生命本来的样子85', '周国平85', '作家出版社85', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (86, '我喜欢生命本来的样子86', '周国平86', '作家出版社86', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (87, '我喜欢生命本来的样子87', '周国平87', '作家出版社87', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (88, '我喜欢生命本来的样子88', '周国平88', '作家出版社88', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (89, '我喜欢生命本来的样子89', '周国平89', '作家出版社89', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (90, '我喜欢生命本来的样子90', '周国平90', '作家出版社90', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (91, '我喜欢生命本来的样子91', '周国平91', '作家出版社91', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (92, '我喜欢生命本来的样子92', '周国平92', '作家出版社92', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (93, '我喜欢生命本来的样子93', '周国平93', '作家出版社93', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (94, '我喜欢生命本来的样子94', '周国平94', '作家出版社94', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (95, '我喜欢生命本来的样子95', '周国平95', '作家出版社95', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (96, '我喜欢生命本来的样子96', '周国平96', '作家出版社96', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (97, '我喜欢生命本来的样子97', '周国平97', '作家出版社97', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (98, '我喜欢生命本来的样子98', '周国平98', '作家出版社98', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (99, '我喜欢生命本来的样子99', '周国平99', '作家出版社99', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (100, '我喜欢生命本来的样子100', '周国平100', '作家出版社100', 38.20, 'images/book/1.JPG');
INSERT INTO `book` VALUES (101, '书3', '作者3', NULL, 30.00, NULL);
INSERT INTO `book` VALUES (102, '书4', '作者4', NULL, 40.00, NULL);
INSERT INTO `book` VALUES (103, '书5', '作者5', NULL, 50.00, NULL);
INSERT INTO `book` VALUES (104, '书6', '作者6', NULL, 60.00, NULL);
INSERT INTO `book` VALUES (105, '书7', '作者7', NULL, 70.00, NULL);
INSERT INTO `book` VALUES (106, '书8', '作者8', NULL, 80.00, NULL);
INSERT INTO `book` VALUES (107, '书9', '作者9', NULL, 90.00, NULL);
INSERT INTO `book` VALUES (108, '书10', '作者10', NULL, 100.00, NULL);
INSERT INTO `book` VALUES (109, '书11', '作者11', NULL, 110.00, NULL);
INSERT INTO `book` VALUES (110, '书12', '作者12', NULL, 120.00, NULL);
INSERT INTO `book` VALUES (111, '书13', '作者13', NULL, 130.00, NULL);
INSERT INTO `book` VALUES (112, '书14', '作者14', NULL, 140.00, NULL);
INSERT INTO `book` VALUES (113, '书15', '作者15', NULL, 150.00, NULL);
INSERT INTO `book` VALUES (114, '书16', '作者16', NULL, 160.00, NULL);
INSERT INTO `book` VALUES (115, '书17', '作者17', NULL, 170.00, NULL);
INSERT INTO `book` VALUES (116, '书18', '作者18', NULL, 180.00, NULL);
INSERT INTO `book` VALUES (117, '书19', '作者19', NULL, 190.00, NULL);
INSERT INTO `book` VALUES (118, '书20', '作者20', NULL, 200.00, NULL);
INSERT INTO `book` VALUES (119, '书21', '作者21', NULL, 210.00, NULL);
INSERT INTO `book` VALUES (120, '书22', '作者22', NULL, 220.00, NULL);
INSERT INTO `book` VALUES (121, '书23', '作者23', NULL, 230.00, NULL);
INSERT INTO `book` VALUES (122, '书24', '作者24', NULL, 240.00, NULL);
INSERT INTO `book` VALUES (123, '书25', '作者25', NULL, 250.00, NULL);
INSERT INTO `book` VALUES (124, '书26', '作者26', NULL, 260.00, NULL);
INSERT INTO `book` VALUES (125, '书27', '作者27', NULL, 270.00, NULL);
INSERT INTO `book` VALUES (126, '书28', '作者28', NULL, 280.00, NULL);
INSERT INTO `book` VALUES (127, '书29', '作者29', NULL, 290.00, NULL);
INSERT INTO `book` VALUES (128, '书30', '作者30', NULL, 300.00, NULL);
INSERT INTO `book` VALUES (129, '书31', '作者31', NULL, 310.00, NULL);
INSERT INTO `book` VALUES (130, '书32', '作者32', NULL, 320.00, NULL);
INSERT INTO `book` VALUES (131, '书33', '作者33', NULL, 330.00, NULL);
INSERT INTO `book` VALUES (132, '书34', '作者34', NULL, 340.00, NULL);
INSERT INTO `book` VALUES (133, '书35', '作者35', NULL, 350.00, NULL);
INSERT INTO `book` VALUES (134, '书36', '作者36', NULL, 360.00, NULL);
INSERT INTO `book` VALUES (135, '书37', '作者37', NULL, 370.00, NULL);
INSERT INTO `book` VALUES (136, '书38', '作者38', NULL, 380.00, NULL);
INSERT INTO `book` VALUES (137, '书39', '作者39', NULL, 390.00, NULL);
INSERT INTO `book` VALUES (138, '书40', '作者40', NULL, 400.00, NULL);
INSERT INTO `book` VALUES (139, '书41', '作者41', NULL, 410.00, NULL);
INSERT INTO `book` VALUES (140, '书42', '作者42', NULL, 420.00, NULL);
INSERT INTO `book` VALUES (141, '书43', '作者43', NULL, 430.00, NULL);
INSERT INTO `book` VALUES (142, '书44', '作者44', NULL, 440.00, NULL);
INSERT INTO `book` VALUES (143, '书45', '作者45', NULL, 450.00, NULL);
INSERT INTO `book` VALUES (144, '书46', '作者46', NULL, 460.00, NULL);
INSERT INTO `book` VALUES (145, '书47', '作者47', NULL, 470.00, NULL);
INSERT INTO `book` VALUES (146, '书48', '作者48', NULL, 480.00, NULL);
INSERT INTO `book` VALUES (147, '书49', '作者49', NULL, 490.00, NULL);
INSERT INTO `book` VALUES (148, '书50', '作者50', NULL, 500.00, NULL);
INSERT INTO `book` VALUES (149, '书51', '作者51', NULL, 510.00, NULL);
INSERT INTO `book` VALUES (150, '书52', '作者52', NULL, 520.00, NULL);
INSERT INTO `book` VALUES (151, '书53', '作者53', NULL, 530.00, NULL);
INSERT INTO `book` VALUES (152, '书54', '作者54', NULL, 540.00, NULL);
INSERT INTO `book` VALUES (153, '书55', '作者55', NULL, 550.00, NULL);
INSERT INTO `book` VALUES (154, '书56', '作者56', NULL, 560.00, NULL);
INSERT INTO `book` VALUES (155, '书57', '作者57', NULL, 570.00, NULL);
INSERT INTO `book` VALUES (156, '书58', '作者58', NULL, 580.00, NULL);
INSERT INTO `book` VALUES (157, '书59', '作者59', NULL, 590.00, NULL);
INSERT INTO `book` VALUES (158, '书60', '作者60', NULL, 600.00, NULL);
INSERT INTO `book` VALUES (159, '书61', '作者61', NULL, 610.00, NULL);
INSERT INTO `book` VALUES (160, '书62', '作者62', NULL, 620.00, NULL);
INSERT INTO `book` VALUES (161, '书63', '作者63', NULL, 630.00, NULL);
INSERT INTO `book` VALUES (162, '书64', '作者64', NULL, 640.00, NULL);
INSERT INTO `book` VALUES (163, '书65', '作者65', NULL, 650.00, NULL);
INSERT INTO `book` VALUES (164, '书66', '作者66', NULL, 660.00, NULL);
INSERT INTO `book` VALUES (165, '书67', '作者67', NULL, 670.00, NULL);
INSERT INTO `book` VALUES (166, '书68', '作者68', NULL, 680.00, NULL);
INSERT INTO `book` VALUES (167, '书69', '作者69', NULL, 690.00, NULL);
INSERT INTO `book` VALUES (168, '书70', '作者70', NULL, 700.00, NULL);
INSERT INTO `book` VALUES (169, '书71', '作者71', NULL, 710.00, NULL);
INSERT INTO `book` VALUES (170, '书72', '作者72', NULL, 720.00, NULL);
INSERT INTO `book` VALUES (171, '书73', '作者73', NULL, 730.00, NULL);
INSERT INTO `book` VALUES (172, '书74', '作者74', NULL, 740.00, NULL);
INSERT INTO `book` VALUES (173, '书75', '作者75', NULL, 750.00, NULL);
INSERT INTO `book` VALUES (174, '书76', '作者76', NULL, 760.00, NULL);
INSERT INTO `book` VALUES (175, '书77', '作者77', NULL, 770.00, NULL);
INSERT INTO `book` VALUES (176, '书78', '作者78', NULL, 780.00, NULL);
INSERT INTO `book` VALUES (177, '书79', '作者79', NULL, 790.00, NULL);
INSERT INTO `book` VALUES (178, '书80', '作者80', NULL, 800.00, NULL);
INSERT INTO `book` VALUES (179, '书81', '作者81', NULL, 810.00, NULL);
INSERT INTO `book` VALUES (180, '书82', '作者82', NULL, 820.00, NULL);
INSERT INTO `book` VALUES (181, '书83', '作者83', NULL, 830.00, NULL);
INSERT INTO `book` VALUES (182, '书84', '作者84', NULL, 840.00, NULL);
INSERT INTO `book` VALUES (183, '书85', '作者85', NULL, 850.00, NULL);
INSERT INTO `book` VALUES (184, '书86', '作者86', NULL, 860.00, NULL);
INSERT INTO `book` VALUES (185, '书87', '作者87', NULL, 870.00, NULL);
INSERT INTO `book` VALUES (186, '书88', '作者88', NULL, 880.00, NULL);
INSERT INTO `book` VALUES (187, '书89', '作者89', NULL, 890.00, NULL);
INSERT INTO `book` VALUES (188, '书90', '作者90', NULL, 900.00, NULL);
INSERT INTO `book` VALUES (189, '书91', '作者91', NULL, 910.00, NULL);
INSERT INTO `book` VALUES (190, '书92', '作者92', NULL, 920.00, NULL);
INSERT INTO `book` VALUES (191, '书93', '作者93', NULL, 930.00, NULL);
INSERT INTO `book` VALUES (192, '书94', '作者94', NULL, 940.00, NULL);
INSERT INTO `book` VALUES (193, '书95', '作者95', NULL, 950.00, NULL);
INSERT INTO `book` VALUES (194, '书96', '作者96', NULL, 960.00, NULL);
INSERT INTO `book` VALUES (195, '书97', '作者97', NULL, 970.00, NULL);
INSERT INTO `book` VALUES (196, '书98', '作者98', NULL, 980.00, NULL);
INSERT INTO `book` VALUES (197, '书99', '作者99', NULL, 990.00, NULL);
INSERT INTO `book` VALUES (198, '书100', '作者100', NULL, 1000.00, NULL);
INSERT INTO `book` VALUES (199, '书101', '作者101', NULL, 1010.00, NULL);
INSERT INTO `book` VALUES (200, '书3', '作者3', NULL, 30.00, NULL);
INSERT INTO `book` VALUES (201, '书4', '作者4', NULL, 40.00, NULL);
INSERT INTO `book` VALUES (202, '书5', '作者5', NULL, 50.00, NULL);
INSERT INTO `book` VALUES (203, '书6', '作者6', NULL, 60.00, NULL);
INSERT INTO `book` VALUES (204, '书7', '作者7', NULL, 70.00, NULL);
INSERT INTO `book` VALUES (205, '书8', '作者8', NULL, 80.00, NULL);
INSERT INTO `book` VALUES (206, '书9', '作者9', NULL, 90.00, NULL);
INSERT INTO `book` VALUES (207, '书10', '作者10', NULL, 100.00, NULL);
INSERT INTO `book` VALUES (208, '书11', '作者11', NULL, 110.00, NULL);
INSERT INTO `book` VALUES (209, '书12', '作者12', NULL, 120.00, NULL);
INSERT INTO `book` VALUES (210, '书13', '作者13', NULL, 130.00, NULL);
INSERT INTO `book` VALUES (211, '书14', '作者14', NULL, 140.00, NULL);
INSERT INTO `book` VALUES (212, '书15', '作者15', NULL, 150.00, NULL);
INSERT INTO `book` VALUES (213, '书16', '作者16', NULL, 160.00, NULL);
INSERT INTO `book` VALUES (214, '书17', '作者17', NULL, 170.00, NULL);
INSERT INTO `book` VALUES (215, '书18', '作者18', NULL, 180.00, NULL);
INSERT INTO `book` VALUES (216, '书19', '作者19', NULL, 190.00, NULL);
INSERT INTO `book` VALUES (217, '书20', '作者20', NULL, 200.00, NULL);
INSERT INTO `book` VALUES (218, '书21', '作者21', NULL, 210.00, NULL);
INSERT INTO `book` VALUES (219, '书22', '作者22', NULL, 220.00, NULL);
INSERT INTO `book` VALUES (220, '书23', '作者23', NULL, 230.00, NULL);
INSERT INTO `book` VALUES (221, '书24', '作者24', NULL, 240.00, NULL);
INSERT INTO `book` VALUES (222, '书25', '作者25', NULL, 250.00, NULL);
INSERT INTO `book` VALUES (223, '书26', '作者26', NULL, 260.00, NULL);
INSERT INTO `book` VALUES (224, '书27', '作者27', NULL, 270.00, NULL);
INSERT INTO `book` VALUES (225, '书28', '作者28', NULL, 280.00, NULL);
INSERT INTO `book` VALUES (226, '书29', '作者29', NULL, 290.00, NULL);
INSERT INTO `book` VALUES (227, '书30', '作者30', NULL, 300.00, NULL);
INSERT INTO `book` VALUES (228, '书31', '作者31', NULL, 310.00, NULL);
INSERT INTO `book` VALUES (229, '书32', '作者32', NULL, 320.00, NULL);
INSERT INTO `book` VALUES (230, '书33', '作者33', NULL, 330.00, NULL);
INSERT INTO `book` VALUES (231, '书34', '作者34', NULL, 340.00, NULL);
INSERT INTO `book` VALUES (232, '书35', '作者35', NULL, 350.00, NULL);
INSERT INTO `book` VALUES (233, '书36', '作者36', NULL, 360.00, NULL);
INSERT INTO `book` VALUES (234, '书37', '作者37', NULL, 370.00, NULL);
INSERT INTO `book` VALUES (235, '书38', '作者38', NULL, 380.00, NULL);
INSERT INTO `book` VALUES (236, '书39', '作者39', NULL, 390.00, NULL);
INSERT INTO `book` VALUES (237, '书40', '作者40', NULL, 400.00, NULL);
INSERT INTO `book` VALUES (238, '书41', '作者41', NULL, 410.00, NULL);
INSERT INTO `book` VALUES (239, '书42', '作者42', NULL, 420.00, NULL);
INSERT INTO `book` VALUES (240, '书43', '作者43', NULL, 430.00, NULL);
INSERT INTO `book` VALUES (241, '书44', '作者44', NULL, 440.00, NULL);
INSERT INTO `book` VALUES (242, '书45', '作者45', NULL, 450.00, NULL);
INSERT INTO `book` VALUES (243, '书46', '作者46', NULL, 460.00, NULL);
INSERT INTO `book` VALUES (244, '书47', '作者47', NULL, 470.00, NULL);
INSERT INTO `book` VALUES (245, '书48', '作者48', NULL, 480.00, NULL);
INSERT INTO `book` VALUES (246, '书49', '作者49', NULL, 490.00, NULL);
INSERT INTO `book` VALUES (247, '书50', '作者50', NULL, 500.00, NULL);
INSERT INTO `book` VALUES (248, '书51', '作者51', NULL, 510.00, NULL);
INSERT INTO `book` VALUES (249, '书52', '作者52', NULL, 520.00, NULL);
INSERT INTO `book` VALUES (250, '书53', '作者53', NULL, 530.00, NULL);
INSERT INTO `book` VALUES (251, '书54', '作者54', NULL, 540.00, NULL);
INSERT INTO `book` VALUES (252, '书55', '作者55', NULL, 550.00, NULL);
INSERT INTO `book` VALUES (253, '书56', '作者56', NULL, 560.00, NULL);
INSERT INTO `book` VALUES (254, '书57', '作者57', NULL, 570.00, NULL);
INSERT INTO `book` VALUES (255, '书58', '作者58', NULL, 580.00, NULL);
INSERT INTO `book` VALUES (256, '书59', '作者59', NULL, 590.00, NULL);
INSERT INTO `book` VALUES (257, '书60', '作者60', NULL, 600.00, NULL);
INSERT INTO `book` VALUES (258, '书61', '作者61', NULL, 610.00, NULL);
INSERT INTO `book` VALUES (259, '书62', '作者62', NULL, 620.00, NULL);
INSERT INTO `book` VALUES (260, '书63', '作者63', NULL, 630.00, NULL);
INSERT INTO `book` VALUES (261, '书64', '作者64', NULL, 640.00, NULL);
INSERT INTO `book` VALUES (262, '书65', '作者65', NULL, 650.00, NULL);
INSERT INTO `book` VALUES (263, '书66', '作者66', NULL, 660.00, NULL);
INSERT INTO `book` VALUES (264, '书67', '作者67', NULL, 670.00, NULL);
INSERT INTO `book` VALUES (265, '书68', '作者68', NULL, 680.00, NULL);
INSERT INTO `book` VALUES (266, '书69', '作者69', NULL, 690.00, NULL);
INSERT INTO `book` VALUES (267, '书70', '作者70', NULL, 700.00, NULL);
INSERT INTO `book` VALUES (268, '书71', '作者71', NULL, 710.00, NULL);
INSERT INTO `book` VALUES (269, '书72', '作者72', NULL, 720.00, NULL);
INSERT INTO `book` VALUES (270, '书73', '作者73', NULL, 730.00, NULL);
INSERT INTO `book` VALUES (271, '书74', '作者74', NULL, 740.00, NULL);
INSERT INTO `book` VALUES (272, '书75', '作者75', NULL, 750.00, NULL);
INSERT INTO `book` VALUES (273, '书76', '作者76', NULL, 760.00, NULL);
INSERT INTO `book` VALUES (274, '书77', '作者77', NULL, 770.00, NULL);
INSERT INTO `book` VALUES (275, '书78', '作者78', NULL, 780.00, NULL);
INSERT INTO `book` VALUES (276, '书79', '作者79', NULL, 790.00, NULL);
INSERT INTO `book` VALUES (277, '书80', '作者80', NULL, 800.00, NULL);
INSERT INTO `book` VALUES (278, '书81', '作者81', NULL, 810.00, NULL);
INSERT INTO `book` VALUES (279, '书82', '作者82', NULL, 820.00, NULL);
INSERT INTO `book` VALUES (280, '书83', '作者83', NULL, 830.00, NULL);
INSERT INTO `book` VALUES (281, '书84', '作者84', NULL, 840.00, NULL);
INSERT INTO `book` VALUES (282, '书85', '作者85', NULL, 850.00, NULL);
INSERT INTO `book` VALUES (283, '书86', '作者86', NULL, 860.00, NULL);
INSERT INTO `book` VALUES (284, '书87', '作者87', NULL, 870.00, NULL);
INSERT INTO `book` VALUES (285, '书88', '作者88', NULL, 880.00, NULL);
INSERT INTO `book` VALUES (286, '书89', '作者89', NULL, 890.00, NULL);
INSERT INTO `book` VALUES (287, '书90', '作者90', NULL, 900.00, NULL);
INSERT INTO `book` VALUES (288, '书91', '作者91', NULL, 910.00, NULL);
INSERT INTO `book` VALUES (289, '书92', '作者92', NULL, 920.00, NULL);
INSERT INTO `book` VALUES (290, '书93', '作者93', NULL, 930.00, NULL);
INSERT INTO `book` VALUES (291, '书94', '作者94', NULL, 940.00, NULL);
INSERT INTO `book` VALUES (292, '书95', '作者95', NULL, 950.00, NULL);
INSERT INTO `book` VALUES (293, '书96', '作者96', NULL, 960.00, NULL);
INSERT INTO `book` VALUES (294, '书97', '作者97', NULL, 970.00, NULL);
INSERT INTO `book` VALUES (295, '书98', '作者98', NULL, 980.00, NULL);
INSERT INTO `book` VALUES (296, '书99', '作者99', NULL, 990.00, NULL);
INSERT INTO `book` VALUES (297, '书100', '作者100', NULL, 1000.00, NULL);
INSERT INTO `book` VALUES (298, '书101', '作者101', NULL, 1010.00, NULL);
INSERT INTO `book` VALUES (299, '书3', '作者3', NULL, 30.00, NULL);
INSERT INTO `book` VALUES (300, '书4', '作者4', NULL, 40.00, NULL);
INSERT INTO `book` VALUES (301, '书5', '作者5', NULL, 50.00, NULL);
INSERT INTO `book` VALUES (302, '书6', '作者6', NULL, 60.00, NULL);
INSERT INTO `book` VALUES (303, '书7', '作者7', NULL, 70.00, NULL);
INSERT INTO `book` VALUES (304, '书8', '作者8', NULL, 80.00, NULL);
INSERT INTO `book` VALUES (305, '书9', '作者9', NULL, 90.00, NULL);
INSERT INTO `book` VALUES (306, '书10', '作者10', NULL, 100.00, NULL);
INSERT INTO `book` VALUES (307, '书11', '作者11', NULL, 110.00, NULL);
INSERT INTO `book` VALUES (308, '书12', '作者12', NULL, 120.00, NULL);
INSERT INTO `book` VALUES (309, '书13', '作者13', NULL, 130.00, NULL);
INSERT INTO `book` VALUES (310, '书14', '作者14', NULL, 140.00, NULL);
INSERT INTO `book` VALUES (311, '书15', '作者15', NULL, 150.00, NULL);
INSERT INTO `book` VALUES (312, '书16', '作者16', NULL, 160.00, NULL);
INSERT INTO `book` VALUES (313, '书17', '作者17', NULL, 170.00, NULL);
INSERT INTO `book` VALUES (314, '书18', '作者18', NULL, 180.00, NULL);
INSERT INTO `book` VALUES (315, '书19', '作者19', NULL, 190.00, NULL);
INSERT INTO `book` VALUES (316, '书20', '作者20', NULL, 200.00, NULL);
INSERT INTO `book` VALUES (317, '书21', '作者21', NULL, 210.00, NULL);
INSERT INTO `book` VALUES (318, '书22', '作者22', NULL, 220.00, NULL);
INSERT INTO `book` VALUES (319, '书23', '作者23', NULL, 230.00, NULL);
INSERT INTO `book` VALUES (320, '书24', '作者24', NULL, 240.00, NULL);
INSERT INTO `book` VALUES (321, '书25', '作者25', NULL, 250.00, NULL);
INSERT INTO `book` VALUES (322, '书26', '作者26', NULL, 260.00, NULL);
INSERT INTO `book` VALUES (323, '书27', '作者27', NULL, 270.00, NULL);
INSERT INTO `book` VALUES (324, '书28', '作者28', NULL, 280.00, NULL);
INSERT INTO `book` VALUES (325, '书29', '作者29', NULL, 290.00, NULL);
INSERT INTO `book` VALUES (326, '书30', '作者30', NULL, 300.00, NULL);
INSERT INTO `book` VALUES (327, '书31', '作者31', NULL, 310.00, NULL);
INSERT INTO `book` VALUES (328, '书32', '作者32', NULL, 320.00, NULL);
INSERT INTO `book` VALUES (329, '书33', '作者33', NULL, 330.00, NULL);
INSERT INTO `book` VALUES (330, '书34', '作者34', NULL, 340.00, NULL);
INSERT INTO `book` VALUES (331, '书35', '作者35', NULL, 350.00, NULL);
INSERT INTO `book` VALUES (332, '书36', '作者36', NULL, 360.00, NULL);
INSERT INTO `book` VALUES (333, '书37', '作者37', NULL, 370.00, NULL);
INSERT INTO `book` VALUES (334, '书38', '作者38', NULL, 380.00, NULL);
INSERT INTO `book` VALUES (335, '书39', '作者39', NULL, 390.00, NULL);
INSERT INTO `book` VALUES (336, '书40', '作者40', NULL, 400.00, NULL);
INSERT INTO `book` VALUES (337, '书41', '作者41', NULL, 410.00, NULL);
INSERT INTO `book` VALUES (338, '书42', '作者42', NULL, 420.00, NULL);
INSERT INTO `book` VALUES (339, '书43', '作者43', NULL, 430.00, NULL);
INSERT INTO `book` VALUES (340, '书44', '作者44', NULL, 440.00, NULL);
INSERT INTO `book` VALUES (341, '书45', '作者45', NULL, 450.00, NULL);
INSERT INTO `book` VALUES (342, '书46', '作者46', NULL, 460.00, NULL);
INSERT INTO `book` VALUES (343, '书47', '作者47', NULL, 470.00, NULL);
INSERT INTO `book` VALUES (344, '书48', '作者48', NULL, 480.00, NULL);
INSERT INTO `book` VALUES (345, '书49', '作者49', NULL, 490.00, NULL);
INSERT INTO `book` VALUES (346, '书50', '作者50', NULL, 500.00, NULL);
INSERT INTO `book` VALUES (347, '书51', '作者51', NULL, 510.00, NULL);
INSERT INTO `book` VALUES (348, '书52', '作者52', NULL, 520.00, NULL);
INSERT INTO `book` VALUES (349, '书53', '作者53', NULL, 530.00, NULL);
INSERT INTO `book` VALUES (350, '书54', '作者54', NULL, 540.00, NULL);
INSERT INTO `book` VALUES (351, '书55', '作者55', NULL, 550.00, NULL);
INSERT INTO `book` VALUES (352, '书56', '作者56', NULL, 560.00, NULL);
INSERT INTO `book` VALUES (353, '书57', '作者57', NULL, 570.00, NULL);
INSERT INTO `book` VALUES (354, '书58', '作者58', NULL, 580.00, NULL);
INSERT INTO `book` VALUES (355, '书59', '作者59', NULL, 590.00, NULL);
INSERT INTO `book` VALUES (356, '书60', '作者60', NULL, 600.00, NULL);
INSERT INTO `book` VALUES (357, '书61', '作者61', NULL, 610.00, NULL);
INSERT INTO `book` VALUES (358, '书62', '作者62', NULL, 620.00, NULL);
INSERT INTO `book` VALUES (359, '书63', '作者63', NULL, 630.00, NULL);
INSERT INTO `book` VALUES (360, '书64', '作者64', NULL, 640.00, NULL);
INSERT INTO `book` VALUES (361, '书65', '作者65', NULL, 650.00, NULL);
INSERT INTO `book` VALUES (362, '书66', '作者66', NULL, 660.00, NULL);
INSERT INTO `book` VALUES (363, '书67', '作者67', NULL, 670.00, NULL);
INSERT INTO `book` VALUES (364, '书68', '作者68', NULL, 680.00, NULL);
INSERT INTO `book` VALUES (365, '书69', '作者69', NULL, 690.00, NULL);
INSERT INTO `book` VALUES (366, '书70', '作者70', NULL, 700.00, NULL);
INSERT INTO `book` VALUES (367, '书71', '作者71', NULL, 710.00, NULL);
INSERT INTO `book` VALUES (368, '书72', '作者72', NULL, 720.00, NULL);
INSERT INTO `book` VALUES (369, '书73', '作者73', NULL, 730.00, NULL);
INSERT INTO `book` VALUES (370, '书74', '作者74', NULL, 740.00, NULL);
INSERT INTO `book` VALUES (371, '书75', '作者75', NULL, 750.00, NULL);
INSERT INTO `book` VALUES (372, '书76', '作者76', NULL, 760.00, NULL);
INSERT INTO `book` VALUES (373, '书77', '作者77', NULL, 770.00, NULL);
INSERT INTO `book` VALUES (374, '书78', '作者78', NULL, 780.00, NULL);
INSERT INTO `book` VALUES (375, '书79', '作者79', NULL, 790.00, NULL);
INSERT INTO `book` VALUES (376, '书80', '作者80', NULL, 800.00, NULL);
INSERT INTO `book` VALUES (377, '书81', '作者81', NULL, 810.00, NULL);
INSERT INTO `book` VALUES (378, '书82', '作者82', NULL, 820.00, NULL);
INSERT INTO `book` VALUES (379, '书83', '作者83', NULL, 830.00, NULL);
INSERT INTO `book` VALUES (380, '书84', '作者84', NULL, 840.00, NULL);
INSERT INTO `book` VALUES (381, '书85', '作者85', NULL, 850.00, NULL);
INSERT INTO `book` VALUES (382, '书86', '作者86', NULL, 860.00, NULL);
INSERT INTO `book` VALUES (383, '书87', '作者87', NULL, 870.00, NULL);
INSERT INTO `book` VALUES (384, '书88', '作者88', NULL, 880.00, NULL);
INSERT INTO `book` VALUES (385, '书89', '作者89', NULL, 890.00, NULL);
INSERT INTO `book` VALUES (386, '书90', '作者90', NULL, 900.00, NULL);
INSERT INTO `book` VALUES (387, '书91', '作者91', NULL, 910.00, NULL);
INSERT INTO `book` VALUES (388, '书92', '作者92', NULL, 920.00, NULL);
INSERT INTO `book` VALUES (389, '书93', '作者93', NULL, 930.00, NULL);
INSERT INTO `book` VALUES (390, '书94', '作者94', NULL, 940.00, NULL);
INSERT INTO `book` VALUES (391, '书95', '作者95', NULL, 950.00, NULL);
INSERT INTO `book` VALUES (392, '书96', '作者96', NULL, 960.00, NULL);
INSERT INTO `book` VALUES (393, '书97', '作者97', NULL, 970.00, NULL);
INSERT INTO `book` VALUES (394, '书98', '作者98', NULL, 980.00, NULL);
INSERT INTO `book` VALUES (395, '书99', '作者99', NULL, 990.00, NULL);
INSERT INTO `book` VALUES (396, '书100', '作者100', NULL, 1000.00, NULL);
INSERT INTO `book` VALUES (397, '书101', '作者101', NULL, 1010.00, NULL);
INSERT INTO `book` VALUES (398, '书3', '作者3', NULL, 30.00, NULL);
INSERT INTO `book` VALUES (399, '书4', '作者4', NULL, 40.00, NULL);
INSERT INTO `book` VALUES (400, '书5', '作者5', NULL, 50.00, NULL);
INSERT INTO `book` VALUES (401, '书6', '作者6', NULL, 60.00, NULL);
INSERT INTO `book` VALUES (402, '书7', '作者7', NULL, 70.00, NULL);
INSERT INTO `book` VALUES (403, '书8', '作者8', NULL, 80.00, NULL);
INSERT INTO `book` VALUES (404, '书9', '作者9', NULL, 90.00, NULL);
INSERT INTO `book` VALUES (405, '书10', '作者10', NULL, 100.00, NULL);
INSERT INTO `book` VALUES (406, '书11', '作者11', NULL, 110.00, NULL);
INSERT INTO `book` VALUES (407, '书12', '作者12', NULL, 120.00, NULL);
INSERT INTO `book` VALUES (408, '书13', '作者13', NULL, 130.00, NULL);
INSERT INTO `book` VALUES (409, '书14', '作者14', NULL, 140.00, NULL);
INSERT INTO `book` VALUES (410, '书15', '作者15', NULL, 150.00, NULL);
INSERT INTO `book` VALUES (411, '书16', '作者16', NULL, 160.00, NULL);
INSERT INTO `book` VALUES (412, '书17', '作者17', NULL, 170.00, NULL);
INSERT INTO `book` VALUES (413, '书18', '作者18', NULL, 180.00, NULL);
INSERT INTO `book` VALUES (414, '书19', '作者19', NULL, 190.00, NULL);
INSERT INTO `book` VALUES (415, '书20', '作者20', NULL, 200.00, NULL);
INSERT INTO `book` VALUES (416, '书21', '作者21', NULL, 210.00, NULL);
INSERT INTO `book` VALUES (417, '书22', '作者22', NULL, 220.00, NULL);
INSERT INTO `book` VALUES (418, '书23', '作者23', NULL, 230.00, NULL);
INSERT INTO `book` VALUES (419, '书24', '作者24', NULL, 240.00, NULL);
INSERT INTO `book` VALUES (420, '书25', '作者25', NULL, 250.00, NULL);
INSERT INTO `book` VALUES (421, '书26', '作者26', NULL, 260.00, NULL);
INSERT INTO `book` VALUES (422, '书27', '作者27', NULL, 270.00, NULL);
INSERT INTO `book` VALUES (423, '书28', '作者28', NULL, 280.00, NULL);
INSERT INTO `book` VALUES (424, '书29', '作者29', NULL, 290.00, NULL);
INSERT INTO `book` VALUES (425, '书30', '作者30', NULL, 300.00, NULL);
INSERT INTO `book` VALUES (426, '书31', '作者31', NULL, 310.00, NULL);
INSERT INTO `book` VALUES (427, '书32', '作者32', NULL, 320.00, NULL);
INSERT INTO `book` VALUES (428, '书33', '作者33', NULL, 330.00, NULL);
INSERT INTO `book` VALUES (429, '书34', '作者34', NULL, 340.00, NULL);
INSERT INTO `book` VALUES (430, '书35', '作者35', NULL, 350.00, NULL);
INSERT INTO `book` VALUES (431, '书36', '作者36', NULL, 360.00, NULL);
INSERT INTO `book` VALUES (432, '书37', '作者37', NULL, 370.00, NULL);
INSERT INTO `book` VALUES (433, '书38', '作者38', NULL, 380.00, NULL);
INSERT INTO `book` VALUES (434, '书39', '作者39', NULL, 390.00, NULL);
INSERT INTO `book` VALUES (435, '书40', '作者40', NULL, 400.00, NULL);
INSERT INTO `book` VALUES (436, '书41', '作者41', NULL, 410.00, NULL);
INSERT INTO `book` VALUES (437, '书42', '作者42', NULL, 420.00, NULL);
INSERT INTO `book` VALUES (438, '书43', '作者43', NULL, 430.00, NULL);
INSERT INTO `book` VALUES (439, '书44', '作者44', NULL, 440.00, NULL);
INSERT INTO `book` VALUES (440, '书45', '作者45', NULL, 450.00, NULL);
INSERT INTO `book` VALUES (441, '书46', '作者46', NULL, 460.00, NULL);
INSERT INTO `book` VALUES (442, '书47', '作者47', NULL, 470.00, NULL);
INSERT INTO `book` VALUES (443, '书48', '作者48', NULL, 480.00, NULL);
INSERT INTO `book` VALUES (444, '书49', '作者49', NULL, 490.00, NULL);
INSERT INTO `book` VALUES (445, '书50', '作者50', NULL, 500.00, NULL);
INSERT INTO `book` VALUES (446, '书51', '作者51', NULL, 510.00, NULL);
INSERT INTO `book` VALUES (447, '书52', '作者52', NULL, 520.00, NULL);
INSERT INTO `book` VALUES (448, '书53', '作者53', NULL, 530.00, NULL);
INSERT INTO `book` VALUES (449, '书54', '作者54', NULL, 540.00, NULL);
INSERT INTO `book` VALUES (450, '书55', '作者55', NULL, 550.00, NULL);
INSERT INTO `book` VALUES (451, '书56', '作者56', NULL, 560.00, NULL);
INSERT INTO `book` VALUES (452, '书57', '作者57', NULL, 570.00, NULL);
INSERT INTO `book` VALUES (453, '书58', '作者58', NULL, 580.00, NULL);
INSERT INTO `book` VALUES (454, '书59', '作者59', NULL, 590.00, NULL);
INSERT INTO `book` VALUES (455, '书60', '作者60', NULL, 600.00, NULL);
INSERT INTO `book` VALUES (456, '书61', '作者61', NULL, 610.00, NULL);
INSERT INTO `book` VALUES (457, '书62', '作者62', NULL, 620.00, NULL);
INSERT INTO `book` VALUES (458, '书63', '作者63', NULL, 630.00, NULL);
INSERT INTO `book` VALUES (459, '书64', '作者64', NULL, 640.00, NULL);
INSERT INTO `book` VALUES (460, '书65', '作者65', NULL, 650.00, NULL);
INSERT INTO `book` VALUES (461, '书66', '作者66', NULL, 660.00, NULL);
INSERT INTO `book` VALUES (462, '书67', '作者67', NULL, 670.00, NULL);
INSERT INTO `book` VALUES (463, '书68', '作者68', NULL, 680.00, NULL);
INSERT INTO `book` VALUES (464, '书69', '作者69', NULL, 690.00, NULL);
INSERT INTO `book` VALUES (465, '书70', '作者70', NULL, 700.00, NULL);
INSERT INTO `book` VALUES (466, '书71', '作者71', NULL, 710.00, NULL);
INSERT INTO `book` VALUES (467, '书72', '作者72', NULL, 720.00, NULL);
INSERT INTO `book` VALUES (468, '书73', '作者73', NULL, 730.00, NULL);
INSERT INTO `book` VALUES (469, '书74', '作者74', NULL, 740.00, NULL);
INSERT INTO `book` VALUES (470, '书75', '作者75', NULL, 750.00, NULL);
INSERT INTO `book` VALUES (471, '书76', '作者76', NULL, 760.00, NULL);
INSERT INTO `book` VALUES (472, '书77', '作者77', NULL, 770.00, NULL);
INSERT INTO `book` VALUES (473, '书78', '作者78', NULL, 780.00, NULL);
INSERT INTO `book` VALUES (474, '书79', '作者79', NULL, 790.00, NULL);
INSERT INTO `book` VALUES (475, '书80', '作者80', NULL, 800.00, NULL);
INSERT INTO `book` VALUES (476, '书81', '作者81', NULL, 810.00, NULL);
INSERT INTO `book` VALUES (477, '书82', '作者82', NULL, 820.00, NULL);
INSERT INTO `book` VALUES (478, '书83', '作者83', NULL, 830.00, NULL);
INSERT INTO `book` VALUES (479, '书84', '作者84', NULL, 840.00, NULL);
INSERT INTO `book` VALUES (480, '书85', '作者85', NULL, 850.00, NULL);
INSERT INTO `book` VALUES (481, '书86', '作者86', NULL, 860.00, NULL);
INSERT INTO `book` VALUES (482, '书87', '作者87', NULL, 870.00, NULL);
INSERT INTO `book` VALUES (483, '书88', '作者88', NULL, 880.00, NULL);
INSERT INTO `book` VALUES (484, '书89', '作者89', NULL, 890.00, NULL);
INSERT INTO `book` VALUES (485, '书90', '作者90', NULL, 900.00, NULL);
INSERT INTO `book` VALUES (486, '书91', '作者91', NULL, 910.00, NULL);
INSERT INTO `book` VALUES (487, '书92', '作者92', NULL, 920.00, NULL);
INSERT INTO `book` VALUES (488, '书93', '作者93', NULL, 930.00, NULL);
INSERT INTO `book` VALUES (489, '书94', '作者94', NULL, 940.00, NULL);
INSERT INTO `book` VALUES (490, '书95', '作者95', NULL, 950.00, NULL);
INSERT INTO `book` VALUES (491, '书96', '作者96', NULL, 960.00, NULL);
INSERT INTO `book` VALUES (492, '书97', '作者97', NULL, 970.00, NULL);
INSERT INTO `book` VALUES (493, '书98', '作者98', NULL, 980.00, NULL);
INSERT INTO `book` VALUES (494, '书99', '作者99', NULL, 990.00, NULL);
INSERT INTO `book` VALUES (495, '书100', '作者100', NULL, 1000.00, NULL);
INSERT INTO `book` VALUES (496, '书101', '作者101', NULL, 1010.00, NULL);
INSERT INTO `book` VALUES (497, '书50', '作者50', NULL, 500.00, NULL);

SET FOREIGN_KEY_CHECKS = 1;
