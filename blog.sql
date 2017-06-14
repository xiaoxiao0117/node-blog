/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2017-06-14 13:33:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_table
-- ----------------------------
DROP TABLE IF EXISTS `article_table`;
CREATE TABLE `article_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(16) NOT NULL,
  `author_src` varchar(64) NOT NULL,
  `title` varchar(32) NOT NULL,
  `post_time` int(11) NOT NULL,
  `content` text NOT NULL,
  `summary` varchar(32) NOT NULL,
  `n_like` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='这个文章表';

-- ----------------------------
-- Records of article_table
-- ----------------------------
INSERT INTO `article_table` VALUES ('1', '热巴', 'images/good.jpg', '张杰首唱《三生三世》 开口的一瞬间以为手机响了', '1497341721', '张杰首唱《三生三世》，开口的一瞬间以为手机响了！据台湾媒体《东森新闻》6月11日报道，内地歌手张杰10日到马来西亚举行演唱会，首度演唱热。剧《三生三世十里桃花》主题曲《三生三世》。这同时也是他第一次公开唱这首歌曲，起初歌声还被众人误以为是放CD，观众惊呼“好听到恐怖！”\r\n\r\n\r\n从《古剑奇谭》、《何以笙箫默》到近期的《三生三世》《择天记》，张杰可说是“内地剧主题曲专门户”，随着在内地电视剧近年在亚洲国家掀起热潮，演唱的主题歌也成为热门金曲。当他在演唱会说“唱了很多电视剧主题歌”，令马来西亚歌迷立刻兴奋尖叫，起初一开唱还被误认“放CD骗我”，网友轮番狂赞“现场真厉害”、“不愧是Live王，跟CD无差别”，还有网友说：“刚刚不小心放扩音，我妈以为我手机响了，我说是现场我妈还不信。”\r\n张杰在海外首唱《三生三世》，令内地网友超激动，众人纷纷到官方微博留言“我们也要啊”、“为什么没唱过？”他演唱前曾表示“这首歌歌词很长”，不过一气呵成唱完没有忘词，且感受到现场沸腾的情绪，最后还忍不住笑说：“看来，大家真的很喜欢这首歌。”', '《三生三世十里桃花》主题曲', '520');
INSERT INTO `article_table` VALUES ('2', '热巴', 'images/good.jpg', '美国人心中最棒的10部美剧 这口味差了整一个太平洋！', '1497341970', '近些年来，随着网络的发展，看美剧成为了网络达人们一种休闲的方式。《越狱》、《权利的游戏》等精彩美剧让我们欲罢不能，但是大家知道我们和美国人民的口味有何不同吗？下面这十部美剧就是美国人从60部美剧中挑选出来自己最喜爱看的十部美剧，让我们来看看你喜欢的美剧是否也上榜了呢。\r\n10、《斯巴达克斯》\r\n单看剧名就知道这是一个肌肉横飞，美女薄纱的电视剧，讲述了在人命如草芥的古罗马，曾是罗马辅备军士兵的斯巴达克斯，因反抗罗马军官沦为奴隶。在经历残酷的生死考验后，他被巴蒂塔斯买下训练成角斗士，为重获自由，回到妻子身边，斯巴达克斯不得不拿起屠刀走上血腥的角斗场。\r\n\r\n9、《六尺之下》\r\n该剧综合戏剧与喜剧元素，是一部质量很高，但很少人知道的经典美剧。 描述每个家族成员在父亲死亡之后的生活。故事的场景主要设定在现代的洛杉矶。此剧可能是第一部把死亡当做主要话题的美剧。\r\n\r\n8、《越狱》\r\n《越狱》的前两季非常出彩，讲述的是一个关于拯救的故事，迈克尔为了救他被人陷害入狱的哥哥林肯，计划越狱并成功逃脱，在逃亡生涯中再次入狱，最后收集证据以求脱罪的过程。该剧精彩程度丝毫不亚于优秀越狱电影《肖申克的救赎》。', '最棒的10部美剧', '-10000');
INSERT INTO `article_table` VALUES ('3', '热巴', 'images/good.jpg', '《王者荣耀》惊现新角色“超人” “蝙蝠侠” 中美英雄大乱斗？', '1497341721', '目前，《王者荣耀》共有66个英雄，大多是历史人物，比如项羽、诸葛亮、李白，也有些日本舶来品，比如宫本武藏、不知火舞、橘右京。最近，有网友晒出全新角色，居然有超人，定位战士/坦克，此外还有蝙蝠侠、小丑等DC角色。这是要中美英雄大乱斗吗？\r\n其实，曝光的界面确实存在，不过来自游戏《传说对决》，它就是《王者荣耀》的海外版，同样由天美出品，所以界面非常相似。但英雄不一样，比如里面有蝙蝠侠，原形就是《王者荣耀》里的兰陵王。\r\n不过据外媒Comicbook消息，腾讯已经从华纳获得DC角色授权，未来《王者荣耀》真的引入DC英雄，大家也不要太过惊奇吆！\r\n\r\n从《古剑奇谭》、《何以笙箫默》到近期的《三生三世》《择天记》，张杰可说是“内地剧主题曲专门户”，随着在内地电视剧近年在亚洲国家掀起热潮，演唱的主题歌也成为热门金曲。当他在演唱会说“唱了很多电视剧主题歌”，令马来西亚歌迷立刻兴奋尖叫，起初一开唱还被误认“放CD骗我”，网友轮番狂赞“现场真厉害”、“不愧是Live王，跟CD无差别”，还有网友说：“刚刚不小心放扩音，我妈以为我手机响了，我说是现场我妈还不信。”\r\n张杰在海外首唱《三生三世》，令内地网友超激动，众人纷纷到官方微博留言“我们也要啊”、“为什么没唱过？”他演唱前曾表示“这首歌歌词很长”，不过一气呵成唱完没有忘词，且感受到现场沸腾的情绪，最后还忍不住笑说：“看来，大家真的很喜欢这首歌。”', '英雄大乱斗', '520');
INSERT INTO `article_table` VALUES ('4', '热巴', 'images/good.jpg', 'C919大型客机再获30架订单 订单总数达600架', '1497341970', '6月13日，中国商用飞机有限责任公司与光大金融租赁股份有限公司签署了30架C919大型客机购买框架协议。至此，C919大型客机国内外用户达到24家，订单总数达到600架。C919大型客机自研制以来，备受国内外运输业公司的青睐，而首飞成功也为我国航空制造业和运输业的加速发展提供了支撑。\r\n\r\n　　C919飞机是我国首款完全按照国际先进适航标准研制的单通道干线客机，具有我国完全自主知识产权。最大航程超过5500公里，载客量158-168人，与目前常见的空客320、波音737相当。（央视记者 徐静）\r\n单看剧名就知道这是一个肌肉横飞，美女薄纱的电视剧，讲述了在人命如草芥的古罗马，曾是罗马辅备军士兵的斯巴达克斯，因反抗罗马军官沦为奴隶。在经历残酷的生死考验后，他被巴蒂塔斯买下训练成角斗士，为重获自由，回到妻子身边，斯巴达克斯不得不拿起屠刀走上血腥的角斗场。\r\n\r\n9、《六尺之下》\r\n该剧综合戏剧与喜剧元素，是一部质量很高，但很少人知道的经典美剧。 描述每个家族成员在父亲死亡之后的生活。故事的场景主要设定在现代的洛杉矶。此剧可能是第一部把死亡当做主要话题的美剧。\r\n\r\n8、《越狱》\r\n《越狱》的前两季非常出彩，讲述的是一个关于拯救的故事，迈克尔为了救他被人陷害入狱的哥哥林肯，计划越狱并成功逃脱，在逃亡生涯中再次入狱，最后收集证据以求脱罪的过程。该剧精彩程度丝毫不亚于优秀越狱电影《肖申克的救赎》。', '喜讯！C919再获30架订单 ', '-10000');
INSERT INTO `article_table` VALUES ('5', '热巴', 'images/good.jpg', '欢乐颂演员片酬/刘涛比王凯高出一倍 最惨的是她', '1497341970', '由刘涛、杨紫、王子文、王凯等主演的《欢乐颂2》即将结束了，不知道大家有没有看过瘾，据说第三部正在筹备中。\r\n　　片酬最高的，是安迪的扮演者刘涛。刘涛是男人心中的女神，有很强大的气场，或许也只有刘涛能承担得了安迪这个角色。\r\n　　据透露刘涛的片酬一集为40万元，是欢乐颂中片酬最高的。而王凯、蒋欣、杨紫、签约的时候还没有很红，片酬相对要低一些，大概大约在10万到30万不到，只有刘涛的一半，不过现在大家已经红了，以后身价会涨不少 。\r\n\r\n而王子文、乔欣、邓伦，在签约的时候相当于新人，所以片酬只有几万元，而今借着这些角色已经走红，算是很大的收获吧。对于欢乐颂主演的片酬你怎么看呢？欢迎在评论区回复小编', '欢乐颂演员片酬', '122');

-- ----------------------------
-- Table structure for banner_table
-- ----------------------------
DROP TABLE IF EXISTS `banner_table`;
CREATE TABLE `banner_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `sub_title` varchar(32) NOT NULL,
  `src` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='这个是个banner的表';

-- ----------------------------
-- Records of banner_table
-- ----------------------------
INSERT INTO `banner_table` VALUES ('1', '美女1号', '1', 'images/img_1.jpg');
INSERT INTO `banner_table` VALUES ('2', '美女2号', '2', 'images/img_2.jpg');
INSERT INTO `banner_table` VALUES ('3', '美女3号', '3', 'images/img_3.jpg');

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `src` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user_table
-- ----------------------------
