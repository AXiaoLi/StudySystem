/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : db_studysystem

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2019-06-20 09:37:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attendence
-- ----------------------------
DROP TABLE IF EXISTS `attendence`;
CREATE TABLE `attendence` (
  `attendenceId` int(11) default NULL,
  `attendenceName` varchar(50) default NULL,
  `classId` int(11) default NULL,
  `cId` int(11) default NULL,
  `teaNum` int(11) default NULL,
  `date` varchar(50) default NULL,
  `type` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attendence
-- ----------------------------

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `classId` int(11) NOT NULL,
  `className` varchar(50) default NULL,
  `cId` int(11) default NULL,
  `teaNum` int(11) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '周一晚上', '1', '123', 'no');
INSERT INTO `class` VALUES ('2', '周一晚上', '1', '124', 'no');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cId` int(11) NOT NULL auto_increment,
  `cName` varchar(50) NOT NULL,
  `teaNum` int(11) default NULL,
  `info` varchar(300) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`cId`),
  KEY `course_teacher_foreign` (`teaNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'Java', '123', 'Java', 'no');
INSERT INTO `course` VALUES ('2', 'C语言', '124', 'C', 'no');
INSERT INTO `course` VALUES ('3', '数据库', '123', '数据库', 'no');
INSERT INTO `course` VALUES ('4', '大学英语', null, '', 'no');
INSERT INTO `course` VALUES ('5', '大学数学', null, '0', 'no');
INSERT INTO `course` VALUES ('7', '云计算', '123', '', 'no');
INSERT INTO `course` VALUES ('8', '大学英语', '124', '', 'no');
INSERT INTO `course` VALUES ('9', '软件项目管理', '123', '软件项目管理', 'no');

-- ----------------------------
-- Table structure for doc
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `docId` int(11) NOT NULL auto_increment,
  `docName` varchar(66) default NULL,
  `cId` int(11) default NULL,
  `docAttachment` varchar(50) default NULL,
  `attachmentOldName` varchar(55) default NULL,
  `uploadTime` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`docId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc
-- ----------------------------
INSERT INTO `doc` VALUES ('1', 'Java笔记01', '1', 'upload1463664347977.doc', 'Java笔记01.doc', '2019-06-09', 'no');
INSERT INTO `doc` VALUES ('2', '数据库笔记01', '3', null, '数据库笔记01.doc', '2016-06-09', 'no');
INSERT INTO `doc` VALUES ('13', '啊啊啊', '1', 'DF39580752A04E549DEF9A616F59268B.docx', 'UML中各种图形概要.docx', '2019-06-13', 'no');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `gradeId` int(11) NOT NULL auto_increment,
  `cId` int(11) default NULL,
  `classId` int(11) default NULL,
  `stuNum` int(11) default NULL,
  `grade` varchar(14) default NULL,
  `remark` varchar(200) default NULL,
  PRIMARY KEY  (`gradeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------

-- ----------------------------
-- Table structure for homework
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework` (
  `homeworkId` int(11) NOT NULL,
  `homeworkName` varchar(50) default NULL,
  `cId` int(11) default NULL,
  `classId` int(11) default NULL,
  `teaNum` int(11) default NULL,
  `startTime` varchar(50) default NULL,
  `deadline` varchar(50) default NULL,
  `homeworkAttachment` varchar(50) default NULL,
  `attachmentOldName` varchar(50) default NULL,
  `uploadTime` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`homeworkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES ('1', '第一次作业', '1', '1', '123', '2019-06-10', '2019-06-20', '4786534652754276.docx', '作业报告模板.docx', '2019-06-10', 'no');
INSERT INTO `homework` VALUES ('2', '第二次作业', '1', '1', '123', '2019-06-10', '2019-06-25', '4786534652754276.docx', '作业报告模板.docx', '2019-06-10', 'no');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL,
  `content` varchar(2000) default NULL,
  `leaveWordTime` varchar(50) default NULL,
  `stuNum` int(11) default NULL,
  `cId` int(11) default NULL,
  `teaNum` int(11) default NULL,
  `replay` varchar(2000) default NULL,
  `replayTime` varchar(50) default NULL,
  PRIMARY KEY  (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `noticeId` int(11) NOT NULL auto_increment,
  `noticeName` varchar(100) default NULL,
  `noticeContent` varchar(2000) default NULL,
  `cId` int(11) default NULL,
  `teaNum` int(11) default NULL,
  `date` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`noticeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '考试时间', '考试时间：2019年6月20日 考试地点：2教106 考核方式：闭卷', '1', '123', '2019-06-10', 'no');

-- ----------------------------
-- Table structure for ppt
-- ----------------------------
DROP TABLE IF EXISTS `ppt`;
CREATE TABLE `ppt` (
  `pptId` int(11) NOT NULL auto_increment,
  `pptName` varchar(66) default NULL,
  `cId` int(11) default NULL,
  `pptAttachment` varchar(50) default NULL,
  `attachmentOldName` varchar(55) default NULL,
  `uploadTime` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`pptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ppt
-- ----------------------------
INSERT INTO `ppt` VALUES ('1', 'Java基础语法', '1', 'upload1463664347977.ppt', 'Java基础语法.ppt', '2016-06-10', 'no');
INSERT INTO `ppt` VALUES ('2', '数据库基础', '3', null, '数据库基础.ppt', '2016-06-10', 'no');

-- ----------------------------
-- Table structure for selectedcourse
-- ----------------------------
DROP TABLE IF EXISTS `selectedcourse`;
CREATE TABLE `selectedcourse` (
  `sId` int(11) NOT NULL auto_increment,
  `stuNum` int(11) default NULL,
  `cId` int(11) default NULL,
  `cName` varchar(50) default NULL,
  PRIMARY KEY  (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selectedcourse
-- ----------------------------
INSERT INTO `selectedcourse` VALUES ('1', '111', '1', 'Java');
INSERT INTO `selectedcourse` VALUES ('2', '111', '2', 'C语言');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stuId` int(11) NOT NULL auto_increment,
  `stuNum` varchar(66) default NULL,
  `stuRealname` varchar(50) default NULL,
  `stuSex` varchar(50) default '男',
  `stuAge` varchar(55) default NULL,
  `loginPw` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  `photo` mediumblob,
  PRIMARY KEY  (`stuId`),
  KEY `stuNum` (`stuNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '111', '小明', '男', '20', '123', 'no', null);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teaId` int(11) NOT NULL auto_increment,
  `teaNum` varchar(66) default NULL,
  `teaRealname` varchar(50) default NULL,
  `teaSex` varchar(50) default '男',
  `loginPw` varchar(50) default NULL,
  PRIMARY KEY  (`teaId`),
  KEY `teaNum` (`teaNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '123', '张三', '男', '123');
INSERT INTO `teacher` VALUES ('2', '124', '李四', '男', '123');

-- ----------------------------
-- Table structure for vedio
-- ----------------------------
DROP TABLE IF EXISTS `vedio`;
CREATE TABLE `vedio` (
  `vedioId` int(11) NOT NULL auto_increment,
  `vedioName` varchar(66) default NULL,
  `cId` int(11) default NULL,
  `vedioPro` varchar(2000) default NULL,
  `vedioAttachment` varchar(55) default NULL,
  `attachmentOldName` varchar(2000) default NULL,
  `uploadTime` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`vedioId`),
  KEY `cId` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vedio
-- ----------------------------
INSERT INTO `vedio` VALUES ('1', '正则表达式01', '1', 'Java', '1.mp4', '正则表达式01.mp4', '2019-05-24', 'no');
INSERT INTO `vedio` VALUES ('2', 'Java基础语法', '1', 'Java', '2.mp4', 'Java基础语法01.mp4', '2019-06-03', 'no');
INSERT INTO `vedio` VALUES ('3', 'C语言001', '2', 'C语言', '3.mp4', 'C语言01.mp4', '2019-06-09', 'no');
INSERT INTO `vedio` VALUES ('13', '111', '1', '111', 'A256B8A0D2DD49B591A85795BE599D08.mp4', '111.mp4', '2019-06-11', 'no');
INSERT INTO `vedio` VALUES ('14', '哈哈哈', '1', '哈哈哈', 'C37AFFEF6A814FB99658D0E4CAD329F3.mp4', '哈哈哈.mp4', '2019-06-11', 'no');
INSERT INTO `vedio` VALUES ('16', '数据库1', '3', '数据库1', 'C8FB071EA9384F85AC3620F23762E84D.mp4', '111.mp4', '2019-06-11', 'no');
INSERT INTO `vedio` VALUES ('20', '啦啦啦啦啦', '1', '啦啦啦啦啦啦', '4F85A0314CB74E97A60195BA04C91A00.mp4', '111.mp4', '2019-06-11', 'no');
INSERT INTO `vedio` VALUES ('21', '哈哈哈哈哈哈', '1', '哈哈哈哈哈', 'FD1A49A52E014C53A1C8C3AEC9068D0D.mp4', '哈哈哈.mp4', '2019-06-11', 'no');
INSERT INTO `vedio` VALUES ('22', '哈哈哈哈哈哈哈', '1', '哈哈哈哈哈', '51A57513D8AE4E8B80F6A2BB0D6CF8F7.mp4', '哈哈哈.mp4', '2019-06-11', 'no');
INSERT INTO `vedio` VALUES ('23', '啦啦啦啦啦啦啦啦啦', '1', '啦啦啦啦啦', 'EAAAE7C4CA834B2E9911A8796CE8613D.mp4', '哈哈哈.mp4', '2019-06-11', 'no');
INSERT INTO `vedio` VALUES ('24', 'ad', '1', 'dsf', '75C9E8AA66854ACD82B68C0B7E392538.mp4', '哈哈哈.mp4', '2019-06-13', 'no');
INSERT INTO `vedio` VALUES ('25', 'hhhh', '1', 'kkkk', '01C35F0EF0C54508B23A994E09B6A611.mp4', '哈哈哈.mp4', '2019-06-13', 'no');
INSERT INTO `vedio` VALUES ('26', 'kkk', '1', 'sd', '9632F10E9DC448499C11F9DFCC477F3F.jpg', '1.jpg', '2019-06-13', 'no');
INSERT INTO `vedio` VALUES ('27', 'tfd', '1', 'sdf', '0D5342F490444222B039EFD8143DEE18.docx', '1.4.2 课程设计（综合实验）报告模版（学生用）.docx', '2019-06-13', 'no');
