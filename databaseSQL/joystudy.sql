/*
MySQL Data Transfer
Source Host: localhost
Source Database: joystudy
Target Host: localhost
Target Database: joystudy
Date: 2009-1-19 8:59:23
*/
Create Database joystudy;

use joystudy;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for coursetb
-- ----------------------------
DROP TABLE IF EXISTS `coursetb`;
CREATE TABLE `coursetb` (
  `csID` int(3) NOT NULL AUTO_INCREMENT,
  `csName` varchar(50) NOT NULL,
  `csTeacher` int(3) NOT NULL,
  PRIMARY KEY (`csID`),
  UNIQUE KEY `csName` (`csName`),
  KEY `courseTeacher` (`csTeacher`),
  CONSTRAINT `courseTeacher` FOREIGN KEY (`csTeacher`) REFERENCES `usertb` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for enrollmenttb
-- ----------------------------
DROP TABLE IF EXISTS `enrollmenttb`;
CREATE TABLE `enrollmenttb` (
  `enID` int(6) NOT NULL AUTO_INCREMENT,
  `enUserID` int(3) NOT NULL,
  `enCourseID` int(3) NOT NULL,
  `enGrade` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`enID`),
  KEY `enUser` (`enUserID`),
  KEY `enCourse` (`enCourseID`),
  CONSTRAINT `enCourse` FOREIGN KEY (`enCourseID`) REFERENCES `coursetb` (`csID`),
  CONSTRAINT `enUser` FOREIGN KEY (`enUserID`) REFERENCES `usertb` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for messagetb
-- ----------------------------
DROP TABLE IF EXISTS `messagetb`;
CREATE TABLE `messagetb` (
  `mgID` int(7) NOT NULL AUTO_INCREMENT,
  `userID` int(5) NOT NULL,
  `courseID` int(3) NOT NULL,
  `mgTitle` varchar(100) NOT NULL,
  `mgContent` varchar(500) NOT NULL,
  PRIMARY KEY (`mgID`),
  KEY `msgUser` (`userID`),
  KEY `msgCourse` (`courseID`),
  CONSTRAINT `msgCourse` FOREIGN KEY (`courseID`) REFERENCES `coursetb` (`csID`),
  CONSTRAINT `msgUser` FOREIGN KEY (`userID`) REFERENCES `usertb` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for usertb
-- ----------------------------
DROP TABLE IF EXISTS `usertb`;
CREATE TABLE `usertb` (
  `uID` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `realName` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `sex` char(2) CHARACTER SET gb2312 NOT NULL DEFAULT '男',
  `Type` tinyint(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`uID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `coursetb` VALUES ('1', 'JSP', '2');
INSERT INTO `coursetb` VALUES ('2', 'Java', '13');
INSERT INTO `coursetb` VALUES ('3', 'Oracle', '8');
INSERT INTO `coursetb` VALUES ('4', '数据结构', '7');
INSERT INTO `coursetb` VALUES ('5', '计算机网络', '13');
INSERT INTO `coursetb` VALUES ('7', 'Linux', '2');
INSERT INTO `coursetb` VALUES ('8', 'ASP', '2');
INSERT INTO `coursetb` VALUES ('12', '美食鉴赏', '29');
INSERT INTO `coursetb` VALUES ('13', '测试课程', '29');
INSERT INTO `coursetb` VALUES ('14', 'RedHat', '2');
INSERT INTO `enrollmenttb` VALUES ('1', '4', '1', '89');
INSERT INTO `enrollmenttb` VALUES ('2', '11', '1', '88');
INSERT INTO `enrollmenttb` VALUES ('3', '11', '2', '86');
INSERT INTO `enrollmenttb` VALUES ('4', '4', '3', '98');
INSERT INTO `enrollmenttb` VALUES ('5', '1', '5', '96');
INSERT INTO `enrollmenttb` VALUES ('6', '3', '2', '80');
INSERT INTO `enrollmenttb` VALUES ('7', '3', '1', '90');
INSERT INTO `enrollmenttb` VALUES ('10', '3', '5', null);
INSERT INTO `enrollmenttb` VALUES ('11', '3', '14', '92');
INSERT INTO `messagetb` VALUES ('1', '4', '1', '韩老师讲的非常好！', '韩老师讲课非常认真！她的PPT比课本上的知识点多很多！很佩服韩老师！也很幸运能听到韩老师的课！不过我自己不用功，JSP学的不太好！明年我自己会补过来的！');
INSERT INTO `messagetb` VALUES ('4', '1', '5', '林老师讲的太棒了！强烈建议大家去听听！', '林老师讲的太好了！在大学里，有三个老师我最佩服！一个是韩老师，一个是讲Java的李老师，再有一个就是这个林老师！强烈建议大家去听听！');
INSERT INTO `messagetb` VALUES ('5', '3', '3', '赵老师讲的怎么样啊？', '感觉数据库挺终于！而Oracle数据库是全球功能最强大的数据库之一！想学一下！不知赵老师讲的怎么样啊？？');
INSERT INTO `messagetb` VALUES ('6', '2', '1', '大家对JSP的学习有什么意见？', '我是韩颖老师！这门数据库由来和大家一起学习！大家对JSP的学习有什么好的意见和建议请多多提出！');
INSERT INTO `messagetb` VALUES ('7', '2', '1', '使用测试类，测试插入！', '我使用人工设定测试一下在哪里有问题！');
INSERT INTO `messagetb` VALUES ('8', '2', '1', '使用测试类，测试第二次插入！', '我使用人工设定测试一下在哪里有问题！第二次测试看看返回指是什么！');
INSERT INTO `messagetb` VALUES ('9', '2', '1', '排除错误，测试网页！', '发现了网页里的一个错误！排除错误了！在测试一下！');
INSERT INTO `messagetb` VALUES ('10', '2', '1', '测试成功啊！！', '错误排除！测试成功啊！激动啊！！\r\n现在时间;2009年1月11日15:06:33\r\n');
INSERT INTO `messagetb` VALUES ('11', '2', '1', '老刘来帮忙了！搞定它！', '老刘老帮忙！信心大增啊！！\r\n一点要花力气搞定它！');
INSERT INTO `messagetb` VALUES ('12', '2', '1', '调整跳转后测试一下！~', '调整跳转后测试一下！~看看那是否能正确跳转！');
INSERT INTO `messagetb` VALUES ('14', '3', '2', '我是student，测试一次Java课程的留言板', '我是student，测试一次Java课程的留言板！\r\n我来\r\n oooO ?┏━┓ ? Oooo \r\n ( 踩)→┃你┃ ←(死 ) \r\n  \\ ( →┃√┃ ← ) / \r\n　 \\_)?┗━┛ ?(_/ \r\n已经');
INSERT INTO `messagetb` VALUES ('15', '2', '1', '使用测试类，测试第三次插入！', '我使用人工设定测试一下在哪里有问题！就是为了玩玩！！');
INSERT INTO `messagetb` VALUES ('16', '2', '8', 'sdf[pks[dfk', 'dl;kgp[gk[sekorpg[kdsz\\\'fhn');
INSERT INTO `messagetb` VALUES ('17', '1', '1', '测试管理员的留言功能', '我是管理员！刚刚加上留言板！我测试一下！');
INSERT INTO `usertb` VALUES ('1', 'adai', '123', '阿呆', 'leejun119@126.com', '男', '1');
INSERT INTO `usertb` VALUES ('2', 'teacher', '123', '老师', 'teacher@joystudy.edu', '女', '2');
INSERT INTO `usertb` VALUES ('3', 'student', '123', '学生', 'student@superjava.cn', '男', '3');
INSERT INTO `usertb` VALUES ('4', 'mantou', '123', '第五个馒头', 'mantou@superjava.cn', '男', '3');
INSERT INTO `usertb` VALUES ('5', 'benxiaohai', '123', '笨小孩', 'benxiaohai@superjava.cn', '男', '2');
INSERT INTO `usertb` VALUES ('7', 'laoda', '123', '老大', 'laoda@superjava.cn', '女', '2');
INSERT INTO `usertb` VALUES ('8', 'santanzi', '123', '三潭子', 'santanzi@superjava.cn', '女', '2');
INSERT INTO `usertb` VALUES ('10', 'hama', '123', '蛤蟆', 'hama@superjava.cn', '女', '2');
INSERT INTO `usertb` VALUES ('11', 'study', '123', '学生（备用）', 'student@superjava.cn', '女', '3');
INSERT INTO `usertb` VALUES ('12', 'benben', '123', '笨笨', 'benben@superjava.cn', '男', '3');
INSERT INTO `usertb` VALUES ('13', 'lynn', '123', '林楠', 'lynn_linnan@yahoo.com.cn', '女', '2');
INSERT INTO `usertb` VALUES ('19', 'admin', '123', '管理员', 'admin@superjava.cn', '女', '1');
INSERT INTO `usertb` VALUES ('20', 'yue', '123', '月', 'yue@superjava.cn', '女', '1');
INSERT INTO `usertb` VALUES ('22', 'dongge', '123', '东哥', 'dongge@superJava.cn', '男', '1');
INSERT INTO `usertb` VALUES ('28', 'testAdmin', '123', '测试管理员(可注销)', 'testAdmin@joyStudy.edu', '女', '1');
INSERT INTO `usertb` VALUES ('29', 'testTeacher', '123', '测试老师(可注销)', 'testTeacher@joyStudy.edu', '男', '2');
INSERT INTO `usertb` VALUES ('30', 'testStudent', '123', '测试学生(可注销)', 'testStudent@joyStudy.edu', '男', '3');
INSERT INTO `usertb` VALUES ('32', '哥', '123', '哥', 'ge@joystudy.edu', '男', '3');
INSERT INTO `usertb` VALUES ('33', 'test', '123', 'test', 'test', '男', '3');
