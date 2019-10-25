/*
 Navicat Premium Data Transfer

 Source Server         : MySQL8
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : vue_book

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 25/10/2019 19:23:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AUTHOR` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pictureUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `press` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `updateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `year` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '9787302517597', '明日科技', '2019-10-06 15:19:13', '297个应用实例+37个典型应用+30小时教学视频+海量开发资源库，丛书累计销量200多万册', 'Java从入门到精通（第5版）', 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/26339/8/10661/124305/5c8af829E4470835f/99742c91174d3d7a.jpg', ' 清华大学出版社', 55.1, 1000, '2019-10-06 15:38:42', '2019-10-06 15:38:40');
INSERT INTO `book` VALUES (2, '9787302528197', '吴胜', '2019-10-06 15:21:56', '零基础知识点精讲与丰富实战案例相结合，配有360分钟实战开发视频，涵盖springBoot基础与z新知识及实战开发', 'Spring Boot开发实战', 'https://img10.360buyimg.com/n2/jfs/t1/39012/11/14846/143485/5d5ce30dEf1f5adcd/6cc6d18faf536215.jpg', '清华大学出版社', 50.9, 500, '2019-10-06 15:23:19', '2019-10-06 15:21:25');
INSERT INTO `book` VALUES (3, '9787111634362', '王健宗', '2019-10-06 15:23:21', '华为顶薪人工智能博士研究方向，资深AI专家撰写，腾讯、阿里、微众银行、字节跳动、浙江大学、新智元等企业界、学术界、媒体界的8位资深专家联袂推荐', '深入理解AutoML和AutoDL：构建自动化机器学习与深度学习平台', 'https://img11.360buyimg.com/n2/jfs/t1/66049/5/7365/253106/5d567687E1eccaf6d/18471c18ad57664e.jpg', '机械工业出版社', 81.7, 500, '2019-10-06 15:38:44', '2019-10-06 15:38:43');
INSERT INTO `book` VALUES (4, '9787111213826', '[美] Bruce Eckel ', '2019-10-06 15:34:18', 'Java学习必读经典,殿堂级著作！赢得了全球程序员的广泛赞誉', 'Java编程思想（第4版） [thinking in java]', 'https://img14.360buyimg.com/n1/s200x200_jfs/t2191/111/699154754/198998/32d7bfe0/5624b582Nbc01af5b.jpg', '机械工业出版社', 87.2, 2000, '2019-10-06 15:38:47', '2019-10-06 15:38:46');
INSERT INTO `book` VALUES (5, '9787302509332', '关东升 ', '2019-10-06 15:36:18', 'Python从小白到大牛', 'Python从小白到大牛', 'https://img12.360buyimg.com/n1/s200x200_jfs/t1/9499/9/2448/149643/5bd2be73E10148fe2/1922b5362c3bdea5.jpg', '清华大学出版社', 44.5, 1500, '2019-10-06 15:38:49', '2019-10-06 15:38:48');
INSERT INTO `book` VALUES (6, '9787111528395', ' 马克·艾伦·维斯 ', '2019-10-06 15:38:16', '国际著名计算机教育专家Weiss数据结构与算法Java描述经典教材新版，把算法分析与高效率的Java程序的开发有机地结合起来，深入分析每种算法。', '数据结构与算法分析：Java语言描述（原书第3版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1897/55/2837612294/467469/83cd5b6/56f25c46Nc3b3c506.jpg', ' 机械工业出版社', 50.6, 2000, '2019-10-06 15:38:53', '2019-10-06 15:38:50');
INSERT INTO `book` VALUES (7, '9787121367410', '谭勇德（Tom）', '2019-10-06 15:39:30', '十年沉淀之作，手写Spring精华思想，21万+学员听过在线课，超强实战技术升级指南，囊括源码、设计思想、架构思维、实战案例、开发经验，Java架构师成长必备', 'Spring 5核心原理与30个类手写实战', 'https://img12.360buyimg.com/n1/s200x200_jfs/t1/35683/16/14079/291004/5d1eace5E61b08f48/09238e1b876f13b7.jpg', ' 电子工业出版社', 89.7, 1600, '2019-10-06 15:40:23', '2019-10-06 15:40:21');
INSERT INTO `book` VALUES (8, '9787517054245', '未来科技 ', '2019-10-06 15:41:35', '手机扫码看412节同步视频+661个案例分析+1000习题面试题+4396个案例+47部参考手册+1636个模版+17类素材库+623项配色+508项欣赏库', 'HTML5+CSS3+JavaScript从入门到精通（标准版） web前端开发网页设计丛书', 'https://img14.360buyimg.com/n1/s200x200_jfs/t5956/203/8069473743/490021/7451586b/5983fa7dNf91302f8.jpg', ' 中国水利水电出版社', 61.9, 1233, '2019-10-06 15:42:42', '2019-10-06 15:42:39');
INSERT INTO `book` VALUES (9, '9787115278715', 'Peter Lubbers', '2019-10-06 15:44:16', '超级畅销书《HTML5高级程序设计》升级版', 'HTML5程序设计（第2版）', 'https://img10.360buyimg.com/n1/s200x200_g1/M01/03/16/rBEGDU-jM70IAAAAAAEjTvIEeV4AAAudgCK_okAASNm252.jpg', '人民邮电出版社', 48.2, 1425, '2019-10-06 15:44:16', '2019-10-01 15:44:13');
INSERT INTO `book` VALUES (10, '9787302515630', '刘爱江，靳智良', '2019-10-06 15:44:45', 'HTMLCSS3JavaScript网页设计从入门到精通，15章精讲360分钟的视频教学42个视频课件文件', 'HTML5+CSS3+JavaScript网页设计入门与应用', 'https://img12.360buyimg.com/n1/s200x200_jfs/t1/39044/38/1381/316122/5cbd1e50E53e9fbcb/64c341608348d171.jpg', '清华大学出版社', 57.8, 1425, '2019-10-06 15:45:54', '2019-10-08 15:45:13');
INSERT INTO `book` VALUES (11, '9787115350657', '[美] Elizabeth，Castro，Bruce，Hyslop', '2019-10-06 15:48:26', 'Web开发百万级畅销图书 零起点轻松掌握HTML5和CSS3 网页设计入门经典教程 html css javascript技术应用详解 网站建设必备宝典', 'HTML5与CSS3基础教程（第8版）', 'https://img14.360buyimg.com/n1/s200x200_g16/M00/00/1B/rBEbRlNq67QIAAAAAANi-ZgJ99MAAAKmwB9y5AAA2MR470.jpg', '人民邮电出版社', 56.4, 1445, '2019-10-06 15:51:08', '2019-07-08 15:49:15');
INSERT INTO `book` VALUES (12, '9787569222258', '明日科技（MingRi Soft）', '2019-10-06 15:53:43', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解Python语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学Python（全彩版）', 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/69554/35/8347/319511/5d638072E1711ea6a/5159b7faccd57ad0.jpg', ' 吉林大学出版社', 56.4, 1115, '2019-10-06 15:53:43', '2019-10-06 15:53:23');
INSERT INTO `book` VALUES (13, '9787121351976', '李刚 ', '2019-10-06 15:54:26', '从零开始，Python编程从入门到实践一网打尽，648页鸿篇巨制，围绕网络爬虫、大数据分析、Web编程、并发编程等就业热点设置案例；李刚作品上市十年销量近百万册，在线答疑，赠520个案例、网络课程与券', '疯狂Python讲义', 'https://img12.360buyimg.com/n1/s200x200_jfs/t1/7946/39/6888/109241/5be28195Eee6ede41/25404f189716f1b2.jpg', '电子工业出版社', 89.7, 234, '2019-10-06 15:55:12', '2019-10-06 15:55:09');
INSERT INTO `book` VALUES (14, '9787115474889', 'Magnus Lie Hetland', '2019-10-06 15:57:01', 'Python3.5编程从入门到实践，Python入门佳作，机器学习，人工智能，数据处理，网络爬虫热门编程语言，累计销售20万册', 'Python基础教程（第3版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t16000/280/1739586023/148652/7169502e/5a5c6d05N0f2172f9.jpg', '人民邮电出版社', 80.9, 453, '2019-10-06 15:57:01', '2019-10-06 15:56:56');
INSERT INTO `book` VALUES (15, '12660454', '明日科技', '2019-10-06 15:58:13', '学习实战技巧三剑合璧，Python编程高手速成秘籍！', 'Python全栈开发三剑客 （京东套装共3册）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/74574/32/6925/368454/5d50d5a5Ec566b5ce/db0ef523042a6c35.jpg', ' 吉林大学出版社', 219, 455, '2019-10-06 15:58:58', '2019-10-06 15:58:36');
INSERT INTO `book` VALUES (16, '9787517067146', '刘瑜 ', '2019-10-06 16:00:57', 'Python3.6入门，支持3.6.X/3.7版本，作者在线答疑，涵盖科学计算、大数据分析、网络爬虫、人工智能等热门应用，赠案例代码/习题实验答案/函数示例手册', 'Python编程从零基础到项目实战（微课视频版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t25480/244/1868364232/520985/20f28aea/5bbecce9N302f62c4.jpg', '中国水利水电出版社', 67.8, 123, '2019-10-06 16:00:57', '2019-10-06 16:00:40');
INSERT INTO `book` VALUES (17, '9787302503880', '明日科技', '2019-10-06 16:02:34', 'Python从入门到精通（软件开发视频大讲堂）', 'Python从入门到精通（软件开发视频大讲堂）', 'https://img12.360buyimg.com/n1/s200x200_jfs/t1/1144/26/11754/133800/5bd02e8fEc3691c60/bb9b79a2e13592f0.jpg', '清华大学出版社', 67.8, 1255, '2019-10-06 16:02:34', '2019-10-06 16:02:32');
INSERT INTO `book` VALUES (18, '9787115390592', '[美] 史蒂芬·普拉达（Stephen Prata）', '2019-10-06 16:04:12', '畅销30余年的C语言编程入门教程 近百万程序员的C语言编程启蒙教程 技术大牛案头常备的工具书 针对C11标准库更新 蔡学镛 孟岩 高博倾力推荐', 'C Primer Plus 第6版 中文版', 'https://img12.360buyimg.com/n1/s200x200_jfs/t18727/11/537625758/296118/938d791f/5a93c36fN44a747c0.jpg', ' 人民邮电出版社', 67.3, 585, '2019-10-06 16:04:37', '2019-09-01 16:04:29');
INSERT INTO `book` VALUES (19, '12250414', '明日科技（MingRi Soft）', '2019-10-06 16:06:09', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 16:06:09', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (20, '12194885', '谭浩强', '2019-10-06 16:07:36', '50册以上团购优惠 联系电话010-890113804', 'C程序设计（第五版）+ 学习辅导(套装共2册）', 'https://img10.360buyimg.com/n1/s200x200_jfs/t9694/74/1296611139/79088/5c26d2d9/59df3587N5defa858.jpg', ' 清华大学出版社', 60.9, 233, '2019-10-06 16:07:49', '2019-06-06 16:07:44');
INSERT INTO `book` VALUES (21, '9787115279460', ' Stephen Prata ', '2019-10-06 16:08:21', '畅销20余年的C++编程入门教程 近百万程序员的C++编程启蒙教程 技术大牛案头常备的工具书 针对C++11标准库更新 蔡学镛 孟岩 高博倾力推荐', 'C++ Primer Plus（第6版 中文版） [C++ Primer Plus]', 'https://img13.360buyimg.com/n1/s200x200_jfs/t20314/139/439767662/251385/77521300/5b0e07ffN4152350d.jpg', '人民邮电出版社', 80.9, 1255, '2019-10-06 16:09:35', '2019-10-06 16:09:33');
INSERT INTO `book` VALUES (22, '9787302023685', '严蔚敏，吴伟民', '2019-10-06 16:11:00', '50册以上团购优惠 联系电话010-890113804', '数据结构（C语言版）清华大学计算机系列教材', 'https://img10.360buyimg.com/n1/s200x200_jfs/t24907/183/814695306/202452/7cb5b2ea/5b7d3ac8N92ea02b4.jpg', '清华大学出版社', 28.8, 1223, '2019-10-06 16:11:11', '2019-05-06 16:11:03');
INSERT INTO `book` VALUES (23, '9787111621959', '[美] 马克·艾伦·维斯（Mark，Allen，Weiss）', '2019-10-06 16:13:02', '\r\n书中详细介绍了当前流行的论题和新的变化，讨论了算法设计技巧，并在研究算法的性能、效率。', '数据结构与算法分析 C语言描述（原书第2版）典藏版', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/23612/4/14947/149850/5cad9a58Eeaf87234/70d0c7686366b90a.jpg', ' 机械工业出版社', 57.9, 1423, '2019-10-06 16:13:02', '2019-10-29 16:12:57');
INSERT INTO `book` VALUES (43, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:09:44', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:09:44', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (44, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:10:08', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:10:08', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (45, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:10:08', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:10:08', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (46, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:10:08', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:10:08', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (47, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:10:09', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:10:09', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (48, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:10:10', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:10:10', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (49, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:10:10', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:10:10', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (50, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:10:10', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:10:10', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (51, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:10:10', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:10:10', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (52, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:48', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:48', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (53, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:48', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:48', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (54, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:48', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:48', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (55, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:48', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:48', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (56, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:49', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:49', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (57, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:49', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:49', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (58, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:49', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:49', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (59, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:49', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:49', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (60, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:49', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:49', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (61, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:50', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:50', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (62, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:50', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:50', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (63, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:50', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:50', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (64, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:50', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:50', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (65, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:51', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:51', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (66, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:11:51', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:11:51', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (67, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:12:13', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:12:13', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (68, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:12:14', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:12:14', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (69, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:12:14', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:12:14', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (70, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:12:14', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:12:14', '2019-10-06 16:05:43');
INSERT INTO `book` VALUES (71, '12250414', '明日科技（MingRi Soft）', '2019-10-06 18:12:14', '10万读者认可的编程图书，零基础自学编程的入门图书，由浅入深，详解C语言的编程思想和核心技术，配同步视频教程和源代码，海量资源免费赠送', '零基础学C语言（全彩版）', 'https://img14.360buyimg.com/n1/s200x200_jfs/t1/72735/17/7893/306930/5d5cf281E7716eb59/dfaa8d2fd9114247.jpg', '吉林大学出版社', 49.4, 422, '2019-10-06 18:12:14', '2019-10-06 16:05:43');

-- ----------------------------
-- Table structure for cartitem
-- ----------------------------
DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE `cartitem`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `count` int(11) NULL DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKkepsbg64cetjfrlwvrj7scykk`(`book_id`) USING BTREE,
  INDEX `FK91yaatx862c8kw930jc6jgap5`(`cart_id`) USING BTREE,
  CONSTRAINT `FK91yaatx862c8kw930jc6jgap5` FOREIGN KEY (`cart_id`) REFERENCES `shoppingcart` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKkepsbg64cetjfrlwvrj7scykk` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cartitem
-- ----------------------------
INSERT INTO `cartitem` VALUES (24, 1, 17, 1);
INSERT INTO `cartitem` VALUES (25, 1, 15, 1);
INSERT INTO `cartitem` VALUES (26, 3, 5, 1);
INSERT INTO `cartitem` VALUES (27, 1, 1, 1);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `confirmTime` datetime(0) NULL DEFAULT NULL,
  `createTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finalPrice` double NULL DEFAULT NULL,
  `orderNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payTime` datetime(0) NULL DEFAULT NULL,
  `shipTime` datetime(0) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `totalPrice` double NULL DEFAULT NULL,
  `shippingAddr_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_l6nypnmytysy2wg9exrj5pkn5`(`orderNumber`) USING BTREE,
  INDEX `FKr7uf771ynjrsw7umq9fpofomd`(`shippingAddr_id`) USING BTREE,
  INDEX `FK54bcuqqji0ui86bdbc75thhld`(`user_id`) USING BTREE,
  CONSTRAINT `FK54bcuqqji0ui86bdbc75thhld` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKr7uf771ynjrsw7umq9fpofomd` FOREIGN KEY (`shippingAddr_id`) REFERENCES `shippingaddress` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (3, NULL, '2019-10-22 01:17:39', 602.2, '1910220117397759', NULL, NULL, 0, NULL, 2, 1);
INSERT INTO `order` VALUES (4, NULL, '2019-10-22 17:15:42', 271, '1910221715422126', NULL, NULL, 0, NULL, 1, 1);

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NULL DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK1ahrocgy5xqgxlcgvie01ymfm`(`book_id`) USING BTREE,
  INDEX `FKor2tbmh1x6wbaawlht13tx52i`(`order_id`) USING BTREE,
  CONSTRAINT `FK1ahrocgy5xqgxlcgvie01ymfm` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKor2tbmh1x6wbaawlht13tx52i` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (5, 1, 18, 3);
INSERT INTO `orderitem` VALUES (6, 1, 21, 3);
INSERT INTO `orderitem` VALUES (7, 1, 20, 3);
INSERT INTO `orderitem` VALUES (8, 1, 8, 3);
INSERT INTO `orderitem` VALUES (9, 2, 4, 3);
INSERT INTO `orderitem` VALUES (10, 1, 17, 3);
INSERT INTO `orderitem` VALUES (11, 2, 5, 3);
INSERT INTO `orderitem` VALUES (12, 1, 21, 4);
INSERT INTO `orderitem` VALUES (13, 1, 20, 4);
INSERT INTO `orderitem` VALUES (14, 1, 8, 4);
INSERT INTO `orderitem` VALUES (15, 1, 18, 4);

-- ----------------------------
-- Table structure for shippingaddress
-- ----------------------------
DROP TABLE IF EXISTS `shippingaddress`;
CREATE TABLE `shippingaddress`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `consignee` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `postcode` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKmcx84k6a9x2w1btt1ok9cn0b1`(`user_id`) USING BTREE,
  CONSTRAINT `FKmcx84k6a9x2w1btt1ok9cn0b1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shippingaddress
-- ----------------------------
INSERT INTO `shippingaddress` VALUES (1, 'china', 'ame', '13916691986', '234565', 1);
INSERT INTO `shippingaddress` VALUES (2, '上海', 'yyf', '13915561896', '123455', 1);

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES (1);
INSERT INTO `shoppingcart` VALUES (2);
INSERT INTO `shoppingcart` VALUES (3);
INSERT INTO `shoppingcart` VALUES (4);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `gender` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idCard` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shoppingCart_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_jreodf78a7pl5qidfh43axdfb`(`username`) USING BTREE,
  INDEX `FKd7xbiisgwb13xotpju5qrgys8`(`shoppingCart_id`) USING BTREE,
  CONSTRAINT `FKd7xbiisgwb13xotpju5qrgys8` FOREIGN KEY (`shoppingCart_id`) REFERENCES `shoppingcart` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, '2019-10-21 21:59:00', NULL, b'1', NULL, NULL, '$2a$10$FRQ5Ylv6QTXACbOsS5gVYO31jbnlVAix1FtA1oZ2j9NqtBFE87B7q', NULL, '2019-10-21 21:59:00', 'admin', 1);
INSERT INTO `user` VALUES (2, NULL, '2019-10-21 22:15:38', NULL, b'1', NULL, NULL, '$2a$10$uXz7zrQlUsy42ZW4oDyoJ.rNUwfp7GeZJkQ8Dzw1QoLLTFE.jEAqa', NULL, '2019-10-21 22:15:38', 'user', 2);
INSERT INTO `user` VALUES (3, NULL, '2019-10-24 16:11:39', NULL, b'1', NULL, NULL, '$2a$10$B0taCn8Xq0CB8H/0YCjdjeFhBFq7hKXrJ55gBlsntRcanX5K4ZCLe', '13915531863', '2019-10-24 16:11:39', 'user2', 3);
INSERT INTO `user` VALUES (4, NULL, '2019-10-24 16:18:49', NULL, b'1', NULL, NULL, '$2a$10$mFLfD44Cm9lHrJ0QzTwW5uqEQypbs5S6qFHmOPj0tPv1jqR7bCJTK', '13915531863', '2019-10-24 16:18:49', 'user3', 4);

SET FOREIGN_KEY_CHECKS = 1;
