/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.7.17-log : Database - dtimgs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dtimgs` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dtimgs`;

/*Table structure for table `clientinfo` */

DROP TABLE IF EXISTS `clientinfo`;

CREATE TABLE `clientinfo` (
  `version` float DEFAULT NULL,
  `qqlink` varchar(255) DEFAULT NULL,
  `notice` varchar(100) DEFAULT NULL,
  `uploadurl` varchar(255) DEFAULT NULL,
  `uploadpwd` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `clientinfo` */

insert  into `clientinfo`(`version`,`qqlink`,`notice`,`uploadurl`,`uploadpwd`) values 
(2,'99f41e93202fb034b27f660646665a9c6093d69f56bc0105db281e8c25869714ad2','公告测试','1o77tbf0','d3jh');

/*Table structure for table `collectinfo` */

DROP TABLE IF EXISTS `collectinfo`;

CREATE TABLE `collectinfo` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `ctime` varchar(20) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `collectinfo` */

/*Table structure for table `imginfo` */

DROP TABLE IF EXISTS `imginfo`;

CREATE TABLE `imginfo` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(150) NOT NULL,
  `alt` varchar(100) DEFAULT NULL,
  `looktimes` int(11) DEFAULT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `upid` bigint(15) DEFAULT NULL,
  `tid` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`iid`),
  KEY `index_imgs_alt` (`alt`)
) ENGINE=InnoDB AUTO_INCREMENT=4508 DEFAULT CHARSET=utf8;

/*Data for the table `imginfo` */

insert  into `imginfo`(`iid`,`src`,`alt`,`looktimes`,`tag`,`upid`,`tid`) values 
(1,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuu5bg8dwj20hj0hs40b.jpg','我想要绿拐！',0,NULL,1509326100946,NULL),
(2,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuur18pmuj205i05iwef.jpg','你真是个又皮又欠揍的女孩',0,NULL,1509326100946,NULL),
(3,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuql5w4cj202a02c0si.jpg','惆怅',0,NULL,1509326100946,NULL),
(4,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkutu9wmc5j205305i3yy.jpg','二次元萌妹子',0,NULL,1509326100946,NULL),
(5,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuulboakug208c04fwew.gif','叫我干嘛?（卡车）',0,NULL,1509326100946,NULL),
(6,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuttu7krjj20c10d4aao.jpg','看，我捉到了什么！10块看一次，不可以乱喂吃的（滑稽）',0,NULL,1509326100946,NULL),
(7,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuujf3wr5j20p00nrwi7.jpg','劳资最讨厌女人了滚!',0,NULL,1509326100946,NULL),
(8,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqgwfy8j206o06oaa2.jpg','山炮',0,NULL,1509326100946,NULL),
(9,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuu55ggdrj201d016t8r.jpg','棒棒哒',0,NULL,1509326100946,NULL),
(10,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj7zmczj203503ct8r.jpg','这里 ACDEF数（就是没有B数）',0,NULL,1509326100946,NULL),
(11,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukaie81j204g026glf.jpg','你想穿裙子对吧',0,NULL,1509326100946,NULL),
(12,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj9k5g2j205e056a9x.jpg','我就纳闷了你们不学习么',0,NULL,1509326100946,NULL),
(13,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuu4z1rcpg20a006p7ha.gif','鸡哥哥走路',0,NULL,1509326100946,NULL),
(14,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuktclr4j206406c74x.jpg','什么，这图不是老子的吗?',0,NULL,1509326100946,NULL),
(15,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukwvlnlg208c08cdhm.gif','强吻',0,NULL,1509326100946,NULL),
(16,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqxr3dqj206o06oaas.jpg','真难受',0,NULL,1509326100946,NULL),
(17,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk7cauij208c06874q.jpg','菜鸡逼雷要不要来斗图?',0,NULL,1509326100946,NULL),
(18,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuujymmzxj208c07u0ss.jpg','给老子滚啊,你这个只会玩闪萌的傻狗',0,NULL,1509326100946,NULL),
(19,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukdp43ej205i036gln.jpg','你必将加冕为爽',0,NULL,1509326100946,NULL),
(20,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqjkiztg208c08cwfq.gif','痛哭流涕',0,NULL,1509326100946,NULL),
(21,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukqvi5xg20730730t2.gif','你不能凶我',0,NULL,1509326100946,NULL),
(22,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuttzlbrhj205i04674c.jpg','你特么！',0,NULL,1509326100946,NULL),
(23,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuujp1ze4j203e034a9v.jpg','您配吗?',0,NULL,1509326100946,NULL),
(24,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuujuoggcj20qo0qodii.jpg','有本事朝这儿打',0,NULL,1509326100946,NULL),
(25,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk4w5jbj206o06owf3.jpg','正面肛我啊，弱鸡',0,NULL,1509326100946,NULL),
(26,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul9axoog208c08cjs8.gif','你们太污了',0,NULL,1509326100946,NULL),
(27,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuulhbjs3j20gq0e33za.jpg','大哥火',0,NULL,1509326100946,NULL),
(28,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk08jp5j205h05j0sm.jpg','妈了个巴子的',0,NULL,1509326100946,NULL),
(29,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqsunmeg207l06n0t4.gif','你感动了我,我要嫁给你!',0,NULL,1509326100946,NULL),
(30,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukhgzd0j206o06o3yk.jpg','别发了，体谅下我的身体',0,NULL,1509326100946,NULL),
(31,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul6pcujg20730730sp.gif','二狗原谅我',0,NULL,1509326100946,NULL),
(32,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuu57undrj20f10axt9k.jpg','范达克霍姆！',0,NULL,1509326100946,NULL),
(33,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuttpaxnuj202c01qa9y.jpg','哇，哭惨了！',0,NULL,1509326100946,NULL),
(34,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuul0si2sg208c08c0ud.gif','你打吧，你要是忍心的话',0,NULL,1509326100946,NULL),
(35,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqnnbbig2073073mxt.gif','好好好你胸大你先说',0,NULL,1509326100946,NULL),
(36,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukj4q4hg207206ywei.gif','行爸爸依你',0,NULL,1509326100946,NULL),
(37,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuttno21dj20ei0d4jrr.jpg','招租床位！',0,NULL,1509326100946,NULL),
(38,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul30llgg208c08ct91.gif','呦!太阳打西边出来了',0,NULL,1509326100946,NULL),
(39,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqv62fug208c08ct8l.gif','一问三不知',0,NULL,1509326100946,NULL),
(40,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuttku58mg207u06pb2d.gif','小猫吃了你！（舔舔舔）',0,NULL,1509326100946,NULL),
(41,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkutpcr5qnj205n04dt8m.jpg','卧槽，你想干嘛！',0,NULL,1509326100946,NULL),
(42,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuukfllkdj203z04gaa6.jpg','等我出去了就把你们都给杀了',0,NULL,1509326100946,NULL),
(43,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqqujqyj204604jq2t.jpg','你可鸡巴拉倒吧心里没个B数。',0,NULL,1509326100946,NULL),
(44,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukl5vh4g208c07zjrj.gif','我是不是萌萌哒',0,NULL,1509326100946,NULL),
(45,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul4sqxrj203c03cglk.jpg','就这么点儿?',0,NULL,1509326100946,NULL),
(46,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqp82e5j204a04a3yf.jpg','喜欢高基的少废话!今夜子时!后山竹林!自带蚊香!!',0,NULL,1509326100946,NULL),
(47,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuu53q9bcj20hs0hsab6.jpg','周星驰',0,NULL,1509326100946,NULL),
(48,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuujkl52gj203t05ia9v.jpg','楼上说的其实是针对我楼下的',0,NULL,1509326100946,NULL),
(49,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkutu7yzylg205a05adh5.gif','亲亲',0,NULL,1509326100946,NULL),
(50,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuujj0ypqj205i05idg5.jpg','不得了，不得了！',0,NULL,1509326100946,NULL),
(51,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuliv4fyj205i05idfp.jpg','分享你妈个逼，咋不把你妈分享给我们玩玩',0,NULL,1509326100946,NULL),
(52,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukc2djbj205205iglf.jpg','我是这样的人吗',0,NULL,1509326100946,NULL),
(53,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuttrmw81j20hs0hswez.jpg','小狗狗穿领带',0,NULL,1509326100946,NULL),
(54,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuujguupaj202702hgld.jpg','突然出现 ！',0,NULL,1509326100946,NULL),
(55,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukoj7x6g208c08cabd.gif','我简直不敢相信我的眼睛',0,NULL,1509326100946,NULL),
(56,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuur431goj20k00k0wf6.jpg','打扮一下一会去酒吧喝酒',0,NULL,1509326100946,NULL),
(57,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuulf1zudg208c08c409.gif','我要去赚钱了',0,NULL,1509326100946,NULL),
(58,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuulkfgy9g205k05kwed.gif','有我在呢',0,NULL,1509326100946,NULL),
(59,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuu50oj63j202f02hq2p.jpg','呐（爱心）',0,NULL,1509326100946,NULL),
(60,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqzff14j205i04o746.jpg','骚话嘴边讲，B数心里藏',0,NULL,1509326100946,NULL),
(61,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkutu24x6nj205i05i0su.jpg','敬礼',0,NULL,1509326100946,NULL),
(62,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuujnj5jrg208c08874o.gif','螺旋我是你爸',0,NULL,1509326100946,NULL),
(63,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuttvs4v0j201o01oa9v.jpg','坏坏喝啤酒',0,NULL,1509326100946,NULL),
(64,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkutu56i7fj20jg0hq0tf.jpg','谁？（流鼻涕）',0,NULL,1509326100946,NULL),
(65,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk27nulj20bo07cmx8.jpg','互相要饭',0,NULL,1509326100946,NULL),
(66,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuujwtlr6j208208274c.jpg','不是这样的',0,NULL,1509326100946,NULL),
(67,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk8x9ijj20770683yc.jpg','大色狼',0,NULL,1509326100946,NULL),
(68,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuulmgj4nj20a50bfaad.jpg','忘女管理的逼又臭又黑',0,NULL,1509326100946,NULL),
(69,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuie1bl9j204j04pq2t.jpg','每一次路过都能看到你们在装逼',0,NULL,1509326100946,NULL),
(70,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuur5xqh1j20b403mdft.jpg','请问,你戴过B罩杯胸罩吗?',0,NULL,1509326100946,NULL),
(71,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuufwsf90g207a08cdgf.gif','你才没有腰',0,NULL,1509326100946,NULL),
(72,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuug45ej7g205405474c.gif','我差不多是只废熊了',0,NULL,1509326100946,NULL),
(73,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh31xd4g207707oglv.gif','算了不生气！',0,NULL,1509326100946,NULL),
(74,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhitnumj206o06laa1.jpg','你们一起上好吗',0,NULL,1509326100946,NULL),
(75,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhqtvgdg2073073dfw.gif','我错啦,你别不理我',0,NULL,1509326100946,NULL),
(76,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuui0zpe7j208l03za9z.jpg','你有网瘾',0,NULL,1509326100946,NULL),
(77,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuugadoc7j20c80c3weu.jpg','无神的双眼失去了对生活的渴望',0,NULL,1509326100946,NULL),
(78,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuug5u63gj205i05djrb.jpg','又到了傻逼分享歌曲的时间了',0,NULL,1509326100946,NULL),
(79,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh6nisuj20bt0bt74g.jpg','还有30包水泥没扛呢!睡你麻痹!',0,NULL,1509326100946,NULL),
(80,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuugcbb2gj208c088aa2.jpg','你当我&hellip;.儿子吧',0,NULL,1509326100946,NULL),
(81,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugplzzig208c08c755.gif','出来聊天辣',0,NULL,1509326100946,NULL),
(82,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhzfcb4j205d05f0so.jpg','喝奶群众',0,NULL,1509326100946,NULL),
(83,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj12y9fg207808c0t1.gif','哥哥不生气啦抱抱!',0,NULL,1509326100946,NULL),
(84,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhvue85j2045035mwz.jpg','向大佬低头',0,NULL,1509326100946,NULL),
(85,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuug802mbj206o06o74a.jpg','歪!莫西莫西',0,NULL,1509326100946,NULL),
(86,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh17nudj206o05k3yj.jpg','撩妹我生命中最美的两个字',0,NULL,1509326100946,NULL),
(87,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh99dq7j20k00k0abl.jpg','生气了！哄不好那种！',0,NULL,1509326100946,NULL),
(88,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuui2ppfzj208c06kjrj.jpg','哥哥你的东西掉了了！（傻逼证）',0,NULL,1509326100946,NULL),
(89,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj2nflvj205i03sdfm.jpg','我让你突然打死你这个大傻逼',0,NULL,1509326100946,NULL),
(90,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuil354mj20e80e80t4.jpg','走, rushB！',0,NULL,1509326100946,NULL),
(91,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuugf8rhwg208c08cq4f.gif','把我的悲伤留给自己',0,NULL,1509326100946,NULL),
(92,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhxewyjg207207a3yi.gif','握草',0,NULL,1509326100946,NULL),
(93,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhoimtfj20b005udfs.jpg','不一样',0,NULL,1509326100946,NULL),
(94,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuini3urj206o06oq36.jpg','分享也没用我们就不点',0,NULL,1509326100946,NULL),
(95,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj61v3pj20iz0ixwfp.jpg','能借我五块钱吗？我想买个一锤定音试个水',0,NULL,1509326100946,NULL),
(96,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuugzifrnj20dc07h74u.jpg','亚瑟后羿！',0,NULL,1509326100946,NULL),
(97,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuui73melj206o06odg0.jpg','死于舔包（绝地求生）',0,NULL,1509326100946,NULL),
(98,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugx2j4dg2073073t9l.gif','鸡生迷茫',0,NULL,1509326100946,NULL),
(99,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuui94161j206o06o0td.jpg','盗图者，走老妹晚上带你吃鸡儿!',0,NULL,1509326100946,NULL),
(100,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugmc1z8j205i05i3yc.jpg','老子签到，关你鸡巴事,给我滚一边去。',0,NULL,1509326100946,NULL),
(101,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuit0odvj208c08cglq.jpg','妹纸走,请你吃麻辣烫',0,NULL,1509326100946,NULL),
(102,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuihd5p5j2052049jr7.jpg','要不要去宾馆打排位',0,NULL,1509326100946,NULL),
(103,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhkfw0xj205205i0sk.jpg','这谁家孩子,没人管我拍死了哈？',0,NULL,1509326100946,NULL),
(104,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuir07bwj204f04g0sl.jpg','楼上鸡婆',0,NULL,1509326100946,NULL),
(105,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuug25ossj208c08cq2v.jpg','放屁虫',0,NULL,1509326100946,NULL),
(106,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhu6v2lj201k01o742.jpg','难受的一匹',0,NULL,1509326100946,NULL),
(107,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhf8zuyj204a04g0t9.jpg','我拿1亿退群了',0,NULL,1509326100946,NULL),
(108,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugs8d44j20go0got95.jpg','我的眼里只有你（猪）',0,NULL,1509326100946,NULL),
(109,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhspe4vj208c091q36.jpg','你对老子有意见?',0,NULL,1509326100946,NULL),
(110,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuipaqmwg206i05y3yf.gif','倒垃圾,全让你',0,NULL,1509326100946,NULL),
(111,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuui53jx8j206o06o0t5.jpg','还你',0,NULL,1509326100946,NULL),
(112,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuix7fv1j20b409q0t3.jpg','家里有什么背景？',0,NULL,1509326100946,NULL),
(113,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiivp21j20500320sj.jpg','我一萝卜拍死你',0,NULL,1509326100946,NULL),
(114,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuufyh8lvj208c08cwej.jpg','你的戏可以像你的钱一样少点吗?',0,NULL,1509326100946,NULL),
(115,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh4u2pvj208c08cdfq.jpg','你去玩竟然不带我',0,NULL,1509326100946,NULL),
(116,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhb0626g2073073t8q.gif','礼物呢?!没礼物怎么快乐?!',0,NULL,1509326100946,NULL),
(117,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuug0e107j20a20730ss.jpg','死宅真恶心',0,NULL,1509326100946,NULL),
(118,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuugkneazg20b40b4my4.gif','这就傻逼了',0,NULL,1509326100946,NULL),
(119,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiz5utej205004pjrl.jpg','且慢 ！',0,NULL,1509326100946,NULL),
(120,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkud6mg9uej205h06bwgk.jpg','哈哈哈哈（龙妈）',0,NULL,1509326100946,NULL),
(121,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhmfe80j20b40b4jre.jpg','别桑心',0,NULL,1509326100946,NULL),
(122,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkud6pocmxg202s02sac3.gif','滑稽小猫',0,NULL,1509326100946,NULL),
(123,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqf459vj207c07iq36.jpg','我去买几个圣晶石,你就待在卡池里,不要走动',0,NULL,1509326100946,NULL),
(124,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuicg2ojj205g04tdfq.jpg','儿子你说谁呢',0,NULL,1509326100946,NULL),
(125,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuemvd5ipj201h01e0kv.jpg','小猪脸红',0,NULL,1509326100946,NULL),
(126,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhd22f7j20hs0gl3yu.jpg','老板,来七八个小姐姐',0,NULL,1509326100946,NULL),
(127,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuexe6dcag202s02swg0.gif','金馆长小白',0,NULL,1509326100946,NULL),
(128,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiuv161j206o06mjri.jpg','赖光，我去买几个圣晶石,你就待在卡池里,不要走动',0,NULL,1509326100946,NULL),
(129,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuughdqaoj20b40b4glr.jpg','放个屁给你吃',0,NULL,1509326100946,NULL),
(130,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugtw9erj203803uglf.jpg','坐在地上委屈的哭',0,NULL,1509326100946,NULL),
(131,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiax2hpj205m05h3yp.jpg','刚刚谁说要捶背?',0,NULL,1509326100946,NULL),
(132,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuur7wywug206o07u0ss.gif','失礼（摘帽子）',0,NULL,1509326100946,NULL),
(133,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuifur2vj206o06omxi.jpg','你老婆吃春药了，发情给老王操了',0,NULL,1509326100946,NULL),
(134,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8jenbk7j206y06yt8j.jpg','小猫裹起来',0,NULL,1509326100946,NULL),
(135,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuful2y8g208c08c0tg.gif','看我干嘛，我们小猫咪是不会做那种事的',0,NULL,1509326100946,NULL),
(136,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhh9lfgj20hs0fkdgq.jpg','真不要脸，就是就是',0,NULL,1509326100946,NULL),
(137,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmon0cg3j205i04ejr8.jpg','停一下，打个广告处对象加我',0,NULL,1509326100946,NULL),
(138,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmr2au5hj203202xwea.jpg','我靠,大佬',0,NULL,1509326100946,NULL),
(139,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkr973ed9zj20hs0fbgtf.jpg','一刀子砍死你',0,NULL,1509326100946,NULL),
(140,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmoy76g6j205l06yt8q.jpg','我們的感情，回不去了',0,NULL,1509326100946,NULL),
(141,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8jd417vj208c08cmx8.jpg','其实我很美（化学）',0,NULL,1509326100946,NULL),
(142,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmqqyrgdj20qo0pydh0.jpg','湿了',0,NULL,1509326100946,NULL),
(143,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmpylxqlj205i04xaa7.jpg','皮?',0,NULL,1509326100946,NULL),
(144,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr97vqnl5g206705and4.gif','滑雪',0,NULL,1509326100946,NULL),
(145,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmqm0g5ij20b00akglq.jpg','你可以和我在一起吗?',0,NULL,1509326100946,NULL),
(146,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmpwzs97j2063067mx4.jpg','臭傻逼注意你的言辞',0,NULL,1509326100946,NULL),
(147,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmq0ouijg208c061q3u.gif','宝宝不开心了',0,NULL,1509326100946,NULL),
(148,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr97i90wdg206007mtwa.gif','小猫划水',0,NULL,1509326100946,NULL),
(149,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmotzfq3g208c08c751.gif','你算哪个球?',0,NULL,1509326100946,NULL),
(150,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmponkhrj204201hmwx.jpg','送你来到我身边~',0,NULL,1509326100946,NULL),
(151,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmq6v5lrj20go0f4wf4.jpg','网恋网恋，又做了备胎是吧',0,NULL,1509326100946,NULL),
(152,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmr8gtaqg20730730ti.gif','你们能成熟点吗?想我一样辣么成熟？',0,NULL,1509326100946,NULL),
(153,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpmq7dig203h049403.gif','左三圈,右三圈,脖子扭扭屁股扭扭',0,NULL,1509326100946,NULL),
(154,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkr98fuza1j20ge0hswmk.jpg','伟哥还是避孕药，你吃还是我吃？',0,NULL,1509326100946,NULL),
(155,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8tyf5zvg208c08c74s.gif','那好吧，不打扰你了',0,NULL,1509326100946,NULL),
(156,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmrzu16gg2073073glk.gif','都不太成熟',0,NULL,1509326100946,NULL),
(157,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u22jqbg202s02sglj.gif','张学友小东西（内裤顶头上）',0,NULL,1509326100946,NULL),
(158,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u5o4gqg207y05w748.gif','小老鼠扔砖头',0,NULL,1509326100946,NULL),
(159,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpfr5qlj205t067748.jpg','伺候好楼上这位大爷，小费我付',0,NULL,1509326100946,NULL),
(160,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8j9cw0vj205g05g3yh.jpg','姚明中指',0,NULL,1509326100946,NULL),
(161,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmoq9phuj20c80c8dfy.jpg','请开始你的表演',0,NULL,1509326100946,NULL),
(162,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkr8ufo892j201p01r3yi.jpg','小绿帽',0,NULL,1509326100946,NULL),
(163,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktms1ydohg208c07y75g.gif','人生到底是为了什么',0,NULL,1509326100946,NULL),
(164,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmr63jmtj206o06odfy.jpg','等你们斗图斗的的差不多时候,我就一刀下去',0,NULL,1509326100946,NULL),
(165,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u8rarqj201o013dfl.jpg','头上一只咸鱼',0,NULL,1509326100946,NULL),
(166,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmpbim1pj205i05iweb.jpg','这个图很好，下一秒就是我的了',0,NULL,1509326100946,NULL),
(167,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpvaac8j20ng0m8q4u.jpg','付出真心最后得到什么？女人都是傻逼',0,NULL,1509326100946,NULL),
(168,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmqokr3gg206o06o748.gif','死鬼~棒棒哒!!!',0,NULL,1509326100946,NULL),
(169,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmqkbilvj203c03c0sj.jpg','不知所措',0,NULL,1509326100946,NULL),
(170,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp397a8j203o03kglg.jpg','少他妈跟我来这套',0,NULL,1509326100946,NULL),
(171,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmr4g4gfj20fj0c1dgj.jpg','今天收成还不错,偷了两个井盖',0,NULL,1509326100946,NULL),
(172,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmr0r348j207306o0sq.jpg','听不清过来我旁边说',0,NULL,1509326100946,NULL),
(173,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmq33slbg208c08ct9r.gif','你算哪根玉米棒子?',0,NULL,1509326100946,NULL),
(174,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmqisjm1g202s037q37.gif','摇晃的红酒杯~',0,NULL,1509326100946,NULL),
(175,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmps6t8pj205k05kq31.jpg','你是猪',0,NULL,1509326100946,NULL),
(176,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmpqcofij206i06hdfs.jpg','走, rushB!',0,NULL,1509326100946,NULL),
(177,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u7917hg203c03cglh.gif','金馆长汪蛋上下抖动',0,NULL,1509326100946,NULL),
(178,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpha1uej205i05fmwz.jpg','哼（小猫）',0,NULL,1509326100946,NULL),
(179,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktms5e0cwj208s09vq36.jpg','抠脚（妹子）',0,NULL,1509326100946,NULL),
(180,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmoojjgtj2036033q2r.jpg','怕你啊, 臭嗨',0,NULL,1509326100946,NULL),
(181,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u3yuhhj206406474b.jpg','I AM THE FLASH（my name is barry allen）',0,NULL,1509326100946,NULL),
(182,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u0f9uij208c08cq31.jpg','万能懵逼公式',0,NULL,1509326100946,NULL),
(183,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8udy4dxj20k00qotal.jpg','吓的我都吃了瓜子',0,NULL,1509326100946,NULL),
(184,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmqskpjcj203b02ia9u.jpg','呦,写BUG呢',0,NULL,1509326100946,NULL),
(185,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp89ocdg208c08cjsf.gif','想你，老戴里都是你',0,NULL,1509326100946,NULL),
(186,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmq4winyj205a05a0so.jpg','老子看你也是輩身,要不要老子做你男朋友啊。',0,NULL,1509326100946,NULL),
(187,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr985wd8oj20hs0hs17z.jpg','我操你妈个逼',0,NULL,1509326100946,NULL),
(188,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmq9qqdfg2073073gly.gif','不问你为何带惩戒，不在乎你开局送了一血',0,NULL,1509326100946,NULL),
(189,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr96xede0j20hs0hs18g.jpg','小红猪疑问表情',0,NULL,1509326100946,NULL),
(190,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8jbgc52g208c061t99.gif','你所有队友都被我轰死了',0,NULL,1509326100946,NULL),
(191,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmoru3srj202e020q2q.jpg','你再说一遥',0,NULL,1509326100946,NULL),
(192,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp1m2f7j206o07idfv.jpg','可以,奶子很大',0,NULL,1509326100946,NULL),
(193,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp9xxppj205i03d0si.jpg','予告状，这张图我盗走了',0,NULL,1509326100946,NULL),
(194,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktms3k2x9g206o06omx4.gif','我是你爹!',0,NULL,1509326100946,NULL),
(195,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmolcpovj2096096wem.jpg','我是一个经不起批评的人，如果你批评我,我就禁你',0,NULL,1509326100946,NULL),
(196,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmqgnnqrg206o06ot93.gif','我开学不开心，你心里没点b数吗',0,NULL,1509326100946,NULL),
(197,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmp017tpj20q20ott9c.jpg','做我女朋友吧,我不嫌你B松&hellip;',0,NULL,1509326100946,NULL),
(198,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr951eicjj21kw1kw44c.jpg','敌敌畏',0,NULL,1509326100946,NULL),
(199,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940772_unzlFG.jpg','冷酷',0,NULL,1509326104849,1509326105676),
(200,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940772_ZWMmsw.jpg','软萌',0,NULL,1509326104849,1509326105676),
(201,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940773_TLDoKp.jpg','你这话们么意思，我不喜欢撤回去',0,NULL,1509326104849,1509326105676),
(202,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940773_vVHpbK.jpg','大大佬?',0,NULL,1509326104849,1509326105676),
(203,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940774_hNcrRj.jpg','就静静看着你装逼',0,NULL,1509326104849,1509326105676),
(204,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940775_wdXMpe.jpg','吃棒棒糖',0,NULL,1509326104849,1509326105676),
(205,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkuurdxx8nj20jg0j9acc.jpg','满脸问号',0,NULL,1509326104849,1509326105676),
(206,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940777_hYZkIK.jpg','好不好嘛',0,NULL,1509326104849,1509326105676),
(207,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940777_cTBhtL.jpg','抱住',0,NULL,1509326104849,1509326105676),
(208,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkuurfw10vj206y06yt94.jpg','目瞪口呆！',0,NULL,1509326104849,1509326106254),
(209,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940843_jfObDu.jpg','仰视您！',0,NULL,1509326104849,1509326106254),
(210,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940844_LyRZEO.jpg','想你了',0,NULL,1509326104849,1509326106254),
(211,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940844_WtykrE.jpg','一脸茫然',0,NULL,1509326104849,1509326106254),
(212,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940845_uyRLrP.jpg','告诉我你想吃啥?',0,NULL,1509326104849,1509326106254),
(213,'//img.doutula.com/production/uploads/image/2017/10/25/20171025940845_heykGa.jpg','跪谢!N',0,NULL,1509326104849,1509326106254),
(214,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqgwfy8j206o06oaa2.jpg','山炮',0,NULL,1509326890583,NULL),
(215,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqsunmeg207l06n0t4.gif','你感动了我,我要嫁给你!',0,NULL,1509326890583,NULL),
(216,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul6pcujg20730730sp.gif','二狗原谅我',0,NULL,1509326890583,NULL),
(217,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj9k5g2j205e056a9x.jpg','我就纳闷了你们不学习么',0,NULL,1509326890583,NULL),
(218,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqnnbbig2073073mxt.gif','好好好你胸大你先说',0,NULL,1509326890583,NULL),
(219,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukqvi5xg20730730t2.gif','你不能凶我',0,NULL,1509326890583,NULL),
(220,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuttku58mg207u06pb2d.gif','小猫吃了你！（舔舔舔）',0,NULL,1509326890583,NULL),
(221,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk27nulj20bo07cmx8.jpg','互相要饭',0,NULL,1509326890583,NULL),
(222,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuu53q9bcj20hs0hsab6.jpg','周星驰',0,NULL,1509326890583,NULL),
(223,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkutpcr5qnj205n04dt8m.jpg','卧槽，你想干嘛！',0,NULL,1509326890583,NULL),
(224,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuttrmw81j20hs0hswez.jpg','小狗狗穿领带',0,NULL,1509326890583,NULL),
(225,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqqujqyj204604jq2t.jpg','你可鸡巴拉倒吧心里没个B数。',0,NULL,1509326890583,NULL),
(226,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuulkfgy9g205k05kwed.gif','有我在呢',0,NULL,1509326890583,NULL),
(227,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuul0si2sg208c08c0ud.gif','你打吧，你要是忍心的话',0,NULL,1509326890583,NULL),
(228,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuttno21dj20ei0d4jrr.jpg','招租床位！',0,NULL,1509326890583,NULL),
(229,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuulboakug208c04fwew.gif','叫我干嘛?（卡车）',0,NULL,1509326890583,NULL),
(230,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuujymmzxj208c07u0ss.jpg','给老子滚啊,你这个只会玩闪萌的傻狗',0,NULL,1509326890583,NULL),
(231,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuujf3wr5j20p00nrwi7.jpg','劳资最讨厌女人了滚!',0,NULL,1509326890583,NULL),
(232,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukc2djbj205205iglf.jpg','我是这样的人吗',0,NULL,1509326890583,NULL),
(233,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukwvlnlg208c08cdhm.gif','强吻',0,NULL,1509326890583,NULL),
(234,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuujj0ypqj205i05idg5.jpg','不得了，不得了！',0,NULL,1509326890583,NULL),
(235,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuukfllkdj203z04gaa6.jpg','等我出去了就把你们都给杀了',0,NULL,1509326890583,NULL),
(236,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkutu24x6nj205i05i0su.jpg','敬礼',0,NULL,1509326890583,NULL),
(237,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukl5vh4g208c07zjrj.gif','我是不是萌萌哒',0,NULL,1509326890583,NULL),
(238,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk4w5jbj206o06owf3.jpg','正面肛我啊，弱鸡',0,NULL,1509326890583,NULL),
(239,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuttvs4v0j201o01oa9v.jpg','坏坏喝啤酒',0,NULL,1509326890583,NULL),
(240,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuulf1zudg208c08c409.gif','我要去赚钱了',0,NULL,1509326890583,NULL),
(241,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqjkiztg208c08cwfq.gif','痛哭流涕',0,NULL,1509326890583,NULL),
(242,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuu5bg8dwj20hj0hs40b.jpg','我想要绿拐！',0,NULL,1509326890583,NULL),
(243,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuulmgj4nj20a50bfaad.jpg','忘女管理的逼又臭又黑',0,NULL,1509326890583,NULL),
(244,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk8x9ijj20770683yc.jpg','大色狼',0,NULL,1509326890583,NULL),
(245,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqp82e5j204a04a3yf.jpg','喜欢高基的少废话!今夜子时!后山竹林!自带蚊香!!',0,NULL,1509326890583,NULL),
(246,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuttzlbrhj205i04674c.jpg','你特么！',0,NULL,1509326890583,NULL),
(247,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukaie81j204g026glf.jpg','你想穿裙子对吧',0,NULL,1509326890583,NULL),
(248,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuujuoggcj20qo0qodii.jpg','有本事朝这儿打',0,NULL,1509326890583,NULL),
(249,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul30llgg208c08ct91.gif','呦!太阳打西边出来了',0,NULL,1509326890583,NULL),
(250,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuttpaxnuj202c01qa9y.jpg','哇，哭惨了！',0,NULL,1509326890583,NULL),
(251,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuu4z1rcpg20a006p7ha.gif','鸡哥哥走路',0,NULL,1509326890583,NULL),
(252,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuktclr4j206406c74x.jpg','什么，这图不是老子的吗?',0,NULL,1509326890583,NULL),
(253,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqxr3dqj206o06oaas.jpg','真难受',0,NULL,1509326890583,NULL),
(254,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkutu7yzylg205a05adh5.gif','亲亲',0,NULL,1509326890583,NULL),
(255,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuql5w4cj202a02c0si.jpg','惆怅',0,NULL,1509326890583,NULL),
(256,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuujkl52gj203t05ia9v.jpg','楼上说的其实是针对我楼下的',0,NULL,1509326890583,NULL),
(257,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuujp1ze4j203e034a9v.jpg','您配吗?',0,NULL,1509326890583,NULL),
(258,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukdp43ej205i036gln.jpg','你必将加冕为爽',0,NULL,1509326890583,NULL),
(259,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuu57undrj20f10axt9k.jpg','范达克霍姆！',0,NULL,1509326890583,NULL),
(260,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk7cauij208c06874q.jpg','菜鸡逼雷要不要来斗图?',0,NULL,1509326890583,NULL),
(261,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkutu9wmc5j205305i3yy.jpg','二次元萌妹子',0,NULL,1509326890583,NULL),
(262,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuur18pmuj205i05iwef.jpg','你真是个又皮又欠揍的女孩',0,NULL,1509326890583,NULL),
(263,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuttu7krjj20c10d4aao.jpg','看，我捉到了什么！10块看一次，不可以乱喂吃的（滑稽）',0,NULL,1509326890583,NULL),
(264,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuu55ggdrj201d016t8r.jpg','棒棒哒',0,NULL,1509326890583,NULL),
(265,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk08jp5j205h05j0sm.jpg','妈了个巴子的',0,NULL,1509326890583,NULL),
(266,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuujwtlr6j208208274c.jpg','不是这样的',0,NULL,1509326890583,NULL),
(267,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuujnj5jrg208c08874o.gif','螺旋我是你爸',0,NULL,1509326890583,NULL),
(268,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuliv4fyj205i05idfp.jpg','分享你妈个逼，咋不把你妈分享给我们玩玩',0,NULL,1509326890583,NULL),
(269,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkutu56i7fj20jg0hq0tf.jpg','谁？（流鼻涕）',0,NULL,1509326890583,NULL),
(270,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuu50oj63j202f02hq2p.jpg','呐（爱心）',0,NULL,1509326890583,NULL),
(271,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqv62fug208c08ct8l.gif','一问三不知',0,NULL,1509326890583,NULL),
(272,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuulhbjs3j20gq0e33za.jpg','大哥火',0,NULL,1509326890583,NULL),
(273,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqzff14j205i04o746.jpg','骚话嘴边讲，B数心里藏',0,NULL,1509326890583,NULL),
(274,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukoj7x6g208c08cabd.gif','我简直不敢相信我的眼睛',0,NULL,1509326890583,NULL),
(275,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuujguupaj202702hgld.jpg','突然出现 ！',0,NULL,1509326890583,NULL),
(276,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj7zmczj203503ct8r.jpg','这里 ACDEF数（就是没有B数）',0,NULL,1509326890583,NULL),
(277,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul9axoog208c08cjs8.gif','你们太污了',0,NULL,1509326890583,NULL),
(278,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuur431goj20k00k0wf6.jpg','打扮一下一会去酒吧喝酒',0,NULL,1509326890583,NULL),
(279,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukj4q4hg207206ywei.gif','行爸爸依你',0,NULL,1509326890583,NULL),
(280,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukhgzd0j206o06o3yk.jpg','别发了，体谅下我的身体',0,NULL,1509326890583,NULL),
(281,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul4sqxrj203c03cglk.jpg','就这么点儿?',0,NULL,1509326890583,NULL),
(282,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuicg2ojj205g04tdfq.jpg','儿子你说谁呢',0,NULL,1509326890583,NULL),
(283,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuugadoc7j20c80c3weu.jpg','无神的双眼失去了对生活的渴望',0,NULL,1509326890583,NULL),
(284,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhf8zuyj204a04g0t9.jpg','我拿1亿退群了',0,NULL,1509326890583,NULL),
(285,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhu6v2lj201k01o742.jpg','难受的一匹',0,NULL,1509326890583,NULL),
(286,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuufwsf90g207a08cdgf.gif','你才没有腰',0,NULL,1509326890583,NULL),
(287,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj12y9fg207808c0t1.gif','哥哥不生气啦抱抱!',0,NULL,1509326890583,NULL),
(288,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuexe6dcag202s02swg0.gif','金馆长小白',0,NULL,1509326890583,NULL),
(289,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuemvd5ipj201h01e0kv.jpg','小猪脸红',0,NULL,1509326890583,NULL),
(290,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugmc1z8j205i05i3yc.jpg','老子签到，关你鸡巴事,给我滚一边去。',0,NULL,1509326890583,NULL),
(291,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhd22f7j20hs0gl3yu.jpg','老板,来七八个小姐姐',0,NULL,1509326890583,NULL),
(292,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuugzifrnj20dc07h74u.jpg','亚瑟后羿！',0,NULL,1509326890583,NULL),
(293,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuini3urj206o06oq36.jpg','分享也没用我们就不点',0,NULL,1509326890583,NULL),
(294,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhqtvgdg2073073dfw.gif','我错啦,你别不理我',0,NULL,1509326890583,NULL),
(295,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8jenbk7j206y06yt8j.jpg','小猫裹起来',0,NULL,1509326890583,NULL),
(296,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj61v3pj20iz0ixwfp.jpg','能借我五块钱吗？我想买个一锤定音试个水',0,NULL,1509326890583,NULL),
(297,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiz5utej205004pjrl.jpg','且慢 ！',0,NULL,1509326890583,NULL),
(298,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugx2j4dg2073073t9l.gif','鸡生迷茫',0,NULL,1509326890583,NULL),
(299,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuug45ej7g205405474c.gif','我差不多是只废熊了',0,NULL,1509326890583,NULL),
(300,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugs8d44j20go0got95.jpg','我的眼里只有你（猪）',0,NULL,1509326890583,NULL),
(301,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhxewyjg207207a3yi.gif','握草',0,NULL,1509326890583,NULL),
(302,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuui73melj206o06odg0.jpg','死于舔包（绝地求生）',0,NULL,1509326890583,NULL),
(303,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuihd5p5j2052049jr7.jpg','要不要去宾馆打排位',0,NULL,1509326890583,NULL),
(304,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj2nflvj205i03sdfm.jpg','我让你突然打死你这个大傻逼',0,NULL,1509326890583,NULL),
(305,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhoimtfj20b005udfs.jpg','不一样',0,NULL,1509326890583,NULL),
(306,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugtw9erj203803uglf.jpg','坐在地上委屈的哭',0,NULL,1509326890583,NULL),
(307,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuil354mj20e80e80t4.jpg','走, rushB！',0,NULL,1509326890583,NULL),
(308,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuipaqmwg206i05y3yf.gif','倒垃圾,全让你',0,NULL,1509326890583,NULL),
(309,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhb0626g2073073t8q.gif','礼物呢?!没礼物怎么快乐?!',0,NULL,1509326890583,NULL),
(310,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuui94161j206o06o0td.jpg','盗图者，走老妹晚上带你吃鸡儿!',0,NULL,1509326890583,NULL),
(311,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuugkneazg20b40b4my4.gif','这就傻逼了',0,NULL,1509326890583,NULL),
(312,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkud6mg9uej205h06bwgk.jpg','哈哈哈哈（龙妈）',0,NULL,1509326890583,NULL),
(313,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh17nudj206o05k3yj.jpg','撩妹我生命中最美的两个字',0,NULL,1509326890583,NULL),
(314,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhh9lfgj20hs0fkdgq.jpg','真不要脸，就是就是',0,NULL,1509326890583,NULL),
(315,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuit0odvj208c08cglq.jpg','妹纸走,请你吃麻辣烫',0,NULL,1509326890583,NULL),
(316,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhvue85j2045035mwz.jpg','向大佬低头',0,NULL,1509326890583,NULL),
(317,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhkfw0xj205205i0sk.jpg','这谁家孩子,没人管我拍死了哈？',0,NULL,1509326890583,NULL),
(318,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhitnumj206o06laa1.jpg','你们一起上好吗',0,NULL,1509326890583,NULL),
(319,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuui0zpe7j208l03za9z.jpg','你有网瘾',0,NULL,1509326890583,NULL),
(320,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuir07bwj204f04g0sl.jpg','楼上鸡婆',0,NULL,1509326890583,NULL),
(321,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiuv161j206o06mjri.jpg','赖光，我去买几个圣晶石,你就待在卡池里,不要走动',0,NULL,1509326890583,NULL),
(322,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuui53jx8j206o06o0t5.jpg','还你',0,NULL,1509326890583,NULL),
(323,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhzfcb4j205d05f0so.jpg','喝奶群众',0,NULL,1509326890583,NULL),
(324,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuur5xqh1j20b403mdft.jpg','请问,你戴过B罩杯胸罩吗?',0,NULL,1509326890583,NULL),
(325,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkud6pocmxg202s02sac3.gif','滑稽小猫',0,NULL,1509326890583,NULL),
(326,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhspe4vj208c091q36.jpg','你对老子有意见?',0,NULL,1509326890583,NULL),
(327,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuful2y8g208c08c0tg.gif','看我干嘛，我们小猫咪是不会做那种事的',0,NULL,1509326890583,NULL),
(328,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiax2hpj205m05h3yp.jpg','刚刚谁说要捶背?',0,NULL,1509326890583,NULL),
(329,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuugcbb2gj208c088aa2.jpg','你当我&hellip;.儿子吧',0,NULL,1509326890583,NULL),
(330,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuug802mbj206o06o74a.jpg','歪!莫西莫西',0,NULL,1509326890583,NULL),
(331,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuur7wywug206o07u0ss.gif','失礼（摘帽子）',0,NULL,1509326890583,NULL),
(332,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuufyh8lvj208c08cwej.jpg','你的戏可以像你的钱一样少点吗?',0,NULL,1509326890583,NULL),
(333,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuie1bl9j204j04pq2t.jpg','每一次路过都能看到你们在装逼',0,NULL,1509326890583,NULL),
(334,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuug5u63gj205i05djrb.jpg','又到了傻逼分享歌曲的时间了',0,NULL,1509326890583,NULL),
(335,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugplzzig208c08c755.gif','出来聊天辣',0,NULL,1509326890583,NULL),
(336,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiivp21j20500320sj.jpg','我一萝卜拍死你',0,NULL,1509326890583,NULL),
(337,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqf459vj207c07iq36.jpg','我去买几个圣晶石,你就待在卡池里,不要走动',0,NULL,1509326890583,NULL),
(338,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh4u2pvj208c08cdfq.jpg','你去玩竟然不带我',0,NULL,1509326890583,NULL),
(339,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh31xd4g207707oglv.gif','算了不生气！',0,NULL,1509326890583,NULL),
(340,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuug0e107j20a20730ss.jpg','死宅真恶心',0,NULL,1509326890583,NULL),
(341,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuugf8rhwg208c08cq4f.gif','把我的悲伤留给自己',0,NULL,1509326890583,NULL),
(342,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh99dq7j20k00k0abl.jpg','生气了！哄不好那种！',0,NULL,1509326890583,NULL),
(343,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuughdqaoj20b40b4glr.jpg','放个屁给你吃',0,NULL,1509326890583,NULL),
(344,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhmfe80j20b40b4jre.jpg','别桑心',0,NULL,1509326890583,NULL),
(345,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuui2ppfzj208c06kjrj.jpg','哥哥你的东西掉了了！（傻逼证）',0,NULL,1509326890583,NULL),
(346,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh6nisuj20bt0bt74g.jpg','还有30包水泥没扛呢!睡你麻痹!',0,NULL,1509326890583,NULL),
(347,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuix7fv1j20b409q0t3.jpg','家里有什么背景？',0,NULL,1509326890583,NULL),
(348,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuug25ossj208c08cq2v.jpg','放屁虫',0,NULL,1509326890583,NULL),
(349,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuifur2vj206o06omxi.jpg','你老婆吃春药了，发情给老王操了',0,NULL,1509326890583,NULL),
(350,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmrzu16gg2073073glk.gif','都不太成熟',0,NULL,1509326890583,NULL),
(351,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmon0cg3j205i04ejr8.jpg','停一下，打个广告处对象加我',0,NULL,1509326890583,NULL),
(352,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmqokr3gg206o06o748.gif','死鬼~棒棒哒!!!',0,NULL,1509326890583,NULL),
(353,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmqisjm1g202s037q37.gif','摇晃的红酒杯~',0,NULL,1509326890583,NULL),
(354,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmr8gtaqg20730730ti.gif','你们能成熟点吗?想我一样辣么成熟？',0,NULL,1509326890583,NULL),
(355,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpfr5qlj205t067748.jpg','伺候好楼上这位大爷，小费我付',0,NULL,1509326890583,NULL),
(356,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktms1ydohg208c07y75g.gif','人生到底是为了什么',0,NULL,1509326890583,NULL),
(357,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp397a8j203o03kglg.jpg','少他妈跟我来这套',0,NULL,1509326890583,NULL),
(358,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmq4winyj205a05a0so.jpg','老子看你也是輩身,要不要老子做你男朋友啊。',0,NULL,1509326890583,NULL),
(359,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmr0r348j207306o0sq.jpg','听不清过来我旁边说',0,NULL,1509326890583,NULL),
(360,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u3yuhhj206406474b.jpg','I AM THE FLASH（my name is barry allen）',0,NULL,1509326890583,NULL),
(361,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmps6t8pj205k05kq31.jpg','你是猪',0,NULL,1509326890583,NULL),
(362,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8j9cw0vj205g05g3yh.jpg','姚明中指',0,NULL,1509326890583,NULL),
(363,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpmq7dig203h049403.gif','左三圈,右三圈,脖子扭扭屁股扭扭',0,NULL,1509326890583,NULL),
(364,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u22jqbg202s02sglj.gif','张学友小东西（内裤顶头上）',0,NULL,1509326890583,NULL),
(365,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr985wd8oj20hs0hs17z.jpg','我操你妈个逼',0,NULL,1509326890583,NULL),
(366,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp1m2f7j206o07idfv.jpg','可以,奶子很大',0,NULL,1509326890583,NULL),
(367,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u8rarqj201o013dfl.jpg','头上一只咸鱼',0,NULL,1509326890583,NULL),
(368,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmq0ouijg208c061q3u.gif','宝宝不开心了',0,NULL,1509326890583,NULL),
(369,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmqqyrgdj20qo0pydh0.jpg','湿了',0,NULL,1509326890583,NULL),
(370,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmqskpjcj203b02ia9u.jpg','呦,写BUG呢',0,NULL,1509326890583,NULL),
(371,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktms3k2x9g206o06omx4.gif','我是你爹!',0,NULL,1509326890583,NULL),
(372,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp9xxppj205i03d0si.jpg','予告状，这张图我盗走了',0,NULL,1509326890583,NULL),
(373,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmr2au5hj203202xwea.jpg','我靠,大佬',0,NULL,1509326890583,NULL),
(374,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmq9qqdfg2073073gly.gif','不问你为何带惩戒，不在乎你开局送了一血',0,NULL,1509326890583,NULL),
(375,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkr98fuza1j20ge0hswmk.jpg','伟哥还是避孕药，你吃还是我吃？',0,NULL,1509326890583,NULL),
(376,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u0f9uij208c08cq31.jpg','万能懵逼公式',0,NULL,1509326890583,NULL),
(377,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmqkbilvj203c03c0sj.jpg','不知所措',0,NULL,1509326890583,NULL),
(378,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktms5e0cwj208s09vq36.jpg','抠脚（妹子）',0,NULL,1509326890583,NULL),
(379,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr97vqnl5g206705and4.gif','滑雪',0,NULL,1509326890583,NULL),
(380,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmp017tpj20q20ott9c.jpg','做我女朋友吧,我不嫌你B松&hellip;',0,NULL,1509326890583,NULL),
(381,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmotzfq3g208c08c751.gif','你算哪个球?',0,NULL,1509326890583,NULL),
(382,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u5o4gqg207y05w748.gif','小老鼠扔砖头',0,NULL,1509326890583,NULL),
(383,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmoojjgtj2036033q2r.jpg','怕你啊, 臭嗨',0,NULL,1509326890583,NULL),
(384,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmpwzs97j2063067mx4.jpg','臭傻逼注意你的言辞',0,NULL,1509326890583,NULL),
(385,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpha1uej205i05fmwz.jpg','哼（小猫）',0,NULL,1509326890583,NULL),
(386,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmponkhrj204201hmwx.jpg','送你来到我身边~',0,NULL,1509326890583,NULL),
(387,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmqm0g5ij20b00akglq.jpg','你可以和我在一起吗?',0,NULL,1509326890583,NULL),
(388,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8jbgc52g208c061t99.gif','你所有队友都被我轰死了',0,NULL,1509326890583,NULL),
(389,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr97i90wdg206007mtwa.gif','小猫划水',0,NULL,1509326890583,NULL),
(390,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmq6v5lrj20go0f4wf4.jpg','网恋网恋，又做了备胎是吧',0,NULL,1509326890583,NULL),
(391,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmpbim1pj205i05iweb.jpg','这个图很好，下一秒就是我的了',0,NULL,1509326890583,NULL),
(392,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpvaac8j20ng0m8q4u.jpg','付出真心最后得到什么？女人都是傻逼',0,NULL,1509326890583,NULL),
(393,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmoq9phuj20c80c8dfy.jpg','请开始你的表演',0,NULL,1509326890583,NULL),
(394,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmr4g4gfj20fj0c1dgj.jpg','今天收成还不错,偷了两个井盖',0,NULL,1509326890583,NULL),
(395,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmoy76g6j205l06yt8q.jpg','我們的感情，回不去了',0,NULL,1509326890583,NULL),
(396,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr951eicjj21kw1kw44c.jpg','敌敌畏',0,NULL,1509326890583,NULL),
(397,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmq33slbg208c08ct9r.gif','你算哪根玉米棒子?',0,NULL,1509326890583,NULL),
(398,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmpylxqlj205i04xaa7.jpg','皮?',0,NULL,1509326890583,NULL),
(399,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmqgnnqrg206o06ot93.gif','我开学不开心，你心里没点b数吗',0,NULL,1509326890583,NULL),
(400,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8jd417vj208c08cmx8.jpg','其实我很美（化学）',0,NULL,1509326890583,NULL),
(401,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp89ocdg208c08cjsf.gif','想你，老戴里都是你',0,NULL,1509326890583,NULL),
(402,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkr973ed9zj20hs0fbgtf.jpg','一刀子砍死你',0,NULL,1509326890583,NULL),
(403,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr96xede0j20hs0hs18g.jpg','小红猪疑问表情',0,NULL,1509326890583,NULL),
(404,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkr8ufo892j201p01r3yi.jpg','小绿帽',0,NULL,1509326890583,NULL),
(405,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8udy4dxj20k00qotal.jpg','吓的我都吃了瓜子',0,NULL,1509326890583,NULL),
(406,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8tyf5zvg208c08c74s.gif','那好吧，不打扰你了',0,NULL,1509326890583,NULL),
(407,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmolcpovj2096096wem.jpg','我是一个经不起批评的人，如果你批评我,我就禁你',0,NULL,1509326890583,NULL),
(408,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u7917hg203c03cglh.gif','金馆长汪蛋上下抖动',0,NULL,1509326890583,NULL),
(409,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmoru3srj202e020q2q.jpg','你再说一遥',0,NULL,1509326890583,NULL),
(410,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmpqcofij206i06hdfs.jpg','走, rushB!',0,NULL,1509326890583,NULL),
(411,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmr63jmtj206o06odfy.jpg','等你们斗图斗的的差不多时候,我就一刀下去',0,NULL,1509326890583,NULL),
(412,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul6pcujg20730730sp.gif','二狗原谅我',0,NULL,1509327240511,NULL),
(413,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqv62fug208c08ct8l.gif','一问三不知',0,NULL,1509327240511,NULL),
(414,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuttpaxnuj202c01qa9y.jpg','哇，哭惨了！',0,NULL,1509327240511,NULL),
(415,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukoj7x6g208c08cabd.gif','我简直不敢相信我的眼睛',0,NULL,1509327240511,NULL),
(416,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukc2djbj205205iglf.jpg','我是这样的人吗',0,NULL,1509327240511,NULL),
(417,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuulboakug208c04fwew.gif','叫我干嘛?（卡车）',0,NULL,1509327240511,NULL),
(418,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqzff14j205i04o746.jpg','骚话嘴边讲，B数心里藏',0,NULL,1509327240511,NULL),
(419,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuujkl52gj203t05ia9v.jpg','楼上说的其实是针对我楼下的',0,NULL,1509327240511,NULL),
(420,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuttu7krjj20c10d4aao.jpg','看，我捉到了什么！10块看一次，不可以乱喂吃的（滑稽）',0,NULL,1509327240511,NULL),
(421,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuur18pmuj205i05iwef.jpg','你真是个又皮又欠揍的女孩',0,NULL,1509327240511,NULL),
(422,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk27nulj20bo07cmx8.jpg','互相要饭',0,NULL,1509327240511,NULL),
(423,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqqujqyj204604jq2t.jpg','你可鸡巴拉倒吧心里没个B数。',0,NULL,1509327240511,NULL),
(424,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuukfllkdj203z04gaa6.jpg','等我出去了就把你们都给杀了',0,NULL,1509327240511,NULL),
(425,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkutu9wmc5j205305i3yy.jpg','二次元萌妹子',0,NULL,1509327240511,NULL),
(426,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuttrmw81j20hs0hswez.jpg','小狗狗穿领带',0,NULL,1509327240511,NULL),
(427,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuulmgj4nj20a50bfaad.jpg','忘女管理的逼又臭又黑',0,NULL,1509327240511,NULL),
(428,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukaie81j204g026glf.jpg','你想穿裙子对吧',0,NULL,1509327240511,NULL),
(429,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuttvs4v0j201o01oa9v.jpg','坏坏喝啤酒',0,NULL,1509327240511,NULL),
(430,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul4sqxrj203c03cglk.jpg','就这么点儿?',0,NULL,1509327240511,NULL),
(431,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukl5vh4g208c07zjrj.gif','我是不是萌萌哒',0,NULL,1509327240511,NULL),
(432,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk7cauij208c06874q.jpg','菜鸡逼雷要不要来斗图?',0,NULL,1509327240511,NULL),
(433,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk08jp5j205h05j0sm.jpg','妈了个巴子的',0,NULL,1509327240511,NULL),
(434,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul9axoog208c08cjs8.gif','你们太污了',0,NULL,1509327240511,NULL),
(435,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukhgzd0j206o06o3yk.jpg','别发了，体谅下我的身体',0,NULL,1509327240511,NULL),
(436,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuttno21dj20ei0d4jrr.jpg','招租床位！',0,NULL,1509327240511,NULL),
(437,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuu53q9bcj20hs0hsab6.jpg','周星驰',0,NULL,1509327240511,NULL),
(438,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqjkiztg208c08cwfq.gif','痛哭流涕',0,NULL,1509327240511,NULL),
(439,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqsunmeg207l06n0t4.gif','你感动了我,我要嫁给你!',0,NULL,1509327240511,NULL),
(440,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqxr3dqj206o06oaas.jpg','真难受',0,NULL,1509327240511,NULL),
(441,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqp82e5j204a04a3yf.jpg','喜欢高基的少废话!今夜子时!后山竹林!自带蚊香!!',0,NULL,1509327240511,NULL),
(442,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkutu24x6nj205i05i0su.jpg','敬礼',0,NULL,1509327240511,NULL),
(443,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuulkfgy9g205k05kwed.gif','有我在呢',0,NULL,1509327240511,NULL),
(444,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukqvi5xg20730730t2.gif','你不能凶我',0,NULL,1509327240511,NULL),
(445,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuujf3wr5j20p00nrwi7.jpg','劳资最讨厌女人了滚!',0,NULL,1509327240511,NULL),
(446,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuujp1ze4j203e034a9v.jpg','您配吗?',0,NULL,1509327240511,NULL),
(447,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuktclr4j206406c74x.jpg','什么，这图不是老子的吗?',0,NULL,1509327240511,NULL),
(448,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuujj0ypqj205i05idg5.jpg','不得了，不得了！',0,NULL,1509327240511,NULL),
(449,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuur431goj20k00k0wf6.jpg','打扮一下一会去酒吧喝酒',0,NULL,1509327240511,NULL),
(450,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkutpcr5qnj205n04dt8m.jpg','卧槽，你想干嘛！',0,NULL,1509327240511,NULL),
(451,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuujnj5jrg208c08874o.gif','螺旋我是你爸',0,NULL,1509327240511,NULL),
(452,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuul30llgg208c08ct91.gif','呦!太阳打西边出来了',0,NULL,1509327240511,NULL),
(453,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuql5w4cj202a02c0si.jpg','惆怅',0,NULL,1509327240511,NULL),
(454,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuu5bg8dwj20hj0hs40b.jpg','我想要绿拐！',0,NULL,1509327240511,NULL),
(455,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj9k5g2j205e056a9x.jpg','我就纳闷了你们不学习么',0,NULL,1509327240511,NULL),
(456,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuujwtlr6j208208274c.jpg','不是这样的',0,NULL,1509327240511,NULL),
(457,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuu50oj63j202f02hq2p.jpg','呐（爱心）',0,NULL,1509327240511,NULL),
(458,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk8x9ijj20770683yc.jpg','大色狼',0,NULL,1509327240511,NULL),
(459,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuttku58mg207u06pb2d.gif','小猫吃了你！（舔舔舔）',0,NULL,1509327240511,NULL),
(460,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuukdp43ej205i036gln.jpg','你必将加冕为爽',0,NULL,1509327240511,NULL),
(461,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuujuoggcj20qo0qodii.jpg','有本事朝这儿打',0,NULL,1509327240511,NULL),
(462,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuu55ggdrj201d016t8r.jpg','棒棒哒',0,NULL,1509327240511,NULL),
(463,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuk4w5jbj206o06owf3.jpg','正面肛我啊，弱鸡',0,NULL,1509327240511,NULL),
(464,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuttzlbrhj205i04674c.jpg','你特么！',0,NULL,1509327240511,NULL),
(465,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuu57undrj20f10axt9k.jpg','范达克霍姆！',0,NULL,1509327240511,NULL),
(466,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukj4q4hg207206ywei.gif','行爸爸依你',0,NULL,1509327240511,NULL),
(467,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuulhbjs3j20gq0e33za.jpg','大哥火',0,NULL,1509327240511,NULL),
(468,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuujymmzxj208c07u0ss.jpg','给老子滚啊,你这个只会玩闪萌的傻狗',0,NULL,1509327240511,NULL),
(469,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuliv4fyj205i05idfp.jpg','分享你妈个逼，咋不把你妈分享给我们玩玩',0,NULL,1509327240511,NULL),
(470,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkutu56i7fj20jg0hq0tf.jpg','谁？（流鼻涕）',0,NULL,1509327240511,NULL),
(471,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqnnbbig2073073mxt.gif','好好好你胸大你先说',0,NULL,1509327240511,NULL),
(472,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuujguupaj202702hgld.jpg','突然出现 ！',0,NULL,1509327240511,NULL),
(473,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuulf1zudg208c08c409.gif','我要去赚钱了',0,NULL,1509327240511,NULL),
(474,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj7zmczj203503ct8r.jpg','这里 ACDEF数（就是没有B数）',0,NULL,1509327240511,NULL),
(475,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkutu7yzylg205a05adh5.gif','亲亲',0,NULL,1509327240511,NULL),
(476,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqgwfy8j206o06oaa2.jpg','山炮',0,NULL,1509327240511,NULL),
(477,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuukwvlnlg208c08cdhm.gif','强吻',0,NULL,1509327240511,NULL),
(478,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuul0si2sg208c08c0ud.gif','你打吧，你要是忍心的话',0,NULL,1509327240511,NULL),
(479,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuu4z1rcpg20a006p7ha.gif','鸡哥哥走路',0,NULL,1509327240511,NULL),
(480,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuipaqmwg206i05y3yf.gif','倒垃圾,全让你',0,NULL,1509327240511,NULL),
(481,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugplzzig208c08c755.gif','出来聊天辣',0,NULL,1509327240511,NULL),
(482,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuihd5p5j2052049jr7.jpg','要不要去宾馆打排位',0,NULL,1509327240511,NULL),
(483,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuugkneazg20b40b4my4.gif','这就傻逼了',0,NULL,1509327240511,NULL),
(484,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh6nisuj20bt0bt74g.jpg','还有30包水泥没扛呢!睡你麻痹!',0,NULL,1509327240511,NULL),
(485,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuifur2vj206o06omxi.jpg','你老婆吃春药了，发情给老王操了',0,NULL,1509327240511,NULL),
(486,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiuv161j206o06mjri.jpg','赖光，我去买几个圣晶石,你就待在卡池里,不要走动',0,NULL,1509327240511,NULL),
(487,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugtw9erj203803uglf.jpg','坐在地上委屈的哭',0,NULL,1509327240511,NULL),
(488,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuie1bl9j204j04pq2t.jpg','每一次路过都能看到你们在装逼',0,NULL,1509327240511,NULL),
(489,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj12y9fg207808c0t1.gif','哥哥不生气啦抱抱!',0,NULL,1509327240511,NULL),
(490,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuugadoc7j20c80c3weu.jpg','无神的双眼失去了对生活的渴望',0,NULL,1509327240511,NULL),
(491,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuui94161j206o06o0td.jpg','盗图者，走老妹晚上带你吃鸡儿!',0,NULL,1509327240511,NULL),
(492,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhmfe80j20b40b4jre.jpg','别桑心',0,NULL,1509327240511,NULL),
(493,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuufwsf90g207a08cdgf.gif','你才没有腰',0,NULL,1509327240511,NULL),
(494,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh4u2pvj208c08cdfq.jpg','你去玩竟然不带我',0,NULL,1509327240511,NULL),
(495,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuqf459vj207c07iq36.jpg','我去买几个圣晶石,你就待在卡池里,不要走动',0,NULL,1509327240511,NULL),
(496,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuui2ppfzj208c06kjrj.jpg','哥哥你的东西掉了了！（傻逼证）',0,NULL,1509327240511,NULL),
(497,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkud6mg9uej205h06bwgk.jpg','哈哈哈哈（龙妈）',0,NULL,1509327240511,NULL),
(498,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhspe4vj208c091q36.jpg','你对老子有意见?',0,NULL,1509327240511,NULL),
(499,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuix7fv1j20b409q0t3.jpg','家里有什么背景？',0,NULL,1509327240511,NULL),
(500,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhd22f7j20hs0gl3yu.jpg','老板,来七八个小姐姐',0,NULL,1509327240511,NULL),
(501,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuicg2ojj205g04tdfq.jpg','儿子你说谁呢',0,NULL,1509327240511,NULL),
(502,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj61v3pj20iz0ixwfp.jpg','能借我五块钱吗？我想买个一锤定音试个水',0,NULL,1509327240511,NULL),
(503,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiax2hpj205m05h3yp.jpg','刚刚谁说要捶背?',0,NULL,1509327240511,NULL),
(504,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhu6v2lj201k01o742.jpg','难受的一匹',0,NULL,1509327240511,NULL),
(505,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuug802mbj206o06o74a.jpg','歪!莫西莫西',0,NULL,1509327240511,NULL),
(506,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuir07bwj204f04g0sl.jpg','楼上鸡婆',0,NULL,1509327240511,NULL),
(507,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiz5utej205004pjrl.jpg','且慢 ！',0,NULL,1509327240511,NULL),
(508,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuful2y8g208c08c0tg.gif','看我干嘛，我们小猫咪是不会做那种事的',0,NULL,1509327240511,NULL),
(509,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugs8d44j20go0got95.jpg','我的眼里只有你（猪）',0,NULL,1509327240511,NULL),
(510,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhkfw0xj205205i0sk.jpg','这谁家孩子,没人管我拍死了哈？',0,NULL,1509327240511,NULL),
(511,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuug25ossj208c08cq2v.jpg','放屁虫',0,NULL,1509327240511,NULL),
(512,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuit0odvj208c08cglq.jpg','妹纸走,请你吃麻辣烫',0,NULL,1509327240511,NULL),
(513,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhf8zuyj204a04g0t9.jpg','我拿1亿退群了',0,NULL,1509327240511,NULL),
(514,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuugf8rhwg208c08cq4f.gif','把我的悲伤留给自己',0,NULL,1509327240511,NULL),
(515,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhitnumj206o06laa1.jpg','你们一起上好吗',0,NULL,1509327240511,NULL),
(516,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkud6pocmxg202s02sac3.gif','滑稽小猫',0,NULL,1509327240511,NULL),
(517,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuexe6dcag202s02swg0.gif','金馆长小白',0,NULL,1509327240511,NULL),
(518,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8jenbk7j206y06yt8j.jpg','小猫裹起来',0,NULL,1509327240511,NULL),
(519,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuufyh8lvj208c08cwej.jpg','你的戏可以像你的钱一样少点吗?',0,NULL,1509327240511,NULL),
(520,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhxewyjg207207a3yi.gif','握草',0,NULL,1509327240511,NULL),
(521,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuughdqaoj20b40b4glr.jpg','放个屁给你吃',0,NULL,1509327240511,NULL),
(522,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh99dq7j20k00k0abl.jpg','生气了！哄不好那种！',0,NULL,1509327240511,NULL),
(523,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuemvd5ipj201h01e0kv.jpg','小猪脸红',0,NULL,1509327240511,NULL),
(524,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuini3urj206o06oq36.jpg','分享也没用我们就不点',0,NULL,1509327240511,NULL),
(525,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugx2j4dg2073073t9l.gif','鸡生迷茫',0,NULL,1509327240511,NULL),
(526,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuj2nflvj205i03sdfm.jpg','我让你突然打死你这个大傻逼',0,NULL,1509327240511,NULL),
(527,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuur5xqh1j20b403mdft.jpg','请问,你戴过B罩杯胸罩吗?',0,NULL,1509327240511,NULL),
(528,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh17nudj206o05k3yj.jpg','撩妹我生命中最美的两个字',0,NULL,1509327240511,NULL),
(529,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuui73melj206o06odg0.jpg','死于舔包（绝地求生）',0,NULL,1509327240511,NULL),
(530,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhzfcb4j205d05f0so.jpg','喝奶群众',0,NULL,1509327240511,NULL),
(531,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuugzifrnj20dc07h74u.jpg','亚瑟后羿！',0,NULL,1509327240511,NULL),
(532,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuugmc1z8j205i05i3yc.jpg','老子签到，关你鸡巴事,给我滚一边去。',0,NULL,1509327240511,NULL),
(533,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhvue85j2045035mwz.jpg','向大佬低头',0,NULL,1509327240511,NULL),
(534,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuug5u63gj205i05djrb.jpg','又到了傻逼分享歌曲的时间了',0,NULL,1509327240511,NULL),
(535,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuugcbb2gj208c088aa2.jpg','你当我&hellip;.儿子吧',0,NULL,1509327240511,NULL),
(536,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuuil354mj20e80e80t4.jpg','走, rushB！',0,NULL,1509327240511,NULL),
(537,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkuui0zpe7j208l03za9z.jpg','你有网瘾',0,NULL,1509327240511,NULL),
(538,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuiivp21j20500320sj.jpg','我一萝卜拍死你',0,NULL,1509327240511,NULL),
(539,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhqtvgdg2073073dfw.gif','我错啦,你别不理我',0,NULL,1509327240511,NULL),
(540,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkuug0e107j20a20730ss.jpg','死宅真恶心',0,NULL,1509327240511,NULL),
(541,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuug45ej7g205405474c.gif','我差不多是只废熊了',0,NULL,1509327240511,NULL),
(542,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuui53jx8j206o06o0t5.jpg','还你',0,NULL,1509327240511,NULL),
(543,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhb0626g2073073t8q.gif','礼物呢?!没礼物怎么快乐?!',0,NULL,1509327240511,NULL),
(544,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhoimtfj20b005udfs.jpg','不一样',0,NULL,1509327240511,NULL),
(545,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuhh9lfgj20hs0fkdgq.jpg','真不要脸，就是就是',0,NULL,1509327240511,NULL),
(546,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuur7wywug206o07u0ss.gif','失礼（摘帽子）',0,NULL,1509327240511,NULL),
(547,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkuuh31xd4g207707oglv.gif','算了不生气！',0,NULL,1509327240511,NULL),
(548,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmpwzs97j2063067mx4.jpg','臭傻逼注意你的言辞',0,NULL,1509327240511,NULL),
(549,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmr4g4gfj20fj0c1dgj.jpg','今天收成还不错,偷了两个井盖',0,NULL,1509327240511,NULL),
(550,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpmq7dig203h049403.gif','左三圈,右三圈,脖子扭扭屁股扭扭',0,NULL,1509327240511,NULL),
(551,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmq33slbg208c08ct9r.gif','你算哪根玉米棒子?',0,NULL,1509327240511,NULL),
(552,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u3yuhhj206406474b.jpg','I AM THE FLASH（my name is barry allen）',0,NULL,1509327240511,NULL),
(553,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpha1uej205i05fmwz.jpg','哼（小猫）',0,NULL,1509327240511,NULL),
(554,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktms1ydohg208c07y75g.gif','人生到底是为了什么',0,NULL,1509327240511,NULL),
(555,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmoy76g6j205l06yt8q.jpg','我們的感情，回不去了',0,NULL,1509327240511,NULL),
(556,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr97i90wdg206007mtwa.gif','小猫划水',0,NULL,1509327240511,NULL),
(557,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp397a8j203o03kglg.jpg','少他妈跟我来这套',0,NULL,1509327240511,NULL),
(558,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkr8ufo892j201p01r3yi.jpg','小绿帽',0,NULL,1509327240511,NULL),
(559,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmpbim1pj205i05iweb.jpg','这个图很好，下一秒就是我的了',0,NULL,1509327240511,NULL),
(560,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktms3k2x9g206o06omx4.gif','我是你爹!',0,NULL,1509327240511,NULL),
(561,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u22jqbg202s02sglj.gif','张学友小东西（内裤顶头上）',0,NULL,1509327240511,NULL),
(562,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr96xede0j20hs0hs18g.jpg','小红猪疑问表情',0,NULL,1509327240511,NULL),
(563,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8jd417vj208c08cmx8.jpg','其实我很美（化学）',0,NULL,1509327240511,NULL),
(564,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpvaac8j20ng0m8q4u.jpg','付出真心最后得到什么？女人都是傻逼',0,NULL,1509327240511,NULL),
(565,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8jbgc52g208c061t99.gif','你所有队友都被我轰死了',0,NULL,1509327240511,NULL),
(566,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmolcpovj2096096wem.jpg','我是一个经不起批评的人，如果你批评我,我就禁你',0,NULL,1509327240511,NULL),
(567,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr985wd8oj20hs0hs17z.jpg','我操你妈个逼',0,NULL,1509327240511,NULL),
(568,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmpylxqlj205i04xaa7.jpg','皮?',0,NULL,1509327240511,NULL),
(569,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktms5e0cwj208s09vq36.jpg','抠脚（妹子）',0,NULL,1509327240511,NULL),
(570,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr97vqnl5g206705and4.gif','滑雪',0,NULL,1509327240511,NULL),
(571,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmr8gtaqg20730730ti.gif','你们能成熟点吗?想我一样辣么成熟？',0,NULL,1509327240511,NULL),
(572,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmps6t8pj205k05kq31.jpg','你是猪',0,NULL,1509327240511,NULL),
(573,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmqskpjcj203b02ia9u.jpg','呦,写BUG呢',0,NULL,1509327240511,NULL),
(574,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmoq9phuj20c80c8dfy.jpg','请开始你的表演',0,NULL,1509327240511,NULL),
(575,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr951eicjj21kw1kw44c.jpg','敌敌畏',0,NULL,1509327240511,NULL),
(576,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmq0ouijg208c061q3u.gif','宝宝不开心了',0,NULL,1509327240511,NULL),
(577,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8tyf5zvg208c08c74s.gif','那好吧，不打扰你了',0,NULL,1509327240511,NULL),
(578,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u5o4gqg207y05w748.gif','小老鼠扔砖头',0,NULL,1509327240511,NULL),
(579,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmr0r348j207306o0sq.jpg','听不清过来我旁边说',0,NULL,1509327240511,NULL),
(580,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp1m2f7j206o07idfv.jpg','可以,奶子很大',0,NULL,1509327240511,NULL),
(581,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkr973ed9zj20hs0fbgtf.jpg','一刀子砍死你',0,NULL,1509327240511,NULL),
(582,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmotzfq3g208c08c751.gif','你算哪个球?',0,NULL,1509327240511,NULL),
(583,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmp017tpj20q20ott9c.jpg','做我女朋友吧,我不嫌你B松&hellip;',0,NULL,1509327240511,NULL),
(584,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmpqcofij206i06hdfs.jpg','走, rushB!',0,NULL,1509327240511,NULL),
(585,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmon0cg3j205i04ejr8.jpg','停一下，打个广告处对象加我',0,NULL,1509327240511,NULL),
(586,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp89ocdg208c08cjsf.gif','想你，老戴里都是你',0,NULL,1509327240511,NULL),
(587,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmq4winyj205a05a0so.jpg','老子看你也是輩身,要不要老子做你男朋友啊。',0,NULL,1509327240511,NULL),
(588,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkr98fuza1j20ge0hswmk.jpg','伟哥还是避孕药，你吃还是我吃？',0,NULL,1509327240511,NULL),
(589,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8udy4dxj20k00qotal.jpg','吓的我都吃了瓜子',0,NULL,1509327240511,NULL),
(590,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmr2au5hj203202xwea.jpg','我靠,大佬',0,NULL,1509327240511,NULL),
(591,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmp9xxppj205i03d0si.jpg','予告状，这张图我盗走了',0,NULL,1509327240511,NULL),
(592,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u8rarqj201o013dfl.jpg','头上一只咸鱼',0,NULL,1509327240511,NULL),
(593,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmqqyrgdj20qo0pydh0.jpg','湿了',0,NULL,1509327240511,NULL),
(594,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmqgnnqrg206o06ot93.gif','我开学不开心，你心里没点b数吗',0,NULL,1509327240511,NULL),
(595,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmqkbilvj203c03c0sj.jpg','不知所措',0,NULL,1509327240511,NULL),
(596,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmr63jmtj206o06odfy.jpg','等你们斗图斗的的差不多时候,我就一刀下去',0,NULL,1509327240511,NULL),
(597,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmponkhrj204201hmwx.jpg','送你来到我身边~',0,NULL,1509327240511,NULL),
(598,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmqisjm1g202s037q37.gif','摇晃的红酒杯~',0,NULL,1509327240511,NULL),
(599,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmq9qqdfg2073073gly.gif','不问你为何带惩戒，不在乎你开局送了一血',0,NULL,1509327240511,NULL),
(600,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmoojjgtj2036033q2r.jpg','怕你啊, 臭嗨',0,NULL,1509327240511,NULL),
(601,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fktmoru3srj202e020q2q.jpg','你再说一遥',0,NULL,1509327240511,NULL),
(602,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmq6v5lrj20go0f4wf4.jpg','网恋网恋，又做了备胎是吧',0,NULL,1509327240511,NULL),
(603,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u7917hg203c03cglh.gif','金馆长汪蛋上下抖动',0,NULL,1509327240511,NULL),
(604,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8j9cw0vj205g05g3yh.jpg','姚明中指',0,NULL,1509327240511,NULL),
(605,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkr8u0f9uij208c08cq31.jpg','万能懵逼公式',0,NULL,1509327240511,NULL),
(606,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmqm0g5ij20b00akglq.jpg','你可以和我在一起吗?',0,NULL,1509327240511,NULL),
(607,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fktmqokr3gg206o06o748.gif','死鬼~棒棒哒!!!',0,NULL,1509327240511,NULL),
(608,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fktmpfr5qlj205t067748.jpg','伺候好楼上这位大爷，小费我付',0,NULL,1509327240511,NULL),
(609,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fktmrzu16gg2073073glk.gif','都不太成熟',0,NULL,1509327240511,NULL),
(610,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940772_unzlFG.jpg','冷酷',0,NULL,1509327244587,1509327245664),
(611,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940772_ZWMmsw.jpg','软萌',0,NULL,1509327244587,1509327245664),
(612,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940773_TLDoKp.jpg','你这话们么意思，我不喜欢撤回去',0,NULL,1509327244587,1509327245664),
(613,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940773_vVHpbK.jpg','大大佬?',0,NULL,1509327244587,1509327245664),
(614,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940774_hNcrRj.jpg','就静静看着你装逼',0,NULL,1509327244587,1509327245664),
(615,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940775_wdXMpe.jpg','吃棒棒糖',0,NULL,1509327244587,1509327245664),
(616,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkuurdxx8nj20jg0j9acc.jpg','满脸问号',0,NULL,1509327244587,1509327245664),
(617,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940777_hYZkIK.jpg','好不好嘛',0,NULL,1509327244587,1509327245664),
(618,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940777_cTBhtL.jpg','抱住',0,NULL,1509327244587,1509327245664),
(619,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkuurfw10vj206y06yt94.jpg','目瞪口呆！',0,NULL,1509327244587,1509327246274),
(620,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940843_jfObDu.jpg','仰视您！',0,NULL,1509327244587,1509327246274),
(621,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940844_LyRZEO.jpg','想你了',0,NULL,1509327244587,1509327246274),
(622,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940844_WtykrE.jpg','一脸茫然',0,NULL,1509327244587,1509327246274),
(623,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940845_uyRLrP.jpg','告诉我你想吃啥?',0,NULL,1509327244587,1509327246274),
(624,'http://img.doutula.com/production/uploads/image/2017/10/25/20171025940845_heykGa.jpg','跪谢!N',0,NULL,1509327244587,1509327246274),
(625,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzirnn1pjj207307c0ss.jpg','就你这几张破图我都懒得跟你斗',0,NULL,1509347546076,NULL),
(626,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzipo4lmvg208c08c3yn.gif','你根本就不爱我，你只是想要第二份半价',0,NULL,1509347546076,NULL),
(627,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzip2wxymg207c08cq3q.gif','不是每个看起來很開心的人，都是開心的',0,NULL,1509347546076,NULL),
(628,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkziqbd4n1j205i04kmx0.jpg','救救我!我身上绑着Note7，嘀嘀',0,NULL,1509347546076,NULL),
(629,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkziq88wo1j20e30bgjry.jpg','集合!装逼了!',0,NULL,1509347546076,NULL),
(630,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzis9sdc5j207v09ht93.jpg','大佬别走加个群吧',0,NULL,1509347546076,NULL),
(631,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzitbu79oj20dh0di44b.jpg','狗头给你扇飞?',0,NULL,1509347546076,NULL),
(632,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzir83cnag20b40b40ta.gif','撸管证、日狗证、装逼证你很皮啊',0,NULL,1509347546076,NULL),
(633,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzittj3o6j205k05kta7.jpg','瞧你跟个250似的',0,NULL,1509347546076,NULL),
(634,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzip4egvhj203m03tglg.jpg','你害怕了对不对',0,NULL,1509347546076,NULL),
(635,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzipwhqeuj205h05rq38.jpg','操我妈?那就来啊不来你就是我孙子',0,NULL,1509347546076,NULL),
(636,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzir2mhylj205k00wt8l.jpg','真想穿过微信来操你',0,NULL,1509347546076,NULL),
(637,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkziqtnljuj205105n3yg.jpg','我戳你娘个鳖!',0,NULL,1509347546076,NULL),
(638,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkziq3v3o7j202j02h0sj.jpg','你个臭婆娘',0,NULL,1509347546076,NULL),
(639,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzirxespfj205k03sjrs.jpg','笑死在206国道',0,NULL,1509347546076,NULL),
(640,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzish359jj205i05imxd.jpg','用我们启东话说你就是一个狗搓',0,NULL,1509347546076,NULL),
(641,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzitwx8sdj208t08pwfp.jpg','我就不滚',0,NULL,1509347546076,NULL),
(642,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzis3qigmj20fl0hsjvt.jpg','大兄弟我有黄片你要不要啊?',0,NULL,1509347546076,NULL),
(643,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzit52wkug208c09ddgj.gif','谢谢 fuck you',0,NULL,1509347546076,NULL),
(644,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzipff7npj205k05kt8z.jpg','我就喜欢时不时@一下肤白貌美腿长奶大的仙女',0,NULL,1509347546076,NULL),
(645,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzisrymxqg206o06eq30.gif','为了钱尊严算什么&hellip;开价吧!多少',0,NULL,1509347546076,NULL),
(646,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzipdimn8j208907iglo.jpg','已达共识,碰爪',0,NULL,1509347546076,NULL),
(647,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkziprbfufj206o06o748.jpg','所有的美好都是你意淫的',0,NULL,1509347546076,NULL),
(648,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzirv642pj20gd0hsahu.jpg','老子又不是跟你说话你插什么嘴,草尼玛',0,NULL,1509347546076,NULL),
(649,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzirc2zbdj204601xwei.jpg','怀孕了就直说呀撤回干什么我们帮你想办法呀',0,NULL,1509347546076,NULL),
(650,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziqv9k7lj205a05aglj.jpg','不打你，你难受吧？',0,NULL,1509347546076,NULL),
(651,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzis7qkq7j20hq0hq77t.jpg','我生气了, 哄都哄不好',0,NULL,1509347546076,NULL),
(652,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzir12cwnj208c080aab.jpg','哼,你才是小笨蛋嘞',0,NULL,1509347546076,NULL),
(653,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkziszr54nj20ch09c0sz.jpg','说了那么多废话，还不如发个红包',0,NULL,1509347546076,NULL),
(654,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzisxr1znj20hs0hsdkl.jpg','这娘们够泼我喜欢',0,NULL,1509347546076,NULL),
(655,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzipsw6vqj204g048mx1.jpg','说话客气点我可是有人罩着的',0,NULL,1509347546076,NULL),
(656,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziqdcpp7g206o06oglt.gif','没有滚',0,NULL,1509347546076,NULL),
(657,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziqleh2xj20hs0fgt9s.jpg','忘你还有什么脸出来',0,NULL,1509347546076,NULL),
(658,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzip6cmvjj20hg0hg758.jpg','这婊子比我还骚',0,NULL,1509347546076,NULL),
(659,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzippsj0fg208c08c74i.gif','你保证?保证有用吗?',0,NULL,1509347546076,NULL),
(660,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziqrnt4tj20k00ingmm.jpg','我要在我的鸡鸡上下毒，毒死你们这群贱货',0,NULL,1509347546076,NULL),
(661,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzioyv2hcg208c08c748.gif','全世界就你是心地善良出淤泥而不染的白莲花',0,NULL,1509347546076,NULL),
(662,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzipufuomj205a05c3yf.jpg','我看你是欠揍了',0,NULL,1509347546076,NULL),
(663,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzipj3tglg208708cq3m.gif','开心到飞起',0,NULL,1509347546076,NULL),
(664,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzisq5eykg20b40b4aac.gif','你是个未激活角色,装什么装',0,NULL,1509347546076,NULL),
(665,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkziso4balg204q04p0sy.gif','WE必胜!',0,NULL,1509347546076,NULL),
(666,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzira9wipj205k05kaal.jpg','领姨个脚桶',0,NULL,1509347546076,NULL),
(667,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziqn32kaj204g04ggli.jpg','胸那么大，不让摸你还有理了?',0,NULL,1509347546076,NULL),
(668,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzipkjky6j201x01z0si.jpg','呆滞',0,NULL,1509347546076,NULL),
(669,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziqh0e39j208g06c74c.jpg','速度围观',0,NULL,1509347546076,NULL),
(670,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziph441ig205k05kgln.gif','手机没电我就起来了',0,NULL,1509347546076,NULL),
(671,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzire9n9ng205i05i3yx.gif','图图觉得你是傻逼',0,NULL,1509347546076,NULL),
(672,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzipm6lkoj2073073jrg.jpg','先喝一口82年的雪碧压压惊',0,NULL,1509347546076,NULL),
(673,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziqysorwj205a05awee.jpg','舞王出场,全场掌',0,NULL,1509347546076,NULL),
(674,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkziqx633jg2073073dfx.gif','可能个屁我可能',0,NULL,1509347546076,NULL),
(675,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzir5tg1rj206h06djso.jpg','don&#039; t you have a little b number in your heart',0,NULL,1509347546076,NULL),
(676,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzitq0h3fj20hs0hsai1.jpg','吓得我都赫尔乌尔哈泽林斯基反应了',0,NULL,1509347546076,NULL),
(677,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzit23lilj20hs0hsjs2.jpg','真想给你炉钩子',0,NULL,1509347546076,NULL),
(678,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzip122x0j206o06o75d.jpg','别听傻屌乱说（套套）',0,NULL,1509347546076,NULL),
(679,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziqipff8j204e038dfq.jpg','体而特合号看穿一切',0,NULL,1509347546076,NULL),
(680,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzirltku7j20e50e8gqi.jpg','天天玩你麻痹王者荣耀，分享也没用老子就不帮你点开!',0,NULL,1509347546076,NULL),
(681,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzisf3ac7j20e80d4mze.jpg','求求你们了，进群玩吧',0,NULL,1509347546076,NULL),
(682,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkziq9urkgj205i05gweb.jpg','尴尬又不失礼貌的微笑',0,NULL,1509347546076,NULL),
(683,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzip8opf0j205r04r3yy.jpg','兄弟我照着',0,NULL,1509347546076,NULL),
(684,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzitynufag206o06o3yh.gif','跟着我左手一只鸡右手一只鸭',0,NULL,1509347546076,NULL),
(685,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkziqf87swg208c07kmxc.gif','唉，我为啥有这么个制杖哥哥',0,NULL,1509347546076,NULL),
(686,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzipypbhcj207j08c3zs.jpg','鄙视',0,NULL,1509347546076,NULL),
(687,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkziq62oiej20dw0b4t9k.jpg','跟别人架的时候，一定要冷静',0,NULL,1509347546076,NULL),
(688,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziqowr5gj205a05amxe.jpg','这么晩还不睡,你嫖娼啊',0,NULL,1509347546076,NULL),
(689,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkziq0aqv7j207306nt8q.jpg','我看是时候枪毙几个狗群员了',0,NULL,1509347546076,NULL),
(690,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzipa76i7j2046046mwz.jpg','你很鸡巴骚话多',0,NULL,1509347546076,NULL),
(691,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzism57btj208c08cdim.jpg','小哥哥处对象吗我偷老公的钱养你',0,NULL,1509347546076,NULL),
(692,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkziq2dqwij20gj0gj74y.jpg','你算哪根香蕉?',0,NULL,1509347546076,NULL),
(693,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzc7xfs1kj207e063mxc.jpg','啊啊啊啊啊啊',0,NULL,1509347546076,NULL),
(694,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzinesjsdj202s02sjra.jpg','愚蠢的人类看到我还不快点下跪',0,NULL,1509347546076,NULL),
(695,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzc7z9lswj20c80hqq3g.jpg','猫猫云',0,NULL,1509347546076,NULL),
(696,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzc8dzl8jj208b0cg3yo.jpg','害怕（原版）',0,NULL,1509347546076,NULL),
(697,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzioi3jyjj20g40c50tf.jpg','我们还能不能再见面，我在佛前苦苦求了几千年',0,NULL,1509347546076,NULL),
(698,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzioli8rlj2023026a9t.jpg','眼神暗示',0,NULL,1509347546076,NULL),
(699,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzio9lk5pj20hs0hsmxc.jpg','中国境内没醉过',0,NULL,1509347546076,NULL),
(700,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkybvitu6rj20jg0px40c.jpg','可爱如我',0,NULL,1509347546076,NULL),
(701,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzionesr8j206g050aa0.jpg','真讨厌,总是看我胸部你看一下脸不行吗？（美女）',0,NULL,1509347546076,NULL),
(702,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzek1t5rng208c08c0vu.gif','送小星星',0,NULL,1509347546076,NULL),
(703,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkziou91g1g206o06omxk.gif','求妹子',0,NULL,1509347546076,NULL),
(704,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzc854povj20bn0hnq41.jpg','呀，手纸按穿了！',0,NULL,1509347546076,NULL),
(705,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzio30eqfj20k00k00sx.jpg','嘿,突然冒泡吓死你们',0,NULL,1509347546076,NULL),
(706,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzc7rtd61j20qo0qogm8.jpg','屁眼插酒瓶',0,NULL,1509347546076,NULL),
(707,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzinsrcn6j20go0go3z9.jpg','大哥吃碎冰冰',0,NULL,1509347546076,NULL),
(708,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzioscmooj201e01edfm.jpg','不讲道理（就是跪下）',0,NULL,1509347546076,NULL),
(709,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzinjlevaj204704caam.jpg','不是又怎样',0,NULL,1509347546076,NULL),
(710,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzeky29x1g206o06ogm9.gif','帮我开一下原唱',0,NULL,1509347546076,NULL),
(711,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzin7jvbbj205i054dfs.jpg','卡通图也拿来斗图!妈的吃屎吧你!',0,NULL,1509347546076,NULL),
(712,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzinqqh2kj205a05aq2v.jpg','就是个大PIA JI',0,NULL,1509347546076,NULL),
(713,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzin96ly4j204y05c748.jpg','劳资最喜欢女人了,你给老子过来!',0,NULL,1509347546076,NULL),
(714,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkziok0t5gj20k00jdwf9.jpg','哇（胖子哭了）',0,NULL,1509347546076,NULL),
(715,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkybvfq2loj20500503yu.jpg','发呆兔子',0,NULL,1509347546076,NULL),
(716,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzinp6z5vj205i04aq30.jpg','让你签到让你签到!',0,NULL,1509347546076,NULL),
(717,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzekvw116g20ci0ci4b3.gif','偷笑',0,NULL,1509347546076,NULL),
(718,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkziop2o25j20aw0awwem.jpg','鸣呜鸣（小乌龟）',0,NULL,1509347546076,NULL),
(719,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzekhiv8yg2064064jru.gif','哈哈哈哈',0,NULL,1509347546076,NULL),
(720,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzio1b1hxj20c80b8glz.jpg','傻屌你过呀',0,NULL,1509347546076,NULL),
(721,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkziox8c8tj20j60j6gol.jpg','你的智商太感人了',0,NULL,1509347546076,NULL),
(722,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzind4kfjj20g40g4ab0.jpg','这两个球合在一起之后将会有无穷的力量',0,NULL,1509347546076,NULL),
(723,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzio4vdrbg205a05awf6.gif','那个.&hellip;咱俩的感情',0,NULL,1509347546076,NULL),
(724,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkybvtpvgxj201n01m3y9.jpg','哈哈（上门牙掉了）',0,NULL,1509347546076,NULL),
(725,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzekjwvr3g206o06omxv.gif','抱着小企鹅睡觉',0,NULL,1509347546076,NULL),
(726,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzc81bg91j20ca0bjaam.jpg','奥巴马党员！',0,NULL,1509347546076,NULL),
(727,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzc8hbec8j20jy0ryq62.jpg','大偷儿子和小偷爸爸',0,NULL,1509347546076,NULL),
(728,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkybvn4jl1g207i053jub.gif','群主起床了',0,NULL,1509347546076,NULL),
(729,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkziobo8n4j20b40b4jrh.jpg','大写的傻逼',0,NULL,1509347546076,NULL),
(730,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzinxs3u1j205i0540sm.jpg','话不投机,聊你麻痹,我日你嘛卖批,告辞。',0,NULL,1509347546076,NULL),
(731,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzekn0otrg20hs05owg8.gif','百里三连',0,NULL,1509347546076,NULL),
(732,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkybvqel9rj209506pweq.jpg','祝你生日快乐！祝你生日快乐！',0,NULL,1509347546076,NULL),
(733,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkybvs8y9zj20fw09gjs0.jpg','群主，这位群员，你要做什么？',0,NULL,1509347546076,NULL),
(734,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzio7p4lij207i06qq44.jpg','我想侻在座的各位都是腊鸡（烤鸭）',0,NULL,1509347546076,NULL),
(735,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkybvdja6lg203d02t749.gif','宗师不要脸+4',0,NULL,1509347546076,NULL),
(736,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzinush2oj207y08ct9k.jpg','剪其网线，使其百无聊赖',0,NULL,1509347546076,NULL),
(737,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkziofx48sj208c08cwfs.jpg','说起来你可能不信我什么都没干',0,NULL,1509347546076,NULL),
(738,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzinlb8p5j208c08cq3e.jpg','生命中的精神粮食 wifi',0,NULL,1509347546076,NULL),
(739,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzinw9rcmj202m02j0sj.jpg','你什么意思。',0,NULL,1509347546076,NULL),
(740,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzin5x7n8g208c08c74l.gif','什么?你挂科了？这个是真的',0,NULL,1509347546076,NULL),
(741,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzc7tpq1xj205k05kdgd.jpg','干嘛啊',0,NULL,1509347546076,NULL),
(742,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzc8a7ri9j200u00o0o6.jpg','鲨鱼羞羞事',0,NULL,1509347546076,NULL),
(743,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzekf83gwg206o06onmc.gif','萌新三连',0,NULL,1509347546076,NULL),
(744,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzinnmdoug208c08c75v.gif','每天都好穷啊',0,NULL,1509347546076,NULL),
(745,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkybvon7cwj203w04iweb.jpg','过来我抱抱（仙人掌版QQ）',0,NULL,1509347546076,NULL),
(746,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzc7vscckj20lu09oq43.jpg','膜拜三连',0,NULL,1509347546076,NULL),
(747,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzin3sbnpj204y05ngli.jpg','你该不会有了生理反应了吧?',0,NULL,1509347546076,NULL),
(748,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzioquywkj205i05imxb.jpg','男人都不是好东西，除了我',0,NULL,1509347546076,NULL),
(749,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzinzlxwqj20b40b43yv.jpg','老子高兴操你妈的',0,NULL,1509347546076,NULL),
(750,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzingcuj4j203c03cdfx.jpg','我~爱~你（我爱你）',0,NULL,1509347546076,NULL),
(751,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzin07nb0j205i05ia9z.jpg','说的好奖励你一朵小花',0,NULL,1509347546076,NULL),
(752,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkzc82sskpj205k05kq2s.jpg','扯耳朵',0,NULL,1509347546076,NULL),
(753,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkzc8c405bj20e80cjaab.jpg','0 error(s), 0 warning(s)',0,NULL,1509347546076,NULL),
(754,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzc88lkp4g202s02s76a.gif','Jerrry疯了',0,NULL,1509347546076,NULL),
(755,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkziod5d2yj204k02g742.jpg','奶子给你打爆',0,NULL,1509347546076,NULL),
(756,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzc8iypffj201q027q2s.jpg','?????（兔子疑问）',0,NULL,1509347546076,NULL),
(757,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkzinapntsj205i05imwz.jpg','再见了,小伙伴们',0,NULL,1509347546076,NULL),
(758,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzinhuqadj204a03edfp.jpg','你这孩子真有趣',0,NULL,1509347546076,NULL),
(759,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzekotp04g203r02saan.gif','洗澡啦',0,NULL,1509347546076,NULL),
(760,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkzin2amypj20j60ebgm9.jpg','我明白了我就是一个不讨人喜爱的漂亮女孩',0,NULL,1509347546076,NULL),
(761,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycbw8mwtj205i04dglw.jpg','先停一下老子屙个屎',0,NULL,1509347546076,NULL),
(762,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycbc36p1j208c08dad2.jpg','我怀念那些年，你给我舔屁眼的时光',0,NULL,1509347546076,NULL),
(763,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyca2luf1j20fk0fkmyj.jpg','远看一朵花,近看一堆牛屎渣,除了创造大粪，你还有什么追求?',0,NULL,1509347546076,NULL),
(764,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycas7umdj205k05k3yz.jpg','你发这图想表达什么',0,NULL,1509347546076,NULL),
(765,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9ciiq5j208c080q2v.jpg','快點睡熬夜對手機不好',0,NULL,1509347546076,NULL),
(766,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9tb76pj20ax0jraak.jpg','祈愿楼上变成少女，然后成为我的老婆',0,NULL,1509347546076,NULL),
(767,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9n68fuj206o06o0sp.jpg','早上好',0,NULL,1509347546076,NULL),
(768,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9pelv7j20hs0dcdgc.jpg','我田德丽娜觉得我的鸡巴比你大',0,NULL,1509347546076,NULL),
(769,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9zi0faj20b40b43yn.jpg','你这个老翠',0,NULL,1509347546076,NULL),
(770,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8exiuej20fk0fk757.jpg','你TM打错了，这里是荣耀峡谷，劳资是李白',0,NULL,1509347546076,NULL),
(771,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycctj6avj20hs0hp7ds.jpg','发的逼图都没字，谁知道你想表达什么智障!',0,NULL,1509347546076,NULL),
(772,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc989ok4j203503cjr7.jpg','可了不得',0,NULL,1509347546076,NULL),
(773,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9r5xpmg2073073dfx.gif','要开学了,终于可以光明正大地学习了好激动!',0,NULL,1509347546076,NULL),
(774,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc88d94xj20kk0ccn40.jpg','为什么你这么强? 我已单身27年了',0,NULL,1509347546076,NULL),
(775,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyccvltj8j208c06yaa5.jpg','我们开个房间起写作业吧',0,NULL,1509347546076,NULL),
(776,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyccxqlgmj20go0apgmc.jpg','不要慌,发型发型',0,NULL,1509347546076,NULL),
(777,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyca9wrrpj205i05idfp.jpg','真是的,群员多了,什么鸡巴傻逼都有!',0,NULL,1509347546076,NULL),
(778,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycb3jridj205k03zjs1.jpg','用火柴烧你逼毛',0,NULL,1509347546076,NULL),
(779,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9vtae1j20b40b40t6.jpg','今夫也是精致的猪猪文孩',0,NULL,1509347546076,NULL),
(780,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8khaxjj204g04ggli.jpg','哦哟!你好批骚哦!',0,NULL,1509347546076,NULL),
(781,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8tme7cj20k00d1wf2.jpg','好困,再睡会',0,NULL,1509347546076,NULL),
(782,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycbu5zyjj20hs0hptfd.jpg','你能盗走我的图，但永远也盗不走我的气质',0,NULL,1509347546076,NULL),
(783,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycbj58tij20g90hsjww.jpg','你死心吧，我这么靓仔是不会接受你的',0,NULL,1509347546076,NULL),
(784,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8cv41kg208c08cmyv.gif','啧，年纪轻轻怎么是个傻子',0,NULL,1509347546076,NULL),
(785,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyca85v97j20c80c8q2v.jpg','算了，我心态超好',0,NULL,1509347546076,NULL),
(786,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycbl3n41g206o073glr.gif','你&hellip;你要对我做什么!',0,NULL,1509347546076,NULL),
(787,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc91zywfj207y05rgls.jpg','淫荡的周三开始了',0,NULL,1509347546076,NULL),
(788,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycagf7c4j20k00k0dgx.jpg','死群了,分姑娘吧!我要女群主和女管理',0,NULL,1509347546076,NULL),
(789,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8gfrntj205a05aglk.jpg','儿子你会像爹一样有大作为的!',0,NULL,1509347546076,NULL),
(790,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycb16jo7j205i05iaa1.jpg','你麻痹有我帅?',0,NULL,1509347546076,NULL),
(791,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkybvbkunkj20hs0fu3z8.jpg','恭喜获得新英雄（史上最坑的人）',0,NULL,1509347546076,NULL),
(792,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9e43ytj204e04y0sk.jpg','我他妈',0,NULL,1509347546076,NULL),
(793,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycb6g9hqg207l083mxx.gif','你可鸥巴拉倒就你屁话多',0,NULL,1509347546076,NULL),
(794,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc96o2sfj205i057jrj.jpg','一千多个傻逼连个能斗图的都没有',0,NULL,1509347546076,NULL),
(795,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycaq0hbdg206o06rq3g.gif','我想换头像我做梦都梦见我换头像了',0,NULL,1509347546076,NULL),
(796,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycanle1tg206o06o3yo.gif','大人,这就来（狗头铡）',0,NULL,1509347546076,NULL),
(797,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc94utz5j206e069myb.jpg','如果你不装逼，我和你妈还绐你生一个妹妹',0,NULL,1509347546076,NULL),
(798,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9auondj20bu0e6aap.jpg','干一炮吧',0,NULL,1509347546076,NULL),
(799,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycau97g3g206o06oaa6.gif','我放学回来了wink',0,NULL,1509347546076,NULL),
(800,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc81e981j207x06dwes.jpg','丢雷老母',0,NULL,1509347546076,NULL),
(801,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycaj9h0vj20ku0i2js3.jpg','NO趴笨!兄dei!',0,NULL,1509347546076,NULL),
(802,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9xh9xyj205a05a3yd.jpg','儿子晚安!爸爸爱你!',0,NULL,1509347546076,NULL),
(803,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycadld4fj206o06maa6.jpg','我去买几个圣晶石,你就待在卡池里,不要走动',0,NULL,1509347546076,NULL),
(804,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8w5rcxg206908c3zm.gif','知道了知道了,退下',0,NULL,1509347546076,NULL),
(805,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycabn3pcj205i05i0sn.jpg','哈希里搜里哟,卡贼诺有你,偷裤一天哦,怕多路怕多路~',0,NULL,1509347546076,NULL),
(806,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyccki4t0j20hs0gfndq.jpg','幸（性）福来得太突然',0,NULL,1509347546076,NULL),
(807,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycaldt0kg206o06oq34.gif','老板我不干了，金拱门大叔,能忍?',0,NULL,1509347546076,NULL),
(808,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc89xabwg208c04zgll.gif','狼狈为奸的微笑',0,NULL,1509347546076,NULL),
(809,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8y02tqj209408wgls.jpg','你是狗吧',0,NULL,1509347546076,NULL),
(810,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyca4rli0j20c807twex.jpg','音响师已就位',0,NULL,1509347546076,NULL),
(811,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyca6kds2j205i052glh.jpg','那还能有假',0,NULL,1509347546076,NULL),
(812,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9fvx1vj206o06o3yu.jpg','哟哟哟切克闹，卡盟卑鄙来抱抱',0,NULL,1509347546076,NULL),
(813,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycd44tnkj20e80cgwk8.jpg','能说得再详细点吗我没见过世面',0,NULL,1509347546076,NULL),
(814,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycazedxcj205a05awfo.jpg','我佛不渡傻逼（宋民国）',0,NULL,1509347546076,NULL),
(815,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkybv8wz4pj202d00w0in.jpg','OKOKOJBK',0,NULL,1509347546076,NULL),
(816,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9lik9gg2073073glt.gif','我们先表面上迎合他一下，幸福祝99，但实际上我们都知道他是个绿帽王',0,NULL,1509347546076,NULL),
(817,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkybvx0en6j206o06o40o.jpg','不可以',0,NULL,1509347546076,NULL),
(818,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc83f5a8j20c80c8t93.jpg','给我钱',0,NULL,1509347546076,NULL),
(819,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycawftu2g206o06ojrj.gif','世界充满爱你是丑八怪',0,NULL,1509347546076,NULL),
(820,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9010bvj20c80b2glt.jpg','大哥吃小馒头',0,NULL,1509347546076,NULL),
(821,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8iziumj207c08cq44.jpg','找我什么事我忙着上厕所呢',0,NULL,1509347546076,NULL),
(822,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9hr47ag206o06omxb.gif','小学生开学了，排位又能上升了',0,NULL,1509347546076,NULL),
(823,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8otwlzj20k00k0t9w.jpg','我就纳闷了，天天问我怎么不上班，我是老板上尼玛上',0,NULL,1509347546076,NULL),
(824,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7xj9zvj205i0500sl.jpg','我就要我就要',0,NULL,1509347546076,NULL),
(825,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycc43uesj20gc0hsq9n.jpg','男孩子家家的也不嫌丢人!',0,NULL,1509347546076,NULL),
(826,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8mm4e1j206o06haaq.jpg','我哆啦小子还能说什么',0,NULL,1509347546076,NULL),
(827,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc8qlu8zj2034050t8p.jpg','吃屌屌',0,NULL,1509347546076,NULL),
(828,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc9jq68yj20c8097dg5.jpg','灯光师就位',0,NULL,1509347546076,NULL),
(829,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7aaeaej206o06ojrv.jpg','走啊，晚上吃个鸡吧（绝地求生）',0,NULL,1509347546076,NULL),
(830,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycfo2sybj20d60b40sv.jpg','停车!我要下车!这不是开往幼儿园的车!',0,NULL,1509347546076,NULL),
(831,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6qyniij206o06oq2z.jpg','小仙男不需要奶子',0,NULL,1509347546076,NULL),
(832,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkych0xehnj205i05i3yl.jpg','你说有钱多好',0,NULL,1509347546076,NULL),
(833,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc74z2hgj20b40b4t8w.jpg','嘴角上扬',0,NULL,1509347546076,NULL),
(834,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc76ksudj206o06oaa3.jpg','笑容贱贱诡异',0,NULL,1509347546076,NULL),
(835,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkych33suxj205k04f0tc.jpg','尼玛我真是无语',0,NULL,1509347546076,NULL),
(836,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycgwgxnxj205i05imx1.jpg','老子不吃你这套',0,NULL,1509347546076,NULL),
(837,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycg72ushj2038031a9v.jpg','安逸得很（滑稽）',0,NULL,1509347546076,NULL),
(838,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6gyp32g2073073wep.gif','妹子，我注意你很久了呐~花花送你',0,NULL,1509347546076,NULL),
(839,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycg29375j205i04ydfy.jpg','你不要搞事情',0,NULL,1509347546076,NULL),
(840,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycguyyubj20g40eg755.jpg','我活得好，悲伤在雨中拉肖邦',0,NULL,1509347546076,NULL),
(841,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkych94r22j20b40b4djw.jpg','你在逗我',0,NULL,1509347546076,NULL),
(842,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7mq0luj205i05emx9.jpg','你这女孩屁话很多啊',0,NULL,1509347546076,NULL),
(843,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7c69afj208708kq3n.jpg','我要睡觉了，各位大家晚安祝各位傻逼早日猝死，我操你们所有人的妈逼',0,NULL,1509347546076,NULL),
(844,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkychtuh1oj20hs0gjjva.jpg','分享你麻痹游戏啊，怎么不把你妈分享出来,操你妈的',0,NULL,1509347546076,NULL),
(845,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7r5y3nj206o06oaaf.jpg','老子有的是瓜子',0,NULL,1509347546076,NULL),
(846,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycfa7149j202t02dq2r.jpg','按倒亲',0,NULL,1509347546076,NULL),
(847,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycga1camg208c07kmyu.gif','想你想打定话给你',0,NULL,1509347546076,NULL),
(848,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkychp9p6bg206o06o74g.gif','我就看看我喜欢的人在不在',0,NULL,1509347546076,NULL),
(849,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycgz4ay7j20hs0ezwfq.jpg','来一盘紧张又刺激的王者荣耀吧',0,NULL,1509347546076,NULL),
(850,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycgq6pgbj205205it8o.jpg','老规矩，新人进群先灌屎',0,NULL,1509347546076,NULL),
(851,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycfh7cxxj205t03gwel.jpg','颁奖，必须颁奖',0,NULL,1509347546076,NULL),
(852,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6zmbk8j202f02hwec.jpg','暗恋我?',0,NULL,1509347546076,NULL),
(853,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycgc7bhej20bg09p0su.jpg','买你妈卖批的橘子',0,NULL,1509347546076,NULL),
(854,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkychb2p3yj208b05uwem.jpg','不讓幹拉倒,哭你媽bi啊',0,NULL,1509347546076,NULL),
(855,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycfy3p8wj20c80c8754.jpg','男女好像磁铁的两极大多数是异性相吸，但是有的同极性的相爱了，他们需要克服很大的阻力才能拥抱在一起',0,NULL,1509347546076,NULL),
(856,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7kxiovj20ax0axdg9.jpg','傻逼网友我操你妈',0,NULL,1509347546076,NULL),
(857,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6smvttj203s03zq2r.jpg','有病病?',0,NULL,1509347546076,NULL),
(858,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycgod22ij203c02bdfm.jpg','80 cm',0,NULL,1509347546076,NULL),
(859,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycg0ifx6j20k00k0dgp.jpg','狗群主吴亦凡和狗管理出来食屎了',0,NULL,1509347546076,NULL),
(860,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycfirmmvj205a05a0sj.jpg','儿子你一定有出息的',0,NULL,1509347546076,NULL),
(861,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycfrweuqg208c07b3za.gif','你快闭嘴吧，你。',0,NULL,1509347546076,NULL),
(862,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7h0ij4j203c03caa5.jpg','怀疑（天线宝宝）',0,NULL,1509347546076,NULL),
(863,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycfkl29rj202702d3yl.jpg','嘤嘤嘤!',0,NULL,1509347546076,NULL),
(864,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7j0bltj20dc07h3yw.jpg','吕布典韦',0,NULL,1509347546076,NULL),
(865,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc78giq6j20bm0bmmxt.jpg','吓得我都不敢说话了',0,NULL,1509347546076,NULL),
(866,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6y1fvoj2050050t8o.jpg','神你麻痹,药都没有',0,NULL,1509347546076,NULL),
(867,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycfvx17ug206o06o0ss.gif','拿走不谢',0,NULL,1509347546076,NULL),
(868,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6facu3j205x05rwei.jpg','群傻屌,大晚上不睡觉发羊癫疯啊,嗨你麻痹啊',0,NULL,1509347546076,NULL),
(869,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkychlnd1mj20hs0hs7er.jpg','我去摸几个奶子，你就站在此地不要走动',0,NULL,1509347546076,NULL),
(870,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycgi68akj20hh0cqwi0.jpg','没有,再问干你',0,NULL,1509347546076,NULL),
(871,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7zke95j20go0e73zh.jpg','解析几何、高等代数、高等数学、线性代数，你渴望力量吗?',0,NULL,1509347546076,NULL),
(872,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycg3yozsj207d07mdfv.jpg','别再搞我家母猪了求求你了',0,NULL,1509347546076,NULL),
(873,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6mm0d9g206o06oglp.gif','老婆我爱你',0,NULL,1509347546076,NULL),
(874,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycgmv95vg207d06jt8o.gif','那是因为你肚脐眼大',0,NULL,1509347546076,NULL),
(875,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycfm97jjj203z046q2u.jpg','这么安静莫非我断网了',0,NULL,1509347546076,NULL),
(876,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7p8i8mj206o06owfi.jpg','往死里挠',0,NULL,1509347546076,NULL),
(877,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7doh7xj206o046jr9.jpg','因为我们是一家人',0,NULL,1509347546076,NULL),
(878,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc716l1nj205o04cmx1.jpg','处对象嘛，重在参与。',0,NULL,1509347546076,NULL),
(879,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycg5im6xj2036044t8i.jpg','给dalao递最好的语言（PHP）',0,NULL,1509347546076,NULL),
(880,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6o7jv0j205b040wec.jpg','和你们这些有钱人聊天，我真开心啊',0,NULL,1509347546076,NULL),
(881,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc733dq5j20hs0cwwf0.jpg','我都懒得说你（举报成功）',0,NULL,1509347546076,NULL),
(882,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycge3dskg208c08c0sz.gif','我在减肥,但我不用节食不用运动,我用的是意识-我会瘦的',0,NULL,1509347546076,NULL),
(883,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycgsj4kmj20e20e13z8.jpg','呆呆地看向远方',0,NULL,1509347546076,NULL),
(884,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycfdkuj5j205f03njra.jpg','非常火大',0,NULL,1509347546076,NULL),
(885,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6kamwgj205a05aglj.jpg','大河向东流 tomato啊 potato啊',0,NULL,1509347546076,NULL),
(886,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7vzjvzj20tz12jgna.jpg','底层画师',0,NULL,1509347546076,NULL),
(887,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycfpryqhg205k05kq2z.gif','搞不懂别人是怎么胖起来的',0,NULL,1509347546076,NULL),
(888,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycfbxo79j205l063a9z.jpg','关我屁事',0,NULL,1509347546076,NULL),
(889,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7f8f98j202r02vt8q.jpg','干（滑稽喝酒）',0,NULL,1509347546076,NULL),
(890,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyc7sxwoyj207404jq31.jpg','从群主那里抢来的冰镇阔落',0,NULL,1509347546076,NULL),
(891,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycgl68e7j20yi0pu0un.jpg','多喝热水（尿管理）',0,NULL,1509347546076,NULL),
(892,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6im0wfj205a05awef.jpg','你们看见那个傻逼了吗?',0,NULL,1509347546076,NULL),
(893,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycfu5eapj20k00k0jsi.jpg','群主就是他妈的傻逼!我肉他妈!',0,NULL,1509347546076,NULL),
(894,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6ujt1jj206y07faae.jpg','到底有没有把我放在第一位啊',0,NULL,1509347546076,NULL),
(895,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycffcx7ij208c08wt8u.jpg','恭喜您获得新英雄（喜羊羊）',0,NULL,1509347546076,NULL),
(896,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyc6wcvkyj206o06ojrk.jpg','孩怕',0,NULL,1509347546076,NULL),
(897,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycejsmwag208c08c749.gif','求锤得锤',0,NULL,1509347546076,NULL),
(898,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwfxq9a50j20u01hc762.jpg','外国品牌改中文名字',0,NULL,1509347546076,NULL),
(899,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycei0l5wj206o06ot9j.jpg','住口无耻老贼',0,NULL,1509347546076,NULL),
(900,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwg8goo67j203c03cdfr.jpg','好图，收下了',0,NULL,1509347546076,NULL),
(901,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycetf1etg207307374p.gif','我能怎么办啊，我老婆都来了!',0,NULL,1509347546076,NULL),
(902,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwfxn4te5j203c03c3yb.jpg','喜欢你（害羞）',0,NULL,1509347546076,NULL),
(903,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycen6tr3g206o06o0so.gif','必须哒',0,NULL,1509347546076,NULL),
(904,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycd6wv9uj206o06omx4.jpg','笑容贱贱诡异',0,NULL,1509347546076,NULL),
(905,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwgmofsk8j202v02uaa6.jpg','金馆长哭啦',0,NULL,1509347546076,NULL),
(906,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyce45805j204d04gglh.jpg','给你',0,NULL,1509347546076,NULL),
(907,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycf0e3fdj207y05r0sv.jpg','淫荡的周二开了',0,NULL,1509347546076,NULL),
(908,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwg8dft09j20f00qowh0.jpg','人形坑',0,NULL,1509347546076,NULL),
(909,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycewpkdaj209q08o0ss.jpg','崩溃边缘我',0,NULL,1509347546076,NULL),
(910,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgkf9yemj203c03cjrd.jpg','幼稚！',0,NULL,1509347546076,NULL),
(911,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwgkd28org204o03s0v0.gif','萌妹子旋转',0,NULL,1509347546076,NULL),
(912,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycf8jk2pj20jv0itgmw.jpg','这么巧，你也网上冲浪啊。',0,NULL,1509347546076,NULL),
(913,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkychycifyj205k01fmx2.jpg','我回天庭了，再见',0,NULL,1509347546076,NULL),
(914,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycf20p1nj205d04yaa0.jpg','我想和你那个.就是.你坐在我身体上自己一上一下',0,NULL,1509347546076,NULL),
(915,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgmy3px9g206o06owf6.gif','孤立你',0,NULL,1509347546076,NULL),
(916,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgngdg0dj20k00k03yx.jpg','姑娘,在吗?',0,NULL,1509347546076,NULL),
(917,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyci2atcsg20b405kjra.gif','我要响应号召精准扶贫，所以你打算什么时候给我发红包？',0,NULL,1509347546076,NULL),
(918,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycdw8o07j205i05iaa6.jpg','有个性我要睡你',0,NULL,1509347546076,NULL),
(919,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgmrfcpkg201m01mwe9.gif','坏坏摆手手',0,NULL,1509347546076,NULL),
(920,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwg9n71bcj2039039t8p.jpg','小猫哭死啦',0,NULL,1509347546076,NULL),
(921,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwgmun850j20hs0hsgmx.jpg','4v6（王者坑）',0,NULL,1509347546076,NULL),
(922,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwg9lf38bg206j080e81.gif','骑鸡',0,NULL,1509347546076,NULL),
(923,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwg8f2wy5j203c03caa1.jpg','衮！（滚）',0,NULL,1509347546076,NULL),
(924,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyce0kig4g208c08c0tj.gif','有种来打我呀',0,NULL,1509347546076,NULL),
(925,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyce26ljzj204w02imx4.jpg','这样子啊',0,NULL,1509347546076,NULL),
(926,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkyce88wunj202s02s0ss.jpg','真棒!',0,NULL,1509347546076,NULL),
(927,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycedkafkj207806zjrs.jpg','都成了烤熟的五花肉了，就差点为自己带盐了',0,NULL,1509347546076,NULL),
(928,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycebn7gvj205k05kglk.jpg','没意思你个平胸妹',0,NULL,1509347546076,NULL),
(929,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyceljr0ij206806wt8q.jpg','emmmmmm恶魔妈妈买面膜',0,NULL,1509347546076,NULL),
(930,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwgklkbw2j20qo0nlwg1.jpg','金馆长拿匕首',0,NULL,1509347546076,NULL),
(931,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycduicoqj20hs08paah.jpg','你敢顶撞宇宙警备队?',0,NULL,1509347546076,NULL),
(932,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwg9repbmj20hs0hs0u2.jpg','一群胖虎',0,NULL,1509347546076,NULL),
(933,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycep5o0vj208c07nq39.jpg','咕噜咕噜咕嚕咕噜玛哇噜多纳,伊记次库撒记哇那呗诺那卡',0,NULL,1509347546076,NULL),
(934,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwgknqnjyj20ib0awt9p.jpg','妹子趴桌子上',0,NULL,1509347546076,NULL),
(935,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycdprwnog2073073mxv.gif','再闹把你卖了',0,NULL,1509347546076,NULL),
(936,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycdb18ehj20c80dagma.jpg','卖鸡巴为生的贱男人',0,NULL,1509347546076,NULL),
(937,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkychnfjshg206o06omx6.gif','你走我没你这个男朋友',0,NULL,1509347546076,NULL),
(938,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycid6kgbg206o06oq33.gif','金。。金拱。。拱门。。金拱门',0,NULL,1509347546076,NULL),
(939,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkycib2jdtg206o06oglo.gif','胸大了不起吗？我也想要啊',0,NULL,1509347546076,NULL),
(940,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwgkpdlwaj203c02eq30.jpg','两只滑稽坐椅子',0,NULL,1509347546076,NULL),
(941,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkycdjem3zj20hs0hsabo.jpg','诶嘿嘿嘿嘿嘿',0,NULL,1509347546076,NULL),
(942,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyce9yzsyj208c08b3yk.jpg','大白天还在睡觉，你就不怕睡死在床上?',0,NULL,1509347546076,NULL),
(943,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycdfw2syj205i05i0sm.jpg','我见你癫癫的',0,NULL,1509347546076,NULL),
(944,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwgkhitepj20m80nm3zw.jpg','我开车车来啦（鄂A88888）',0,NULL,1509347546076,NULL),
(945,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycdnqo3nj20go0got9e.jpg','嘻嘻。,嘻嘻',0,NULL,1509347546076,NULL),
(946,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwg8ka1wuj202i03cmwy.jpg','坚果金馆长',0,NULL,1509347546076,NULL),
(947,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycf5ffgsg208608cjt2.gif','阿没用的东西',0,NULL,1509347546076,NULL),
(948,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyciezsf0g206o06o3yn.gif','我怎么说得出口，金拱门?',0,NULL,1509347546076,NULL),
(949,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkyce6dg52j20az0aj74r.jpg','玩你妈，一群垃圾完全带不加动劳资',0,NULL,1509347546076,NULL),
(950,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwg8a2f05j20jc0jmwg3.jpg','喵喵喵？',0,NULL,1509347546076,NULL),
(951,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycdeaaiej20k00qoac1.jpg','MMP',0,NULL,1509347546076,NULL),
(952,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycdsfoaaj20lm0f0jsj.jpg','快乐是他们的，而我什么也没有',0,NULL,1509347546076,NULL),
(953,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycd8v48xj205i04vq33.jpg','s9我要百星',0,NULL,1509347546076,NULL),
(954,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycdl7s04j209u09udg2.jpg','1000-7等于多少',0,NULL,1509347546076,NULL),
(955,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycev1gobj206z06vglj.jpg','呼叫苏阿姨!',0,NULL,1509347546076,NULL),
(956,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycer8mipg207i06q3yx.gif','可爱的吃手手',0,NULL,1509347546076,NULL),
(957,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwgmpwmtkj2018018741.jpg','小可爱黄脸',0,NULL,1509347546076,NULL),
(958,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyci0n381j20hs0hswfb.jpg','我大胸我骄傲',0,NULL,1509347546076,NULL),
(959,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkyci9a6kjj20fu0hs7b4.jpg','请你从哪来，滚哪去老子不想打狗',0,NULL,1509347546076,NULL),
(960,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkyceyjfe4j203801u3yj.jpg','哈哈哈，差点儿没笑死我',0,NULL,1509347546076,NULL),
(961,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwgn6nxndj20hs0fldm6.jpg','你是我见过男孩子中最色又最丑中的一个',0,NULL,1509347546076,NULL),
(962,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkycefx8klj206o06ogmb.jpg','快脱裤子，帮你开展新生活',0,NULL,1509347546076,NULL),
(963,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkycdyadpyj205m03xq32.jpg','举起你们的双手,高呼帅管理',0,NULL,1509347546076,NULL),
(964,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkychwpkmkj208c08cdhi.jpg','一帮完蛋玩意儿',0,NULL,1509347546076,NULL),
(965,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwh1iv1e7g206o06oq30.gif','嘘，别说话让他一个人自言自语',0,NULL,1509347546076,NULL),
(966,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgozaprnj205k05k0sn.jpg','胳略略?叫你略',0,NULL,1509347546076,NULL),
(967,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdhqw5hg208c05mmye.gif','我只是一张猫饼',0,NULL,1509347546076,NULL),
(968,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhd7ydeng2073073t8m.gif','你有病还病得不轻',0,NULL,1509347546076,NULL),
(969,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwh2bsm8ej20hs0h2wmu.jpg','小姐姐处对象么？我偷老婆的钱养你',0,NULL,1509347546076,NULL),
(970,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdqa1msg208c08c40b.gif','伸出圆手',0,NULL,1509347546076,NULL),
(971,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwgq3h9cdj20a00hsdi4.jpg','震惊',0,NULL,1509347546076,NULL),
(972,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgnx48mgg206o065wel.gif','鄙视你大哥你鸡鸡这么点儿',0,NULL,1509347546076,NULL),
(973,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwh1h890xj208c08c0t1.jpg','吕会食酒?吕含浪住会',0,NULL,1509347546076,NULL),
(974,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhd6bnwsj205o06at8p.jpg','伟哥还是避孕药，你吃还是我吃',0,NULL,1509347546076,NULL),
(975,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwgpvx9bfj205i05idgk.jpg','素质!素质!操你妈你一点素质都没有',0,NULL,1509347546076,NULL),
(976,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwh11ajw9j20c809d40r.jpg','哎呀不对啊，我好像在骂我自己',0,NULL,1509347546076,NULL),
(977,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhcyoreyj205k05kjrd.jpg','关你屁事',0,NULL,1509347546076,NULL),
(978,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwgoxp5e6j206x05g74q.jpg','为了生活我四处奔波!（捡瓶子）',0,NULL,1509347546076,NULL),
(979,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwgnv8gs1j20hs0fktkq.jpg','想怎样?打架?',0,NULL,1509347546076,NULL),
(980,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgp4w2grj206o06oaa2.jpg','咬牙切齿我不要面子吗?',0,NULL,1509347546076,NULL),
(981,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgp13gj4g205k04lmxe.gif','大吉吧!大吉吧!整天就知道大吉吧!',0,NULL,1509347546076,NULL),
(982,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwh1ys1esj20ho0hs46y.jpg','裤链开了傻屁',0,NULL,1509347546076,NULL),
(983,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwgo9wdjuj20dw0af76z.jpg','开黑,四个王者带一个躺的,现在有一个躺的了,缺四个王者,有意者私聊',0,NULL,1509347546076,NULL),
(984,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhcx1zhlg205k05kdgc.gif','嗯,有道理',0,NULL,1509347546076,NULL),
(985,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwh0w7lq0g202g02sdfq.gif','拿烟的手，微微颤抖',0,NULL,1509347546076,NULL),
(986,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwgomomk1g206o06c74b.gif','来自金拱门的悲伤',0,NULL,1509347546076,NULL),
(987,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgnju3jng206o06ojri.gif','能借我200块吗?我想买口红',0,NULL,1509347546076,NULL),
(988,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwgposbywg205005anhl.gif','来自底层的仰望（宋民国）',0,NULL,1509347546076,NULL),
(989,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdkjw6lg208c08cmyu.gif','懵小猫',0,NULL,1509347546076,NULL),
(990,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwgormlm1j20go0gogpq.jpg','难过',0,NULL,1509347546076,NULL),
(991,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwh22fu8rj20e80e8q82.jpg','你们有没有看到过我养狗?特征:自称爸爸,爹,爷爷',0,NULL,1509347546076,NULL),
(992,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwh0umolvj20ca080gln.jpg','我火柴人无话可说',0,NULL,1509347546076,NULL),
(993,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhd0ker0g208c08c74i.gif','再睡五分钟就起来',0,NULL,1509347546076,NULL),
(994,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwgne5g7ej2082082t9q.jpg','让你装逼,死了吧',0,NULL,1509347546076,NULL),
(995,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgq7fvtrg205i057aai.gif','开车吧，我每天两瓶营养快线,跟得上',0,NULL,1509347546076,NULL),
(996,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhd4rtnag208c08cq33.gif','心疼自己一秒钟',0,NULL,1509347546076,NULL),
(997,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwh12ybfdg206o06bmx6.gif','去你妈的',0,NULL,1509347546076,NULL),
(998,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwh0ytn3mj20b40b9766.jpg','我操你爸',0,NULL,1509347546076,NULL),
(999,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhcv87c7g206o06oaa7.gif','辣鸡毁我人生，啪！',0,NULL,1509347546076,NULL),
(1000,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgp36m14g206o06oq33.gif','我想吔麦当劳（金拱门）',0,NULL,1509347546076,NULL),
(1001,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdfkl1lg20730733zd.gif','鸭鸭祝大家圣诞快乐',0,NULL,1509347546076,NULL),
(1002,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwh1nkwrsg206o09r3zg.gif','暗中观察（垃圾筒蘑菇头）',0,NULL,1509347546076,NULL),
(1003,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgovmq4gg208c08caad.gif','劳资可是下一届群主都对劳资客气点',0,NULL,1509347546076,NULL),
(1004,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdu2h4sj205i034mx4.jpg','喂,出来吃粉啊',0,NULL,1509347546076,NULL),
(1005,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwgo5lj7fg205i04gaa5.gif','老子反操你妈',0,NULL,1509347546076,NULL),
(1006,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgqcmspvj20go0fcq7r.jpg','原谅在下不善言辞，只想出手揍你',0,NULL,1509347546076,NULL),
(1007,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdshno5j20b40b40tm.jpg','请告诉她我还爱她笑着难过自我惩罚',0,NULL,1509347546076,NULL),
(1008,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgpu2ghgj206n07kjvb.jpg','皇儿!你为何执迷不悟跟你父皇我过不去',0,NULL,1509347546076,NULL),
(1009,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwh1ruvlvj207q05q42a.jpg','我大月今天就要刁难你胖虎',0,NULL,1509347546076,NULL),
(1010,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwh1kwar4j208c08cjrv.jpg','我胖虎今天要把你们都打死',0,NULL,1509347546076,NULL),
(1011,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwgpxhwsoj20500503yf.jpg','是我给你自由过了火',0,NULL,1509347546076,NULL),
(1012,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhd2vmbtj206o06owev.jpg','情人节我就在家看你们秀恩爱',0,NULL,1509347546076,NULL),
(1013,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwh16dl3ej20gd0hstdg.jpg','小时候天真的以为全世界都喜欢我,长大才知道。',0,NULL,1509347546076,NULL),
(1014,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhcte5yoj204l05iweb.jpg','喵喵喵喵喵?',0,NULL,1509347546076,NULL),
(1015,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwh19szk6j20gd0hsq6r.jpg','原来是全宇宙',0,NULL,1509347546076,NULL),
(1016,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdm1qgbj202s02sjr8.jpg','熏肉味微笑注意山',0,NULL,1509347546076,NULL),
(1017,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwh26s0juj20go0fndme.jpg','bong bong bong咖喱给给',0,NULL,1509347546076,NULL),
(1018,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwgokxd1nj20go0f1dl1.jpg','大哥金拱门（麦当劳）',0,NULL,1509347546076,NULL),
(1019,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwgoc3zpjj204603rgm9.jpg','我的呢',0,NULL,1509347546076,NULL),
(1020,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwgnbkbbbg205k061dg5.gif','对方拒绝了你的消息还脱光了你的衣服',0,NULL,1509347546076,NULL),
(1021,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwgn9lww6j20g40g4wfe.jpg','我怕来不及，我要带走你（猪猪）',0,NULL,1509347546076,NULL),
(1022,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgq0jza1j205a05at8q.jpg','我记得你曾经对我不错的',0,NULL,1509347546076,NULL),
(1023,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgpz1kwpj202f03amx0.jpg','惹不起，跪得起',0,NULL,1509347546076,NULL),
(1024,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwgo3t8pwj20hs0ewdmd.jpg','老板,楼上那个猪头切一半给我,谢谢!',0,NULL,1509347546076,NULL),
(1025,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwh1fkk19j205k05kwff.jpg','懒觉送你一支',0,NULL,1509347546076,NULL),
(1026,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdnviuxj20k00fn3yu.jpg','推销美国自行车',0,NULL,1509347546076,NULL),
(1027,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwh1d7qmlg206o068jrk.gif','大哥吃香蕉吗？吃啥补啥',0,NULL,1509347546076,NULL),
(1028,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwgni5116j205006hweg.jpg','Food i you bunches 食蕉啦你',0,NULL,1509347546076,NULL),
(1029,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwh1bf7p9g206o06owel.gif','聊天结束（扔地雷）',0,NULL,1509347546076,NULL),
(1030,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgodzm75j206403tmx8.jpg','看你就是城里人',0,NULL,1509347546076,NULL),
(1031,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgq5eilfg205e06vjri.gif','穿着新裤子路过',0,NULL,1509347546076,NULL),
(1032,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwgotsv5lj203403ndge.jpg','谢大王',0,NULL,1509347546076,NULL),
(1033,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhfba9lnj202o02bq2q.jpg','操你妈我的刀呢',0,NULL,1509347546076,NULL),
(1034,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhebumczj20fk0edjsa.jpg','你该不会是个俊傻子吧',0,NULL,1509347546076,NULL),
(1035,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhefeia6g206o0640t0.gif','貂蝉姐姐来啦，强势围观',0,NULL,1509347546076,NULL),
(1036,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhe0awhfj20go0f0ab5.jpg','大哥抽迦勒底进口烟!劲是大的不得了',0,NULL,1509347546076,NULL),
(1037,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhe9pfdzg206e06eq3c.gif','你的良心不会痛吗',0,NULL,1509347546076,NULL),
(1038,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhshfcxpj20k00k0wfg.jpg','你完了,你妈要把你嫁给我',0,NULL,1509347546076,NULL),
(1039,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhsnd8jeg206j06jgmb.gif','美女你掉东西了',0,NULL,1509347546076,NULL),
(1040,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhe662ptg208c08cabg.gif','雷猴',0,NULL,1509347546076,NULL),
(1041,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhesetg4j205x04f0sk.jpg','你太强了，你退群吧',0,NULL,1509347546076,NULL),
(1042,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhffuk95j20hs0hs3zv.jpg','不愧是我儿，爸爸给你点个数',0,NULL,1509347546076,NULL),
(1043,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkx6kiw8jog209c08zu0y.gif','G胖',0,NULL,1509347546076,NULL),
(1044,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkx6vdp0v3g203b01ydfr.gif','哈哈，偷笑！',0,NULL,1509347546076,NULL),
(1045,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhsdza73j208c08cgln.jpg','分享也没用，我们就不打开',0,NULL,1509347546076,NULL),
(1046,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhsfj4s2j2051056aa1.jpg','没有。快滚再问老子打死你',0,NULL,1509347546076,NULL),
(1047,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkx6kll4o9j20e80e8mxp.jpg','熊猫人拿竹子',0,NULL,1509347546076,NULL),
(1048,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhena55mg20730733z1.gif','你不能这个样子奥',0,NULL,1509347546076,NULL),
(1049,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhfd4x5kj20bh0ammxg.jpg','内裤好香',0,NULL,1509347546076,NULL),
(1050,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkx7l22uhcg20b40b4wj0.gif','泰坦尼克号（熊版）',0,NULL,1509347546076,NULL),
(1051,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkx6kpmsybj201e01faa3.jpg','打猪',0,NULL,1509347546076,NULL),
(1052,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhfz37q4j208s0aaglp.jpg','以后有BUG麻烦提醒下,大家共赢嘛。自己那么牛B有啥意思',0,NULL,1509347546076,NULL),
(1053,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkx6knrt7jj20eh0egaae.jpg','害羞羞（熊猫人）',0,NULL,1509347546076,NULL),
(1054,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwheh39i8j20c80c83ym.jpg','是我',0,NULL,1509347546076,NULL),
(1055,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhfr6oy9j205i05e748.jpg','我小叮当要修了你这破车',0,NULL,1509347546076,NULL),
(1056,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhg0she8j208f05c0so.jpg','放弃挣扎吧，我会向你展示，这将会是最后一刻么',0,NULL,1509347546076,NULL),
(1057,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhf1xx2vj205i03e743.jpg','你不过只是条咸鱼',0,NULL,1509347546076,NULL),
(1058,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhg2hy3dg20830680su.gif','今天要到了瓜子',0,NULL,1509347546076,NULL),
(1059,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhg43m0og205k05cglr.gif','古娜拉黑暗之神!',0,NULL,1509347546076,NULL),
(1060,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhf3mp3fj205k05idfs.jpg','赏点我要现挤的吧',0,NULL,1509347546076,NULL),
(1061,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhfjr5hkj20yi0xzdhu.jpg','真他妈让人害怕',0,NULL,1509347546076,NULL),
(1062,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdahhr6j205i05iweq.jpg','熊猫收到!熊猫收到!老子在街上吃炒粉over',0,NULL,1509347546076,NULL),
(1063,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhslc35rg202y03n79h.gif','隐隐不安',0,NULL,1509347546076,NULL),
(1064,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhgb42fvg204g039q2w.gif','苏喂!苏喂!苏喂苏喂苏喂',0,NULL,1509347546076,NULL),
(1065,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhflrzukj20hs0hsq3k.jpg','荣耀王者',0,NULL,1509347546076,NULL),
(1066,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhgi88yvj203c038dfo.jpg','忘你别是个阳痿吧',0,NULL,1509347546076,NULL),
(1067,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhequriaj20qo0omgoa.jpg','好了你不要再说了',0,NULL,1509347546076,NULL),
(1068,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhf7fe9oj20hr0hvwff.jpg','别打扰劳资看书',0,NULL,1509347546076,NULL),
(1069,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhejfawij206g06imx6.jpg','聊天结束',0,NULL,1509347546076,NULL),
(1070,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhfnv7slj20ee0bjglw.jpg','帅哥都玩这个!',0,NULL,1509347546076,NULL),
(1071,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhe3kbl2j205i05cgli.jpg','忘我理你',0,NULL,1509347546076,NULL),
(1072,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkx6v94ktxj206905jaa1.jpg','哟嘻！',0,NULL,1509347546076,NULL),
(1073,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhgnpjypj206m04yjra.jpg','死人,不是很厉害吗,有本事站起来撤尿啊',0,NULL,1509347546076,NULL),
(1074,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhfvnjsmg208c08cgly.gif','我凭本事补的刀，为什么说我抢人头',0,NULL,1509347546076,NULL),
(1075,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkx6vanjj1g208c08ca9x.gif','辅助角茫然',0,NULL,1509347546076,NULL),
(1076,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkx6vc8e7wj203c02lweg.jpg','都是爱心',0,NULL,1509347546076,NULL),
(1077,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdy5h10j20b40b4q35.jpg','嗨!醒醒!起来装逼了!',0,NULL,1509347546076,NULL),
(1078,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhfhcv37j203y03bq2r.jpg','哎&hellip;&hellip;女人',0,NULL,1509347546076,NULL),
(1079,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhg8okw6j20go0goq47.jpg','我一个斗图帝居然跟一个新手斗图,真是有失身份',0,NULL,1509347546076,NULL),
(1080,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhgpm24lj208c080wf1.jpg','来浪来浪',0,NULL,1509347546076,NULL),
(1081,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhelh1isj20k00k0759.jpg','主要是气质',0,NULL,1509347546076,NULL),
(1082,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdc0tpsj205i05aa9x.jpg','我要听你鸡巴',0,NULL,1509347546076,NULL),
(1083,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhftxadcg208c08cwfg.gif','对方柜绝了你的摸摸',0,NULL,1509347546076,NULL),
(1084,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhgk1vwzj20b40b43yp.jpg','大哥喝冰阔落',0,NULL,1509347546076,NULL),
(1085,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhg5ui7bj204s05iq2r.jpg','我局你MMP局',0,NULL,1509347546076,NULL),
(1086,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhgcuiiig2073073aa3.gif','我打排位回来了（手废了）',0,NULL,1509347546076,NULL),
(1087,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhf9tb6dj20k00k0dgx.jpg','今天我饭都不吃了，就在这里看你装逼',0,NULL,1509347546076,NULL),
(1088,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhedq0bgg207l08cdgn.gif','别碰我!别碰!',0,NULL,1509347546076,NULL),
(1089,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhf0f6stj20dw0cnq3i.jpg','好好啊',0,NULL,1509347546076,NULL),
(1090,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwheuwv2hj20k00j740m.jpg','我没办法和你解释，因为我只是一只小猫咪',0,NULL,1509347546076,NULL),
(1091,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhfxfcx0j20bi0biaae.jpg','妈头发扎的有点紧（小猫）',0,NULL,1509347546076,NULL),
(1092,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhe1re2oj201o01oglf.jpg','突然懵逼',0,NULL,1509347546076,NULL),
(1093,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhfpfvxgj206706pglk.jpg','我觉得不行',0,NULL,1509347546076,NULL),
(1094,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhdwhhonj203c03cwee.jpg','你这个人很皮嘛',0,NULL,1509347546076,NULL),
(1095,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhewt0hzj206y06u3yu.jpg','你们男人真烦',0,NULL,1509347546076,NULL),
(1096,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhggol7kj2073073wes.jpg','我好心好意说你丑你为什么还装帅!',0,NULL,1509347546076,NULL),
(1097,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwheylgv1j2069071gm5.jpg','你局我鸭儿不嘛?',0,NULL,1509347546076,NULL),
(1098,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhddlx84j209b09bjre.jpg','咋回事啊',0,NULL,1509347546076,NULL),
(1099,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhgm4155j202201o0sh.jpg','打飞你妈（小猫）',0,NULL,1509347546076,NULL),
(1100,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhe7smp2j206o06oaa2.jpg','日本AV女优都没你骚，你不下海真可惜',0,NULL,1509347546076,NULL),
(1101,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhvny71lj209q09q0t0.jpg','我去你妈了个大西瓜',0,NULL,1509347546076,NULL),
(1102,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhu8a4f5j20a00a0glt.jpg','打在楼上身痛在爷爷心!',0,NULL,1509347546076,NULL),
(1103,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtu7i8cj208c08c0st.jpg','有话好好说,别骂人,草你妈的',0,NULL,1509347546076,NULL),
(1104,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtl0kthg207006pjze.gif','烧楼上屁屁',0,NULL,1509347546076,NULL),
(1105,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrka96ij20g40lhdgf.jpg','我警告你们骂我的朋友可以，但是绝对不可以骂我!',0,NULL,1509347546076,NULL),
(1106,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhucbt5vg206o06ojry.gif','这个群就是这样永远已经有我一个人自言自语',0,NULL,1509347546076,NULL),
(1107,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhunwk6tj20hs0hswls.jpg','恕我直言，你的鲍鱼不新鲜了',0,NULL,1509347546076,NULL),
(1108,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkx778k2hsg206o06o74a.gif','cnmua',0,NULL,1509347546076,NULL),
(1109,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhuuypqqj20hs0hsgsh.jpg','你上辈子一定是奥利奥吧?不然为什么我总想把你扭一扭,舔一舔,泡一泡呢',0,NULL,1509347546076,NULL),
(1110,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhva662fj20hs0hstji.jpg','没用的狗群主（逗王）,说宰就宰',0,NULL,1509347546076,NULL),
(1111,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwht0zpy6j207u06gq2y.jpg','这种人好恶心的,好坏的',0,NULL,1509347546076,NULL),
(1112,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrx8z2vj202s02s0ss.jpg','再棒!',0,NULL,1509347546076,NULL),
(1113,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkx776rxrmg20bu06nk2n.gif','摸腿',0,NULL,1509347546076,NULL),
(1114,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhvm5tixj20hs0hs7e5.jpg','穿着新裤子路过',0,NULL,1509347546076,NULL),
(1115,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhs0s0jxj205u05k74a.jpg','携群主以令猪猴',0,NULL,1509347546076,NULL),
(1116,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtfnheoj205j066t8m.jpg','你以为我不敢打你?',0,NULL,1509347546076,NULL),
(1117,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrgidaaj202h02omwx.jpg','我都不敢讲话',0,NULL,1509347546076,NULL),
(1118,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhvu96ttj20e80cqn6c.jpg','当我出于时,基本可以确你要走路回家了',0,NULL,1509347546076,NULL),
(1119,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhuia3k1g206o06odgd.gif','我不想理你',0,NULL,1509347546076,NULL),
(1120,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwht4kf3kj205i04qdfo.jpg','再不走就打死你',0,NULL,1509347546076,NULL),
(1121,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhudxkcjg204l04owen.gif','姑娘别这样,保守点',0,NULL,1509347546076,NULL),
(1122,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhsatq7gj203z046q2t.jpg','主要是没钱',0,NULL,1509347546076,NULL),
(1123,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhv23lisj205i04ga9w.jpg','行，窝寄几玩',0,NULL,1509347546076,NULL),
(1124,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhs3wjqoj205k05kq2r.jpg','女神怎么辣',0,NULL,1509347546076,NULL),
(1125,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrf4aquj204g037q2t.jpg','啪!',0,NULL,1509347546076,NULL),
(1126,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkx76tv65sg206o06ogwt.gif','鄙视三连',0,NULL,1509347546076,NULL),
(1127,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhsxvvwqj20hs0gmamw.jpg','我要在我的鸡鸡上下毒，毒死你们这群贱货',0,NULL,1509347546076,NULL),
(1128,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrn5lcpj20k00k0my6.jpg','我被青春撞了一下腰',0,NULL,1509347546076,NULL),
(1129,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhv0hupvj20hs0hs7ad.jpg','今天我要学习了不能和你们玩了',0,NULL,1509347546076,NULL),
(1130,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrz3u4hj205k05k3yp.jpg','秀恩爱是会遭天谴的',0,NULL,1509347546076,NULL),
(1131,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhu4rgj8j20go0godix.jpg','你这个人很皮嘛',0,NULL,1509347546076,NULL),
(1132,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhuai7v4g206o06ojs1.gif','嗨，北鼻',0,NULL,1509347546076,NULL),
(1133,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtn3r92j20e80du74p.jpg','那你先去死啊',0,NULL,1509347546076,NULL),
(1134,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhv3q7xig208c08cq31.gif','群主不在全都造反了是吧',0,NULL,1509347546076,NULL),
(1135,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtop3lqj204e04q3yd.jpg','在胡说八道我砍了你',0,NULL,1509347546076,NULL),
(1136,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwht312fyj20hs04rjry.jpg','撤回有用吗?出卖的尊严还能收回吗?',0,NULL,1509347546076,NULL),
(1137,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkx78vfhhsg209107hqis.gif','哎呀',0,NULL,1509347546076,NULL),
(1138,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhgezoy3j206n06oabb.jpg','没错儿劳资就是装B王',0,NULL,1509347546076,NULL),
(1139,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtsehbbg202s030a9x.gif','张嘴',0,NULL,1509347546076,NULL),
(1140,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrthzklj20c807kgm9.jpg','摄像师集合完',0,NULL,1509347546076,NULL),
(1141,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkx78j2rlkg206o06okaq.gif','卧槽三连',0,NULL,1509347546076,NULL),
(1142,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhs5hotuj2050054weg.jpg','放你娘的十八罗汉通天屁',0,NULL,1509347546076,NULL),
(1143,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrijgulj205505sq43.jpg','当然,在座各位并不包括我',0,NULL,1509347546076,NULL),
(1144,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhugfbkpg206o06otat.gif','我来了，你娶不娶？',0,NULL,1509347546076,NULL),
(1145,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkx76xbd2zg203h03hq47.gif','打牌',0,NULL,1509347546076,NULL),
(1146,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkx77kfs7zg206o06o4cv.gif','老王慢点吃',0,NULL,1509347546076,NULL),
(1147,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhszerp7j205z05h0sm.jpg','早上好',0,NULL,1509347546076,NULL),
(1148,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrovvlpj2025025aa3.jpg','给震',0,NULL,1509347546076,NULL),
(1149,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhs9c44wj205i03sjr8.jpg','佛山傻比脚',0,NULL,1509347546076,NULL),
(1150,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtw0t28g206o07ijro.gif','可以,胆子很大奶',0,NULL,1509347546076,NULL),
(1151,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhs2g5ykj208v08p3yn.jpg','My name is二狗',0,NULL,1509347546076,NULL),
(1152,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhu6jezhj205k05kq3f.jpg','你讲话十分串',0,NULL,1509347546076,NULL),
(1153,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrdkgzpj20nl0irmyn.jpg','宁可我绿天下人，休叫天下人绿我',0,NULL,1509347546076,NULL),
(1154,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtz3ossj205u04wa9z.jpg','几把甩死你',0,NULL,1509347546076,NULL),
(1155,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkx782srw5g206o06otu4.gif','李时珍三连',0,NULL,1509347546076,NULL),
(1156,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhvbtugij206404l747.jpg','爺卟媞你惹喉起',0,NULL,1509347546076,NULL),
(1157,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrvik3tj206o06odga.jpg','放开那个红包，让我来。',0,NULL,1509347546076,NULL),
(1158,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtcnafhg20bj0azqfx.gif','虽然你长的丑，但你想的美啊',0,NULL,1509347546076,NULL),
(1159,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtqv71zj20e80e8t99.jpg','二貨',0,NULL,1509347546076,NULL),
(1160,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhte45upj205i05iwec.jpg','你咋不上秤呢?',0,NULL,1509347546076,NULL),
(1161,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhs7t5v5j20qo0qotas.jpg','我日你妈卖批',0,NULL,1509347546076,NULL),
(1162,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrr6y39j20dc0eqq3l.jpg','夏侯淳',0,NULL,1509347546076,NULL),
(1163,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkx76lrc2xj203x04jt8y.jpg','快表撇球了',0,NULL,1509347546076,NULL),
(1164,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhvg88eqj20hs0hiafz.jpg','对不起,我不该比你还帅，你不服的话我也没法',0,NULL,1509347546076,NULL),
(1165,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhtxjseaj204q03f0sl.jpg','大锤你怕不怕',0,NULL,1509347546076,NULL),
(1166,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhrb9mdxj20hs0hsdgy.jpg','你草人具意思',0,NULL,1509347546076,NULL),
(1167,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhu1rjgmj20b40b40va.jpg','我什么都没看见',0,NULL,1509347546076,NULL),
(1168,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwhsceqkzg205905ijrg.gif','我要听你娇喘',0,NULL,1509347546076,NULL),
(1169,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkvwkyeggxg206o06ok1z.gif','看你的样子，没男朋友吧',0,NULL,1509347546076,NULL),
(1170,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwgkj9sflj20k00bot90.jpg','炖了',0,NULL,1509347546076,NULL),
(1171,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkvwkon3l5g208w06otpl.gif','舔一下',0,NULL,1509347546076,NULL),
(1172,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fkwg9tzcvbj20fj0fj3zh.jpg','砍tm胖虎一家',0,NULL,1509347546076,NULL),
(1173,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fkwhr7pfdgj20hs0hsdgw.jpg','这帅气的脸不知道以后便宜哪位姑娘!唉伯爵',0,NULL,1509347546076,NULL),
(1174,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fkwg8it8lyg205004jdg6.gif','低调！一家要低调！',0,NULL,1509347546076,NULL),
(1175,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fkwhr99by6j204v05it8l.jpg','你这坨鸡屎',0,NULL,1509347546076,NULL),
(1176,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkx75y6kg9j20b40efaav.jpg','你以为咸鱼总会有翻身的一天，你错了咸鱼翻身之后还是成鱼',0,NULL,1509347552513,1509347552827),
(1177,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkx760egngj20b40eet9e.jpg','你以为自己腿粗的像只猪，你错了猪并没有你那么粗的腿',0,NULL,1509347552513,1509347552827),
(1178,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkx763jafqj20b40et0tw.jpg','你以为换个发型就变漂亮了，你错了你丑不仅是因为头发',0,NULL,1509347552513,1509347552827),
(1179,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkx768asoxj20b40etjt8.jpg','你以为有钱就会像你想象中那样幸福，你错了有钱人幸福你想象不到',0,NULL,1509347552513,1509347552827),
(1180,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkx76blxfej20b40ett9o.jpg','你以为你手机响了，你错了其实根本没人找你',0,NULL,1509347552513,1509347552827),
(1181,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkx76e7xjcj20b40eedgp.jpg','你以为自己腰粗的像个水桶A4腰也叫水桶腰,分享让更多人知道!你错了其实水桶是A4腰',0,NULL,1509347552513,1509347552827),
(1182,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkx76grh4gj20b40etgmm.jpg','你以为你可以瘦成一道闪电，你错了闪电的平均宽度是5米',0,NULL,1509347552513,1509347552827),
(1183,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkx76jpgngj20b40eewg0.jpg','你以为你真的吃饱了，你错了“水果还吃吗”“吃”!',0,NULL,1509347552513,1509347552827),
(1184,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkw13ij11lg20qo0qotfq.gif','长腿黑衣人(摸胸)',0,NULL,1509347552513,1509347553168),
(1185,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkw0r54jslg20qo0qo77d.gif','长腿黑衣来爽一下嘛(爽)',0,NULL,1509347552513,1509347553168),
(1186,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkw1508xe3g20qo0qojx1.gif','长腿黑衣走路骚姿势！',0,NULL,1509347552513,1509347553168),
(1187,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkw15481tdg20qo0qotcp.gif','长腿黑衣来爽一下嘛！（跳舞）',0,NULL,1509347552513,1509347553168),
(1188,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkw1q8gkdgg20qo0qon0a.gif','长腿黑衣来爽一下嘛！（教皇）',0,NULL,1509347552513,1509347553168),
(1189,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkycut4zxvj20ge0cxt9c.jpg','小猪',0,NULL,1509347552513,1509347553414),
(1190,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkycuvd9o1j209c0bxt90.jpg','小猪',0,NULL,1509347552513,1509347553414),
(1191,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkycuxasoyj20cf07tdg0.jpg','小猪',0,NULL,1509347552513,1509347553414),
(1192,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkycuzdbhpj20800b5glo.jpg','小猪',0,NULL,1509347552513,1509347553414),
(1193,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkycv1uijaj20900c0jsc.jpg','小猪',0,NULL,1509347552513,1509347553414),
(1194,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkycv3rp7cj20d208mgm1.jpg','小猪',0,NULL,1509347552513,1509347553414),
(1195,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkycv5j51aj20aq0g4mxc.jpg','小猪',0,NULL,1509347552513,1509347553414),
(1196,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkycv7bakhj208w0b5aak.jpg','小猪',0,NULL,1509347552513,1509347553414),
(1197,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkycte5xh0j20av07i0sz.jpg','小猪',0,NULL,1509347552513,1509347553414),
(1198,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkycsx2i84j20c80c8q35.jpg','小哥哥',0,NULL,1509347552513,1509347553663),
(1199,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkycsyrdphj20c80c8dg0.jpg','有的话',0,NULL,1509347552513,1509347553663),
(1200,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkyct0l49fj20c80c8dg5.jpg','那多一个怎么样',0,NULL,1509347552513,1509347553663),
(1201,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkyct2b7b7j20c80c8mxe.jpg','如果不想换',0,NULL,1509347552513,1509347553663),
(1202,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkyct45or9j20c80c8wet.jpg','介不介意有一个啊',0,NULL,1509347552513,1509347553663),
(1203,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkyct5ucl5j20c80c80sy.jpg','小姐姐',0,NULL,1509347552513,1509347553663),
(1204,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkyct7qjvbj20c80c8t90.jpg','你有没有对象啊',0,NULL,1509347552513,1509347553663),
(1205,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkyct9hl3rj20c80c8t90.jpg','你有没有对象啊',0,NULL,1509347552513,1509347553663),
(1206,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkyctb8nlpj20c80c8glw.jpg','换一个怎么样',0,NULL,1509347552513,1509347553663),
(1207,'https://ws3.sinaimg.cn/large/9150e4e5ly1fktn9b5q2jj20j60j6jsm.jpg','你的小祖宗已苏醒',0,NULL,1509347552513,1509347553991),
(1208,'https://ws2.sinaimg.cn/large/9150e4e5ly1fktn9e86c7j20j60j6gn5.jpg','你的小祖宗等你带她去看电影',0,NULL,1509347552513,1509347553991),
(1209,'https://ws1.sinaimg.cn/large/9150e4e5ly1fktn9ggjvjj20j60j6gms.jpg','你的小祖宗饿了',0,NULL,1509347552513,1509347553991),
(1210,'https://ws4.sinaimg.cn/large/9150e4e5ly1fktn9jvnp0j20j60j6mz5.jpg','你的小祖宗在等你带她去吃好吃的',0,NULL,1509347552513,1509347553991),
(1211,'https://ws1.sinaimg.cn/large/9150e4e5ly1fktn9mgoikj20j60j6jsi.jpg','你的小祖宗已铺好床了',0,NULL,1509347552513,1509347553991),
(1212,'https://ws2.sinaimg.cn/large/9150e4e5ly1fktn9p9r77j20j60j6abk.jpg','你的小祖宗在等你发大红包',0,NULL,1509347552513,1509347553991),
(1213,'https://ws2.sinaimg.cn/large/9150e4e5ly1fktn9s2o2cj20j60j6gmz.jpg','你的小祖宗要买新衣服',0,NULL,1509347552513,1509347553991),
(1214,'https://ws1.sinaimg.cn/large/9150e4e5ly1fktn9uim7sj20j60j6jst.jpg','你的小祖宗不但不理你还了你一限',0,NULL,1509347552513,1509347553991),
(1215,'https://ws3.sinaimg.cn/large/9150e4e5ly1fktn9xhjvrj20j60j6myk.jpg','你的小祖宗在等你侍寝',0,NULL,1509347552513,1509347553991),
(1216,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkyd5p1emhj203i032q2s.jpg','哭啦',0,NULL,1509347552513,1509347554449),
(1217,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkyd5qlr1oj203i032745.jpg','冒汗',0,NULL,1509347552513,1509347554449),
(1218,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkyd5s7flgj203i02z0sl.jpg','害羞啦',0,NULL,1509347552513,1509347554449),
(1219,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkycunyg1cj203h0323yd.jpg','嘿嘿',0,NULL,1509347552513,1509347554449),
(1220,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkyd5trv0sj203i0363ye.jpg','偷吃奶酪',0,NULL,1509347552513,1509347554449),
(1221,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkyd5vgvmdj203h032wec.jpg','发呆',0,NULL,1509347552513,1509347554449),
(1222,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkyd5xbt1mj203i030mx0.jpg','哼',0,NULL,1509347552513,1509347554449),
(1223,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkyd5ywg64j203i032t8k.jpg','宝宝好可爱呐',0,NULL,1509347552513,1509347554449),
(1224,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkycupkzq3j203l02zwec.jpg','抛媚眼',0,NULL,1509347552513,1509347554449),
(1225,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkvx3m4qlqg2046046jra.gif','我劝你还是跟我学广播体操吧',0,NULL,1509347552513,1509347554790),
(1226,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkvx3p2zn1g203k02v3zg.gif','脸皮咋这么厚了',0,NULL,1509347552513,1509347554790),
(1227,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkvx3uztg3g208c08cjsr.gif','狗狗动脚',0,NULL,1509347552513,1509347554790),
(1228,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkvxg8zutjg206o06omxd.gif','聊天聊天好开心',0,NULL,1509347552513,1509347554790),
(1229,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkvxgcpl74g208c08c401.gif','召唤楼下傻狗',0,NULL,1509347552513,1509347554790),
(1230,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkvxgesqeog203c01x0sx.gif','我将带头装逼',0,NULL,1509347552513,1509347554790),
(1231,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkvxgjiycjg205k05kt9r.gif','我走过最长的路就是你的套略',0,NULL,1509347552513,1509347554790),
(1232,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkvxglphr7g202s03ht99.gif','踩地板',0,NULL,1509347552513,1509347554790),
(1233,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkvxgpx3yig206y06ywfw.gif','猥琐抠鼻',0,NULL,1509347552513,1509347554790),
(1234,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkyctgy97pj20hr0hrdi8.jpg','一般般的我一般般的拽一般般的你我甩都不甩',0,NULL,1509347552513,1509347555099),
(1235,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkyctjg9guj20hs0hsabi.jpg','看什么?这叫幸福肉',0,NULL,1509347552513,1509347555099),
(1236,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkyctm56ngj207t07t755.jpg','不必挽留,我心已决',0,NULL,1509347552513,1509347555099),
(1237,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkycts1ewmj20k00kcjwm.jpg','要亲亲要亲亲要亲亲要亲亲要亲亲要亲亲要亲亲要亲亲要亲亲亲亲要亲亲要亲亲要亲亲亲亲要亲亲要亲亲要亲亲要亲亲要亲亲要亲亲要亲亲要亲亲一要亲亲亲亲要亲亲要亲亲要亲亲要亲亲',0,NULL,1509347552513,1509347555099),
(1238,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkyctute5oj20hs0hs3zz.jpg','没见过胖子么?',0,NULL,1509347552513,1509347555099),
(1239,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkycu37h1ej20k00kcq84.jpg','要抱抱',0,NULL,1509347552513,1509347555099),
(1240,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkycu76nyaj20k00kcmzh.jpg',' Enjoy',0,NULL,1509347552513,1509347555099),
(1241,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkycueftxwj20k00kcwis.jpg',' yeah yeah!',0,NULL,1509347552513,1509347555099),
(1242,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkycumenytj20k00kcq7l.jpg',' Hahaha',0,NULL,1509347552513,1509347555099),
(1243,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkx7965ik0j20rs0rsgpv.jpg','万圣节给糖我就抱你',0,NULL,1509347552513,1509347555345),
(1244,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkx79a8qkhj20rs0rs41k.jpg','给',0,NULL,1509347552513,1509347555345),
(1245,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkx79eux4vj20rs0rsaea.jpg','其实你们卸了妆才是真正的万圣节',0,NULL,1509347552513,1509347555345),
(1246,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkx79iozeqj20rs0rsn0w.jpg','脱了裤子就是儿童节的人，凭什么说女孩子卸了妆，就是万圣节',0,NULL,1509347552513,1509347555345),
(1247,'https://ws4.sinaimg.cn/large/9150e4e5ly1fkx79n7cixj20rs0rsq6x.jpg','万圣节我都会本色出演一个穷鬼',0,NULL,1509347552513,1509347555345),
(1248,'https://ws2.sinaimg.cn/large/9150e4e5ly1fkx79qo80bj20rs0rsade.jpg','不给糖就导弹!',0,NULL,1509347552513,1509347555345),
(1249,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkx79w13m7j20rs0rsaei.jpg','谁要糖?我有脱氧核糖要不要?',0,NULL,1509347552513,1509347555345),
(1250,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkx7a1tnicj20rs0rstet.jpg','万圣节不给糖的我就抱着你不放',0,NULL,1509347552513,1509347555345),
(1251,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkx7a665xmj20rs0rswip.jpg','最孤独的感觉就是鬼都懒得吓你',0,NULL,1509347552513,1509347555345),
(1252,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jppve35g207y05mwf4.gif','RNG！RNG！',0,NULL,1509423604607,NULL),
(1253,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12nm35k2j207907aaa7.jpg','我去买一些金拱门，你就待在肯德基不要走动',0,NULL,1509423604607,NULL),
(1254,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mhi5ozj202s02q743.jpg','又来了又来了',0,NULL,1509423604607,NULL),
(1255,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12mek857j20k00k0dgk.jpg','我们辛辛苦苦的在这保家卫国，你倒好还在这斗图',0,NULL,1509423604607,NULL),
(1256,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6vi9q8j208c08cglm.jpg','我是有脾气的',0,NULL,1509423604607,NULL),
(1257,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12mjyscvj20qo0lidgs.jpg','哈哈哈哈',0,NULL,1509423604607,NULL),
(1258,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nikr1lj204p04eweb.jpg','我怕狗,你别过来!',0,NULL,1509423604607,NULL),
(1259,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12nfnfjij205i049glg.jpg','靓妹,加QQ?',0,NULL,1509423604607,NULL),
(1260,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k60p6p3j208k09wq33.jpg','说的这么吊吃坨屎我看看',0,NULL,1509423604607,NULL),
(1261,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12mp6b5uj206o06omx3.jpg','We输了',0,NULL,1509423604607,NULL),
(1262,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k69jw8kj20qo0f0gmo.jpg','蕉傲自满',0,NULL,1509423604607,NULL),
(1263,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12lx7y2yj2088092jrr.jpg','美女需要拥抱+舌吻吗限时套餐',0,NULL,1509423604607,NULL),
(1264,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpkk3t4j203l049jrf.jpg','熊猫人做椅子上',0,NULL,1509423604607,NULL),
(1265,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6nir41j205m06r3yf.jpg','很强兄弟',0,NULL,1509423604607,NULL),
(1266,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6ru6x9g208c08cjrt.gif','表示很无语',0,NULL,1509423604607,NULL),
(1267,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12mcczdjj203c03c747.jpg','空手而归啊',0,NULL,1509423604607,NULL),
(1268,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k66qyvdj202v02v3yj.jpg','有意思',0,NULL,1509423604607,NULL),
(1269,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mg0b95j202c02ojr5.jpg','大.&there4;大佬',0,NULL,1509423604607,NULL),
(1270,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6lto3mj205g05iq30.jpg','没位置了',0,NULL,1509423604607,NULL),
(1271,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12luu6mdj201y028dfm.jpg','不能分析',0,NULL,1509423604607,NULL),
(1272,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6eavy4j20go0gojt4.jpg','要亲亲',0,NULL,1509423604607,NULL),
(1273,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpvdokvj205i046jr8.jpg','中指（熊猫人）',0,NULL,1509423604607,NULL),
(1274,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpdc46zj201u01xt8h.jpg','抱腿',0,NULL,1509423604607,NULL),
(1275,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ne0rjbg2064064e13.gif','绝交一分钟',0,NULL,1509423604607,NULL),
(1276,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nh3bogj20200203ya.jpg','呵,逆子',0,NULL,1509423604607,NULL),
(1277,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12m35l3zj20e80e8jrv.jpg','这个世界需要更多英雄佳（狗狗猎空）',0,NULL,1509423604607,NULL),
(1278,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpnx138j20c805ht8y.jpg','优雅三连',0,NULL,1509423604607,NULL),
(1279,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ltalbbj20qo0nywfl.jpg','妹子来局农药?',0,NULL,1509423604607,NULL),
(1280,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12mnktyzj208w08wmyp.jpg','中秋节快乐,掰开有蛋黄把（月饼）',0,NULL,1509423604607,NULL),
(1281,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl1276h7kbj204g047mx8.jpg','北方穿围巾',0,NULL,1509423604607,NULL),
(1282,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k62a557j206o06gjrb.jpg','男人只会打飞机',0,NULL,1509423604607,NULL),
(1283,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6bcrfxj20680admxb.jpg','进群前的我进群后的我',0,NULL,1509423604607,NULL),
(1284,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6k96txg2073073wep.gif','我错了,别这样嘛',0,NULL,1509423604607,NULL),
(1285,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12lzkacjg208c08caas.gif','你不配合我，只能亲自动手了',0,NULL,1509423604607,NULL),
(1286,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl126y9vnhj201i01owe9.jpg','打死你丫的！',0,NULL,1509423604607,NULL),
(1287,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nwooqrj205i02xgle.jpg','在借里等你',0,NULL,1509423604607,NULL),
(1288,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7jj07kj206o06ogme.jpg','我能去你的头上抓羊吗?',0,NULL,1509423604607,NULL),
(1289,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12m8923rj209g09jmxq.jpg','平家蟹出没注意（ I WANT TO BECOME A CRAB）',0,NULL,1509423604607,NULL),
(1290,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7ericfg208w08mnft.gif','晦想来',0,NULL,1509423604607,NULL),
(1291,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpa36sbj20dp09nmxm.jpg','给您烧香了',0,NULL,1509423604607,NULL),
(1292,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6pagitj208c08cq34.jpg','我单身是因为大家都以为我有对象',0,NULL,1509423604607,NULL),
(1293,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nv7xgcg207f07fmxe.gif','工资多少',0,NULL,1509423604607,NULL),
(1294,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12m676enj208c08cq4k.jpg','你丑,没关系',0,NULL,1509423604607,NULL),
(1295,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12no1e0pj209j0c5wes.jpg','新来的，给你棒棒糖',0,NULL,1509423604607,NULL),
(1296,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nyjbgfj205d051weq.jpg','闭上你的肛门谢谢',0,NULL,1509423604607,NULL),
(1297,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nrjxhbg208c068dfz.gif','朕只是微服私访,体查民情而已',0,NULL,1509423604607,NULL),
(1298,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nprus7j205i02xt8p.jpg','我们不一样，不一样',0,NULL,1509423604607,NULL),
(1299,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6h9fc9g208c08cq3i.gif','听说你喜欢我?',0,NULL,1509423604607,NULL),
(1300,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jprbzp1j201z01za9t.jpg','黑色马赛克',0,NULL,1509423604607,NULL),
(1301,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpeua5hj202m03hdfm.jpg','妹子抱腿',0,NULL,1509423604607,NULL),
(1302,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7hbacoj20go0goq3n.jpg','嘻嘻,嘻嘻',0,NULL,1509423604607,NULL),
(1303,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k64xtdcj208c08cq4h.jpg','你会喜欢我吗？不会我教你呀',0,NULL,1509423604607,NULL),
(1304,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jphai9vj20m00e1t9n.jpg','曹操三连',0,NULL,1509423604607,NULL),
(1305,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nk606dj204v07sq2w.jpg','傲娇胖虎',0,NULL,1509423604607,NULL),
(1306,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12nt51rxj203003ct8j.jpg','小声逼逼',0,NULL,1509423604607,NULL),
(1307,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6tkneuj205i02n3yd.jpg','性暗示?',0,NULL,1509423604607,NULL),
(1308,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpbt5lxg208c08cmx0.gif','万能懵逼公式',0,NULL,1509423604607,NULL),
(1309,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12maqkqmj208c08c3zm.jpg','以前我的生活就是工作,以后我的工作就是生活',0,NULL,1509423604607,NULL),
(1310,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7lfnqaj204t0di3yq.jpg','过来给我装下逼，不然抽死你。',0,NULL,1509423604607,NULL),
(1311,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jplze2oj202m02m3ya.jpg','小白鸭',0,NULL,1509423604607,NULL),
(1312,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12m10q3lj201z027jr5.jpg','好感+300',0,NULL,1509423604607,NULL),
(1313,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mquyejj205m052t8n.jpg','臣服于女人吧',0,NULL,1509423604607,NULL),
(1314,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7p02vej20g40fe0u2.jpg','WE的比赛还用看?醒来之后又是一场胜利',0,NULL,1509423607383,1509423607705),
(1315,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7r1sfsj20b40cijs3.jpg','既会打o炮，也会打飞机',0,NULL,1509423607383,1509423607705),
(1316,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl0k7u2qsgj20910hwdh3.jpg','耶，广州见！',0,NULL,1509423607383,1509423607705),
(1317,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7xf2z8j20b50c0tae.jpg','广州的大龙',0,NULL,1509423607383,1509423607705),
(1318,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k810xspj204c04k0st.jpg','天降正义！',0,NULL,1509423607383,1509423607705),
(1319,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k62a557j206o06gjrb.jpg','男人只会打飞机',0,NULL,1509423715858,NULL),
(1320,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k64xtdcj208c08cq4h.jpg','你会喜欢我吗？不会我教你呀',0,NULL,1509423715858,NULL),
(1321,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12lx7y2yj2088092jrr.jpg','美女需要拥抱+舌吻吗限时套餐',0,NULL,1509423715858,NULL),
(1322,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12luu6mdj201y028dfm.jpg','不能分析',0,NULL,1509423715858,NULL),
(1323,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12nm35k2j207907aaa7.jpg','我去买一些金拱门，你就待在肯德基不要走动',0,NULL,1509423715858,NULL),
(1324,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nprus7j205i02xt8p.jpg','我们不一样，不一样',0,NULL,1509423715858,NULL),
(1325,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpbt5lxg208c08cmx0.gif','万能懵逼公式',0,NULL,1509423715858,NULL),
(1326,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpeua5hj202m03hdfm.jpg','妹子抱腿',0,NULL,1509423715858,NULL),
(1327,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12mp6b5uj206o06omx3.jpg','We输了',0,NULL,1509423715858,NULL),
(1328,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6nir41j205m06r3yf.jpg','很强兄弟',0,NULL,1509423715858,NULL),
(1329,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12m676enj208c08cq4k.jpg','你丑,没关系',0,NULL,1509423715858,NULL),
(1330,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6lto3mj205g05iq30.jpg','没位置了',0,NULL,1509423715858,NULL),
(1331,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12m35l3zj20e80e8jrv.jpg','这个世界需要更多英雄佳（狗狗猎空）',0,NULL,1509423715858,NULL),
(1332,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12mnktyzj208w08wmyp.jpg','中秋节快乐,掰开有蛋黄把（月饼）',0,NULL,1509423715858,NULL),
(1333,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nikr1lj204p04eweb.jpg','我怕狗,你别过来!',0,NULL,1509423715858,NULL),
(1334,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6k96txg2073073wep.gif','我错了,别这样嘛',0,NULL,1509423715858,NULL),
(1335,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mg0b95j202c02ojr5.jpg','大.&there4;大佬',0,NULL,1509423715858,NULL),
(1336,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpa36sbj20dp09nmxm.jpg','给您烧香了',0,NULL,1509423715858,NULL),
(1337,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6tkneuj205i02n3yd.jpg','性暗示?',0,NULL,1509423715858,NULL),
(1338,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12nt51rxj203003ct8j.jpg','小声逼逼',0,NULL,1509423715858,NULL),
(1339,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6bcrfxj20680admxb.jpg','进群前的我进群后的我',0,NULL,1509423715858,NULL),
(1340,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jphai9vj20m00e1t9n.jpg','曹操三连',0,NULL,1509423715858,NULL),
(1341,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nwooqrj205i02xgle.jpg','在借里等你',0,NULL,1509423715858,NULL),
(1342,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl1276h7kbj204g047mx8.jpg','北方穿围巾',0,NULL,1509423715858,NULL),
(1343,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nk606dj204v07sq2w.jpg','傲娇胖虎',0,NULL,1509423715858,NULL),
(1344,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mquyejj205m052t8n.jpg','臣服于女人吧',0,NULL,1509423715858,NULL),
(1345,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nh3bogj20200203ya.jpg','呵,逆子',0,NULL,1509423715858,NULL),
(1346,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k60p6p3j208k09wq33.jpg','说的这么吊吃坨屎我看看',0,NULL,1509423715858,NULL),
(1347,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ne0rjbg2064064e13.gif','绝交一分钟',0,NULL,1509423715858,NULL),
(1348,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpdc46zj201u01xt8h.jpg','抱腿',0,NULL,1509423715858,NULL),
(1349,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6vi9q8j208c08cglm.jpg','我是有脾气的',0,NULL,1509423715858,NULL),
(1350,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mhi5ozj202s02q743.jpg','又来了又来了',0,NULL,1509423715858,NULL),
(1351,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12mek857j20k00k0dgk.jpg','我们辛辛苦苦的在这保家卫国，你倒好还在这斗图',0,NULL,1509423715858,NULL),
(1352,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl126y9vnhj201i01owe9.jpg','打死你丫的！',0,NULL,1509423715858,NULL),
(1353,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nv7xgcg207f07fmxe.gif','工资多少',0,NULL,1509423715858,NULL),
(1354,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12maqkqmj208c08c3zm.jpg','以前我的生活就是工作,以后我的工作就是生活',0,NULL,1509423715858,NULL),
(1355,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpkk3t4j203l049jrf.jpg','熊猫人做椅子上',0,NULL,1509423715858,NULL),
(1356,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpnx138j20c805ht8y.jpg','优雅三连',0,NULL,1509423715858,NULL),
(1357,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6h9fc9g208c08cq3i.gif','听说你喜欢我?',0,NULL,1509423715858,NULL),
(1358,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jplze2oj202m02m3ya.jpg','小白鸭',0,NULL,1509423715858,NULL),
(1359,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12lzkacjg208c08caas.gif','你不配合我，只能亲自动手了',0,NULL,1509423715858,NULL),
(1360,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7ericfg208w08mnft.gif','晦想来',0,NULL,1509423715858,NULL),
(1361,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpvdokvj205i046jr8.jpg','中指（熊猫人）',0,NULL,1509423715858,NULL),
(1362,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6ru6x9g208c08cjrt.gif','表示很无语',0,NULL,1509423715858,NULL),
(1363,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6eavy4j20go0gojt4.jpg','要亲亲',0,NULL,1509423715858,NULL),
(1364,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7jj07kj206o06ogme.jpg','我能去你的头上抓羊吗?',0,NULL,1509423715858,NULL),
(1365,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nrjxhbg208c068dfz.gif','朕只是微服私访,体查民情而已',0,NULL,1509423715858,NULL),
(1366,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k69jw8kj20qo0f0gmo.jpg','蕉傲自满',0,NULL,1509423715858,NULL),
(1367,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jprbzp1j201z01za9t.jpg','黑色马赛克',0,NULL,1509423715858,NULL),
(1368,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12mcczdjj203c03c747.jpg','空手而归啊',0,NULL,1509423715858,NULL),
(1369,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12mjyscvj20qo0lidgs.jpg','哈哈哈哈',0,NULL,1509423715858,NULL),
(1370,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12m8923rj209g09jmxq.jpg','平家蟹出没注意（ I WANT TO BECOME A CRAB）',0,NULL,1509423715858,NULL),
(1371,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12nfnfjij205i049glg.jpg','靓妹,加QQ?',0,NULL,1509423715858,NULL),
(1372,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k66qyvdj202v02v3yj.jpg','有意思',0,NULL,1509423715858,NULL),
(1373,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7hbacoj20go0goq3n.jpg','嘻嘻,嘻嘻',0,NULL,1509423715858,NULL),
(1374,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12no1e0pj209j0c5wes.jpg','新来的，给你棒棒糖',0,NULL,1509423715858,NULL),
(1375,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ltalbbj20qo0nywfl.jpg','妹子来局农药?',0,NULL,1509423715858,NULL),
(1376,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7lfnqaj204t0di3yq.jpg','过来给我装下逼，不然抽死你。',0,NULL,1509423715858,NULL),
(1377,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jppve35g207y05mwf4.gif','RNG！RNG！',0,NULL,1509423715858,NULL),
(1378,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12m10q3lj201z027jr5.jpg','好感+300',0,NULL,1509423715858,NULL),
(1379,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6pagitj208c08cq34.jpg','我单身是因为大家都以为我有对象',0,NULL,1509423715858,NULL),
(1380,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nyjbgfj205d051weq.jpg','闭上你的肛门谢谢',0,NULL,1509423715858,NULL),
(1381,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7p02vej20g40fe0u2.jpg','WE的比赛还用看?醒来之后又是一场胜利',0,NULL,1509423718019,1509423718331),
(1382,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7r1sfsj20b40cijs3.jpg','既会打o炮，也会打飞机',0,NULL,1509423718019,1509423718331),
(1383,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl0k7u2qsgj20910hwdh3.jpg','耶，广州见！',0,NULL,1509423718019,1509423718331),
(1384,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7xf2z8j20b50c0tae.jpg','广州的大龙',0,NULL,1509423718019,1509423718331),
(1385,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k810xspj204c04k0st.jpg','天降正义！',0,NULL,1509423718019,1509423718331),
(1386,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12mcczdjj203c03c747.jpg','空手而归啊',0,NULL,1509505113055,NULL),
(1387,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12nfnfjij205i049glg.jpg','靓妹,加QQ?',0,NULL,1509505113055,NULL),
(1388,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12lx7y2yj2088092jrr.jpg','美女需要拥抱+舌吻吗限时套餐',0,NULL,1509505113055,NULL),
(1389,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nikr1lj204p04eweb.jpg','我怕狗,你别过来!',0,NULL,1509505113055,NULL),
(1390,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12mjyscvj20qo0lidgs.jpg','哈哈哈哈',0,NULL,1509505113055,NULL),
(1391,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nwooqrj205i02xgle.jpg','在借里等你',0,NULL,1509505113055,NULL),
(1392,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6vi9q8j208c08cglm.jpg','我是有脾气的',0,NULL,1509505113055,NULL),
(1393,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mhi5ozj202s02q743.jpg','又来了又来了',0,NULL,1509505113055,NULL),
(1394,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6eavy4j20go0gojt4.jpg','要亲亲',0,NULL,1509505113055,NULL),
(1395,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k69jw8kj20qo0f0gmo.jpg','蕉傲自满',0,NULL,1509505113055,NULL),
(1396,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl126y9vnhj201i01owe9.jpg','打死你丫的！',0,NULL,1509505113055,NULL),
(1397,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6h9fc9g208c08cq3i.gif','听说你喜欢我?',0,NULL,1509505113055,NULL),
(1398,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12m676enj208c08cq4k.jpg','你丑,没关系',0,NULL,1509505113055,NULL),
(1399,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6pagitj208c08cq34.jpg','我单身是因为大家都以为我有对象',0,NULL,1509505113055,NULL),
(1400,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jphai9vj20m00e1t9n.jpg','曹操三连',0,NULL,1509505113055,NULL),
(1401,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6nir41j205m06r3yf.jpg','很强兄弟',0,NULL,1509505113055,NULL),
(1402,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nyjbgfj205d051weq.jpg','闭上你的肛门谢谢',0,NULL,1509505113055,NULL),
(1403,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nprus7j205i02xt8p.jpg','我们不一样，不一样',0,NULL,1509505113055,NULL),
(1404,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jprbzp1j201z01za9t.jpg','黑色马赛克',0,NULL,1509505113055,NULL),
(1405,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jppve35g207y05mwf4.gif','RNG！RNG！',0,NULL,1509505113055,NULL),
(1406,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12lzkacjg208c08caas.gif','你不配合我，只能亲自动手了',0,NULL,1509505113055,NULL),
(1407,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12nt51rxj203003ct8j.jpg','小声逼逼',0,NULL,1509505113055,NULL),
(1408,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6lto3mj205g05iq30.jpg','没位置了',0,NULL,1509505113055,NULL),
(1409,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nrjxhbg208c068dfz.gif','朕只是微服私访,体查民情而已',0,NULL,1509505113055,NULL),
(1410,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ne0rjbg2064064e13.gif','绝交一分钟',0,NULL,1509505113055,NULL),
(1411,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k66qyvdj202v02v3yj.jpg','有意思',0,NULL,1509505113055,NULL),
(1412,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6bcrfxj20680admxb.jpg','进群前的我进群后的我',0,NULL,1509505113055,NULL),
(1413,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6k96txg2073073wep.gif','我错了,别这样嘛',0,NULL,1509505113055,NULL),
(1414,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k64xtdcj208c08cq4h.jpg','你会喜欢我吗？不会我教你呀',0,NULL,1509505113055,NULL),
(1415,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12m35l3zj20e80e8jrv.jpg','这个世界需要更多英雄佳（狗狗猎空）',0,NULL,1509505113055,NULL),
(1416,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12nm35k2j207907aaa7.jpg','我去买一些金拱门，你就待在肯德基不要走动',0,NULL,1509505113055,NULL),
(1417,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7lfnqaj204t0di3yq.jpg','过来给我装下逼，不然抽死你。',0,NULL,1509505113055,NULL),
(1418,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12m10q3lj201z027jr5.jpg','好感+300',0,NULL,1509505113055,NULL),
(1419,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpnx138j20c805ht8y.jpg','优雅三连',0,NULL,1509505113055,NULL),
(1420,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nh3bogj20200203ya.jpg','呵,逆子',0,NULL,1509505113055,NULL),
(1421,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpeua5hj202m03hdfm.jpg','妹子抱腿',0,NULL,1509505113055,NULL),
(1422,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jplze2oj202m02m3ya.jpg','小白鸭',0,NULL,1509505113055,NULL),
(1423,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpdc46zj201u01xt8h.jpg','抱腿',0,NULL,1509505113055,NULL),
(1424,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpkk3t4j203l049jrf.jpg','熊猫人做椅子上',0,NULL,1509505113055,NULL),
(1425,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mg0b95j202c02ojr5.jpg','大.&there4;大佬',0,NULL,1509505113055,NULL),
(1426,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ltalbbj20qo0nywfl.jpg','妹子来局农药?',0,NULL,1509505113055,NULL),
(1427,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12mp6b5uj206o06omx3.jpg','We输了',0,NULL,1509505113055,NULL),
(1428,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6tkneuj205i02n3yd.jpg','性暗示?',0,NULL,1509505113055,NULL),
(1429,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mquyejj205m052t8n.jpg','臣服于女人吧',0,NULL,1509505113055,NULL),
(1430,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl1276h7kbj204g047mx8.jpg','北方穿围巾',0,NULL,1509505113055,NULL),
(1431,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12m8923rj209g09jmxq.jpg','平家蟹出没注意（ I WANT TO BECOME A CRAB）',0,NULL,1509505113055,NULL),
(1432,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12mek857j20k00k0dgk.jpg','我们辛辛苦苦的在这保家卫国，你倒好还在这斗图',0,NULL,1509505113055,NULL),
(1433,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6ru6x9g208c08cjrt.gif','表示很无语',0,NULL,1509505113055,NULL),
(1434,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpvdokvj205i046jr8.jpg','中指（熊猫人）',0,NULL,1509505113055,NULL),
(1435,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7ericfg208w08mnft.gif','晦想来',0,NULL,1509505113055,NULL),
(1436,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12maqkqmj208c08c3zm.jpg','以前我的生活就是工作,以后我的工作就是生活',0,NULL,1509505113055,NULL),
(1437,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7hbacoj20go0goq3n.jpg','嘻嘻,嘻嘻',0,NULL,1509505113055,NULL),
(1438,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nv7xgcg207f07fmxe.gif','工资多少',0,NULL,1509505113055,NULL),
(1439,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7jj07kj206o06ogme.jpg','我能去你的头上抓羊吗?',0,NULL,1509505113055,NULL),
(1440,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nk606dj204v07sq2w.jpg','傲娇胖虎',0,NULL,1509505113055,NULL),
(1441,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpbt5lxg208c08cmx0.gif','万能懵逼公式',0,NULL,1509505113055,NULL),
(1442,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpa36sbj20dp09nmxm.jpg','给您烧香了',0,NULL,1509505113055,NULL),
(1443,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12luu6mdj201y028dfm.jpg','不能分析',0,NULL,1509505113055,NULL),
(1444,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12no1e0pj209j0c5wes.jpg','新来的，给你棒棒糖',0,NULL,1509505113055,NULL),
(1445,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k60p6p3j208k09wq33.jpg','说的这么吊吃坨屎我看看',0,NULL,1509505113055,NULL),
(1446,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k62a557j206o06gjrb.jpg','男人只会打飞机',0,NULL,1509505113055,NULL),
(1447,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12mnktyzj208w08wmyp.jpg','中秋节快乐,掰开有蛋黄把（月饼）',0,NULL,1509505113055,NULL),
(1448,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7p02vej20g40fe0u2.jpg','WE的比赛还用看?醒来之后又是一场胜利',0,NULL,1509505115606,1509505115934),
(1449,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7r1sfsj20b40cijs3.jpg','既会打o炮，也会打飞机',0,NULL,1509505115606,1509505115934),
(1450,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl0k7u2qsgj20910hwdh3.jpg','耶，广州见！',0,NULL,1509505115606,1509505115934),
(1451,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7xf2z8j20b50c0tae.jpg','广州的大龙',0,NULL,1509505115606,1509505115934),
(1452,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k810xspj204c04k0st.jpg','天降正义！',0,NULL,1509505115606,1509505115934),
(1453,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpa36sbj20dp09nmxm.jpg','给您烧香了',0,NULL,1509506530605,NULL),
(1454,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6tkneuj205i02n3yd.jpg','性暗示?',0,NULL,1509506530605,NULL),
(1455,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6bcrfxj20680admxb.jpg','进群前的我进群后的我',0,NULL,1509506530605,NULL),
(1456,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12m35l3zj20e80e8jrv.jpg','这个世界需要更多英雄佳（狗狗猎空）',0,NULL,1509506530605,NULL),
(1457,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ne0rjbg2064064e13.gif','绝交一分钟',0,NULL,1509506530605,NULL),
(1458,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jphai9vj20m00e1t9n.jpg','曹操三连',0,NULL,1509506530605,NULL),
(1459,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12lx7y2yj2088092jrr.jpg','美女需要拥抱+舌吻吗限时套餐',0,NULL,1509506530605,NULL),
(1460,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nrjxhbg208c068dfz.gif','朕只是微服私访,体查民情而已',0,NULL,1509506530605,NULL),
(1461,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpvdokvj205i046jr8.jpg','中指（熊猫人）',0,NULL,1509506530605,NULL),
(1462,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl1276h7kbj204g047mx8.jpg','北方穿围巾',0,NULL,1509506530605,NULL),
(1463,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpkk3t4j203l049jrf.jpg','熊猫人做椅子上',0,NULL,1509506530605,NULL),
(1464,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k69jw8kj20qo0f0gmo.jpg','蕉傲自满',0,NULL,1509506530605,NULL),
(1465,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6eavy4j20go0gojt4.jpg','要亲亲',0,NULL,1509506530605,NULL),
(1466,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7lfnqaj204t0di3yq.jpg','过来给我装下逼，不然抽死你。',0,NULL,1509506530605,NULL),
(1467,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6ru6x9g208c08cjrt.gif','表示很无语',0,NULL,1509506530605,NULL),
(1468,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mquyejj205m052t8n.jpg','臣服于女人吧',0,NULL,1509506530605,NULL),
(1469,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7ericfg208w08mnft.gif','晦想来',0,NULL,1509506530605,NULL),
(1470,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6h9fc9g208c08cq3i.gif','听说你喜欢我?',0,NULL,1509506530605,NULL),
(1471,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6pagitj208c08cq34.jpg','我单身是因为大家都以为我有对象',0,NULL,1509506530605,NULL),
(1472,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k60p6p3j208k09wq33.jpg','说的这么吊吃坨屎我看看',0,NULL,1509506530605,NULL),
(1473,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7jj07kj206o06ogme.jpg','我能去你的头上抓羊吗?',0,NULL,1509506530605,NULL),
(1474,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6vi9q8j208c08cglm.jpg','我是有脾气的',0,NULL,1509506530605,NULL),
(1475,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12no1e0pj209j0c5wes.jpg','新来的，给你棒棒糖',0,NULL,1509506530605,NULL),
(1476,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12lzkacjg208c08caas.gif','你不配合我，只能亲自动手了',0,NULL,1509506530605,NULL),
(1477,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nyjbgfj205d051weq.jpg','闭上你的肛门谢谢',0,NULL,1509506530605,NULL),
(1478,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12mek857j20k00k0dgk.jpg','我们辛辛苦苦的在这保家卫国，你倒好还在这斗图',0,NULL,1509506530605,NULL),
(1479,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nh3bogj20200203ya.jpg','呵,逆子',0,NULL,1509506530605,NULL),
(1480,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpeua5hj202m03hdfm.jpg','妹子抱腿',0,NULL,1509506530605,NULL),
(1481,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nikr1lj204p04eweb.jpg','我怕狗,你别过来!',0,NULL,1509506530605,NULL),
(1482,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nwooqrj205i02xgle.jpg','在借里等你',0,NULL,1509506530605,NULL),
(1483,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jprbzp1j201z01za9t.jpg','黑色马赛克',0,NULL,1509506530605,NULL),
(1484,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jppve35g207y05mwf4.gif','RNG！RNG！',0,NULL,1509506530605,NULL),
(1485,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpnx138j20c805ht8y.jpg','优雅三连',0,NULL,1509506530605,NULL),
(1486,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mg0b95j202c02ojr5.jpg','大.&there4;大佬',0,NULL,1509506530605,NULL),
(1487,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nv7xgcg207f07fmxe.gif','工资多少',0,NULL,1509506530605,NULL),
(1488,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6lto3mj205g05iq30.jpg','没位置了',0,NULL,1509506530605,NULL),
(1489,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ltalbbj20qo0nywfl.jpg','妹子来局农药?',0,NULL,1509506530605,NULL),
(1490,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7hbacoj20go0goq3n.jpg','嘻嘻,嘻嘻',0,NULL,1509506530605,NULL),
(1491,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpdc46zj201u01xt8h.jpg','抱腿',0,NULL,1509506530605,NULL),
(1492,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12mjyscvj20qo0lidgs.jpg','哈哈哈哈',0,NULL,1509506530605,NULL),
(1493,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12m8923rj209g09jmxq.jpg','平家蟹出没注意（ I WANT TO BECOME A CRAB）',0,NULL,1509506530605,NULL),
(1494,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12mp6b5uj206o06omx3.jpg','We输了',0,NULL,1509506530605,NULL),
(1495,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12nfnfjij205i049glg.jpg','靓妹,加QQ?',0,NULL,1509506530605,NULL),
(1496,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12mhi5ozj202s02q743.jpg','又来了又来了',0,NULL,1509506530605,NULL),
(1497,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12m676enj208c08cq4k.jpg','你丑,没关系',0,NULL,1509506530605,NULL),
(1498,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12nt51rxj203003ct8j.jpg','小声逼逼',0,NULL,1509506530605,NULL),
(1499,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12nm35k2j207907aaa7.jpg','我去买一些金拱门，你就待在肯德基不要走动',0,NULL,1509506530605,NULL),
(1500,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6nir41j205m06r3yf.jpg','很强兄弟',0,NULL,1509506530605,NULL),
(1501,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6k96txg2073073wep.gif','我错了,别这样嘛',0,NULL,1509506530605,NULL),
(1502,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12nk606dj204v07sq2w.jpg','傲娇胖虎',0,NULL,1509506530605,NULL),
(1503,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpbt5lxg208c08cmx0.gif','万能懵逼公式',0,NULL,1509506530605,NULL),
(1504,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl126y9vnhj201i01owe9.jpg','打死你丫的！',0,NULL,1509506530605,NULL),
(1505,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jplze2oj202m02m3ya.jpg','小白鸭',0,NULL,1509506530605,NULL),
(1506,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k64xtdcj208c08cq4h.jpg','你会喜欢我吗？不会我教你呀',0,NULL,1509506530605,NULL),
(1507,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12luu6mdj201y028dfm.jpg','不能分析',0,NULL,1509506530605,NULL),
(1508,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k66qyvdj202v02v3yj.jpg','有意思',0,NULL,1509506530605,NULL),
(1509,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12mcczdjj203c03c747.jpg','空手而归啊',0,NULL,1509506530605,NULL),
(1510,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12maqkqmj208c08c3zm.jpg','以前我的生活就是工作,以后我的工作就是生活',0,NULL,1509506530605,NULL),
(1511,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12nprus7j205i02xt8p.jpg','我们不一样，不一样',0,NULL,1509506530605,NULL),
(1512,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k62a557j206o06gjrb.jpg','男人只会打飞机',0,NULL,1509506530605,NULL),
(1513,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12m10q3lj201z027jr5.jpg','好感+300',0,NULL,1509506530605,NULL),
(1514,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12mnktyzj208w08wmyp.jpg','中秋节快乐,掰开有蛋黄把（月饼）',0,NULL,1509506530605,NULL),
(1515,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7p02vej20g40fe0u2.jpg','WE的比赛还用看?醒来之后又是一场胜利',0,NULL,1509506532862,1509506533174),
(1516,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7r1sfsj20b40cijs3.jpg','既会打o炮，也会打飞机',0,NULL,1509506532862,1509506533174),
(1517,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl0k7u2qsgj20910hwdh3.jpg','耶，广州见！',0,NULL,1509506532862,1509506533174),
(1518,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7xf2z8j20b50c0tae.jpg','广州的大龙',0,NULL,1509506532862,1509506533174),
(1519,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k810xspj204c04k0st.jpg','天降正义！',0,NULL,1509506532862,1509506533174),
(1520,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz4pc584j20k00adweq.jpg','大傻专属饮料',0,NULL,1510716685932,NULL),
(1521,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzidx1i0j2064061dft.jpg','你根本不是司机!',0,NULL,1510716685932,NULL),
(1522,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzifne2bj2073073gm2.jpg','能耐了啊，连自己老公都认不出来了',0,NULL,1510716685932,NULL),
(1523,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhziiq23sj204g0490sl.jpg','我就纳闷了，你们不吃鸡吗',0,NULL,1510716685932,NULL),
(1524,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzhzbns8j205i05ijr8.jpg','女人都是骗子,全都想骗我们男人的大吊玩！',0,NULL,1510716685932,NULL),
(1525,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzike6egg206o06omxl.gif','这里没脸',0,NULL,1510716685932,NULL),
(1526,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzhw75ygj20k00k3jsi.jpg','快叫我主人!',0,NULL,1510716685932,NULL),
(1527,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzgz11x3j20go0gcab5.jpg','不要做无法实现的梦,知道吗?',0,NULL,1510716685932,NULL),
(1528,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzpas1keg208c08cdgc.gif','可悲的男人饥渴的跟狗似的',0,NULL,1510716685932,NULL),
(1529,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhzh0mn1ej205h04bq31.jpg','不憧不懂我百度一下',0,NULL,1510716685932,NULL),
(1530,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzom8y5fj20dw0dwt9h.jpg','乌拉乌拉',0,NULL,1510716685932,NULL),
(1531,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhzhxst2vj205604y0sq.jpg','姐姐是好人,你有好胸,好事做到底,让我摸一下,就一下',0,NULL,1510716685932,NULL),
(1532,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzh2897fj202s039t8u.jpg','老阿姨不要装嫩可以吗？好恶心',0,NULL,1510716685932,NULL),
(1533,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzhitr2sj208c08c74z.jpg','可以这阴吹丝挺',0,NULL,1510716685932,NULL),
(1534,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzh5rvc7g208a08cab3.gif','一个人买醉尝试放纵的滋味',0,NULL,1510716685932,NULL),
(1535,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzimf804j20cc06y0tt.jpg','作业作你妹（熊猫人）',0,NULL,1510716685932,NULL),
(1536,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz4np5dmj20a60a50t0.jpg','谁能告诉劳资,这是什么情况!99+',0,NULL,1510716685932,NULL),
(1537,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhzgt3slmg208c08cgls.gif','心疼得抱紧我的小可爱',0,NULL,1510716685932,NULL),
(1538,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzoamib1j2046046dfx.jpg','傻了吧我的妹',0,NULL,1510716685932,NULL),
(1539,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzp0ii4dj20c80c8gm0.jpg','我什么场面没见过',0,NULL,1510716685932,NULL),
(1540,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz4juc7ej202u02r3ym.jpg','快乐',0,NULL,1510716685932,NULL),
(1541,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzgwicw4j20hs0hst9i.jpg','天呐只有四小时了',0,NULL,1510716685932,NULL),
(1542,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhzhgziz6j20k40cyjsb.jpg','达成共识',0,NULL,1510716685932,NULL),
(1543,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzgul8okg206d05kq2u.gif','向大佬低头',0,NULL,1510716685932,NULL),
(1544,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz4grqmrg208c08c0tt.gif','边吃瓜边看你们吹牛逼',0,NULL,1510716685932,NULL),
(1545,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzhm6xdhg208c08cdfx.gif','什么?吃饭吗?吃啥呀?',0,NULL,1510716685932,NULL),
(1546,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzhs8a1mg208c08cq3k.gif','蓝拳警告',0,NULL,1510716685932,NULL),
(1547,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz4sbptxj202e01ta9u.jpg','左右开揉',0,NULL,1510716685932,NULL),
(1548,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzgrgdlhj215o12gabp.jpg','好',0,NULL,1510716685932,NULL),
(1549,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhziqdzkrj20ku0kudgp.jpg','丢人。',0,NULL,1510716685932,NULL),
(1550,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzpfx4tnj208c08cjsl.jpg','老子先忍你一图',0,NULL,1510716685932,NULL),
(1551,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhzh8uh3nj20b00axq34.jpg','笑里藏door',0,NULL,1510716685932,NULL),
(1552,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzoypmv2j20hs0h8gxb.jpg','死宅男就是爱bb',0,NULL,1510716685932,NULL),
(1553,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzi55tocj208c08caa9.jpg','吓得我都吐出彩虹了',0,NULL,1510716685932,NULL),
(1554,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzhf1yxtj2061077q36.jpg','噫呜呜噫',0,NULL,1510716685932,NULL),
(1555,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhzo90odqj206o06ot8j.jpg','丑拒',0,NULL,1510716685932,NULL),
(1556,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz4qul06j209205tmx5.jpg','大量回收av，大量回收av，你有av我有价，诚信经营，骗子死全家',0,NULL,1510716685932,NULL),
(1557,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzohqo08j20hs0hsh0i.jpg','哼，你看你那狗样',0,NULL,1510716685932,NULL),
(1558,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzhby4b7j205i05ia9w.jpg','滚啊',0,NULL,1510716685932,NULL),
(1559,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzo60hbrj205s06ydfw.jpg','连麦嘛,我是少女音',0,NULL,1510716685932,NULL),
(1560,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzhoc9d8j20k00mzwfr.jpg','小伙子, 装逼不要太屌,要给自己留条后路, 不然明天不知道怎么屎',0,NULL,1510716685932,NULL),
(1561,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzh78xr2j201r01s0pk.jpg','马德碧',0,NULL,1510716685932,NULL),
(1562,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzi3ir99j208c08cabd.jpg','我不管,我就是要斗图',0,NULL,1510716685932,NULL),
(1563,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzojq5ssj20dw0dw759.jpg','不知死活的东西',0,NULL,1510716685932,NULL),
(1564,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhziaxblsj208c08ct9x.jpg','莫名其妙地开始吃狗粮。',0,NULL,1510716685932,NULL),
(1565,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhznys0cgj20hs09zt9x.jpg','暗中观察（皮卡丘）',0,NULL,1510716685932,NULL),
(1566,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzh3tfxtj205c05cdfx.jpg','老实人的笑容',0,NULL,1510716685932,NULL),
(1567,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzhtx510j203m044weq.jpg','哎呦，卧槽厉害了',0,NULL,1510716685932,NULL),
(1568,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzhdf118j205u046747.jpg','再您妈的见王八羔子',0,NULL,1510716685932,NULL),
(1569,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzpjpyalj20hs0hsgrm.jpg','此时我不得不说一句妈卖批来稳定局势了',0,NULL,1510716685932,NULL),
(1570,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhzicdhlcj201y01yzk1.jpg','老子可是小魔仙！',0,NULL,1510716685932,NULL),
(1571,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzo0e0apj208c08c0sv.jpg','这傻逼在干什么???',0,NULL,1510716685932,NULL),
(1572,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzioe7z2j207e07eaaw.jpg','本羊宝笑全扬',0,NULL,1510716685932,NULL),
(1573,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzosoxapj20hs0h815w.jpg','忘你故意刁难我',0,NULL,1510716685932,NULL),
(1574,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhzi8ld4vj20g40g4wf9.jpg','我现在已经能 carry了，你可不可以回来辅助我',0,NULL,1510716685932,NULL),
(1575,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhzp90qbkj208c08c0tp.jpg','帅的好孤独啊',0,NULL,1510716685932,NULL),
(1576,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz4i9frmj203i01wq2p.jpg','你有病啊',0,NULL,1510716685932,NULL),
(1577,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz4e8399j201o01o3ya.jpg','呸,渣男',0,NULL,1510716685932,NULL),
(1578,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzi6r9nnj204b03lq30.jpg','你人一定要这么飘吗',0,NULL,1510716685932,NULL),
(1579,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzp6ote4j20hs0fa0yq.jpg','黑木耳绝对是黑木耳',0,NULL,1510716685932,NULL),
(1580,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzhahfm7g208c08ct8t.gif','你对我这么凶，排位是会掉星星的',0,NULL,1510716685932,NULL),
(1581,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzhq4ggdg20b40b43yl.gif','跳楼先把钱留下',0,NULL,1510716685932,NULL),
(1582,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhzpcu1atg206o06ogmi.gif','盒屎啦你',0,NULL,1510716685932,NULL),
(1583,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzhkly3bj20eb0dbwew.jpg','泥怎么撒fufu的',0,NULL,1510716685932,NULL),
(1584,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzp2tx5vj20go0gojse.jpg','我掐你奶子信不!',0,NULL,1510716685932,NULL),
(1585,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhzo7inwoj205k03cweb.jpg','你不要给我搞事',0,NULL,1510716685932,NULL),
(1586,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhzi1edn2j209f09ht9j.jpg','喵，內心膏无波动，甚至还有些想',0,NULL,1510716685932,NULL),
(1587,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhzih8sxrj206o06o0sr.jpg','你看不到我（佩奇）',0,NULL,1510716685932,NULL),
(1588,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz43kbhsj204g049glr.jpg','怎么了我又怎么你了',0,NULL,1510716685932,NULL),
(1589,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhvs0g3aaj205005iaac.jpg','我真想用我的大肉棒堵住你的狗嘴',0,NULL,1510716685932,NULL),
(1590,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz3vcm6sg208c08cq3w.gif','大惊失色',0,NULL,1510716685932,NULL),
(1591,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz3of5lzj202r02p74h.jpg','气出心脏病',0,NULL,1510716685932,NULL),
(1592,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz46vhhjj205405k0sp.jpg','精神病人思路广，弱智儿童欢乐多',0,NULL,1510716685932,NULL),
(1593,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz4a8g8xj20ei0e53yr.jpg','那个谁给老子倒杯茶来',0,NULL,1510716685932,NULL),
(1594,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhw31wi06j20qo0o3juq.jpg','TOTAL DEFEAT',0,NULL,1510716685932,NULL),
(1595,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz62tqy8j203c03ca9w.jpg','好好好真是怕了狗了',0,NULL,1510716685932,NULL),
(1596,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz5ok9whj2059054dfp.jpg','屁眼免费无套任玩',0,NULL,1510716685932,NULL),
(1597,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz5u4bxej205t05jdgh.jpg','我就是18年前强好你妈的蒙面杀手，我就是你失散多年的爹爹',0,NULL,1510716685932,NULL),
(1598,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz54my28j204g04cdg2.jpg','管理员,我要吃茶叶蛋!要龙井泡的凤凰蛋,剥壳!',0,NULL,1510716685932,NULL),
(1599,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz59pfxqg208c08cmx7.gif','不行,楼上成了冷场王我得救他',0,NULL,1510716685932,NULL),
(1600,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz45btf0g208c08cglt.gif','你居然对宝宝这么凶!',0,NULL,1510716685932,NULL),
(1601,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz531d9uj203h02rmwz.jpg','桥斗麻袋（金馆长）',0,NULL,1510716685932,NULL),
(1602,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz5s9bhfj208c08caaj.jpg','然后呢？你想表达什么思想感情?',0,NULL,1510716685932,NULL),
(1603,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz64m7gbj20am08cq37.jpg','你他妈倒是上个图啊',0,NULL,1510716685932,NULL),
(1604,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz3aaur1j204j05iq33.jpg','我这人比较直,看到想操的人就直授艾特(不管男女)',0,NULL,1510716685932,NULL),
(1605,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhvs2358dg202a06ywem.gif','生死大仇',0,NULL,1510716685932,NULL),
(1606,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz3yoh2uj208c07mwee.jpg','还好我接受得了',0,NULL,1510716685932,NULL),
(1607,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhskfao9cg205i03igmf.gif','不闪瞎你不知道我是你爹',0,NULL,1510716685932,NULL),
(1608,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhvsgjjksj205s04wjr9.jpg','再几把鬼叫上了你',0,NULL,1510716685932,NULL),
(1609,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz3wsgfaj203c02t3yb.jpg','我恨',0,NULL,1510716685932,NULL),
(1610,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz51i9t0j205i05amwz.jpg','转发这只李云龙，你准他娘的能恋爱',0,NULL,1510716685932,NULL),
(1611,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz5zjztyj205804ojrj.jpg','打你哦!',0,NULL,1510716685932,NULL),
(1612,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz66e6r4j20c80evaai.jpg','我不在线时你要好好保护自己我爱你',0,NULL,1510716685932,NULL),
(1613,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhyfacm66j203c02wmwz.jpg','挠痒痒！',0,NULL,1510716685932,NULL),
(1614,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhw33gwc2g2014014zk1.gif','小黄戴红星帽',0,NULL,1510716685932,NULL),
(1615,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz40gz51g208c08cq34.gif','老子要是再网购就剁手',0,NULL,1510716685932,NULL),
(1616,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz56boz8j205405i0sz.jpg','老子开水烫JB,你行吗?',0,NULL,1510716685932,NULL),
(1617,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz5ifsulj205i04udfx.jpg','全群人看你演戏',0,NULL,1510716685932,NULL),
(1618,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz3km1vyj205h05omx5.jpg','我想要1亿',0,NULL,1510716685932,NULL),
(1619,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz501dpyj209q07f0sx.jpg','惊讶',0,NULL,1510716685932,NULL),
(1620,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz4waobxj207o06yq2z.jpg','平底锅警告（吃鸡）',0,NULL,1510716685932,NULL),
(1621,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz5qhhyxj20e40bo0tb.jpg','总有一些男的扮成女的，女的扮成男的,真是人心险恶啊',0,NULL,1510716685932,NULL),
(1622,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz681sqcj20at0bs3yp.jpg','向黑恶势力低头',0,NULL,1510716685932,NULL),
(1623,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhsl5qpkgj20ei0ivwfn.jpg','跟管理员玩游戏',0,NULL,1510716685932,NULL),
(1624,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz5gu4y6j205g050t9l.jpg','结果我听到了你啊~哦~嗯的声音,你说你扭到脚了',0,NULL,1510716685932,NULL),
(1625,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz5n55qoj202001z741.jpg','有意见?',0,NULL,1510716685932,NULL),
(1626,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz5ex3i9j205i04qq37.jpg','大&hellip;大哥霍皮久',0,NULL,1510716685932,NULL),
(1627,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz3mqp8dg208c08cq35.gif','咱们一起嘿嘿嘿',0,NULL,1510716685932,NULL),
(1628,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz69ojzkj20dw097aac.jpg','放弃我，我是你高攀不起的狗婊柱',0,NULL,1510716685932,NULL),
(1629,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz3izrkgj205z06ojrb.jpg','这孩子&hellip;或许能拯救大日本皇军',0,NULL,1510716685932,NULL),
(1630,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz5vljyej204x05it8k.jpg','288元一次哦~老板大人',0,NULL,1510716685932,NULL),
(1631,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz48laomj20h40b6q3e.jpg','请楼上喝茶',0,NULL,1510716685932,NULL),
(1632,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz583mt9g204805i0t4.gif','起床援交啦。',0,NULL,1510716685932,NULL),
(1633,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz5bmw5jj20j20gcdgn.jpg','Nice!兄dei!',0,NULL,1510716685932,NULL),
(1634,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz5jwkmgg206o06oglj.gif','砍你呦',0,NULL,1510716685932,NULL),
(1635,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhskddn28j202s02sglf.jpg','一个人写作业（金馆长伤心）',0,NULL,1510716685932,NULL),
(1636,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz5d8zjwj209x0aijri.jpg','各位老板648&mdash;次',0,NULL,1510716685932,NULL),
(1637,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhskh7s40g205i03imxx.gif','帅的人发的图都闪',0,NULL,1510716685932,NULL),
(1638,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz3ea6wrj20v90urmyn.jpg','昨晚我打电话给你你，口齿不清的说在吃鸡，可是你 steam根本没在线',0,NULL,1510716685932,NULL),
(1639,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhsl3hijng20hs0hpu0x.gif','坏坏乐器集合版',0,NULL,1510716685932,NULL),
(1640,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgna3hb76j20hs0hi46z.jpg','卧槽，流鼻血、流鼻涕',0,NULL,1510716685932,NULL),
(1641,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz4y9p9jj205g05i74e.jpg','杀马特火星文',0,NULL,1510716685932,NULL),
(1642,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz3tg9h8g206o06oglx.gif','你别是个傻子吧',0,NULL,1510716685932,NULL),
(1643,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz4cqlxtj208w08emx7.jpg','我给半夜你打电话,你喘着气说你在跑步,旁边还有个男人说他要冲刺了',0,NULL,1510716685932,NULL),
(1644,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz5lqhe8g208c062gma.gif','呵呵',0,NULL,1510716685932,NULL),
(1645,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhvrwow3fj208w08w0u9.jpg','连泡椒鸡爪都愤怒的向你竖起了中指',0,NULL,1510716685932,NULL),
(1646,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz3ghs7uj202e01saa1.jpg','掐你奶子',0,NULL,1510716685932,NULL),
(1647,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz4uqfoij20c70c20sy.jpg','今天光棍节,我不太会说什么祝福的话,我在这里祝各位兄弟，年年有今日,岁岁有今朝!',0,NULL,1510716685932,NULL),
(1648,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz5xxg62j20ei0gu3z7.jpg','兄弟最后五个绷带别管我你先拿去用（QQ吃鸡）',0,NULL,1510716685932,NULL),
(1649,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhz3c5nw7g208c08cq3j.gif','呼啦啦,呼啦啦,呼啦呼啦累',0,NULL,1510716685932,NULL),
(1650,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhz61bokcj20cf0bugm3.jpg','我想要1个妹子',0,NULL,1510716685932,NULL),
(1651,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flhvs3s8jhj208c07mwes.jpg','幻你麻痹，屁股都在外面',0,NULL,1510716685932,NULL),
(1652,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhvsi1to7j209w07ddfq.jpg','英语科代表算个屁,我是你爹',0,NULL,1510716685932,NULL),
(1653,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flhz3rqv4dj205i050dfq.jpg','看见你超他妈烦',0,NULL,1510716685932,NULL),
(1654,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flhvryndbvg208c08cab4.gif','你要对我做什么?',0,NULL,1510716685932,NULL),
(1655,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flhz41xonuj205e05iglg.jpg','请退群',0,NULL,1510716685932,NULL),
(1656,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgqhab2abj205k046jrv.jpg','NMB 六个6！',0,NULL,1510716685932,NULL),
(1657,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgqst6oy2g203c03iq3i.gif','坏坏手风琴',0,NULL,1510716685932,NULL),
(1658,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgred1up3j205k026jre.jpg','你是我见过最可爱的宝宝',0,NULL,1510716685932,NULL),
(1659,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgqsj5alig203c02xwef.gif','坏坏吹笛子',0,NULL,1510716685932,NULL),
(1660,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrfytafrj2082082jsn.jpg','嘿,你的插件',0,NULL,1510716685932,NULL),
(1661,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgqh44yj8g202i02ia9x.gif','小新跳舞',0,NULL,1510716685932,NULL),
(1662,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgqspmvh4g203203fq2v.gif','坏坏琵琶',0,NULL,1510716685932,NULL),
(1663,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgqhdjiarg206206jq4s.gif','我操（唐僧）',0,NULL,1510716685932,NULL),
(1664,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrfwpoh1j206o06o75e.jpg','少他妈跟我来这套',0,NULL,1510716685932,NULL),
(1665,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgqsuv7ixg203c03b0t4.gif','坏坏贝斯',0,NULL,1510716685932,NULL),
(1666,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgren41wug2046046jra.gif','我劝你还是跟我学广播体操吧',0,NULL,1510716685932,NULL),
(1667,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgqs17e2mj20fr0hcq5i.jpg','年轻人，这就是力量的源泉！',0,NULL,1510716685932,NULL),
(1668,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgqrwhjh1g206o06oact.gif','蘑菇头跑步机',0,NULL,1510716685932,NULL),
(1669,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrfiib82j205k05k3yn.jpg','得罪！',0,NULL,1510716685932,NULL),
(1670,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrfpqq8ng208c08c0sv.gif','多吃两坨（吃屎）',0,NULL,1510716685932,NULL),
(1671,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrexulzrj205o070gll.jpg','妈的又是你 again are you fuck',0,NULL,1510716685932,NULL),
(1672,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgr3jrugog206n0333z8.gif','活该！',0,NULL,1510716685932,NULL),
(1673,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgqh8iqn6j209t0e8jrk.jpg','小狗狗直视你',0,NULL,1510716685932,NULL),
(1674,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgqskodvqg203c02yq2x.gif','坏坏葫芦丝',0,NULL,1510716685932,NULL),
(1675,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrf2sa5gj202602pjrd.jpg','投降，我投降',0,NULL,1510716685932,NULL),
(1676,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrffbzgyj205k05k0tg.jpg','你做梦告诉你，不可能',0,NULL,1510716685932,NULL),
(1677,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgqh6wi1xg209q09qact.gif','嘿嘿嘿嘿（羞羞事）',0,NULL,1510716685932,NULL),
(1678,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgr3pbnkfg208c058dg3.gif','来打我啊',0,NULL,1510716685932,NULL),
(1679,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgqscdernj20hs0hsdll.jpg','怎么要打架吗？',0,NULL,1510716685932,NULL),
(1680,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrg50onoj20c60e80v2.jpg','死开啦，死番薯仔,正扑街打靶屎狒鬼',0,NULL,1510716685932,NULL),
(1681,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgqso45bog203c038t8m.gif','坏坏弹吉他',0,NULL,1510716685932,NULL),
(1682,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrfsszu8j2064064q2y.jpg','竟然让我滚',0,NULL,1510716685932,NULL),
(1683,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgqsyiub3j20al0a0q3s.jpg','吧唧吧唧吧唧吧唧',0,NULL,1510716685932,NULL),
(1684,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrfgw8jkj205i05i0sq.jpg','死开啦死番薯仔, 正扑街打靶屎狒鬼',0,NULL,1510716685932,NULL),
(1685,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrfdhpp6j20c808pt93.jpg','老子顺着网线来打你了',0,NULL,1510716685932,NULL),
(1686,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgqsh9xhjg203c03cgls.gif','弹古筝',0,NULL,1510716685932,NULL),
(1687,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrfa41fnj20hs0hsq9i.jpg','这游戏这么毒, 怎么不毒死你!',0,NULL,1510716685932,NULL),
(1688,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrfk3ir5g205i05imxa.gif','煞笔滚一边玩蛋去吧。',0,NULL,1510716685932,NULL),
(1689,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgr3u31g4j201t01egld.jpg','这又能怎么办呢',0,NULL,1510716685932,NULL),
(1690,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgr3sjebgj209k07qdk4.jpg','6666（黄瓜）',0,NULL,1510716685932,NULL),
(1691,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrehym6ag206s07f0t5.gif','真是骚死了',0,NULL,1510716685932,NULL),
(1692,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgreg7ksjj209506gq2s.jpg','好污',0,NULL,1510716685932,NULL),
(1693,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrf5zrtdg206o06oq2x.gif','剁手',0,NULL,1510716685932,NULL),
(1694,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgreeo1mwg2032030q2v.gif','来啊打我呀',0,NULL,1510716685932,NULL),
(1695,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrelku87j20jg0jgglv.jpg','你打我',0,NULL,1510716685932,NULL),
(1696,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgqs3g750g208c08c0uk.gif','怕你啊5个1',0,NULL,1510716685932,NULL),
(1697,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrf174d5j205k05k0t3.jpg','艹闪亮登场',0,NULL,1510716685932,NULL),
(1698,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgqsrewitg204g048q3c.gif','小可爱打鼓',0,NULL,1510716685932,NULL),
(1699,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrezhyk8j205505iq35.jpg','就你有嘴天叭叭叭的',0,NULL,1510716685932,NULL),
(1700,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrfm9qw3j206o06oabl.jpg','怎么了? 我胖虎说的有毛病吗？',0,NULL,1510716685932,NULL),
(1701,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgqt0bpt2j20a00hsq3h.jpg','卧槽6666',0,NULL,1510716685932,NULL),
(1702,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrewadfwj209z09z0tl.jpg','吃老子一记嘤嘤拳',0,NULL,1510716685932,NULL),
(1703,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrf4d7qdg204t04m74f.gif','马上给我道歉',0,NULL,1510716685932,NULL),
(1704,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgqswke2wg203c03u3ym.gif','弹琴',0,NULL,1510716685932,NULL),
(1705,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgnafeb4eg206o06onin.gif','否认三连',0,NULL,1510716685932,NULL),
(1706,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrfunw62j20e80d0mxl.jpg','滚你麻痹滚你有什么zi格让我滚?',0,NULL,1510716685932,NULL),
(1707,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgqsfn16lg205003vdft.gif','坏坏指挥家',0,NULL,1510716685932,NULL),
(1708,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrfbqecvg204g04cdfx.gif','我头上是不是有什么东西？（绿帽）',0,NULL,1510716685932,NULL),
(1709,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgna59cinj205i04ujrt.jpg','？？！！！',0,NULL,1510716685932,NULL),
(1710,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgr3nmoc7g205k05kwf9.gif','揉脸',0,NULL,1510716685932,NULL),
(1711,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrebh3oqj20b409nt8t.jpg','你能亲我一口吗哪怕不伸舌头',0,NULL,1510716685932,NULL),
(1712,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgqs8k9ejg20qo0qodp5.gif','摸屁股（爽爽的）',0,NULL,1510716685932,NULL),
(1713,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgr3hu9o0g202s023mxd.gif','我走了',0,NULL,1510716685932,NULL),
(1714,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgqse29tkg203802udg6.gif','小猫睡着了',0,NULL,1510716685932,NULL),
(1715,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrfr9wjlj205i04omx1.jpg','骚话嘴边讲，B数心里藏',0,NULL,1510716685932,NULL),
(1716,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrejt1wqj20e80e874r.jpg','这么牛逼有种编辑5发送10699999给我看看',0,NULL,1510716685932,NULL),
(1717,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgqsmk4x8g205003vt9g.gif','坏坏敲鼓',0,NULL,1510716685932,NULL),
(1718,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgqry7cnqg20c808w3ys.gif','截图选小吃',0,NULL,1510716685932,NULL),
(1719,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgreqrz7bj205i05iaan.jpg','大哥炒菜不',0,NULL,1510716685932,NULL),
(1720,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgreozehwj205i05it99.jpg','大哥要亮不',0,NULL,1510716685932,NULL),
(1721,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrfnz8s4j20cy0d5wer.jpg','打,打他妈的',0,NULL,1510716685932,NULL),
(1722,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgreucjm6g206o06oq83.gif','你说你想要逃偏偏，注定让我操套没了床塌了，再来一炮要不要？',0,NULL,1510716685932,NULL),
(1723,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgr3lqmbvg207h03rdgj.gif','不错！',0,NULL,1510716685932,NULL),
(1724,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrrzmzo1j20em0hs119.jpg','我不在线时你要好好保护自己我爱你。',0,NULL,1510716685932,NULL),
(1725,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrs1bs5rg205k05jaac.gif','今晚别出去跑步了好吗？我给你买了台跑步机',0,NULL,1510716685932,NULL),
(1726,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrr9c81dg205k05cwek.gif','Ni says fuck me 妮說形势严峻卜严峻',0,NULL,1510716685932,NULL),
(1727,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrv9g7rij20hs0hadrs.jpg','你说你妈个锤子',0,NULL,1510716685932,NULL),
(1728,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrt7o4t4j20af0afjrg.jpg','周冬雨眉头一皱，发现事情并不简单',0,NULL,1510716685932,NULL),
(1729,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrtfj1p9j205j05kmy3.jpg','只要钱到位啥事都好说',0,NULL,1510716685932,NULL),
(1730,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrghu3rpj20hs0ho140.jpg','当然不会!因为我没有良心',0,NULL,1510716685932,NULL),
(1731,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrtqz57vj20460400ta.jpg','你这个坏蛋',0,NULL,1510716685932,NULL),
(1732,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgru7gun0j20ep0hsgsa.jpg','方便加个微信吗',0,NULL,1510716685932,NULL),
(1733,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrs2yrahj206y06y3yn.jpg','爸爸真是哭笑不得',0,NULL,1510716685932,NULL),
(1734,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrs9j1kng206o06o3yg.gif',' rubbish !',0,NULL,1510716685932,NULL),
(1735,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrrb29jog206o06zaa6.gif','从此以后恩断义绝我不再是你的爸爸',0,NULL,1510716685932,NULL),
(1736,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrtndwgzj205a04maa1.jpg','都过来喝口敌敌畏暖暖胃!',0,NULL,1510716685932,NULL),
(1737,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrr2lthkj205l05lt9c.jpg','不看不看,王八下蛋',0,NULL,1510716685932,NULL),
(1738,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrg75ffrj20b40b4wg0.jpg','大家好我是伏地魔的爸爸',0,NULL,1510716685932,NULL),
(1739,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrsn1oy1g206o03jjto.gif','我们不一样!',0,NULL,1510716685932,NULL),
(1740,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrusuwlaj2054050q2w.jpg','新来的,过来完成入群仪式!',0,NULL,1510716685932,NULL),
(1741,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrrpxvyhg208c08cwm8.gif','肥肥无开心',0,NULL,1510716685932,NULL),
(1742,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrv3f6a7j204g0423yf.jpg','那你和我睡觉啊',0,NULL,1510716685932,NULL),
(1743,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrrle05lj203g046mxl.jpg','我不信,除非你亲我一下!',0,NULL,1510716685932,NULL),
(1744,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrumw3r7j20f50hsk1p.jpg','忘了我吧，去娶野鸡好好过',0,NULL,1510716685932,NULL),
(1745,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrs618igj204g02mt8k.jpg','杀你爸',0,NULL,1510716685932,NULL),
(1746,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrvb7kweg206o06oq38.gif','我这男神偏不!',0,NULL,1510716685932,NULL),
(1747,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgru3fiuvg208c08cgly.gif','对对说得对',0,NULL,1510716685932,NULL),
(1748,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgruau0bpj20hs0hsaet.jpg','你打算什么时候加我',0,NULL,1510716685932,NULL),
(1749,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrr62f8cj202c01wweg.jpg','你很皮',0,NULL,1510716685932,NULL),
(1750,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrurbbnpj20hs0hstfx.jpg','一夜八百，爱干干不干滚',0,NULL,1510716685932,NULL),
(1751,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgruv447yj20hs0hs407.jpg','日我日我',0,NULL,1510716685932,NULL),
(1752,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrskfup4g206o07saao.gif','老大叔走开好不好',0,NULL,1510716685932,NULL),
(1753,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrscomj3g206206bweo.gif','微信多少',0,NULL,1510716685932,NULL),
(1754,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrtimsaog204b05kgpf.gif','承让了，我的弟',0,NULL,1510716685932,NULL),
(1755,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrtluvj6j205k0250sq.jpg','绝交是哪种姿势?',0,NULL,1510716685932,NULL),
(1756,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrgby6vrj20hs0hs479.jpg','我一年没摸过妺子了',0,NULL,1510716685932,NULL),
(1757,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrsvkjihj20gj0hsjx1.jpg','我一点都不怕你这条狗',0,NULL,1510716685932,NULL),
(1758,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrrjnailj206o06owen.jpg','来,头春出哎!',0,NULL,1510716685932,NULL),
(1759,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgru02yjxg20am07bn9n.gif','收了你们这对狗男女',0,NULL,1510716685932,NULL),
(1760,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrr4i5tij206o06oaar.jpg','你很膨胀啊，逼崽子',0,NULL,1510716685932,NULL),
(1761,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrruxobcj204o054mxs.jpg','去户来咯',0,NULL,1510716685932,NULL),
(1762,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrt4fe0ag208c07lgn1.gif','重复一遍,小心你媳妇,祝你好运!over!',0,NULL,1510716685932,NULL),
(1763,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrt62oqng206o06oaa7.gif','让我来听听哪个猪精又点外卖',0,NULL,1510716685932,NULL),
(1764,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrsie8jtg208c08cglp.gif','有种来操我没种别叫',0,NULL,1510716685932,NULL),
(1765,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrs4hufcj205i05caa2.jpg','哪来的狗东西',0,NULL,1510716685932,NULL),
(1766,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgruwrntag206o06o74c.gif','赶紧去接客，别磨磨唧唧的',0,NULL,1510716685932,NULL),
(1767,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrsropvbj20hs0hcdo3.jpg','先忍你一手',0,NULL,1510716685932,NULL),
(1768,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgru1oqlcj205k01njre.jpg','你feel唔到讲一万句都系废噶啦',0,NULL,1510716685932,NULL),
(1769,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrr7qmhzj208c0790sr.jpg','哦,是吗',0,NULL,1510716685932,NULL),
(1770,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrsge9ayg206o06o0t8.gif','珪的一下就哭了',0,NULL,1510716685932,NULL),
(1771,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrtbt3s1j205k04agmh.jpg','用我们萧山话讲你就是个捏子',0,NULL,1510716685932,NULL),
(1772,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrrhy616j20g80hsqcf.jpg','天天奶子奶子奶子，去找头牛吸她奶子啊',0,NULL,1510716685932,NULL),
(1773,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrg2blatj208c08c0td.jpg','战马关公身上纹，掌声送给社会人',0,NULL,1510716685932,NULL),
(1774,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrt27zooj20e30hsn50.jpg','美（熊猫）',0,NULL,1510716685932,NULL),
(1775,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrsxa05yg206o06oq3a.gif','给大哥点上',0,NULL,1510716685932,NULL),
(1776,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrsem4dqg206o06omy5.gif','爱你哟',0,NULL,1510716685932,NULL),
(1777,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrrt3f6oj20h80hsn0t.jpg','傻的人心疼',0,NULL,1510716685932,NULL),
(1778,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrt9pg2tg208c08cwek.gif','吓得直发抖',0,NULL,1510716685932,NULL),
(1779,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrv1ve5fj20hs0h4af4.jpg','一个能熬的都没有',0,NULL,1510716685932,NULL),
(1780,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrtp7x8mj205k05kmxw.jpg','快说!你是猪',0,NULL,1510716685932,NULL),
(1781,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrg0iotig206o071wew.gif','上车带你去释放真我舍',0,NULL,1510716685932,NULL),
(1782,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgruh85v4j20hs0hlqf9.jpg','停,你别说了,不要让我太难过。',0,NULL,1510716685932,NULL),
(1783,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrtdjraaj204603odg3.jpg','在我世界你最好',0,NULL,1510716685932,NULL),
(1784,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgruydmp7g206o06tt8q.gif','真叫人奶大',0,NULL,1510716685932,NULL),
(1785,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrr0omh5j204g032gle.jpg','死平胸',0,NULL,1510716685932,NULL),
(1786,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrtk9sfhj204t02vaa4.jpg','我叫你气里直斜达',0,NULL,1510716685932,NULL),
(1787,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrs7nc6mj20hs0dcdg2.jpg','注意你的节操,要碎了',0,NULL,1510716685932,NULL),
(1788,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrgjfyecg206o06oaa3.gif','菜鸡,废物',0,NULL,1510716685932,NULL),
(1789,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrrcse2jg206o060glx.gif','撒泡尿照照自己好吗',0,NULL,1510716685932,NULL),
(1790,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrsb2l9vj205i058746.jpg','我他妈快吐了',0,NULL,1510716685932,NULL),
(1791,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrtti2wsj202s02st8q.jpg','绝望的限神',0,NULL,1510716685932,NULL),
(1792,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrwcuk6wg206505ua9z.gif','go to play ball guy玩蛋去基佬',0,NULL,1510716685932,NULL),
(1793,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgs9j7y8yj205k05kaak.jpg','不不可能的',0,NULL,1510716685932,NULL),
(1794,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrw377kdg208c08cdfz.gif','处对象吗？我持久满足你。',0,NULL,1510716685932,NULL),
(1795,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgs9ov8otg206x05vmy9.gif','别跑',0,NULL,1510716685932,NULL),
(1796,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrxq5nyug206o06o77h.gif','你很猖狂啊',0,NULL,1510716685932,NULL),
(1797,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrwgmvygg206o085ab8.gif','大佬请喝茶',0,NULL,1510716685932,NULL),
(1798,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgs9dlvpaj205a05fmy5.jpg','吃饭了吗',0,NULL,1510716685932,NULL),
(1799,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrxdi0svj20hs0hs45j.jpg','我买几个橘子去你就在此地,不要走动。',0,NULL,1510716685932,NULL),
(1800,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrwu7ning206o06ogm1.gif','你要是把我弄丢了，就再也找不到我了',0,NULL,1510716685932,NULL),
(1801,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgry77q0vj2072072t8o.jpg','呵，不服打我啊',0,NULL,1510716685932,NULL),
(1802,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrvczkklg208c08ct92.gif','我忍你很久了!!',0,NULL,1510716685932,NULL),
(1803,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrx995ohj20hs0ebq72.jpg','这位逼友你到底想表达啥??',0,NULL,1510716685932,NULL),
(1804,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrx624lwj203003cjr8.jpg','小声逼逼',0,NULL,1510716685932,NULL),
(1805,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrwm4qfeg206o06o74b.gif','现在不喜欢我,我告诉你过了这个村儿，我会在下个村儿等你',0,NULL,1510716685932,NULL),
(1806,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgs945gisj2046046dgf.jpg','我很欣赏你',0,NULL,1510716685932,NULL),
(1807,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrykkvt2j20hs0hsdql.jpg','要要切克闹，我说孙子你说到',0,NULL,1510716685932,NULL),
(1808,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgs9hecr8j205g04p0to.jpg','怎么滚，你可以示范一下吗',0,NULL,1510716685932,NULL),
(1809,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgryd94uuj20hs0h87bd.jpg','不要慌,问题不大',0,NULL,1510716685932,NULL),
(1810,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrwquearj20hs0hsth6.jpg','第几次了又为爱情流眼泪',0,NULL,1510716685932,NULL),
(1811,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrx4ivo0j20hs0hs101.jpg','hello!单身狗们',0,NULL,1510716685932,NULL),
(1812,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgs964ve0g203s03s754.gif','出来!出来!',0,NULL,1510716685932,NULL),
(1813,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrwkil06g205v05ywev.gif','别打我了我服了',0,NULL,1510716685932,NULL),
(1814,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgs9mre8zg206q064wet.gif','真的吗?',0,NULL,1510716685932,NULL),
(1815,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrvzutdug208c08c3yn.gif','开房吗我持久30~40分钟',0,NULL,1510716685932,NULL),
(1816,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrwidhr7j20e80e8dgd.jpg','笑你麻瘟',0,NULL,1510716685932,NULL),
(1817,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrw7tjg1j206o06owft.jpg','我特么........',0,NULL,1510716685932,NULL),
(1818,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4c9jg08j203703cmwx.jpg','割手',0,NULL,1510716685932,NULL),
(1819,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgry2nyvtj208208cwer.jpg','忘能借我6千w吗?我想买朗博基尼',0,NULL,1510716685932,NULL),
(1820,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrw5r5ztg206o079aci.gif','戏精',0,NULL,1510716685932,NULL),
(1821,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrxvgk96g209q06wabu.gif','说人话',0,NULL,1510716685932,NULL),
(1822,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrxt5bw8j208c08c41n.jpg','起床了!太阳晒大屁眼子了',0,NULL,1510716685932,NULL),
(1823,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrvwme2oj20a808caag.jpg','手牵手我们一起走（猪蹄）',0,NULL,1510716685932,NULL),
(1824,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrwsesf9j208c08ct8p.jpg','让我们干了这瓶酒，好男儿胸怀像大海',0,NULL,1510716685932,NULL),
(1825,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrwbbtamg206o06o3yj.gif','揪断你鸡鸡',0,NULL,1510716685932,NULL),
(1826,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrwvu6kog206m04u0st.gif','你老婆说你性无能',0,NULL,1510716685932,NULL),
(1827,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgs92a1ldj205d05kmyg.jpg','不許妳胡說',0,NULL,1510716685932,NULL),
(1828,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrxx1zhvg2073073glp.gif','过奖过奖',0,NULL,1510716685932,NULL),
(1829,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgsae3sg1g206x06x0sx.gif','有钱',0,NULL,1510716685932,NULL),
(1830,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgs982huoj203s0463yu.jpg','羞死人列',0,NULL,1510716685932,NULL),
(1831,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrw9q534j206o06o753.jpg','看见女人就头痛',0,NULL,1510716685932,NULL),
(1832,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgsach83xj20g90hsn2l.jpg','不一样?难道你是吃屎长大的',0,NULL,1510716685932,NULL),
(1833,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgsa8qbncg206o06o4ln.gif','宝宝委屈',0,NULL,1510716685932,NULL),
(1834,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgs9kzxveg204604674g.gif','加油 ！',0,NULL,1510716685932,NULL),
(1835,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrxf761pg206o05074a.gif','你人长得丑还自作多情没救了',0,NULL,1510716685932,NULL),
(1836,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgry0tk7xj20gc0hs79j.jpg','恩,也许吧',0,NULL,1510716685932,NULL),
(1837,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgs9bmyg2j205k05kgmb.jpg','厉害了我的妞',0,NULL,1510716685932,NULL),
(1838,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgryeyprhj205k05kgm0.jpg','真尼玛骚不过.我喜欢!',0,NULL,1510716685932,NULL),
(1839,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrwyjic7g208c08c774.gif','信不信飞飞扔过去',0,NULL,1510716685932,NULL),
(1840,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgry8qdgij205105ijr9.jpg','行，爸都依你',0,NULL,1510716685932,NULL),
(1841,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrwel083g206o06pjrt.gif','大家好,我是流泪熊猫，头今天不说脏话,只是感叹',0,NULL,1510716685932,NULL),
(1842,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrvt678bg207j05eto2.gif','没有人，我自己玩',0,NULL,1510716685932,NULL),
(1843,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrx09pk6g206o06o74d.gif','你变了你以前从未打过我',0,NULL,1510716685932,NULL),
(1844,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrxn7hmjj20gu0hswvd.jpg','樱花只开一季, 真爱只有一如果只是寂寞, 请不要说爱我。',0,NULL,1510716685932,NULL),
(1845,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgrvlaldmg208c04zjs0.gif','为什么我么帅?因为老子有文化',0,NULL,1510716685932,NULL),
(1846,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgs9qsn7lg204502uaaq.gif','一直装逼从未被打死',0,NULL,1510716685932,NULL),
(1847,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf4o1fzy2j2055055t8l.jpg','食屎！（文字版）',0,NULL,1510716685932,NULL),
(1848,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4c80rjog201k01hdfm.gif','弹琵琶（妹子坏坏版）',0,NULL,1510716685932,NULL),
(1849,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgs99szagj205k05kjrr.jpg','虽然你没钱又没颜但我还是喜欢你的独一无二',0,NULL,1510716685932,NULL),
(1850,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgs9ff81tg206e06bdge.gif','漂亮',0,NULL,1510716685932,NULL),
(1851,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4o8xzgwj20j70qoabj.jpg','顺手赞下个签谢谢',0,NULL,1510716685932,NULL),
(1852,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flgrvjeyd7j20en0hsk44.jpg','那你可能会被我打死',0,NULL,1510716685932,NULL),
(1853,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrw1ix3sg205i05iq33.gif','还有这种姿势?',0,NULL,1510716685932,NULL),
(1854,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgrvuwua4j20cf094q3c.jpg','要上班了好开心',0,NULL,1510716685932,NULL),
(1855,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgsag7c5fj20hs0dzmyg.jpg','一拳一个狗群员',0,NULL,1510716685932,NULL),
(1856,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgrvy9zzfj203i03xjrn.jpg','a jj swing u 鸡巴甩死你',0,NULL,1510716685932,NULL),
(1857,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flgs9y080rj20hs0hftng.jpg','你去问问整个王者荣耀，有比我更乖更强的妹吗',0,NULL,1510716685932,NULL),
(1858,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flgry5p65cj205i05i0so.jpg','你难道就没有点羞耻之心吗',0,NULL,1510716685932,NULL),
(1859,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flgry46sa8j205i05iaa0.jpg','没有就没有,凶你麻痹,你家祖坟被挖了呀',0,NULL,1510716685932,NULL),
(1860,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjppjk8vj2073073q4u.jpg','哭到住院',0,NULL,1510716685932,NULL),
(1861,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjosvvjvj204303xaa9.jpg','假的我不相信你',0,NULL,1510716685932,NULL),
(1862,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjpxjfy4j203h04g744.jpg','阿姨好!',0,NULL,1510716685932,NULL),
(1863,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjnrm04ag205701t74c.gif','坏坏敲鼎（坏坏玩乐器）',0,NULL,1510716685932,NULL),
(1864,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjcf3287j20go0eedh0.jpg','你没有女朋友、你没钱，穷的没人要！你没有学妹！你没有姐姐！你没有妹妹！',0,NULL,1510716685932,NULL),
(1865,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjcmdnboj20qo0qo0tp.jpg','熊猫人抽烟（萌版）',0,NULL,1510716685932,NULL),
(1866,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjopdhr3j20qo0qo0tw.jpg','您不配!',0,NULL,1510716685932,NULL),
(1867,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjngwerfj202a031t8j.jpg','哇。。。。。。',0,NULL,1510716685932,NULL),
(1868,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjo8f200j205k05kq2s.jpg','佩奇的凝视',0,NULL,1510716685932,NULL),
(1869,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4p8hk7qj201e01kmwx.jpg','傲娇',0,NULL,1510716685932,NULL),
(1870,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjpg1ly4g207d08c753.gif','不给亲亲不让睡',0,NULL,1510716685932,NULL),
(1871,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4pdgcyng206o06ot8y.gif','期待的搓搓手',0,NULL,1510716685932,NULL),
(1872,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjpyyxpkj201y023t8h.jpg','突然隐身',0,NULL,1510716685932,NULL),
(1873,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjobyg07j206o06o75g.jpg','让我看看是谁在装逼',0,NULL,1510716685932,NULL),
(1874,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjnu374cg20ey06940e.gif','坏坏乐器系列',0,NULL,1510716685932,NULL),
(1875,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjpjbknxj205f05kjro.jpg','有意思你这婆娘我要定了',0,NULL,1510716685932,NULL),
(1876,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjpw0osjj20u00k57at.jpg','不是我说，你头像好丑',0,NULL,1510716685932,NULL),
(1877,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf4pq6u2bg205x04utgq.gif','来,我们起滚床单',0,NULL,1510716685932,NULL),
(1878,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjck0u11j201e01hjr7.jpg','金馆长粉色兔子',0,NULL,1510716685932,NULL),
(1879,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjp77jxpj20fk0ic0th.jpg','哈?你特么说啥?',0,NULL,1510716685932,NULL),
(1880,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf4pu6exkj2048040gln.jpg','不,我不晕你',0,NULL,1510716685932,NULL),
(1881,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjciieh0g200k00k0ew.gif','爱你哟（小心心）',0,NULL,1510716685932,NULL),
(1882,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjo9wpt5j203603kt8j.jpg','可爱的姿勢',0,NULL,1510716685932,NULL),
(1883,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf4phee76g2073073wf9.gif','我再也不要理你了',0,NULL,1510716685932,NULL),
(1884,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4pvuc6sj208c08ct91.jpg','再见了，学校',0,NULL,1510716685932,NULL),
(1885,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjofv2phj20b908c0t6.jpg','当时就是一巴掌',0,NULL,1510716685932,NULL),
(1886,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjountbfj20dw0dwaag.jpg','你跟我开玩笑呢',0,NULL,1510716685932,NULL),
(1887,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjccp9nlj20k00k0gmj.jpg','敷衍三连（哦、牛逼、666）',0,NULL,1510716685932,NULL),
(1888,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4p5k7tzg208c08caac.gif','无敌反弹',0,NULL,1510716685932,NULL),
(1889,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjphnscqj208w08waa4.jpg','有,啥都有',0,NULL,1510716685932,NULL),
(1890,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjo6lchkj20j60j63z2.jpg','闪',0,NULL,1510716685932,NULL),
(1891,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjp9sepog208c08cabu.gif','别碰我滚!',0,NULL,1510716685932,NULL),
(1892,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjndveawj20ku0jwq4z.jpg','我是谁？我在哪儿？我在干什么？',0,NULL,1510716685932,NULL),
(1893,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjnntzdnj204w04zt8y.jpg','小可爱',0,NULL,1510716685932,NULL),
(1894,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjp5b921j208g062mx9.jpg','请允许我做个淫荡的表情',0,NULL,1510716685932,NULL),
(1895,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjch2lg7j2042042wen.jpg','嗯？',0,NULL,1510716685932,NULL),
(1896,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjnlzonjj201k01hgld.jpg','坏坏盖耳朵（折叠）',0,NULL,1510716685932,NULL),
(1897,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjp3od2wj20se0q0wg4.jpg','您配吗?',0,NULL,1510716685932,NULL),
(1898,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjpmecefj202i02imwx.jpg','没有听懂',0,NULL,1510716685932,NULL),
(1899,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4psi56cj20hs0i2ta4.jpg','你这种会嘤嘤嘤的萌妺我能一拳打十个',0,NULL,1510716685932,NULL),
(1900,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjo4qaobg207w07jglt.gif','我点了加了豆皮的黄焖鸡米饭到了，告辞',0,NULL,1510716685932,NULL),
(1901,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjodwowtj206o06o3ze.jpg','小仙女们出来玩啊',0,NULL,1510716685932,NULL),
(1902,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjniob12j201u01st8t.jpg','包被子',0,NULL,1510716685932,NULL),
(1903,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjoyv66jj208y0dgaac.jpg','管理我饿了，我要一份黄焖鸡米饭中辣',0,NULL,1510716685932,NULL),
(1904,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjolh1drj205i05imx2.jpg','你是傻逼吗,咱们都是熊猫。应该一起对抗蘑菇头',0,NULL,1510716685932,NULL),
(1905,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf4pkegg4g206o06o0sx.gif','为什么我还没有对象',0,NULL,1510716685932,NULL),
(1906,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjq0mm0wj208c063mx7.jpg',' NONONO !',0,NULL,1510716685932,NULL),
(1907,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjprlgktg208c08cab5.gif','不要和傻X对骂',0,NULL,1510716685932,NULL),
(1908,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjohszzqj206o06odgp.jpg','拿好了你的帽子（绿帽）',0,NULL,1510716685932,NULL),
(1909,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjnkfncdj207507kq2y.jpg','抠鼻',0,NULL,1510716685932,NULL),
(1910,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjnff0ufj205i03ujr9.jpg','我杀男人！',0,NULL,1510716685932,NULL),
(1911,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjor7tf3j208c08cdg8.jpg','我不管我就要充电',0,NULL,1510716685932,NULL),
(1912,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4p73i92g208c08cwef.gif','没人鸟我我自嗨',0,NULL,1510716685932,NULL),
(1913,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjon29efj205i05imx1.jpg','老哥,稳',0,NULL,1510716685932,NULL),
(1914,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjcnyawjg201y01la9w.gif','坏坏吹笛子（古装版）',0,NULL,1510716685932,NULL),
(1915,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjcphjzhg201l01lmwx.gif','坏坏吹口琴',0,NULL,1510716685932,NULL),
(1916,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4pfk4trj20bv0h1ab9.jpg','哥迷人的五官就是你犯罪的开端',0,NULL,1510716685932,NULL),
(1917,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjpe1mb5g208c08ctao.gif','以梦为马,越骑越傻',0,NULL,1510716685932,NULL),
(1918,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjp1ezwtj20se0se76h.jpg','丢人。',0,NULL,1510716685932,NULL),
(1919,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjojbtn0j204v05iq2v.jpg','我想以每秒5下的速度，在你那紧实的屁股抽送',0,NULL,1510716685932,NULL),
(1920,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjpbgelmj208c08cdfy.jpg','人类的逼只有装在自己手中才有价值',0,NULL,1510716685932,NULL),
(1921,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjcuuntlj20da0fzae8.jpg','这就是你（咸鱼）',0,NULL,1510716685932,NULL),
(1922,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjpkxo7gj208c0880su.jpg','不知道说什么好给您劈个叉吧',0,NULL,1510716685932,NULL),
(1923,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjo2tgccg205v02bwee.gif','弹钢琴！（金馆长小人）',0,NULL,1510716685932,NULL),
(1924,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjnpna19j202m01waa3.jpg','小人流鼻血',0,NULL,1510716685932,NULL),
(1925,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4pa122pj205c046q2w.jpg','毒来了快跑（绝地求生）',0,NULL,1510716685932,NULL),
(1926,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4pbqu92j20b40a6jrm.jpg','白天一个个牛逼的要命，现在还不是睡得跟死猪一样',0,NULL,1510716685932,NULL),
(1927,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjox5amij20lq0t3768.jpg','赶紧把我的脚舔干净，你这发情的公狗',0,NULL,1510716685932,NULL),
(1928,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjrkcjzlg205q04ggn3.gif','手拿玫瑰花,群里来转哈,那个喜欢我,我就送給她',0,NULL,1510716685932,NULL),
(1929,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4ojzaj2g208c08ct8s.gif','来,互相伤害啊！',0,NULL,1510716685932,NULL),
(1930,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjrglal1j20qo0qo75h.jpg','干你凉',0,NULL,1510716685932,NULL),
(1931,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjqa3exuj205i03udfw.jpg','捏你小脸',0,NULL,1510716685932,NULL),
(1932,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjo1993gj20bs0bewf0.jpg','猪一样!',0,NULL,1510716685932,NULL),
(1933,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjqco1hkj20hx0hujtk.jpg','当然是你比游戏重要啊',0,NULL,1510716685932,NULL),
(1934,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4oiarymg206o06oaa3.gif','来啊，快活呀',0,NULL,1510716685932,NULL),
(1935,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4oswtq9j206o06o74p.jpg','怎么了?在你头上种树了?',0,NULL,1510716685932,NULL),
(1936,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjqio7qoj20hs0hsdgg.jpg','能不能聊点儿紧张又刺激的黄色话题?',0,NULL,1510716685932,NULL),
(1937,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjqxccayj204w02i0sr.jpg','两三年吧',0,NULL,1510716685932,NULL),
(1938,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4nzyp62g205405kwei.gif','互赞加我，永不躺枪',0,NULL,1510716685932,NULL),
(1939,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjqgrnwwj206o06ot9s.jpg','打扰了',0,NULL,1510716685932,NULL),
(1940,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjq6beqwg208c08cjro.gif','啦啦能量，小样，走你！',0,NULL,1510716685932,NULL),
(1941,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf4my8arxg204q034455.gif','狗张嘴',0,NULL,1510716685932,NULL),
(1942,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjqtyrsdj20go0cl41n.jpg','咽烟的手，微微颤抖',0,NULL,1510716685932,NULL),
(1943,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf4o6o71vg206o06owet.gif','这里全是浆糊（坏坏脑袋）',0,NULL,1510716685932,NULL),
(1944,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf4of2fo2j20w00w0q4c.jpg','我去打王者了告辞',0,NULL,1510716685932,NULL),
(1945,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjrb7ntrj20mf0kudgl.jpg','生无可恋',0,NULL,1510716685932,NULL),
(1946,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjqythdrj204g04ajr9.jpg','啦一群傻屌整天发老图,看就是叔叔阿姨',0,NULL,1510716685932,NULL),
(1947,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf50fx9fmj20hs0hste9.jpg','长得跟土豆子成精了似的还搁这骚呢',0,NULL,1510716685932,NULL),
(1948,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf4owiuiuj206o06o74p.jpg','好牛逼棒棒',0,NULL,1510716685932,NULL),
(1949,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf4n4kqhjj20hs0clwjz.jpg','玩手枪？',0,NULL,1510716685932,NULL),
(1950,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjr0nza1j20dw08pwf5.jpg','你要是和别大玩够了，就回来吧我等你回来双排',0,NULL,1510716685932,NULL),
(1951,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjrnfb8eg2046046glj.gif','老秃驴',0,NULL,1510716685932,NULL),
(1952,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf50ltrglj2046046dfx.jpg','够北哦这种人',0,NULL,1510716685932,NULL),
(1953,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjr7a941j208c07awex.jpg','狗比队友怎么不拉我？（绝地）',0,NULL,1510716685932,NULL),
(1954,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjnzag3nj206o06ot9m.jpg','你又把天聊死了',0,NULL,1510716685932,NULL),
(1955,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4or0h2kj207s050dgn.jpg','傻逼,你妈拿着旺仔牛奶在门口等你',0,NULL,1510716685932,NULL),
(1956,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjnvnm3dj205i05iglk.jpg','我真是萌的要死',0,NULL,1510716685932,NULL),
(1957,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4o4ya9jj20r90bwmy7.jpg','对方向你申请屁眼交易,是否接受?是/否',0,NULL,1510716685932,NULL),
(1958,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf50hmfqog207r03cwea.gif','今天排位必输',0,NULL,1510716685932,NULL),
(1959,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjrcz8r4j206606iq37.jpg','我有点凌乱',0,NULL,1510716685932,NULL),
(1960,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjqemkdkj205205imxr.jpg','你果然是个又逗又搞基的男子',0,NULL,1510716685932,NULL),
(1961,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjqoy1r3j20k00k2gmv.jpg','天空有些暗了，暗的刚刚好我难过的样子就没人看到',0,NULL,1510716685932,NULL),
(1962,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4nwfoodg206o06odfu.gif','恰恰相反',0,NULL,1510716685932,NULL),
(1963,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf4omu6k9g20c80c8ac8.gif','谁特么来接你啊',0,NULL,1510716685932,NULL),
(1964,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjrlwlvrj205i05at8m.jpg','我祝你天天来大姨妈',0,NULL,1510716685932,NULL),
(1965,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf4ookjxpg207o08cjrs.gif','收其电脑夺其手机',0,NULL,1510716685932,NULL),
(1966,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4oat7bsj20b40b4aa7.jpg','快看楼上阳尾了',0,NULL,1510716685932,NULL),
(1967,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4nmno85g2078078tt3.gif','冰淇淋好女孩（动态版）',0,NULL,1510716685932,NULL),
(1968,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf50p1nx1g208c08c0su.gif','污蔑你你能给我含蛋吗',0,NULL,1510716685932,NULL),
(1969,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjqkolsuj20hs0hsgmp.jpg','点我头像添加好友看巨根',0,NULL,1510716685932,NULL),
(1970,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf50nc4j3j2046046dfr.jpg','北到爆',0,NULL,1510716685932,NULL),
(1971,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjr5l1puj205t05umx4.jpg','按时冒一个泡，万一有人看上我呢？我人丑万一她瞎呢',0,NULL,1510716685932,NULL),
(1972,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjr9a64qj20hs0hswf3.jpg','仙女的不屑',0,NULL,1510716685932,NULL),
(1973,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjregtjcj204c03oglf.jpg','吃院',0,NULL,1510716685932,NULL),
(1974,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4p3vwvqj208c08c3yy.jpg','我不管,我就要成为葫芦侠',0,NULL,1510716685932,NULL),
(1975,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjqqju8nj20280280sr.jpg','过分。',0,NULL,1510716685932,NULL),
(1976,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf50k7vpuj208c08cq51.jpg','你只有打飞机的命',0,NULL,1510716685932,NULL),
(1977,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjq2ph0cj204603e0sj.jpg','黑恶势力登场',0,NULL,1510716685932,NULL),
(1978,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf4ogmqbxj205905ijr8.jpg','兄弟,你女朋友到了!一共500元,在交5帮你充气',0,NULL,1510716685932,NULL),
(1979,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4o2z0b3j204o0583yh.jpg','我就静静地看着你吃屎',0,NULL,1510716685932,NULL),
(1980,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjqmqlr1j20hs0hsgmp.jpg','我搁这看了半天了你倒是发张新图啊',0,NULL,1510716685932,NULL),
(1981,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf4oynyuzj20ku0llwfe.jpg','对不上图就退群,刷你麻痹图。丢人',0,NULL,1510716685932,NULL),
(1982,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjnx8v7jj208c08cglr.jpg','有人网恋吗？骗了钱我就把你这臭嗨删了',0,NULL,1510716685932,NULL),
(1983,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf50qps2wg208c08cglq.gif','天佑就是狗人饮酒醉不爽??',0,NULL,1510716685932,NULL),
(1984,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf4p1wtn3g207z06eglr.gif','起床了!你老婆跑了!',0,NULL,1510716685932,NULL),
(1985,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf4ouq8ufj206o06owf4.jpg','嗯？（打架？）',0,NULL,1510716685932,NULL),
(1986,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf4nut0joj20hs0gddnp.jpg','我们不一样',0,NULL,1510716685932,NULL),
(1987,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjri4kfvj204d05imx0.jpg','点我的头像送礼物,里面有个狗粮是限时免费的,送给我谢谢',0,NULL,1510716685932,NULL),
(1988,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4nydy0zg2040031t9b.gif','送你离开，千里之外',0,NULL,1510716685932,NULL),
(1989,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf4p0bv7gg206o06omx4.gif','亲爱的今天我做饭',0,NULL,1510716685932,NULL),
(1990,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjr4091hj20b40b4dg4.jpg','矜持优雅高尚',0,NULL,1510716685932,NULL),
(1991,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flfjq4jcipg206o06o0sy.gif','哭叩叩',0,NULL,1510716685932,NULL),
(1992,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf4ocsjnzj206o06o3ze.jpg','有钱任性',0,NULL,1510716685932,NULL),
(1993,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flfjq8gzomj20ll0qogmm.jpg','还有这种事??',0,NULL,1510716685932,NULL),
(1994,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flfjqvr5r7j207607dq3d.jpg','别这样',0,NULL,1510716685932,NULL),
(1995,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flfjr29lxzj202e01tgln.jpg','揉你们屁股',0,NULL,1510716685932,NULL),
(1996,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5dg7q9jj20hs0hs42x.jpg','你这么玩,别说小船,航母都得沉!',0,NULL,1510716685932,NULL),
(1997,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf5dhtpl2j205k017jrb.jpg','你就是蒋不代',0,NULL,1510716685932,NULL),
(1998,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf50sgt4cg208c08cgls.gif','天你妈了个逼佑就骂你不行吗?刺你女儿个嫩逼',0,NULL,1510716685932,NULL),
(1999,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fleez5ss6qj20al0akjrn.jpg','走带你去玩',0,NULL,1510716685932,NULL),
(2000,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fleenhff2ej203b02cmwx.jpg','小黄鸭',0,NULL,1510716685932,NULL),
(2001,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf519qyl1j206o05owfb.jpg','现在嫌我多余了是吧,好,我懂了',0,NULL,1510716685932,NULL),
(2002,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5cucrq6j20gc0hsn33.jpg','不就是忘了戴套，臭婊子那么凶干什么',0,NULL,1510716685932,NULL),
(2003,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5dvvpbwj20g00hsdgt.jpg','整个广东省我最服你',0,NULL,1510716685932,NULL),
(2004,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5e97715j205k05kjr9.jpg','如果是,我道歉',0,NULL,1510716685932,NULL),
(2005,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fleeya5qalj202f02dq2p.jpg','兔子金馆长',0,NULL,1510716685932,NULL),
(2006,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5dpoif0g20d70hsgna.gif','当。。。当（可达鸭）',0,NULL,1510716685932,NULL),
(2007,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf5f560c7j202c01t743.jpg','躲小被几里（滑稽）',0,NULL,1510716685932,NULL),
(2008,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5ei6lm1j20hs0hs11k.jpg','你这个男孩真的长的可怕',0,NULL,1510716685932,NULL),
(2009,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5e67bd4j20gr0hsgt8.jpg','丑话说在前头, 要是你们再影响我学习得话。我就和你们一起玩。',0,NULL,1510716685932,NULL),
(2010,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf5eax6png206o06odg3.gif','双十一快乐',0,NULL,1510716685932,NULL),
(2011,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fleeyc0w16j201c01c0sq.jpg','绿帽',0,NULL,1510716685932,NULL),
(2012,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf5dyrhwej206o06oaco.jpg','玩个王者荣耀总蹲草丛你干啥呢?捉蚂蚱呢?',0,NULL,1510716685932,NULL),
(2013,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5drcdttj205i05fdft.jpg','或许这就是大佬吧',0,NULL,1510716685932,NULL),
(2014,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5czytxcj20hj0hswmw.jpg','死三八!',0,NULL,1510716685932,NULL),
(2015,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf5floh8ng206o07jdg7.gif','我这人是没感情的',0,NULL,1510716685932,NULL),
(2016,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5cd27awg206o06nweq.gif','白底狗',0,NULL,1510716685932,NULL),
(2017,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf5fc8b61j20gv0hswnp.jpg','每次点开这个群感觉像进了神经病院一样',0,NULL,1510716685932,NULL),
(2018,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf51betcoj206o06oweo.jpg','不错小崽子，有我当年的风范',0,NULL,1510716685932,NULL),
(2019,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fleenpg8xgj20fo0cp0zz.jpg','这是我老板',0,NULL,1510716685932,NULL),
(2020,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5f23xyyg20hs0hsq6t.gif','包皮王的微笑',0,NULL,1510716685932,NULL),
(2021,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5e1c4vyj206o06odhn.jpg','打团战的时候为啥跑那么快?赶着去参加葬礼啊!',0,NULL,1510716685932,NULL),
(2022,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf5e7ovy6j203i03i0sk.jpg','你要不要做我的小迷妹',0,NULL,1510716685932,NULL),
(2023,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf51m4n6sg206o06o74c.gif','别以为你挂个女生头像，我就不敢打你，我打人妖从不手软',0,NULL,1510716685932,NULL),
(2024,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fleeyy5weig203w06c1kx.gif','旋转',0,NULL,1510716685932,NULL),
(2025,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf50u4oivg206o05qjrk.gif','他妈的说话注意点，人家是妹子的啦',0,NULL,1510716685932,NULL),
(2026,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf5etysm4j20hs0hsdlk.jpg','开价吧!多少',0,NULL,1510716685932,NULL),
(2027,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fleez2eu78j20bm0bm3yw.jpg','妹子',0,NULL,1510716685932,NULL),
(2028,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5epq9r1j204d041mx4.jpg','你这样就不可爱了',0,NULL,1510716685932,NULL),
(2029,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf50y00lkg206o06omxk.gif','讨厌',0,NULL,1510716685932,NULL),
(2030,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf5emcv8bj205k05kaaj.jpg','你别这样',0,NULL,1510716685932,NULL),
(2031,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf5dtsr1rj208c07yq4s.jpg','戒毒所放我出去我要玩王者荣耀',0,NULL,1510716685932,NULL),
(2032,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf5d8t8nyj20hs0hitjq.jpg','不想跟智障玩!',0,NULL,1510716685932,NULL),
(2033,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5fe8odbg20b40b4aaj.gif','哦哟!好叼哦!',0,NULL,1510716685932,NULL),
(2034,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf5dan0w2g205h05iq3e.gif','惊了',0,NULL,1510716685932,NULL),
(2035,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5cnbjhag208c08c0t6.gif','辛辛苦苦养大的孩子终于学会艾特娘了',0,NULL,1510716685932,NULL),
(2036,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf51d424yj20e809l0t3.jpg','哇的一声哭出来',0,NULL,1510716685932,NULL),
(2037,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf51nwnalj205k04tjrl.jpg','小白脸,接受现实,接受潜规则吧',0,NULL,1510716685932,NULL),
(2038,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5frvwu2g208708747f.gif','放荡又没礼貌的奸笑',0,NULL,1510716685932,NULL),
(2039,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf5f3oxing206o06o3yf.gif','闭目养神',0,NULL,1510716685932,NULL),
(2040,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5djdwp7g208c08c0sq.gif','刷老母个屏,你个傻嗨',0,NULL,1510716685932,NULL),
(2041,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fleenji78sg202802mab7.gif','弹棉花、弹棉被',0,NULL,1510716685932,NULL),
(2042,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5dlir30g205w05wmxh.gif','每次打开这个群我都会异常勃起24个小时',0,NULL,1510716685932,NULL),
(2043,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5c9pdumj20hs0hsn6t.jpg','双十一脱单攻略',0,NULL,1510716685932,NULL),
(2044,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5fjgbpdj20h90hsgtu.jpg','诶，有点意思',0,NULL,1510716685932,NULL),
(2045,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf5clfcjyj20au0blwki.jpg','暗中瞎几把观察',0,NULL,1510716685932,NULL),
(2046,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf51khcp1j20hs0h6ti3.jpg','大兄弟有奶子记得滴滴我',0,NULL,1510716685932,NULL),
(2047,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5dn303rj204l05i0sm.jpg','你才是猪，老子是兔',0,NULL,1510716685932,NULL),
(2048,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fleez0haw7j20an08rjrg.jpg','我就这么跟你讲',0,NULL,1510716685932,NULL),
(2049,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf5ecp40lg206o07vaal.gif','老大叔今天不跳广场舞吗？怎么跑来和我们年轻人斗图了',0,NULL,1510716685932,NULL),
(2050,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf5cbcpxzg206o06ot8n.gif','不能!!!',0,NULL,1510716685932,NULL),
(2051,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf517pft4g2044042gln.gif','死开啦~',0,NULL,1510716685932,NULL),
(2052,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf50w6sh7j20e80dhdge.jpg','收嗲啦你',0,NULL,1510716685932,NULL),
(2053,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5eo5kw8g205f02ujrf.gif','鸡巴给我看看',0,NULL,1510716685932,NULL),
(2054,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf5160klwj20hs0hkn9g.jpg','绿绿胖虎',0,NULL,1510716685932,NULL),
(2055,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5dcnqj9g208c08cjs3.gif','我这一拳下去你的头不知道会发生什么',0,NULL,1510716685932,NULL),
(2056,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf5cgnkskg20hq0h4q6x.gif','忘我看你更丑',0,NULL,1510716685932,NULL),
(2057,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flf51eu9f0g206o06o0t5.gif','瞅你那破图知道什么是彩色的黑嘛',0,NULL,1510716685932,NULL),
(2058,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf5cq0dcuj208c08ctbf.jpg','你是受什么刺激了',0,NULL,1510716685932,NULL),
(2059,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flf4cc6kffg206o06odi4.gif','蘑菇头旋转',0,NULL,1510716685932,NULL),
(2060,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf5d239v9j205i05iwfk.jpg','等下你就挨扌',0,NULL,1510716685932,NULL),
(2061,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flf5eyw1b8j20hs0g746e.jpg','我想要看一次鸡巴',0,NULL,1510716685932,NULL),
(2062,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flf5ekfp3wj20c70c2wff.jpg','今天光棍节,我不太会说什么祝福的话,我在这里祝各位兄弟:年年有今日,岁岁有今朝',0,NULL,1510716685932,NULL),
(2063,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fleez42dtuj202i02hwej.jpg','黑企鹅',0,NULL,1510716685932,NULL),
(2064,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefireuqcj205i05igls.jpg','耍朋友加老子',0,NULL,1510716685932,NULL),
(2065,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefj34mt6j20k00k03zd.jpg','我喜不喜欢你你心里没有一点B数吗',0,NULL,1510716685932,NULL),
(2066,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefi5evmuj205i05haa0.jpg','皮皮你还爱豆豆吗',0,NULL,1510716685932,NULL),
(2067,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefp50rfcj209c0as0t6.jpg','像素老好了，想拍谁就拍谁爱疯6 iphone',0,NULL,1510716685932,NULL),
(2068,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefiz1p3ej20im0ge74y.jpg','我TM。。。（卫生巾）',0,NULL,1510716685932,NULL),
(2069,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefj6u7suj208n08lgls.jpg','说出你们的故事',0,NULL,1510716685932,NULL),
(2070,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefjowcdfj20fj0c2gma.jpg','这车好像不对劲',0,NULL,1510716685932,NULL),
(2071,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefnps65hj20hs0h815g.jpg','你还有理了是吗',0,NULL,1510716685932,NULL),
(2072,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flef0f3di8g201k01g742.gif','坏坏吹喇叭',0,NULL,1510716685932,NULL),
(2073,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fleey6rucqj202801pdfl.jpg','比心心',0,NULL,1510716685932,NULL),
(2074,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefo52j30j206o06ojts.jpg','我要喝一瓶杀虫剂毒死你',0,NULL,1510716685932,NULL),
(2075,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefkf3148j20n60n6wfj.jpg','分析个鸡巴',0,NULL,1510716685932,NULL),
(2076,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefp38v5pj20610410sm.jpg','我请你喝真猪奶茶',0,NULL,1510716685932,NULL),
(2077,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefim7duzg208c08cjrl.gif','有点素质行不行',0,NULL,1510716685932,NULL),
(2078,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flef1n38edj205m08jmx8.jpg','人家给你的小信信',0,NULL,1510716685932,NULL),
(2079,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefpbbp85j20dk0e8q8h.jpg','我没有在哭，真的',0,NULL,1510716685932,NULL),
(2080,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefn94trlg206o06o7al.gif','想舔',0,NULL,1510716685932,NULL),
(2081,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefiuuxhpg208c08cq2y.gif','楼上你的姨妈巾掉了',0,NULL,1510716685932,NULL),
(2082,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefidkhyvj2073073dgz.jpg','对方拒收你的消息，顺便弄了你的鸡鸡。',0,NULL,1510716685932,NULL),
(2083,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefjwm4o2g206d06dq3e.gif','吓死多了',0,NULL,1510716685932,NULL),
(2084,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefkievrwj202u02l3ya.jpg','一股悲凉袭上心头',0,NULL,1510716685932,NULL),
(2085,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefojif92g206o06mdgr.gif','强颜欢笑',0,NULL,1510716685932,NULL),
(2086,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefit5muqj205a05b746.jpg','上膛。。（枪枪）',0,NULL,1510716685932,NULL),
(2087,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefi3uewkj20k00k0gmb.jpg','终于我不卑不亢一个人',0,NULL,1510716685932,NULL),
(2088,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefo6ranwj205k05kwen.jpg','您的小祖宗已上线',0,NULL,1510716685932,NULL),
(2089,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefo2hh8aj20hs0hsn44.jpg','我可以看你的内裤吗?就两条',0,NULL,1510716685932,NULL),
(2090,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefii1ed1j201p01tq2y.jpg','心情简单',0,NULL,1510716685932,NULL),
(2091,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefi1vy9bj205i05i3yc.jpg','lowb',0,NULL,1510716685932,NULL),
(2092,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flef1l91vng208c069tbt.gif','打死你打死你（蜡笔）',0,NULL,1510716685932,NULL),
(2093,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flef1olndrj201s02cq2q.jpg','海贼王路飞',0,NULL,1510716685932,NULL),
(2094,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefp1o3ltg208c08cwfk.gif','感动,我以为我又冷场了',0,NULL,1510716685932,NULL),
(2095,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefiwvvjkj20fk0bo757.jpg','啥，武松又喝多了',0,NULL,1510716685932,NULL),
(2096,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefo8qrd4j204804e0t3.jpg','诶，有点意思',0,NULL,1510716685932,NULL),
(2097,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefjrswtvj206o06oq3f.jpg','冷静分析',0,NULL,1510716685932,NULL),
(2098,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefoan3rfg208c08caah.gif','你个单身狗',0,NULL,1510716685932,NULL),
(2099,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefk8bp4jg208c08c3yj.gif','请问,妹子,喝我水吗',0,NULL,1510716685932,NULL),
(2100,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefowi910j208c08cgmi.jpg','我今天要让你快乐',0,NULL,1510716685932,NULL),
(2101,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefk441itj208g08h0vk.jpg','我特么让你屌',0,NULL,1510716685932,NULL),
(2102,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefk0p5x6g208c08cjrf.gif','我可能减了假肥',0,NULL,1510716685932,NULL),
(2103,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefik585yj20c80cz0t7.jpg','你瞅你那逼样',0,NULL,1510716685932,NULL),
(2104,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefnxis9oj20hs0h8q8z.jpg','者朽纵横中药界六十余载，却治不好楼上的脑残。老朽愧对群主,愧对啊。',0,NULL,1510716685932,NULL),
(2105,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefoh4mbij2020027743.jpg','过分',0,NULL,1510716685932,NULL),
(2106,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefjynj6qj208c08c0t9.jpg','可以，这很老司机',0,NULL,1510716685932,NULL),
(2107,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefk6kdg4j206o06odgp.jpg','双十一不存在的',0,NULL,1510716685932,NULL),
(2108,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefio2lltj205i05h0so.jpg','皮皮喜欢萝北',0,NULL,1510716685932,NULL),
(2109,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefot2qssg208c08cqen.gif','没有什么是一把K98解决不了的',0,NULL,1510716685932,NULL),
(2110,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefi98dxzj202d02iglp.jpg','回不去了',0,NULL,1510716685932,NULL),
(2111,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefipkrw8j202702gmwy.jpg','极度嚣张',0,NULL,1510716685932,NULL),
(2112,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefjtzqejg208c08c751.gif','是本豆不够骚了吗？',0,NULL,1510716685932,NULL),
(2113,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefi0ebvaj205e06jwf4.jpg','完全O鸡八K',0,NULL,1510716685932,NULL),
(2114,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefjfofdhg205y061jyb.gif','你缺对象不',0,NULL,1510716685932,NULL),
(2115,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefj5163pg206o06odgd.gif','当选择原谅他啊',0,NULL,1510716685932,NULL),
(2116,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefj0zn4pg208c08cmxb.gif','二脸吃惊!',0,NULL,1510716685932,NULL),
(2117,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefifqc4qj20750723z7.jpg','我会骗你的',0,NULL,1510716685932,NULL),
(2118,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefji5xo7j205i05hwef.jpg','不喜欢豆豆',0,NULL,1510716685932,NULL),
(2119,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefoce9cog208c08cmxm.gif','没对象还不是因为你丑',0,NULL,1510716685932,NULL),
(2120,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flef1i1as2g203f0420sx.gif','鼓掌',0,NULL,1510716685932,NULL),
(2121,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefoysslig20b405kdfo.gif','厉害了我的儿子',0,NULL,1510716685932,NULL),
(2122,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fleey8c1dzj204z053q2u.jpg','蓝色金馆长',0,NULL,1510716685932,NULL),
(2123,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefofllozj208w08wjuj.jpg','我要小姐姐',0,NULL,1510716685932,NULL),
(2124,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefkc5i5vj208007zq30.jpg','如果思念有声音，恐怕你早就耳聋了',0,NULL,1510716685932,NULL),
(2125,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefkacx4fg208c08cdg0.gif','我秋褲都脱了，你就給我看這個?',0,NULL,1510716685932,NULL),
(2126,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefnsvqgnj2080080tak.jpg','是不是我做错什么了如果是,我决不道歉。',0,NULL,1510716685932,NULL),
(2127,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefp6yh2eg206o06odgf.gif','加班中',0,NULL,1510716685932,NULL),
(2128,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefi76pmyj205i03f3yc.jpg','帅的好无聊啊',0,NULL,1510716685932,NULL),
(2129,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefiav85dj203c0403yd.jpg','伏.&hellip;.伏甜的气味',0,NULL,1510716685932,NULL),
(2130,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefnfw5mgj20gc0hsak8.jpg','现在的女人不提也罢',0,NULL,1510716685932,NULL),
(2131,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefkgwet1j202c02cgle.jpg','骚男人',0,NULL,1510716685932,NULL),
(2132,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefpnsy8ej205k03ct91.jpg','你不要给我搞事',0,NULL,1510716685932,NULL),
(2133,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefpdkftzj205k05k751.jpg','一野亨死你',0,NULL,1510716685932,NULL),
(2134,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefgszj7xg208c08cjrg.gif','快使用双截棍',0,NULL,1510716685932,NULL),
(2135,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefpjdzcuj20h60hsqa7.jpg','女人没有一个好东西，都是逢场做戏的婊子',0,NULL,1510716685932,NULL),
(2136,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefetarauj20hs0m00tf.jpg','请问群里有红包吗',0,NULL,1510716685932,NULL),
(2137,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefml39k5j20hb0hstit.jpg','为群站岗',0,NULL,1510716685932,NULL),
(2138,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefey951rg206o06odfy.gif','呜呜。。。',0,NULL,1510716685932,NULL),
(2139,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefha8lzcj20m80m8mxi.jpg','天冷了要我还是外套',0,NULL,1510716685932,NULL),
(2140,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefep22n8j206o06o747.jpg','你脑子怎么了',0,NULL,1510716685932,NULL),
(2141,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefegicnbj20320350sk.jpg','嗯嗯，是呀是呀',0,NULL,1510716685932,NULL),
(2142,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fleffh3hjnj20sc0iut9z.jpg','你还有1天时间考虑和我在一起还是继续当条狗',0,NULL,1510716685932,NULL),
(2143,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefenihc0j20dc0dcadq.jpg','我看好你哦',0,NULL,1510716685932,NULL),
(2144,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefpyfcs1j20c80c8dgp.jpg','你说啥我没戴眼镜听不见',0,NULL,1510716685932,NULL),
(2145,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefpw8pwcj202u02ujr8.jpg','别难过小傻逼',0,NULL,1510716685932,NULL),
(2146,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefh59wqjj205h05i3yb.jpg','一脸蒙蔽',0,NULL,1510716685932,NULL),
(2147,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefe7lomxj203i03idfn.jpg','一级棒',0,NULL,1510716685932,NULL),
(2148,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefe63qq7j202702d74c.jpg','你想干汁么',0,NULL,1510716685932,NULL),
(2149,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefgy9b5lj206m06rglm.jpg','群主，这里一片草原',0,NULL,1510716685932,NULL),
(2150,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefgchb1zj20fe0hi74r.jpg','溜了溜了',0,NULL,1510716685932,NULL),
(2151,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefedaxhgj20k00j0jum.jpg','我想要20000个对象',0,NULL,1510716685932,NULL),
(2152,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefgadry9j20k00k0q3p.jpg','你编故事也是蛮强的',0,NULL,1510716685932,NULL),
(2153,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fleffmbk4xj204e04kdfu.jpg','今天，你4B了么？',0,NULL,1510716685932,NULL),
(2154,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefgmqa4bj205b05f749.jpg','继续笑，等下你的甩瓶车就不见了',0,NULL,1510716685932,NULL),
(2155,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefpltm1ng20b40d0wfb.gif','小猫猫白又白，叔叔有套来不来',0,NULL,1510716685932,NULL),
(2156,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefgp82sej20qo0peta6.jpg','我想要2个对象',0,NULL,1510716685932,NULL),
(2157,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefg80lsqg206o06o0sy.gif','喵喵喵？萌不萌？',0,NULL,1510716685932,NULL),
(2158,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefhy078aj208c08c74t.jpg','趁现在没人奶子给我看下',0,NULL,1510716685932,NULL),
(2159,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefmwqf1rj20hs0hsaaj.jpg','我不信除非让我干你一下',0,NULL,1510716685932,NULL),
(2160,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefguj3x0j203g02c744.jpg','强行达成共识',0,NULL,1510716685932,NULL),
(2161,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fleffdgk6aj206o06ogmp.jpg','还有这种玩法?',0,NULL,1510716685932,NULL),
(2162,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefef0r3oj205i05ijrn.jpg','今晚别出去跑步了好吗？我给你买了台跑步机',0,NULL,1510716685932,NULL),
(2163,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fleffjxvrij2073073wel.jpg','别说了没钱',0,NULL,1510716685932,NULL),
(2164,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefmt748kj20hs0hs47g.jpg','日最美的你，养最凶的狗，最烈的酒',0,NULL,1510716685932,NULL),
(2165,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefgl0a51j202x0363yi.jpg','妈卖批',0,NULL,1510716685932,NULL),
(2166,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefn4jixbj206u08m410.jpg','我十分欣赏你这个狗',0,NULL,1510716685932,NULL),
(2167,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fleff3si1gj20k00k0my0.jpg','逼松奶子小，胸口毛不少',0,NULL,1510716685932,NULL),
(2168,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefhebi6rj207307xt8r.jpg','我和你只是玩玩，别再纠缠我了!',0,NULL,1510716685932,NULL),
(2169,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefftxtxhj208c08ct8u.jpg','我有一个女朋友，我女朋友很漂亮，你们不要羡慕我好不好',0,NULL,1510716685932,NULL),
(2170,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fleff96ucjj203m03nt8i.jpg','打扰了',0,NULL,1510716685932,NULL),
(2171,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fleffxor45j20k00k075q.jpg','那年杏花微雨,你说你是果子狸，也许从一开始，就都是错的。',0,NULL,1510716685932,NULL),
(2172,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefhh3gmqj208c08cdfw.jpg','你是不是背着我在打游戏?',0,NULL,1510716685932,NULL),
(2173,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefmn5ngcj208c08ct96.jpg','分享也没用我们就不打开',0,NULL,1510716685932,NULL),
(2174,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefe4hbixj208c08c0sr.jpg','2333333',0,NULL,1510716685932,NULL),
(2175,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefg5zqf8g208c069wf1.gif','愤怒',0,NULL,1510716685932,NULL),
(2176,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefpptborj20d20e80t5.jpg','大清早的叫你妈，叫吃到屎了啊叫叫叫',0,NULL,1510716685932,NULL),
(2177,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefghauvnj20qo0ho0ub.jpg','你还有1天时间，考虑和我在一起还是继续当条狗',0,NULL,1510716685932,NULL),
(2178,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefe2qi8qj204o03w74i.jpg','我TM。。。',0,NULL,1510716685932,NULL),
(2179,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefhmlcd6g208c08c0st.gif','又胖了',0,NULL,1510716685932,NULL),
(2180,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fleffrst06j20rg0uydhz.jpg','连基佬都开始秀恩爱了，我却还是孤单一个人',0,NULL,1510716685932,NULL),
(2181,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefeicbpcj20fk0fkt95.jpg','打倒黑中介，三和大神雄起',0,NULL,1510716685932,NULL),
(2182,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefgjdamyj20jg0fcjrq.jpg','忍住眼泪',0,NULL,1510716685932,NULL),
(2183,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fleff66n33j205i050a9w.jpg','兄弟这么骚的嘛，有空一起日女管理',0,NULL,1510716685932,NULL),
(2184,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefhqgwz5g208c08c3yt.gif','我就呵呵哒的望着你',0,NULL,1510716685932,NULL),
(2185,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fleffzai23j2021021742.jpg','老实人',0,NULL,1510716685932,NULL),
(2186,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefg3wrghj206b06bgna.jpg','你这个猥琐的受精卵',0,NULL,1510716685932,NULL),
(2187,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefmzwhpkj20go0gon0o.jpg','我觉得还OK',0,NULL,1510716685932,NULL),
(2188,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefg0z5xaj208c08cq3b.jpg','我不傻我不傻',0,NULL,1510716685932,NULL),
(2189,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefe9h5tzj206y06yq3f.jpg','什么?你要帮我清空购物车',0,NULL,1510716685932,NULL),
(2190,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefps855oj205k05kdgv.jpg','用我们衡阳话说你就是一个甲拐费',0,NULL,1510716685932,NULL),
(2191,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefhvstr4j20k00k0wf6.jpg','我对小鸡吧过敏。',0,NULL,1510716685932,NULL),
(2192,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefh2jsxgj205a05at92.jpg','咋还那么骚呢',0,NULL,1510716685932,NULL),
(2193,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefge3ds8j205i02ndfp.jpg','腿给你打瘸?',0,NULL,1510716685932,NULL),
(2194,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefn1hgfcj205k00pq2t.jpg','你总是这么无敌兄弟',0,NULL,1510716685932,NULL),
(2195,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefejuci6j2046046gle.jpg','嗯，没毛病',0,NULL,1510716685932,NULL),
(2196,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefgrdwtvg208c08cdft.gif','什么鬼（我闪）',0,NULL,1510716685932,NULL),
(2197,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefmuv1g0j20hs07iwen.jpg','友谊的小床已铺好',0,NULL,1510716685932,NULL),
(2198,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefpuqw00j20gc0hswfl.jpg','寻儿启示，特点:喜欢打字',0,NULL,1510716685932,NULL),
(2199,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefgw6bg0j205g05y0sp.jpg','都不许说他，放尊重点这人挺搞笑的',0,NULL,1510716685932,NULL),
(2200,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld95ivtdoj20f10qo0tc.jpg','我的零钱，你有个屁的零钱',0,NULL,1510716685932,NULL),
(2201,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefcvlx4nj20p50obwfy.jpg','听说群里有条淫狗，原来就是你',0,NULL,1510716685932,NULL),
(2202,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefdwxdx1g206o06o74b.gif','血拼空投抢下舔包',0,NULL,1510716685932,NULL),
(2203,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9k2dspmj203c03cq33.jpg','中华儿女绝不认输',0,NULL,1510716685932,NULL),
(2204,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefctcwxjj208w082aaf.jpg','我希望有个人，能看穿我的逞强可以保护我的脆弱,仅此而已',0,NULL,1510716685932,NULL),
(2205,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefdpz0xfj205i05iweb.jpg','气到不想喂鸡',0,NULL,1510716685932,NULL),
(2206,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9kpzw4lg208c065mxr.gif','抱抱我的猪！',0,NULL,1510716685932,NULL),
(2207,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld95gvphtj204w04wjrl.jpg','金馆长妹子',0,NULL,1510716685932,NULL),
(2208,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld95mi1zpj209r0hnmxi.jpg','疑问表情',0,NULL,1510716685932,NULL),
(2209,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9ks1e1og206o06o747.gif','分析一浪',0,NULL,1510716685932,NULL),
(2210,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9kcl3w1j204s053dg4.jpg','可能这就是命吧，年18，死因:梭哈',0,NULL,1510716685932,NULL),
(2211,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefcirx5kj20c70cwjs6.jpg','我jo得阔以',0,NULL,1510716685932,NULL),
(2212,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefdgwymcj206o06odgh.jpg','咱俩不一样，我是搬金砖的',0,NULL,1510716685932,NULL),
(2213,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefd6fl04j20iv0j2q4i.jpg','傻人有傻福，傻逼没有。',0,NULL,1510716685932,NULL),
(2214,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefdrnm5sj203m02o3ya.jpg','人狠话不多',0,NULL,1510716685932,NULL),
(2215,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefdbuzdnj204s05pgli.jpg','瞅你咋滴',0,NULL,1510716685932,NULL),
(2216,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefe0yhhfj20k00k0mxx.jpg','你今晚别想吃鸡巴了',0,NULL,1510716685932,NULL),
(2217,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9l6ctz6j20c20bjdgj.jpg','真让人头大',0,NULL,1510716685932,NULL),
(2218,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld961n7k3j20140113y9.jpg','绿鸭',0,NULL,1510716685932,NULL),
(2219,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9lenfnsj204805i746.jpg','老子问有没有红包，都他妈聾了?',0,NULL,1510716685932,NULL),
(2220,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefdmzj3fg208c08c3z6.gif','抢饭抢饭抢饭抢饭抢饭冲啊冲啊冲啊冲啊冲啊',0,NULL,1510716685932,NULL),
(2221,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefcmxi30g208c08cdgk.gif','我们上错车了',0,NULL,1510716685932,NULL),
(2222,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9l0jf6hj208c08c0sw.jpg','无懈可稽',0,NULL,1510716685932,NULL),
(2223,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9kveolwj205i04zgli.jpg','我去吃鸡了，王者峡谷就交给你们了',0,NULL,1510716685932,NULL),
(2224,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9klw05cj20i70j3jtr.jpg','还有几个小时，马云就要出来吸血了。。。（双十一）',0,NULL,1510716685932,NULL),
(2225,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefddg94mj203n00xt8h.jpg','处女谁要',0,NULL,1510716685932,NULL),
(2226,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefcgreb8j205e05jdfq.jpg','人终有退投,而有些人则需要一点帮助',0,NULL,1510716685932,NULL),
(2227,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9l3suc5j205i04s3ye.jpg','失去爱情的滋润',0,NULL,1510716685932,NULL),
(2228,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld5yjp4opj208h086jrl.jpg','小可爱妹子',0,NULL,1510716685932,NULL),
(2229,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9kejwyoj201w02baa4.jpg','小逼崽子',0,NULL,1510716685932,NULL),
(2230,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9knpfajj205k05kq36.jpg','你这只猪蛮有意思的',0,NULL,1510716685932,NULL),
(2231,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9kgddqtj209c088aa5.jpg','你们应该打起来',0,NULL,1510716685932,NULL),
(2232,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefd82urtj202902bt8i.jpg','啊哈哈哈哈哈',0,NULL,1510716685932,NULL),
(2233,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9k9ws0jj201p01tt8h.jpg','屁股痛（坏坏）',0,NULL,1510716685932,NULL),
(2234,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefdysj2ag208c08caac.gif','给劳资闭嘴',0,NULL,1510716685932,NULL),
(2235,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9l22256j204y059q2r.jpg','我想干这个妹仔',0,NULL,1510716685932,NULL),
(2236,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9kx49w4j206o06odfr.jpg','丑逼',0,NULL,1510716685932,NULL),
(2237,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefdkz3big208c08cq32.gif','我祝你们七夕来月经',0,NULL,1510716685932,NULL),
(2238,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefczmm3tg206o06oq47.gif','苍天啊',0,NULL,1510716685932,NULL),
(2239,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9k644p8g206o06ot8t.gif','巴拉拉能量, 百合大法',0,NULL,1510716685932,NULL),
(2240,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefd9tgx4g208c08cdfz.gif','可以,这很如花',0,NULL,1510716685932,NULL),
(2241,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld966zdf1j203m032mxi.jpg','嗯？？？',0,NULL,1510716685932,NULL),
(2242,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefdtgoskg206o06owep.gif','求求你别分析',0,NULL,1510716685932,NULL),
(2243,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9l8syrmg206t05kt8z.gif','好，好漂亮！',0,NULL,1510716685932,NULL),
(2244,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9k8dho1j20hs0hswf7.jpg','生气地走了（小鸭子）',0,NULL,1510716685932,NULL),
(2245,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefcf1qwcj203p023glf.jpg','突然死亡，突然开枪',0,NULL,1510716685932,NULL),
(2246,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefd19n67g208c08c0sq.gif','逆子',0,NULL,1510716685932,NULL),
(2247,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9ki2hstj205k05k3yh.jpg','多喝热水',0,NULL,1510716685932,NULL),
(2248,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefdog0orj202902rq2q.jpg','呆呆',0,NULL,1510716685932,NULL),
(2249,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefdv9tdhg206o06ojrp.gif','不屑',0,NULL,1510716685932,NULL),
(2250,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefd2sdccj205i05i3ye.jpg','破群,一点都不活跃',0,NULL,1510716685932,NULL),
(2251,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld96029ymg20730404ly.gif','熊猫人抖腿',0,NULL,1510716685932,NULL),
(2252,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9k4ckg3j206o06oaae.jpg','老板,楼上这猪头怎么卖',0,NULL,1510716685932,NULL),
(2253,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefdj9ocyg208c08cglo.gif','谁打你了?我帮你绿了他',0,NULL,1510716685932,NULL),
(2254,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9636bt1j201d01jgld.jpg','绿帽',0,NULL,1510716685932,NULL),
(2255,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9kttq4tj202702ddfw.jpg','你想干汁么',0,NULL,1510716685932,NULL),
(2256,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flefcl1k6uj206o06ojre.jpg','弱不弱试了才知道',0,NULL,1510716685932,NULL),
(2257,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld5ym5gmoj20ay074my9.jpg','生锈的枪',0,NULL,1510716685932,NULL),
(2258,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld968iysyj202p02at8p.jpg','我的小警帽差点掉了',0,NULL,1510716685932,NULL),
(2259,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefcdgxpvj20ir0kzq3h.jpg','扩胸运动',0,NULL,1510716685932,NULL),
(2260,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flefcrkbj2j206o06omyg.jpg','告辞',0,NULL,1510716685932,NULL),
(2261,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9kyph1cj202c02iwea.jpg','肥宅肥肚肚',0,NULL,1510716685932,NULL),
(2262,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flefcxirfuj208c08c3z6.jpg','生活不止眼前的苟且，还有前任送来的请帖',0,NULL,1510716685932,NULL),
(2263,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld95kt5c1j20ay06874b.jpg','怎么啦',0,NULL,1510716685932,NULL),
(2264,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9ld2aw2j208g0b8q2y.jpg','闭嘴,别瞎说我们两个很相爱',0,NULL,1510716685932,NULL),
(2265,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flefcph5foj20c80c8t9g.jpg','闭嘴吧你',0,NULL,1510716685932,NULL),
(2266,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld7p9irovj207b07b0st.jpg','三叶（萌妹子）',0,NULL,1510716685932,NULL),
(2267,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9lbc0ioj20k00hu0tp.jpg','大佬，送我 iphoneX',0,NULL,1510716685932,NULL),
(2268,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9hm155pg206o06oq38.gif','突然出现',0,NULL,1510716685932,NULL),
(2269,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9gzolf1j20cw09ewet.jpg','你们都退群吧，我想一个人静静',0,NULL,1510716685932,NULL),
(2270,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9jo59f9j205i05i746.jpg','山低猴子叼，水浅王八跳',0,NULL,1510716685932,NULL),
(2271,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9jxkppuj20jq0k8t9y.jpg','吃药了',0,NULL,1510716685932,NULL),
(2272,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9lz5wauj206o06owei.jpg','睡觉吧,狗命重要',0,NULL,1510716685932,NULL),
(2273,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9iqe2cfj20lz0mnwg7.jpg','下午好傻逼们 Good afternoon sb',0,NULL,1510716685932,NULL),
(2274,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9iga8d0j204q04q3yf.jpg','楼上来吧尽情享用凤妹吧',0,NULL,1510716685932,NULL),
(2275,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9j0naf0j2032032web.jpg','老姐我想要修你的车',0,NULL,1510716685932,NULL),
(2276,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9h39m7cj20c60cqaa9.jpg','小明吃了麻婆豆腐被麻婆一刀捅死',0,NULL,1510716685932,NULL),
(2277,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9gxzf43g208c08caan.gif','来自三代的藐视',0,NULL,1510716685932,NULL),
(2278,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9jmao2ag208c08cgna.gif','说得好像真的一样',0,NULL,1510716685932,NULL),
(2279,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9jixafgj205a05aq3b.jpg','这里痛',0,NULL,1510716685932,NULL),
(2280,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9h6oxvag208c08cgm6.gif','宝宝那么萌你还舍得凶我',0,NULL,1510716685932,NULL),
(2281,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9i3it19g208c08cwel.gif','我摔倒了要抱抱才能起来',0,NULL,1510716685932,NULL),
(2282,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9j4al4ej206o06owf5.jpg','你小子怎么跟爸爸说话呢',0,NULL,1510716685932,NULL),
(2283,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9j5ypgdj2082082q2x.jpg','冷场了吗?关我吊事反正我不冷',0,NULL,1510716685932,NULL),
(2284,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9htbshlj206o06oq33.jpg','我们不一样不一样',0,NULL,1510716685932,NULL),
(2285,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9lwyoxnj206o061747.jpg','打你哦',0,NULL,1510716685932,NULL),
(2286,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9iht3p2j204504f3yc.jpg','别猝死了',0,NULL,1510716685932,NULL),
(2287,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9ivtpn0j207n06ljsi.jpg','看起来你想吃屁的样子',0,NULL,1510716685932,NULL),
(2288,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9jv6h9ag208c08cgls.gif','虽然我不想承认，但是你的确就比我那么一点点了',0,NULL,1510716685932,NULL),
(2289,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9ijyrg7j206o06odgd.jpg','你也就是我的下一半，莎士比亚',0,NULL,1510716685932,NULL),
(2290,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9iz5isfj205i05iq37.jpg','老娘放的是香葱排骨屁',0,NULL,1510716685932,NULL),
(2291,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9i04kk8g208c08cmx8.gif','写了，不借，滚!',0,NULL,1510716685932,NULL),
(2292,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9iaw67ij205i04hglg.jpg','臭傻逼还会举手',0,NULL,1510716685932,NULL),
(2293,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9ixfaftg208c08c3ym.gif','小时候断奶短的早，找位好心的姐姐补回童年',0,NULL,1510716685932,NULL),
(2294,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9hrnteuj205i046mwz.jpg','门在那，滚',0,NULL,1510716685932,NULL),
(2295,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9j2a3tgj209q073aa6.jpg','花呗山（双十一）',0,NULL,1510716685932,NULL),
(2296,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9huzo0uj209q08uaa4.jpg','语音叫老公!',0,NULL,1510716685932,NULL),
(2297,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9jpttp2j203c03cdfo.jpg','你是什么品种?怎么这么凶',0,NULL,1510716685932,NULL),
(2298,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9ieotx7j20dc0d0aax.jpg','你看我像猪吗',0,NULL,1510716685932,NULL),
(2299,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9hfwqi2j201v01rglm.jpg','你妈卖批',0,NULL,1510716685932,NULL),
(2300,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9jgqj3gg206o07pwez.gif','我喜欢交朋友,尤其是女朋友',0,NULL,1510716685932,NULL),
(2301,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9itdmtug208c08cmyv.gif','屎宝宝你放心,我不会让楼上吃你的',0,NULL,1510716685932,NULL),
(2302,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9m96i6yg204q05mn9a.gif','丢雷楼谋',0,NULL,1510716685932,NULL),
(2303,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9h1j6r7j206o06o74o.jpg','我可是个好孩子可别特么带坏我',0,NULL,1510716685932,NULL),
(2304,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9loeeusj205k05kjs3.jpg','红裤头辟邪',0,NULL,1510716685932,NULL),
(2305,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9h8be72j205a05dt8w.jpg','来啊,打啊谁怕谁',0,NULL,1510716685932,NULL),
(2306,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9imck7tj205i045dfz.jpg','我肥宅,很丑。只爱二次元纸片人。保距OK？',0,NULL,1510716685932,NULL),
(2307,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9he74fgj208c08cmxt.jpg','是世界上脾气最好的小仙女',0,NULL,1510716685932,NULL),
(2308,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9gw3igug208c08cmx6.gif','菊花献给您了，求考神保佑',0,NULL,1510716685932,NULL),
(2309,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9lvaw68g208c08c3yx.gif','这年头真是智障都能进群了',0,NULL,1510716685932,NULL),
(2310,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9lt1vjtj203e03daab.jpg','慌得要死',0,NULL,1510716685932,NULL),
(2311,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9hwlea2g208c08cdg0.gif','本鸭不想理你',0,NULL,1510716685932,NULL),
(2312,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9haiihvj20hs0hs75b.jpg','大佬抽烟',0,NULL,1510716685932,NULL),
(2313,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9lm57f7g2073073gm6.gif','我的五杀呢',0,NULL,1510716685932,NULL),
(2314,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9ljzrrzj205k023jr8.jpg','迈惊迈惊,万事有阿兄',0,NULL,1510716685932,NULL),
(2315,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9i9beiwg208c08cgmr.gif','上班是什么我不知道',0,NULL,1510716685932,NULL),
(2316,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9hq6kesj20k00l5t9f.jpg','老婆,在吗',0,NULL,1510716685932,NULL),
(2317,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9jrhfj2j203603f743.jpg','好想要',0,NULL,1510716685932,NULL),
(2318,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9gslmmcj205k04f0sx.jpg','有一种寂寞叫无敌',0,NULL,1510716685932,NULL),
(2319,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9hydqmkg208c08c74g.gif','哇你也是小仙女啊',0,NULL,1510716685932,NULL),
(2320,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9j7ih9nj205e056a9y.jpg','我就纳闷了，你们不学习么',0,NULL,1510716685932,NULL),
(2321,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9gugndmj20750750su.jpg','让我弹操你妈个逼',0,NULL,1510716685932,NULL),
(2322,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9hc0u2mg205k05kt8m.gif','懒虫还盼巅峰',0,NULL,1510716685932,NULL),
(2323,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9i6q6rhj20dc0hk3yy.jpg','银就笑笑不说话',0,NULL,1510716685932,NULL),
(2324,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9jt1o12j204g03ymwz.jpg','求求你了',0,NULL,1510716685932,NULL),
(2325,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9k0du6gj20iu0qoabr.jpg','理直气壮是吧!!',0,NULL,1510716685932,NULL),
(2326,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9hnqsftj208c08c0sw.jpg','刚才装逼的人已经倒下，我不希望你是最后一个',0,NULL,1510716685932,NULL),
(2327,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9hk4w5ag208c08c0t2.gif','我的小可爱皇冠给你戴',0,NULL,1510716685932,NULL),
(2328,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9i1pytfj20ag06uwel.jpg','欢派, 这么大',0,NULL,1510716685932,NULL),
(2329,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9icqpbbj206o06o0t7.jpg','我对你这渣渣，只能保持微笑',0,NULL,1510716685932,NULL),
(2330,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9gqvnbcj20fk0fct9j.jpg','我这一拳下去你有可能会死',0,NULL,1510716685932,NULL),
(2331,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9jeolr0j20er0ergv6.jpg','真是一场好戏啊',0,NULL,1510716685932,NULL),
(2332,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9h4w0xxj205i05iq2t.jpg','丢人现眼',0,NULL,1510716685932,NULL),
(2333,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9lr2x0fj205p04nt92.jpg','你们城里人可真牛逼',0,NULL,1510716685932,NULL),
(2334,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9i50w42j205i05iwec.jpg','我长得美不说游戏打的还很6，完全就是女神',0,NULL,1510716685932,NULL),
(2335,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9hhyt23j205405kaaf.jpg','不就因为昨晚内射么怀孕了，我娶你就是了',0,NULL,1510716685932,NULL),
(2336,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9nh0b1rj204g04bglx.jpg','没劲',0,NULL,1510716685932,NULL),
(2337,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gi3h3afj205a05a3z2.jpg','黑人瞪大眼珠子',0,NULL,1510716685932,NULL),
(2338,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9ogozu8g206o06odft.gif','看你们聊天像逛窑子一样刺激!',0,NULL,1510716685932,NULL),
(2339,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gjirwvug206o06owfa.gif','C哩C哩,C哩哟那',0,NULL,1510716685932,NULL),
(2340,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gjqjte2g207w07j0sw.gif','我很忙的还有十几条街等着我去逛呢告辞',0,NULL,1510716685932,NULL),
(2341,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9n9zql3g206v06xglp.gif','后生烫各蛋不',0,NULL,1510716685932,NULL),
(2342,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9o7orizg208c08cmxi.gif','其实我根本没人说，其实我没你不能活，其实我给你的爱比你想的多',0,NULL,1510716685932,NULL),
(2343,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9nqz1orj20hs0hsjxy.jpg',' CNM生气',0,NULL,1510716685932,NULL),
(2344,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9nuc9x1g205f054jrc.gif','阴阳人烂屁股',0,NULL,1510716685932,NULL),
(2345,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9pqq9g6g208c08cab6.gif','哎哟呕死了，呕死了，简直是不要脸',0,NULL,1510716685932,NULL),
(2346,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gjkhlurj205i05iwec.jpg','吃柠檬吧 Cnmb',0,NULL,1510716685932,NULL),
(2347,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flcvheb5xjj20e00hswpq.jpg','末法时代，邪祟横行',0,NULL,1510716685932,NULL),
(2348,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9mz83ueg208c08babe.gif','顫抖吧凡人! 你这是在自尋死路!!!',0,NULL,1510716685932,NULL),
(2349,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9g78rg2bj20al0arjrt.jpg','妹子戴口罩',0,NULL,1510716685932,NULL),
(2350,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9ghxjglhj205a05a0tv.jpg','蔺相如三连！（没关系、知道了、继续跪着吧）',0,NULL,1510716685932,NULL),
(2351,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9n5sncvj20hd0hs113.jpg','注意注意他鸡儿短',0,NULL,1510716685932,NULL),
(2352,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gi157aaj205a05adg2.jpg','吃鸡三大悲剧！有枪没子弹、有子弹没枪、抢车内被狙干。',0,NULL,1510716685932,NULL),
(2353,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gjgkdxng20760683yn.gif','老公睡觉觉啦',0,NULL,1510716685932,NULL),
(2354,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gjevqxqj205y06sjrf.jpg','世蚊仔!返屋企食蕉啦。',0,NULL,1510716685932,NULL),
(2355,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gjofjl4j205a05iglh.jpg','不要勾引我了,我没钱',0,NULL,1510716685932,NULL),
(2356,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9o9vj20j20fi0e4q36.jpg','这么大了还要我接啊，等我会马上接你回家!',0,NULL,1510716685932,NULL),
(2357,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flcvh3rph5j20gl0hs7kw.jpg','金拱门中指 ',0,NULL,1510716685932,NULL),
(2358,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9g72vmleg208c08ct8v.gif','狗带',0,NULL,1510716685932,NULL),
(2359,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flcvgrgp8zg206o060aa8.gif','给你个橘子',0,NULL,1510716685932,NULL),
(2360,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9ghz3xjuj205g05ijr9.jpg','屌',0,NULL,1510716685932,NULL),
(2361,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9pksr38g206o06ojrm.gif','我像个路人看你生活，心酸你的喜怒哀乐都不为我',0,NULL,1510716685932,NULL),
(2362,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9niqnpag206o06oaa2.gif','卧槽楼上掉的啥',0,NULL,1510716685932,NULL),
(2363,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9o3udvmj203c02ta9x.jpg','我恨了',0,NULL,1510716685932,NULL),
(2364,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9ph4ddxg208c08caaj.gif','我有什么办法啊',0,NULL,1510716685932,NULL),
(2365,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9qdzgkig208c08carc.gif','平底锅三连',0,NULL,1510716685932,NULL),
(2366,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9pe9o1ij20fw0hswle.jpg','你这女孩儿深不可测啊',0,NULL,1510716685932,NULL),
(2367,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9g7cbixkj207t082dft.jpg','三叶（你的名字）',0,NULL,1510716685932,NULL),
(2368,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gjmsdawg208c08cweq.gif','可以,这很Py',0,NULL,1510716685932,NULL),
(2369,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gjbm5qrg202g02sjrg.gif','拿烟的手，微微颤抖',0,NULL,1510716685932,NULL),
(2370,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9neay1fj205i0453yx.jpg','滚老子不想看见你',0,NULL,1510716685932,NULL),
(2371,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9g7amcqdj209o09qwel.jpg','奥巴马',0,NULL,1510716685932,NULL),
(2372,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9o5qgxlg206o077t95.gif','风和日丽的下午你走了，再也没回来，原来真正的离开都是悄无声息的',0,NULL,1510716685932,NULL),
(2373,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9oeylhpg206o06u0t6.gif','搞基加我,谢谢!',0,NULL,1510716685932,NULL),
(2374,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flcv671pevj205a05a3z2.jpg','大眼珠子',0,NULL,1510716685932,NULL),
(2375,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9mwrlrmj20hs0hn14y.jpg','接着说啊傻逼',0,NULL,1510716685932,NULL),
(2376,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9pnpf4lj20c80c8aah.jpg','吸猫伐',0,NULL,1510716685932,NULL),
(2377,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9mb4aa2j205c05cjrs.jpg','SIXSIXSIX',0,NULL,1510716685932,NULL),
(2378,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9ptcz4vj205k041js3.jpg','Take it ! this is your 250 yuan 拿去!这是你应得的!',0,NULL,1510716685932,NULL),
(2379,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9oukiseg204g04g11c.gif','气得蛋疼两个都疼',0,NULL,1510716685932,NULL),
(2380,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9oilhcrg208c08cgm2.gif','美女! 有空一起睡个觉呀!',0,NULL,1510716685932,NULL),
(2381,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9nsl22sg206o05iaa0.gif','工头催了,告辞',0,NULL,1510716685932,NULL),
(2382,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9g70y4qbj2068065748.jpg','萌妹子',0,NULL,1510716685932,NULL),
(2383,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9g76lqahj206o06oaa0.jpg','睡觉觉的小猫咪',0,NULL,1510716685932,NULL),
(2384,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flda14nvo6g206o06o16o.gif','棒棒棒',0,NULL,1510716685932,NULL),
(2385,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9oljs96g205i05iq37.gif','哼！！！',0,NULL,1510716685932,NULL),
(2386,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flcvi82og0g20540547p7.gif','向大佬低头',0,NULL,1510716685932,NULL),
(2387,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gj8aeumg208c08cjsk.gif','我什么都不想比',0,NULL,1510716685932,NULL),
(2388,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9nkvd17g205e05i74l.gif','你说有钱多好，我要有钱也这么玩',0,NULL,1510716685932,NULL),
(2389,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9p3awjwj20hs0hs46z.jpg','凄凉',0,NULL,1510716685932,NULL),
(2390,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9py7zgkg204403076s.gif','疯狂滑稽',0,NULL,1510716685932,NULL),
(2391,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flcv63fo0jg201t01kwea.gif','弹吉他',0,NULL,1510716685932,NULL),
(2392,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9n82d7cg20b40b4wf2.gif','妈的智障',0,NULL,1510716685932,NULL),
(2393,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flcuao16ipg205k04v1gc.gif','今天就看你装逼了',0,NULL,1510716685932,NULL),
(2394,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gj9t7vnj204d04e745.jpg','哼唧',0,NULL,1510716685932,NULL),
(2395,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9p653m7j205k05k0u7.jpg','我这就制死你',0,NULL,1510716685932,NULL),
(2396,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9g74r8bhj20am05x74a.jpg','偷看',0,NULL,1510716685932,NULL),
(2397,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fld9piyzjgg206o06l3ym.gif','为什么你吃的少还长胖',0,NULL,1510716685932,NULL),
(2398,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gjdahj1j2055059zk6.jpg','伺候好楼上这位大爷',0,NULL,1510716685932,NULL),
(2399,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fld9ocqmh5g206y06yjt2.gif','加油你是最胖的',0,NULL,1510716685932,NULL),
(2400,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9g6zf49zj202m02v3yb.jpg','教皇小黑人（可爱萌萌哒）',0,NULL,1510716685932,NULL),
(2401,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fld9ncduuyj20g40g3gm2.jpg','好可怕我得走',0,NULL,1510716685932,NULL),
(2402,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9o245ofj20hs0hs0ys.jpg','龟孙嘴巴放干净点',0,NULL,1510716685932,NULL),
(2403,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fld9mmy2csj20hs0hcwts.jpg','吓到我了,你个臭B',0,NULL,1510716685932,NULL),
(2404,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9giqyqixj206o06ot8n.jpg','我那里来的骚气',0,NULL,1510716685932,NULL),
(2405,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gl01h7fg206o06oaa6.gif','狗男人不仅jb屁大丑，JB还小！',0,NULL,1510716685932,NULL),
(2406,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaavxf0szj205k05kmx1.jpg','日常保持大火花，收到请回复!over!',0,NULL,1510716685932,NULL),
(2407,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaq5wjw3g202w02y760.gif','滑稽转圈圈（神力）',0,NULL,1510716685932,NULL),
(2408,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaad7ta5dg208c08c0sr.gif','我打死你个二货',0,NULL,1510716685932,NULL),
(2409,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gkw07k0g206o058mx9.gif','男人翻脸比翻书还快',0,NULL,1510716685932,NULL),
(2410,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaav446e9j2058046wef.jpg','给给给,专治傻逼,不含糖,还治肾亏',0,NULL,1510716685932,NULL),
(2411,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaadlo7saj20hs0hswf2.jpg','小鸭子',0,NULL,1510716685932,NULL),
(2412,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gkp8bduj20gc0hs0zl.jpg','大清早的叫你妈叫吃到屎了啊叫叫叫',0,NULL,1510716685932,NULL),
(2413,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gkxz65og208c08c74d.gif','男人真是磨磨唧唧',0,NULL,1510716685932,NULL),
(2414,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gj2o2xgg208c08c3ym.gif','看你那批格式',0,NULL,1510716685932,NULL),
(2415,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaadhgof5j205605igly.jpg','滑稽抱抱',0,NULL,1510716685932,NULL),
(2416,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaav2j2f1j20k00k076p.jpg','从天真到豁达你结实了多少人渣',0,NULL,1510716685932,NULL),
(2417,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaavb5pscg206k05adgl.gif','你的屁股好软啊',0,NULL,1510716685932,NULL),
(2418,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gii62e0j205404k74s.jpg','不不不我觉得是你',0,NULL,1510716685932,NULL),
(2419,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gilozdag208c069dfr.gif','我就这样看着你们的大肥腿',0,NULL,1510716685932,NULL),
(2420,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gip4wpkj202y03cgle.jpg','理不直气也壮',0,NULL,1510716685932,NULL),
(2421,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaavdv6mcj20k00k076y.jpg','从幼稚到成熟你吸收了多少精华',0,NULL,1510716685932,NULL),
(2422,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaw1m252j20jz0ipjso.jpg','再气我就跟你妈分手，不要你这个高狗杂种了',0,NULL,1510716685932,NULL),
(2423,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaadfd0l8j208c08cabj.jpg','Give me five!',0,NULL,1510716685932,NULL),
(2424,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaad66dwvg20b406maic.gif','没图了吧',0,NULL,1510716685932,NULL),
(2425,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaavog34bj207g05qdft.jpg','一副死相',0,NULL,1510716685932,NULL),
(2426,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gj66iqog208c08caaf.gif','虽然你穷，但我比你有钱啊哈哈哈哈哈滚',0,NULL,1510716685932,NULL),
(2427,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaadcs9n6g206o06o0su.gif','物理分析',0,NULL,1510716685932,NULL),
(2428,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaadncbgag208c08caa2.gif','伤心三连',0,NULL,1510716685932,NULL),
(2429,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gidrgteg206o06o3yo.gif','进群观望',0,NULL,1510716685932,NULL),
(2430,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gl7pjeog206o06omx5.gif','啊舒服',0,NULL,1510716685932,NULL),
(2431,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaavsw72hj209o0b00uw.jpg','咦那不是得了羊癫疯的傻逼管理员吗?',0,NULL,1510716685932,NULL),
(2432,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaavvw21bg206o06o747.gif','分析个屁',0,NULL,1510716685932,NULL),
(2433,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaauyv3ugj208w08wglr.jpg','单身',0,NULL,1510716685932,NULL),
(2434,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaavmv848g208c08c75d.gif','你的言语对我造成不了任何威胁',0,NULL,1510716685932,NULL),
(2435,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gi4zld1j205i05c3ye.jpg','我明白我收拾一下就滚',0,NULL,1510716685932,NULL),
(2436,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9ginlzkpj205h04bmx8.jpg','地下城与勇士,登录!',0,NULL,1510716685932,NULL),
(2437,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaadjo1nlj206o06odg7.jpg','玩手枪？Duang！',0,NULL,1510716685932,NULL),
(2438,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaadb234jg205a05adjg.gif','HI',0,NULL,1510716685932,NULL),
(2439,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaadp1kb9j205i05iq33.jpg','精神恍惚',0,NULL,1510716685932,NULL),
(2440,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gi6qpkvj206o06oaaa.jpg','等我举完,就打屎你',0,NULL,1510716685932,NULL),
(2441,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gl2rlcij205i04mt99.jpg','哧溜~',0,NULL,1510716685932,NULL),
(2442,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gkdoey4g207c03wwuf.gif','我们不一样!',0,NULL,1510716685932,NULL),
(2443,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaav5qxskg208c08cwei.gif','人家想给你暖床嘛',0,NULL,1510716685932,NULL),
(2444,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gkruhh7g208c08caah.gif','不敢相信这个点还有傻逼说早',0,NULL,1510716685932,NULL),
(2445,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaavj2smlj20k00k0tbn.jpg','从紧凑到松垮你承受了多少抽插',0,NULL,1510716685932,NULL),
(2446,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaa2bmgotg206o06onbs.gif','越想越烦',0,NULL,1510716685932,NULL),
(2447,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gj0wwvqj20qo0pfjt3.jpg','我想看你打飞机●b●●●●',0,NULL,1510716685932,NULL),
(2448,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gj4b5a7g208c08caa1.gif','看我弯头神功 ！',0,NULL,1510716685932,NULL),
(2449,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaavqc0czj208c08caau.jpg',',可以,这很有节操',0,NULL,1510716685932,NULL),
(2450,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaavkr5grj2082082jri.jpg','现在道歉还来得及',0,NULL,1510716685932,NULL),
(2451,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gibyndbj205n06o749.jpg','呵年轻人',0,NULL,1510716685932,NULL),
(2452,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaavzbh1ij206o06owfa.jpg','爸爸宣布装逼到此结束!各位晚安!（中国好爸爸）',0,NULL,1510716685932,NULL),
(2453,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gktuxntg206o06odfw.gif','爸爸打你多少回了就是不长记性',0,NULL,1510716685932,NULL),
(2454,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gjtrfs3g206o06ojrn.gif','说实话你离不开男人',0,NULL,1510716685932,NULL),
(2455,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaa2f8q90g206o06otcs.gif','我想砸键盘',0,NULL,1510716685932,NULL),
(2456,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gitl2pig2046046q3g.gif','劳资一拍胸就是一个么么哒',0,NULL,1510716685932,NULL),
(2457,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9giyd3cng206o06omyp.gif','你滚开',0,NULL,1510716685932,NULL),
(2458,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaav91mqzj20k00k0wgi.jpg','从干枯到湿润你温暖了多少黄瓜',0,NULL,1510716685932,NULL),
(2459,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaavuee55j204g039q2s.jpg','很屎,给我打',0,NULL,1510716685932,NULL),
(2460,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaa2hilsnj202o033glp.jpg','小黄狗背书包',0,NULL,1510716685932,NULL),
(2461,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9giadhnoj20hs0dwq2w.jpg','小好女孩',0,NULL,1510716685932,NULL),
(2462,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9giffp46g208c08c74d.gif','管理员非礼啦管理员',0,NULL,1510716685932,NULL),
(2463,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaavfzn9pj20k00k0759.jpg','送给你呀（爱心）',0,NULL,1510716685932,NULL),
(2464,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gijymb4j205i05iwel.jpg','不你妈了个逼!',0,NULL,1510716685932,NULL),
(2465,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9givq3ovj204c04ijr7.jpg','不能因为你是疯狗你就乱咬人啊',0,NULL,1510716685932,NULL),
(2466,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaa1z28l4j205i059dfv.jpg','哼，宝宝生气了',0,NULL,1510716685932,NULL),
(2467,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaa20kh0ij202s02swea.jpg','胖虎激光biubiubiu',0,NULL,1510716685932,NULL),
(2468,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9ghusuw8j2020027dfp.jpg','差评（滑稽）',0,NULL,1510716685932,NULL),
(2469,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaa2j5ssbj201a01bq31.jpg','小猫',0,NULL,1510716685932,NULL),
(2470,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gi8swvbj20go0bjmxo.jpg','有较强的自我管理为识',0,NULL,1510716685932,NULL),
(2471,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gl5vpvag205k05kmxp.gif','你想对伦家干嘛',0,NULL,1510716685932,NULL),
(2472,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaad66dwvg20b406maic.gif','没图了吧',0,NULL,1510716685932,NULL),
(2473,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaav91mqzj20k00k0wgi.jpg','从干枯到湿润你温暖了多少黄瓜',0,NULL,1510716685932,NULL),
(2474,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaatkoxdrg206o06ojru.gif','这个freestyle还不错',0,NULL,1510716685932,NULL),
(2475,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaau34nwqj205405kmx2.jpg','是时候开车了',0,NULL,1510716685932,NULL),
(2476,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaatn36w9j208c08cjsa.jpg','别这样,佩奇~佩奇~是会生气的,哼',0,NULL,1510716685932,NULL),
(2477,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaadlo7saj20hs0hswf2.jpg','小鸭子',0,NULL,1510716685932,NULL),
(2478,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaau6yl53j208c08cglv.jpg','我不是骗子',0,NULL,1510716685932,NULL),
(2479,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaavfzn9pj20k00k0759.jpg','送给你呀（爱心）',0,NULL,1510716685932,NULL),
(2480,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaupukxng208c08caal.gif','师娘我跟你嗦!师父给我找过这一么多的前师娘。',0,NULL,1510716685932,NULL),
(2481,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbhmhozasj209m0amq31.jpg','开心就好',0,NULL,1510716685932,NULL),
(2482,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbhaa2t0ij20hs0go751.jpg','丑！',0,NULL,1510716685932,NULL),
(2483,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaatr92e9j20k00k0jsb.jpg','成熟的人不将情绪写在脸上，他们都有自己的表情包',0,NULL,1510716685932,NULL),
(2484,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbhme0oc4j20ib0cxab5.jpg','猫老师',0,NULL,1510716685932,NULL),
(2485,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaavj2smlj20k00k0tbn.jpg','从紧凑到松垮你承受了多少抽插',0,NULL,1510716685932,NULL),
(2486,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaadfd0l8j208c08cabj.jpg','Give me five!',0,NULL,1510716685932,NULL),
(2487,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaatt7a1aj208c08c74p.jpg','取经路上我会想你的',0,NULL,1510716685932,NULL),
(2488,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaux5px3j20k00k0acd.jpg','从东莞到乡下你躲过了多少严打',0,NULL,1510716685932,NULL),
(2489,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaauu85smj20k00k0q5q.jpg','从校服到婚纱，你摇散了多少床榻',0,NULL,1510716685932,NULL),
(2490,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaauhlccij208c08cgm1.jpg','您的电话已欠费请充值后再拨!嘟嘟嘟',0,NULL,1510716685932,NULL),
(2491,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaavzbh1ij206o06owfa.jpg','爸爸宣布装逼到此结束!各位晚安!（中国好爸爸）',0,NULL,1510716685932,NULL),
(2492,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaadcs9n6g206o06o0su.gif','物理分析',0,NULL,1510716685932,NULL),
(2493,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbhndnswuj20f20haabl.jpg','这几天总有一些傻逼，总会发这种傻逼东西，还很傻逼让别人帮忙点（腾讯吃鸡内测）',0,NULL,1510716685932,NULL),
(2494,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaadncbgag208c08caa2.gif','伤心三连',0,NULL,1510716685932,NULL),
(2495,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaadb234jg205a05adjg.gif','HI',0,NULL,1510716685932,NULL),
(2496,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbhmfz4buj20g40bbmxf.jpg','别怕有宝宝在',0,NULL,1510716685932,NULL),
(2497,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaatzsstjj206q08c75j.jpg','妈妈这个人好丑',0,NULL,1510716685932,NULL),
(2498,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaauyv3ugj208w08wglr.jpg','单身',0,NULL,1510716685932,NULL),
(2499,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaunre0oj20k00k076e.jpg','从粉嫩到紫罴你经历了多少摩擦',0,NULL,1510716685932,NULL),
(2500,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaadhgof5j205605igly.jpg','滑稽抱抱',0,NULL,1510716685932,NULL),
(2501,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaavuee55j204g039q2s.jpg','很屎,给我打',0,NULL,1510716685932,NULL),
(2502,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbhnf4jeij201q01ot8k.jpg','严肃',0,NULL,1510716685932,NULL),
(2503,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaauraom5j202s02odfn.jpg','不要无理取闹',0,NULL,1510716685932,NULL),
(2504,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaau1j2anj206908cq2z.jpg','别瞪我易碎',0,NULL,1510716685932,NULL),
(2505,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbhnbcs95j203203cq2q.jpg','锤鸭头',0,NULL,1510716685932,NULL),
(2506,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaatx2u3dg206o06o74q.gif','快睡吧，小命重要',0,NULL,1510716685932,NULL),
(2507,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaav5qxskg208c08cwei.gif','人家想给你暖床嘛',0,NULL,1510716685932,NULL),
(2508,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaufsix1g206o06o74q.gif','灼热分析',0,NULL,1510716685932,NULL),
(2509,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaav2j2f1j20k00k076p.jpg','从天真到豁达你结实了多少人渣',0,NULL,1510716685932,NULL),
(2510,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaavmv848g208c08c75d.gif','你的言语对我造成不了任何威胁',0,NULL,1510716685932,NULL),
(2511,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaavsw72hj209o0b00uw.jpg','咦那不是得了羊癫疯的傻逼管理员吗?',0,NULL,1510716685932,NULL),
(2512,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaul3u2pj20a30bm3yn.jpg','痛苦不堪',0,NULL,1510716685932,NULL),
(2513,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaavog34bj207g05qdft.jpg','一副死相',0,NULL,1510716685932,NULL),
(2514,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbha3ziq9g204z02taa2.gif','双熊猫鼓掌',0,NULL,1510716685932,NULL),
(2515,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbhac3nw5j20go0fzt99.jpg','小熊嘴巴叼玫瑰',0,NULL,1510716685932,NULL),
(2516,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaav446e9j2058046wef.jpg','给给给,专治傻逼,不含糖,还治肾亏',0,NULL,1510716685932,NULL),
(2517,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaavqc0czj208c08caau.jpg',',可以,这很有节操',0,NULL,1510716685932,NULL),
(2518,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaad7ta5dg208c08c0sr.gif','我打死你个二货',0,NULL,1510716685932,NULL),
(2519,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaatp1o1jg206o06o74r.gif','停，我不想听你分析',0,NULL,1510716685932,NULL),
(2520,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbhn9pakpg205u04fnpd.gif','小老鼠吃东西',0,NULL,1510716685932,NULL),
(2521,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaavb5pscg206k05adgl.gif','你的屁股好软啊',0,NULL,1510716685932,NULL),
(2522,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaatv5g4lj20k00jxwf2.jpg','小心我踢爆你的狗头',0,NULL,1510716685932,NULL),
(2523,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaavxf0szj205k05kmx1.jpg','日常保持大火花，收到请回复!over!',0,NULL,1510716685932,NULL),
(2524,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaau4wgz6g206o06o74c.gif','你再分析下试试',0,NULL,1510716685932,NULL),
(2525,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaadjo1nlj206o06odg7.jpg','玩手枪？Duang！',0,NULL,1510716685932,NULL),
(2526,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaavvw21bg206o06o747.gif','分析个屁',0,NULL,1510716685932,NULL),
(2527,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaauattsrj205305iglq.jpg','我要碎觉了',0,NULL,1510716685932,NULL),
(2528,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaucca69j205i05c745.jpg','一夜800爱干干,不干滚',0,NULL,1510716685932,NULL),
(2529,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaavdv6mcj20k00k076y.jpg','从幼稚到成熟你吸收了多少精华',0,NULL,1510716685932,NULL),
(2530,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaw1m252j20jz0ipjso.jpg','再气我就跟你妈分手，不要你这个高狗杂种了',0,NULL,1510716685932,NULL),
(2531,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbha5morkj208d08d74c.jpg','可爱妹子',0,NULL,1510716685932,NULL),
(2532,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaujg06wj208c08cjrv.jpg','你想让本猪猪认输???放弃吧,骚年',0,NULL,1510716685932,NULL),
(2533,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaavkr5grj2082082jri.jpg','现在道歉还来得及',0,NULL,1510716685932,NULL),
(2534,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaau8y50vg206o06oglq.gif','你的分析，值得佩服',0,NULL,1510716685932,NULL),
(2535,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaudy8h7j208c08cjrn.jpg','垂死病中惊坐起，我的秋裤在哪里',0,NULL,1510716685932,NULL),
(2536,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbha7msb0j207s09qmxe.jpg','Q版马云',0,NULL,1510716685932,NULL),
(2537,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaq5wjw3g202w02y760.gif','滑稽转圈圈（神力）',0,NULL,1510716685932,NULL),
(2538,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaatisrjlj2073073mxu.jpg','傻逼逗比就是你,群主',0,NULL,1510716685932,NULL),
(2539,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaadp1kb9j205i05iq33.jpg','精神恍惚',0,NULL,1510716685932,NULL),
(2540,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi52unb9g20770680sx.gif','瓜子，你把你自己给我',0,NULL,1510716685932,NULL),
(2541,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi5q2r04g206o06odfy.gif','来阿，作乐嘛',0,NULL,1510716685932,NULL),
(2542,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi3n6zyzg208c08cgmb.gif','世界太大,我要去量量',0,NULL,1510716685932,NULL),
(2543,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi4mm00oj20d40asglp.jpg','我的倔强',0,NULL,1510716685932,NULL),
(2544,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi5o7lmxj20hs0bsmxk.jpg','在违法的边缘试探',0,NULL,1510716685932,NULL),
(2545,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi5cruvhj203c03ma9v.jpg','这个时候要装傻',0,NULL,1510716685932,NULL),
(2546,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi3p0vloj206o06o749.jpg','你不用担心我们合不合适，我百搭',0,NULL,1510716685932,NULL),
(2547,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbho06dlcg208c08cmx1.gif','考试三连',0,NULL,1510716685932,NULL),
(2548,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi0biz8bg207s05u7wh.gif','妈的智障！（举牌）',0,NULL,1510716685932,NULL),
(2549,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi5vsin2g208c08cmxg.gif','这位同学你女朋友掉了!捡不捡?我就问你捡不捡?',0,NULL,1510716685932,NULL),
(2550,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi5ehz9og208c08cglu.gif','不是我打不上去,排到队友全智障,懂不',0,NULL,1510716685932,NULL),
(2551,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbhmbuexxj207w05c0st.jpg','红尘琐事，老衲早已无牵挂！',0,NULL,1510716685932,NULL),
(2552,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi590ozxg208c08cdgg.gif','戴上这个小皇冠你就是我小仙女',0,NULL,1510716685932,NULL),
(2553,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbhma0bh7j20ad0ad74m.jpg','先生工口',0,NULL,1510716685932,NULL),
(2554,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi3ajatzj205i054744.jpg','聊着聊着就不回了，坟头信号不好了是吧',0,NULL,1510716685932,NULL),
(2555,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbhnwsqirg207w09xtzl.gif','鸡鸡',0,NULL,1510716685932,NULL),
(2556,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbhm7kgmwg2064065e82.gif','摸猫头',0,NULL,1510716685932,NULL),
(2557,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi30p29lg208c06974s.gif','自由翱翔',0,NULL,1510716685932,NULL),
(2558,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi3ko540g208c08cdg9.gif','你是想搞事情吗',0,NULL,1510716685932,NULL),
(2559,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi3cclxrg208c08tt92.gif','人成熟了就喜欢黑色',0,NULL,1510716685932,NULL),
(2560,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi4u6g5jg208c08caan.gif','这是在烤猪吗？怎么还在冒烟',0,NULL,1510716685932,NULL),
(2561,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi35oxf9g208c08cmy3.gif','老公啊!',0,NULL,1510716685932,NULL),
(2562,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi46b3sxj20k00k0aax.jpg','穿个马甲我就不认识你了?',0,NULL,1510716685932,NULL),
(2563,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbhky6cv0j20b70b6mx9.jpg','小萌狗',0,NULL,1510716685932,NULL),
(2564,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi4a6gu5j205h05it8t.jpg','连麦吗？萝莉音',0,NULL,1510716685932,NULL),
(2565,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi0uyag7j2060063t9z.jpg','征婚启示，有房有车，谁嫁给我',0,NULL,1510716685932,NULL),
(2566,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi3gdxl6j20ij0hodgj.jpg','我想看你打飞机',0,NULL,1510716685932,NULL),
(2567,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi4467tfj205i03mq2s.jpg','命运的滑稽由我来斩断!',0,NULL,1510716685932,NULL),
(2568,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi5ke4w4j206o06odgc.jpg','别这样我好害怕',0,NULL,1510716685932,NULL),
(2569,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbho5h89gg206o06o0vm.gif','我去切法师！',0,NULL,1510716685932,NULL),
(2570,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi3ionerg208c08c74q.gif','可以,这很饥渴',0,NULL,1510716685932,NULL),
(2571,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi37f7rjg208c08cmx7.gif','难道不是我最可爱',0,NULL,1510716685932,NULL),
(2572,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi56oawkj207e05vt8m.jpg','目光呆滞',0,NULL,1510716685932,NULL),
(2573,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi40ngtcj20a307g74g.jpg','红尘琐事，老衲早已无牵挂，再漂亮的腿也只是一副炮架，再好看的胸也只是一对扶手罢了。',0,NULL,1510716685932,NULL),
(2574,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi4py9ekg208c08cmx8.gif','搞事情又怎样',0,NULL,1510716685932,NULL),
(2575,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi0qlm4jg208c08cjrx.gif','如何一日练成（PY交易、葵花宝典）',0,NULL,1510716685932,NULL),
(2576,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi5s554pj20j60j60tk.jpg','我们先表面上迎合他一下羡慕羡慕，但实际上我真的很羡慕',0,NULL,1510716685932,NULL),
(2577,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi4c3fadj205i04zq33.jpg','不是我不想主C，是我不出货,不出货你懂吗',0,NULL,1510716685932,NULL),
(2578,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi5b9eznj20k00cmdgm.jpg','社&hellip;射惠,射惠',0,NULL,1510716685932,NULL),
(2579,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbhkuiulpg208c069dgk.gif','果然长得帅，处处受排挤！',0,NULL,1510716685932,NULL),
(2580,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi4s2pwgg208c08ct90.gif','感觉已经是一只废鸭了',0,NULL,1510716685932,NULL),
(2581,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbhkwfmlsj206o06odg7.jpg','傻逼没有、傻人有傻福，你不用算，刘伯温三连',0,NULL,1510716685932,NULL),
(2582,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbhnykt09j203i03g0so.jpg','对不起了孙子，你知道的太多了。',0,NULL,1510716685932,NULL),
(2583,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi4wadaij20c80c8q3b.jpg','总有一天我回踏着七彩祥云去取你（狗头）',0,NULL,1510716685932,NULL),
(2584,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi4i9yokj208c0693yg.jpg','我真的好喜欢好喜欢你诶',0,NULL,1510716685932,NULL),
(2585,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi4oagb0g208c08cgln.gif','NO ZUO NO DIE',0,NULL,1510716685932,NULL),
(2586,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi4ksdc7j20pa0ns75y.jpg','我擦这狗屌!',0,NULL,1510716685932,NULL),
(2587,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi48ec13g206o06oaaf.gif','开心点',0,NULL,1510716685932,NULL),
(2588,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi4egzm7j20iz0h33zi.jpg','你这条野狗这有舔屎的命，吃饱了就出来乱咬人',0,NULL,1510716685932,NULL),
(2589,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi3qrlutj208a06ewek.jpg','暗中观察,伺稽而动（滑稽）',0,NULL,1510716685932,NULL),
(2590,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi5gdk93j208c069wes.jpg','发哥牛逼!',0,NULL,1510716685932,NULL),
(2591,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi5532dfg208c08ct9t.gif','孤独成狗也不知道和谁说',0,NULL,1510716685932,NULL),
(2592,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi4yznb1g208c08c0uv.gif','你这是不想对我负责吗?',0,NULL,1510716685932,NULL),
(2593,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi3ypsdog206e08cgmc.gif','哦呵呵',0,NULL,1510716685932,NULL),
(2594,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi5ii5e5j20d50eg0to.jpg','这熟悉的光,是我的青春',0,NULL,1510716685932,NULL),
(2595,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi42lg8rj20d80d0mxk.jpg','不得了，不得了',0,NULL,1510716685932,NULL),
(2596,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi5txbeej208c08c3ym.jpg','几年级的这么屌?',0,NULL,1510716685932,NULL),
(2597,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi3sdxhbg208c08cgln.gif','智商直线下降',0,NULL,1510716685932,NULL),
(2598,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbhl02lsng205s05sq37.gif','宝宝起来了',0,NULL,1510716685932,NULL),
(2599,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi3eau1xg208c08cdg4.gif','你可能爱上了假妹子',0,NULL,1510716685932,NULL),
(2600,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi3ugzbig208c08cglz.gif','劳资稀饭你!',0,NULL,1510716685932,NULL),
(2601,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi390m7vg206o06oaa1.gif','朽木不可雕也',0,NULL,1510716685932,NULL),
(2602,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi514lrwg208c08c3z2.gif','太阳你给我下来',0,NULL,1510716685932,NULL),
(2603,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbho8gf2wj207j06ptac.jpg','儿子都几点了，还不滚去上学？',0,NULL,1510716685932,NULL),
(2604,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi5m4bthj206x06v74h.jpg','不慌!老公在呢',0,NULL,1510716685932,NULL),
(2605,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi3wj35yj206o06o3z1.jpg','行行行，你流弊你闪电你用菜刀砍电线',0,NULL,1510716685932,NULL),
(2606,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi0fkltnj20qo0zkdj2.jpg','装逼散',0,NULL,1510716685932,NULL),
(2607,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi4gkxdmj205u05qt97.jpg','肥猫帅琪，你帅个毛!',0,NULL,1510716685932,NULL),
(2608,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi1xo8n7g206o06oaat.gif','你个傻狗',0,NULL,1510716685932,NULL),
(2609,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi0seil6g208c08caab.gif','可以,就很唯美。',0,NULL,1510716685932,NULL),
(2610,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi2juzaeg208c08ct8w.gif','C哩C哩C哩要来干',0,NULL,1510716685932,NULL),
(2611,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi2tbu8cg207p08cglj.gif','想你，老戴里都是你',0,NULL,1510716685932,NULL),
(2612,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi2ch40kj208f07z74b.jpg','您配吗?',0,NULL,1510716685932,NULL),
(2613,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaatgp910j205i05i74f.jpg','平胸怪兽',0,NULL,1510716685932,NULL),
(2614,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi10joixg208c08cdg8.gif','可以很强势',0,NULL,1510716685932,NULL),
(2615,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbhyw7yixj201w01ta9t.jpg','呵,女人',0,NULL,1510716685932,NULL),
(2616,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi1t269og2060060n8n.gif','等一个亲亲',0,NULL,1510716685932,NULL),
(2617,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi2eb4ysj205i05bdfz.jpg','你长的丑不说，游戏也是菜的一比',0,NULL,1510716685932,NULL),
(2618,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi2amvdrg208c08c0tk.gif','宝宝要抱',0,NULL,1510716685932,NULL),
(2619,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi0op4klg208c08cq44.gif','我筒直不敢相信',0,NULL,1510716685932,NULL),
(2620,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaasuopzdg208c07175p.gif','怂翻在地',0,NULL,1510716685932,NULL),
(2621,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi0hej8jg208c08cwen.gif','与班助跳极乐净土',0,NULL,1510716685932,NULL),
(2622,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi0wojdjg208c08cdfx.gif','考神保佑考试顺利通过',0,NULL,1510716685932,NULL),
(2623,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbhzd71l6j205g05jq3g.jpg','或许这就是傻逼（大佬）吧',0,NULL,1510716685932,NULL),
(2624,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi2g1gjrj205805i3yp.jpg','全新乡都你叼能',0,NULL,1510716685932,NULL),
(2625,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi2x7oanj208c08cmxt.jpg','三色堇代表思慕',0,NULL,1510716685932,NULL),
(2626,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi1i2m53g206y05b748.gif','笑死沃利',0,NULL,1510716685932,NULL),
(2627,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbhyzora9g208c08cq2y.gif','我是粉色宝宝',0,NULL,1510716685932,NULL),
(2628,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaat96jhxg208c08caa6.gif','可以。一晚三次',0,NULL,1510716685932,NULL),
(2629,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi1ep4kvg203c03naa2.gif','秘技.反复横跳（滑稽）',0,NULL,1510716685932,NULL),
(2630,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi146c3qg208c08caa7.gif','不是游戏的问题，不是因为运气不好，还不是因为你钱充的不够多',0,NULL,1510716685932,NULL),
(2631,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbhzf0lpwg208c08cjrw.gif','贫僧法号滑稽',0,NULL,1510716685932,NULL),
(2632,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi26knmdg208c08cgm0.gif','关爱后排智障',0,NULL,1510716685932,NULL),
(2633,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaatcswmfj205g04y0t7.jpg','这些APP是不会给你带来爱情的',0,NULL,1510716685932,NULL),
(2634,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi0ylk4vg208c08cgly.gif','对此我很茫然',0,NULL,1510716685932,NULL),
(2635,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbhz6zwo1g208c08c0sr.gif','仙女是假的啊!',0,NULL,1510716685932,NULL),
(2636,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbhz5bch1g206o06o0sl.gif','分析得不错',0,NULL,1510716685932,NULL),
(2637,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi2hze24j206705nglw.jpg','我玄孙来了，大家热烈欢迎!',0,NULL,1510716685932,NULL),
(2638,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi0k1h14j20k00k0dh0.jpg','网恋吗。分手就割腕',0,NULL,1510716685932,NULL),
(2639,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaat6tn16g208c08c0tc.gif','沉迷在洗澡中无法自拔',0,NULL,1510716685932,NULL),
(2640,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbhz8tmujg206o06o0ss.gif','流汗分析',0,NULL,1510716685932,NULL),
(2641,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi24sdcfg208c08cdg3.gif','像你们这么嚣张的人般会死的很惨小的',0,NULL,1510716685932,NULL),
(2642,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbhzavvcqg208c08caa7.gif','满脸威胁',0,NULL,1510716685932,NULL),
(2643,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbhzhntjbj20fe0kht9h.jpg','黑人当真',0,NULL,1510716685932,NULL),
(2644,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi12dog4g208c08c3yk.gif','这锅我背了,谁怕谁啊!',0,NULL,1510716685932,NULL),
(2645,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi0ls8j0j2082081wek.jpg','明天下午把你姐骗来后山听到没?',0,NULL,1510716685932,NULL),
(2646,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi2ntlolg208c08ct9d.gif','可以这很肮脏',0,NULL,1510716685932,NULL),
(2647,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi16avf1g208c08cq3o.gif','狗管理给我找两个小妞',0,NULL,1510716685932,NULL),
(2648,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaasytuigj20hs0hsjs8.jpg','照顾每个人的感受，注定自己不会好受',0,NULL,1510716685932,NULL),
(2649,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbhz1t1bug206o06owey.gif','我来分析下',0,NULL,1510716685932,NULL),
(2650,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaatezxjrj20k00jw3z2.jpg','贱货，去死吧',0,NULL,1510716685932,NULL),
(2651,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbhyuor0zj206y06ymx7.jpg','看你这个戏精怎么表演',0,NULL,1510716685932,NULL),
(2652,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaswetxgg208c07q3yw.gif','歪，妖妖灵吗',0,NULL,1510716685932,NULL),
(2653,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi33egjlg208c08cgme.gif','我想逛街买衣服',0,NULL,1510716685932,NULL),
(2654,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi2ypvusj203v03cmwy.jpg','顶级无疑!',0,NULL,1510716685932,NULL),
(2655,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaat0kg5tj208c08ct8r.jpg','我可能造了个假人',0,NULL,1510716685932,NULL),
(2656,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi1vfv8zg208c08c0tk.gif','本爸爸登场啦',0,NULL,1510716685932,NULL),
(2657,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi1zgodgg206o06ot8u.gif','可以这很虐心',0,NULL,1510716685932,NULL),
(2658,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi2v9d08g206v07it98.gif','Ta一定喜欢我',0,NULL,1510716685932,NULL),
(2659,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbhz3pat2g206n06ogm6.gif','我装作听不懂的样子',0,NULL,1510716685932,NULL),
(2660,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi214fnvg208c08ct8u.gif','出来混,迟早都要还的',0,NULL,1510716685932,NULL),
(2661,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbhyy1th3g208c08cq36.gif','我可能对了假答案',0,NULL,1510716685932,NULL),
(2662,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi1d3vwgg206o06ojvu.gif','急还想上者?',0,NULL,1510716685932,NULL),
(2663,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaat4bopyg208c08ct98.gif','认真学习.JPG',0,NULL,1510716685932,NULL),
(2664,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi1gfxnsj208608x3yn.jpg','信不信我捏得你奶子哇哇的叫',0,NULL,1510716685932,NULL),
(2665,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaat21h0lg206o06o3yf.gif','慌忙分析',0,NULL,1510716685932,NULL),
(2666,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaatayb8lg206o06oglm.gif','不去分析',0,NULL,1510716685932,NULL),
(2667,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi2luthbg208c08c0sz.gif','老子不稀罕',0,NULL,1510716685932,NULL),
(2668,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbhzlowq5j20b40b4mxc.jpg','不买 iphonex，怎么装X',0,NULL,1510716685932,NULL),
(2669,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi22q40dj206y070q2v.jpg','你怎么不左脚踩右脚，右脚踩左脚飞上天呢',0,NULL,1510716685932,NULL),
(2670,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flbi2rojhuj204q05idg2.jpg','你那么叼,你能忍住一年不打飞机吗',0,NULL,1510716685932,NULL),
(2671,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flbi2pvf0zg2073073gm6.gif','我的五杀呢',0,NULL,1510716685932,NULL),
(2672,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbi1824ntg206o06omxc.gif','炮山有路约为经，污海无涯骚做舟',0,NULL,1510716685932,NULL),
(2673,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi2888x2g208c08cmx8.gif','亲生的没毛病',0,NULL,1510716685932,NULL),
(2674,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flbi1k55vog206h08cmxm.gif','你才是牛粪!',0,NULL,1510716685932,NULL),
(2675,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flbhzjjtxjg208c08cglw.gif','敌军投降认输',0,NULL,1510716685932,NULL),
(2676,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaarbdx93g208c08cjrl.gif','他敢勾引我，你现在亲在我嘴唇上',0,NULL,1510716685932,NULL),
(2677,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaargloh1g208c068q2x.gif','周末浪催的',0,NULL,1510716685932,NULL),
(2678,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaap714fij20dg08k0t6.jpg','敲里吗？千李凉！敲李！',0,NULL,1510716685932,NULL),
(2679,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaarlvgrlg206o06odfr.gif','难得分析',0,NULL,1510716685932,NULL),
(2680,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaapvgk2qg206o06omx3.gif','芭芭拉能量都是爱你的形状',0,NULL,1510716685932,NULL),
(2681,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaslqofvj205i0570st.jpg','你是gay,兄弟',0,NULL,1510716685932,NULL),
(2682,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaasc4496j206y06y3zi.jpg','世界那么大为何我还没对象',0,NULL,1510716685932,NULL),
(2683,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaarf0sxig206o06o0ss.gif','作业堆成山，我只能在家里浪',0,NULL,1510716685932,NULL),
(2684,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaqbh0u8g208c08cglo.gif','考神在此，何不跪拜',0,NULL,1510716685932,NULL),
(2685,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaar3ystug208c08cmx5.gif','我可能收到了假成績',0,NULL,1510716685932,NULL),
(2686,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaapmlj6wj20hr0hr0tl.jpg','做不做大哥的狗子',0,NULL,1510716685932,NULL),
(2687,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaasfcqf4g208c08cwek.gif','因为老娘是成鱼啊',0,NULL,1510716685932,NULL),
(2688,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaarzmcr7j204d04dt8i.jpg','一脸天真（小猫）',0,NULL,1510716685932,NULL),
(2689,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaas80cx7j206o06omxa.jpg','你小你先说',0,NULL,1510716685932,NULL),
(2690,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaassb5hgj205205i3ye.jpg','我他妈&hellip;不想理你傻逼',0,NULL,1510716685932,NULL),
(2691,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaapkbq68j205i05h0sk.jpg','黑纹湿哦 Dark wet oh',0,NULL,1510716685932,NULL),
(2692,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaapok8c3j205i05i74g.jpg','傻逼!操你妈逼的，别你麻痹的废话了来打我啊',0,NULL,1510716685932,NULL),
(2693,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaqee7l1j20k00k0myj.jpg','别老说我坑，能不能反思一下自己为什么会匹配到我唉&hellip;全是傻逼全是',0,NULL,1510716685932,NULL),
(2694,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaasidusrg207j08cwg6.gif','鄙视（小猫）',0,NULL,1510716685932,NULL),
(2695,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaqpjoapj205a05iweb.jpg','都是废物，没一个会斗图的',0,NULL,1510716685932,NULL),
(2696,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaarrtwvig208c08cgmq.gif','一股迪拜，哎呀你好牛逼',0,NULL,1510716685932,NULL),
(2697,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaqmc39ag208c08cmxz.gif','已经忘记放假的滋味',0,NULL,1510716685932,NULL),
(2698,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaapavh6ag208c08c0ta.gif','与新生一赶跳极乐净土',0,NULL,1510716685932,NULL),
(2699,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaqfwn3bj204g044a9v.jpg','我一鸡巴插死你',0,NULL,1510716685932,NULL),
(2700,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaask3q1tj206o06o3yo.jpg','今天星期几',0,NULL,1510716685932,NULL),
(2701,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaqhhrm0g205t05t3yh.gif','剁不完的手',0,NULL,1510716685932,NULL),
(2702,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaas1ofqfj208c06874j.jpg','打架?粗鲁,我可是文明人砖头?没有啊!我没拿',0,NULL,1510716685932,NULL),
(2703,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaasqqe95j20qo0qotan.jpg','珍惜最后两个小时',0,NULL,1510716685932,NULL),
(2704,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaasdre42g206o06oglm.gif','盲人选手（绝地吃鸡）',0,NULL,1510716685932,NULL),
(2705,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaapxqwybg206y0823z4.gif','自己不会做啊?',0,NULL,1510716685932,NULL),
(2706,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaas3mbxzj208c08cdfz.jpg','有人网恋吗？骗了钱我就把你这臭嗨删了！',0,NULL,1510716685932,NULL),
(2707,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaqupz9fg208c08cmxg.gif','巴啦啦能量，乌卡拉卡黑暗料理召唤术',0,NULL,1510716685932,NULL),
(2708,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaar6gk5mg208c07dt9g.gif','开心到起飞',0,NULL,1510716685932,NULL),
(2709,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaph7w7lj205i02xt8j.jpg','当然不一样我是人你是狗',0,NULL,1510716685932,NULL),
(2710,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaq81yyhg208c08caak.gif','安静!安静!吵到我吃香辣鸡排了',0,NULL,1510716685932,NULL),
(2711,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaps64ojj205i05djs1.jpg','没图了吧',0,NULL,1510716685932,NULL),
(2712,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaark8ot3j205i05ct8j.jpg','不要慌,问题不大',0,NULL,1510716685932,NULL),
(2713,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaptscwuj206o06omx4.jpg','你到底分不分析',0,NULL,1510716685932,NULL),
(2714,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaqztp3yg208c07pq2v.gif','我看见她提着刀过来了,我先溜了二蛋,over!',0,NULL,1510716685932,NULL),
(2715,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaq17vmcj206o06oglm.jpg','闭嘴吧你个中老年妇女',0,NULL,1510716685932,NULL),
(2716,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaardbxwcg208c08cjro.gif','我不下地狱,谁爱下谁下',0,NULL,1510716685932,NULL),
(2717,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaap4izotg208c08ct8o.gif','每个失败恋情的背后，都有一个我比他帅故事',0,NULL,1510716685932,NULL),
(2718,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaru70qhg208c08c0th.gif','叫声爸爸给你钱花',0,NULL,1510716685932,NULL),
(2719,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaqy73z8g208c08cmx6.gif','扇死你个傻逼',0,NULL,1510716685932,NULL),
(2720,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaapzasmng208w08wgli.gif','。。。。呃',0,NULL,1510716685932,NULL),
(2721,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaar9jigdg208c08c0sn.gif','除了帅我一无所有',0,NULL,1510716685932,NULL),
(2722,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaqsxipug208c08cmx3.gif','我爱秋裤,秋裤爱我',0,NULL,1510716685932,NULL),
(2723,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaq9qrv0g206o06ojrf.gif','生物好复杂的，就是就是',0,NULL,1510716685932,NULL),
(2724,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaq2rucdj203c03c746.jpg','那个妇女请注意你的措辞',0,NULL,1510716685932,NULL),
(2725,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaarnivlsg208c08c74b.gif','区区人类敢和我等国宝争斗',0,NULL,1510716685932,NULL),
(2726,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaap8vgy4j206o06o74o.jpg','你是神经有问题，还是月经有问题',0,NULL,1510716685932,NULL),
(2727,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaarxyoe4g208c08cwf1.gif','你缺钙!还是智障',0,NULL,1510716685932,NULL),
(2728,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaasnoiiyg208c07w3ys.gif','在泥的心上，自由的飞翔',0,NULL,1510716685932,NULL),
(2729,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaqwgm63j205a06rweg.jpg','我要去告老师，老师他没穿内裤',0,NULL,1510716685932,NULL),
(2730,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaar25jovj208c08caao.jpg','可以,这很蒙圈',0,NULL,1510716685932,NULL),
(2731,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaapdkuzpg208c08cq4c.gif','满脸都写着高兴',0,NULL,1510716685932,NULL),
(2732,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaqo3khfj204u05it8u.jpg','你他妈最好去死死得远远的',0,NULL,1510716685932,NULL),
(2733,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaqrcikng206s07g3yo.gif','当然啊，本仙女早就成仙了',0,NULL,1510716685932,NULL),
(2734,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaas68pxgj20hs0hsjs0.jpg','时间不知道说什么。就这样吧。',0,NULL,1510716685932,NULL),
(2735,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaas9ofdlg208c08cmx4.gif','无所畏惧 Unafraid',0,NULL,1510716685932,NULL),
(2736,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaarvudloj206o06o3yg.jpg','气死我了',0,NULL,1510716685932,NULL),
(2737,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaariouw0j205o049jrl.jpg','逆儿盖满群。',0,NULL,1510716685932,NULL),
(2738,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaapq5g78j206h061jre.jpg','半拉撅子，你吊能斗过我喽',0,NULL,1510716685932,NULL),
(2739,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaapfphltg208c08c3yp.gif','三脸吃惊! no',0,NULL,1510716685932,NULL),
(2740,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaqk0hu4j208c08cta2.jpg','他们都不用上班吗',0,NULL,1510716685932,NULL),
(2741,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaarp89v8g208c08caa6.gif','不要在我背后說我帥了',0,NULL,1510716685932,NULL),
(2742,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaar7z554j205i05iweb.jpg','我就看看,今天谁敢惹我',0,NULL,1510716685932,NULL),
(2743,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaapitnngj206o063aa0.jpg','你就使劲吹吧我帮你打草稿',0,NULL,1510716685932,NULL),
(2744,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaz7av7yj205k04d3yh.jpg','他奶奶的笑死我了',0,NULL,1510716685932,NULL),
(2745,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaopomlrj203703cq2r.jpg','不至于吧，网姨',0,NULL,1510716685932,NULL),
(2746,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaap0el90j208908cdge.jpg','你说什么?',0,NULL,1510716685932,NULL),
(2747,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaxpslp6j207a03ea9y.jpg','萌新默默的拿起了砖头，暴稽（滑稽）',0,NULL,1510716685932,NULL),
(2748,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaayzvgknj207s08wwej.jpg','大神喝饮料（液化石油气）',0,NULL,1510716685932,NULL),
(2749,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaax41sjij205k05bt8n.jpg','用我们福建话说你就是一个肖也',0,NULL,1510716685932,NULL),
(2750,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaayvzvxdj205i047q2t.jpg','扩列+我25cm 捅到胃',0,NULL,1510716685932,NULL),
(2751,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaoclbo2j206o06ot8y.jpg','我杀你爸，我杀你爸',0,NULL,1510716685932,NULL),
(2752,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaao98mx8g208c08c3yo.gif','你们开学，宝宝也要去幼儿园了',0,NULL,1510716685932,NULL),
(2753,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaxo8mkvg208c08cjrq.gif','要开学了，然鹅还不知道作业是啥',0,NULL,1510716685932,NULL),
(2754,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaysgv4rj205i04sjr8.jpg','是不是我做错什么了？如果是,我决不道歉',0,NULL,1510716685932,NULL),
(2755,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaayjww4qj205i0580sk.jpg','不玩了|把钱还我',0,NULL,1510716685932,NULL),
(2756,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaazr6ow6j20k00k0wfi.jpg','我觉得你需要去豫章书院冷静冷静',0,NULL,1510716685932,NULL),
(2757,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaokizsdj204t05i0sj.jpg','用爱去感化你个臭嗨',0,NULL,1510716685932,NULL),
(2758,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaxm6p15j205i051mx1.jpg','好久没揍你了，狗皮又痒了吧',0,NULL,1510716685932,NULL),
(2759,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaazbrwkhg208c08cq2w.gif','需,我喜你',0,NULL,1510716685932,NULL),
(2760,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaxze14sj204004ea9v.jpg','我操你妈了个牡丹花瓣螺旋海藻b',0,NULL,1510716685932,NULL),
(2761,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaz5hd0mj2050050wew.jpg','我就问你这个眼神你怕不怕',0,NULL,1510716685932,NULL),
(2762,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaayy6jlbj20k00k0t9f.jpg','老板, 楼上这条狗怎么卖',0,NULL,1510716685932,NULL),
(2763,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaord1bvj208w09hq33.jpg','无语就退朝!罚你回家去吧!',0,NULL,1510716685932,NULL),
(2764,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaazwroieg208c08cmxa.gif','該配合你装逼的我演視而不見',0,NULL,1510716685932,NULL),
(2765,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaayqyp4vg208c08cwfg.gif','新媒体的猪猪绝不认输',0,NULL,1510716685932,NULL),
(2766,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaymiyz1j20k00jt757.jpg','屎都堵不上你的嘴',0,NULL,1510716685932,NULL),
(2767,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaoo7vctj204e03ymxc.jpg','没有新裙子穿，我就要死掉了',0,NULL,1510716685932,NULL),
(2768,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaybsgceg206o06ojww.gif','让我们起摇摆',0,NULL,1510716685932,NULL),
(2769,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaayue4i9j205i05idg1.jpg','我普通的心在扑通扑通的跳',0,NULL,1510716685932,NULL),
(2770,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaxf5nklg206o06omxz.gif','我操操操,操你妈',0,NULL,1510716685932,NULL),
(2771,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaxhj4v9j20lb0i80tc.jpg','行行行你牛逼行了吧',0,NULL,1510716685932,NULL),
(2772,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaao7ibvsj20c70bdglt.jpg','有啊怎么了',0,NULL,1510716685932,NULL),
(2773,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaxv5bknj20b40b4t8n.jpg','你开心就好',0,NULL,1510716685932,NULL),
(2774,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaayouc58j20go0jyq3p.jpg','有点意思',0,NULL,1510716685932,NULL),
(2775,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaxkox1fj205i05aglf.jpg','和SP说话注意点',0,NULL,1510716685932,NULL),
(2776,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaap2wa12j205z06rdgm.jpg','你是无视我小灰灰?',0,NULL,1510716685932,NULL),
(2777,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaxj642ij203g02e743.jpg','我去你妈的',0,NULL,1510716685932,NULL),
(2778,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaazyf6kzj208g067q32.jpg','不知所措',0,NULL,1510716685932,NULL),
(2779,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaayicw27g208c08c74r.gif','当当当，无敌瓜子攻击',0,NULL,1510716685932,NULL),
(2780,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaomg8vlj206o06nt8y.jpg','尴尬又不失礼貌的微笑',0,NULL,1510716685932,NULL),
(2781,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaoy8ozbj20b40b4q3b.jpg','我的眼里都是份',0,NULL,1510716685932,NULL),
(2782,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaxrp16lg208c08c74n.gif','来啊!开团啊!后面都是我兄弟。',0,NULL,1510716685932,NULL),
(2783,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaayg5w5kj20bo0boglw.jpg','不要污要优雅',0,NULL,1510716685932,NULL),
(2784,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaax0rgyag206908c74h.gif','朕需要学习了 i need study le',0,NULL,1510716685932,NULL),
(2785,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaxxvqdyj206o06owfh.jpg','好像看到了什么不得了的东西',0,NULL,1510716685932,NULL),
(2786,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaazstt5ig206o06oglj.gif','难以分析',0,NULL,1510716685932,NULL),
(2787,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaazlkp4yg208c08cwnp.gif','你大爷',0,NULL,1510716685932,NULL),
(2788,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaoembuag208c08caar.gif','你打吧, 你要是忍心的话',0,NULL,1510716685932,NULL),
(2789,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaxcqecyg208c08c0sx.gif','再看还是你傻',0,NULL,1510716685932,NULL),
(2790,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab00hg7pj20730730t5.jpg','没有小娘子的日子好苦啊!',0,NULL,1510716685932,NULL),
(2791,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaoaq5ypj2057056mx2.jpg','局势已无可换回（滑稽打牌）',0,NULL,1510716685932,NULL),
(2792,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaxtijgrj205i04iq33.jpg','我先睡了，你们谁睡觉谁是傻逼',0,NULL,1510716685932,NULL),
(2793,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab023oskj204i047dfs.jpg','一你双11通宵加班，没提成没加班费，还有双12也一样！',0,NULL,1510716685932,NULL),
(2794,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaazow5v9j208c066jrh.jpg','如意如意称我心意',0,NULL,1510716685932,NULL),
(2795,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaax62a8ag208c08c0t1.gif','骑在管理员身上，作威作福',0,NULL,1510716685932,NULL),
(2796,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaawz24ijg205i05bdfw.gif','完美!',0,NULL,1510716685932,NULL),
(2797,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaawxdi6vg208c08cmxn.gif','再见了智障们!',0,NULL,1510716685932,NULL),
(2798,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaotfy7xg208c08cwes.gif','古娜拉黑暗之神~作业写完术',0,NULL,1510716685932,NULL),
(2799,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaax2eu7gg203z043weh.gif','吓得我都藏起来了',0,NULL,1510716685932,NULL),
(2800,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaoiymkbg208c08cq3c.gif','你个单身狗',0,NULL,1510716685932,NULL),
(2801,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaza60stg208w08wwfp.gif','我生来孤独,却留下了一条条世界纪录唉,高手,寂寞啊',0,NULL,1510716685932,NULL),
(2802,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaz1qlaoj206806o3yr.jpg','屎肥婆！',0,NULL,1510716685932,NULL),
(2803,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaazn6qfgg208c08cmx4.gif','一脸不屑',0,NULL,1510716685932,NULL),
(2804,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaz3j3upj206o06owep.jpg','楼上楼下都是我儿',0,NULL,1510716685932,NULL),
(2805,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaay484gcg206o06owik.gif','预备备，继续!（丢砖头）',0,NULL,1510716685932,NULL),
(2806,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaax8cicsj20iz0iidgn.jpg','不要拘泥于那些细节',0,NULL,1510716685932,NULL),
(2807,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaazuzqs7j208g089glz.jpg','嘤嘤嘤',0,NULL,1510716685932,NULL),
(2808,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaye2qksj20gq0cnjs3.jpg','别管我快去网吧抢机子',0,NULL,1510716685932,NULL),
(2809,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaxaww5cj20m80jgmxu.jpg','我们不一样不一样',0,NULL,1510716685932,NULL),
(2810,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaaogzltzj20go0gft9r.jpg','我他妈忍住不笑',0,NULL,1510716685932,NULL),
(2811,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaaow7lxgg208c08cjs7.gif','打个啵儿吧',0,NULL,1510716685932,NULL),
(2812,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab22joalg208c08cjrr.gif','丑东西,安分点',0,NULL,1510716685932,NULL),
(2813,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab3exkywj208w08w3ys.jpg','放你md老坛酸菜屁',0,NULL,1510716685932,NULL),
(2814,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab1izplsj20eu0hsk6r.jpg','阿弥陀佛',0,NULL,1510716685932,NULL),
(2815,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab25fls2j20e805labq.jpg','撸多了吧?看不清了吧?',0,NULL,1510716685932,NULL),
(2816,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab5n7ox6j203m03mjrl.jpg','去开房吗',0,NULL,1510716685932,NULL),
(2817,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab1plqtqg207s07s78b.gif','上鸡巴班研究特码替',0,NULL,1510716685932,NULL),
(2818,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab3gi3akj205i05hmx1.jpg','冷漠',0,NULL,1510716685932,NULL),
(2819,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab3aun0ej20hn0hnnac.jpg','不是美女就不要跟我搭话',0,NULL,1510716685932,NULL),
(2820,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab0e1ofsj20hs0ffdqs.jpg','核弹，大哥抽烟',0,NULL,1510716685932,NULL),
(2821,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab117rwjj20gd0hs7ch.jpg','嘿,兄弟有毛片吗',0,NULL,1510716685932,NULL),
(2822,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab0qutbaj205i05idfq.jpg','接着说我在听',0,NULL,1510716685932,NULL),
(2823,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab4c926pg205a04wn5s.gif','我明白我收拾一下就滚',0,NULL,1510716685932,NULL),
(2824,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaw8kgppj208c08cgmb.jpg','我操你妈小学生，不好好学习天天吃屎',0,NULL,1510716685932,NULL),
(2825,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaawckfiyg208c08cwej.gif','我等着',0,NULL,1510716685932,NULL),
(2826,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab2xqwi9j204e04oa9x.jpg','暗中观察',0,NULL,1510716685932,NULL),
(2827,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab29rdj8j205i04mdgs.jpg','小姐,你这个态度怎么给我服务',0,NULL,1510716685932,NULL),
(2828,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab12tleqj206o06o748.jpg','性暗示?',0,NULL,1510716685932,NULL),
(2829,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab3jawidj208c08c75m.jpg','你今天要连跪',0,NULL,1510716685932,NULL),
(2830,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab4py9bzj20ec0hswlg.jpg','以前我以为钱可以买到一切，现在才发现真的不行，因为钱不够',0,NULL,1510716685932,NULL),
(2831,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab1khdyrj20310353yb.jpg','色情的凝滉',0,NULL,1510716685932,NULL),
(2832,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab45a69vg208c08c0t6.gif','不要隔着屏幕爱上一个人',0,NULL,1510716685932,NULL),
(2833,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab55lkiwg208a08cglm.gif','加我网恋',0,NULL,1510716685932,NULL),
(2834,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab3yoz2pg206o077aai.gif','男朋友都没有，还搁这儿骚呢',0,NULL,1510716685932,NULL),
(2835,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab5j4ytzj206o06ot8p.jpg','滚开,包皮男',0,NULL,1510716685932,NULL),
(2836,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab59du4hg2064064wei.gif','这位朋友,我他妈受够你了噢!',0,NULL,1510716685932,NULL),
(2837,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaawe7mj1j2064064wef.jpg','多喝热水',0,NULL,1510716685932,NULL),
(2838,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaaw6457xj208w08wq2y.jpg','奸夫淫妇',0,NULL,1510716685932,NULL),
(2839,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab1yawv3j205k05kdga.jpg','你让我说点什么好,',0,NULL,1510716685932,NULL),
(2840,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab2scfvgj207u064dft.jpg','你们的爸爸已进群',0,NULL,1510716685932,NULL),
(2841,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab0i1copj208i0810vg.jpg','冷静（摸JJ）',0,NULL,1510716685932,NULL),
(2842,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab5hh8qcg20b405k743.gif','知道了，儿子',0,NULL,1510716685932,NULL),
(2843,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab5b7t5jg208c08c3ys.gif','整个东莞就你名堂最多',0,NULL,1510716685932,NULL),
(2844,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab20kt17j205205iaau.jpg','忘我爱你',0,NULL,1510716685932,NULL),
(2845,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaawgnxugj2073073jrw.jpg','我严重怀疑楼下的脑子进大便了!',0,NULL,1510716685932,NULL),
(2846,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab5lhojdg20b40aj0th.gif','我不信',0,NULL,1510716685932,NULL),
(2847,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaawj4nw8g208c08cab3.gif','我磨个牙就来咬你',0,NULL,1510716685932,NULL),
(2848,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab3uttwej20hs0hswjl.jpg','匹配也跪',0,NULL,1510716685932,NULL),
(2849,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab42zpplg206o06odgj.gif','窥屏',0,NULL,1510716685932,NULL),
(2850,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaawm6hr3j201h01yq2p.jpg','不敢缩话',0,NULL,1510716685932,NULL),
(2851,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab14qziuj20e8098jrm.jpg','小伙子,你屌爆了!',0,NULL,1510716685932,NULL),
(2852,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab53ut6dg207e06bq3e.gif','我和你吻鳖',0,NULL,1510716685932,NULL),
(2853,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab3pnp9xj20hs0hsgr1.jpg','你只要排位就连跪',0,NULL,1510716685932,NULL),
(2854,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab40qbtoj204v05cdge.jpg','JJ不足5毫米的渣渣',0,NULL,1510716685932,NULL),
(2855,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab0p99qgj20gc0hswkw.jpg','各位大佬早上好,我就是来打个招呼,别骂我,谢谢!草你们麻痹',0,NULL,1510716685932,NULL),
(2856,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab5cwcc4g206o06oaa2.gif','狗日的群主,也不发个红包',0,NULL,1510716685932,NULL),
(2857,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab57nan5g206o06ojrv.gif','小哥哥处对象吗？我偷老公的钱养你',0,NULL,1510716685932,NULL),
(2858,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab3wqzdbj208c08cmxe.jpg','左青龙右白虎',0,NULL,1510716685932,NULL),
(2859,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flaawodvplj20m80l5mxv.jpg','正所谓,曲终未必人散，有情自会重逢',0,NULL,1510716685932,NULL),
(2860,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flaawkqbgsg208c069dfw.gif','我告诉你,你现在可以不喜欢我。但是过了这个村,我会在下个村口等你。',0,NULL,1510716685932,NULL),
(2861,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab2qkh8gj20bj06u0v8.jpg','颁奖，必须颁奖',0,NULL,1510716685932,NULL),
(2862,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaaw4fwb3j205i05fgli.jpg','没有滚,CN吗',0,NULL,1510716685932,NULL),
(2863,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab4gpu78g20c80c875c.gif','真皮皮虾座椅',0,NULL,1510716685932,NULL),
(2864,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab27e5mjj2046046gm1.jpg','我曰它day啊',0,NULL,1510716685932,NULL),
(2865,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab3czngzj204g047gm2.jpg','卧槽!羡慕啊!',0,NULL,1510716685932,NULL),
(2866,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab51zi9zj20hs0h1amm.jpg','怪我给你自出过了火',0,NULL,1510716685932,NULL),
(2867,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab2uh490j205k03odgl.jpg','来颗槟榔?',0,NULL,1510716685932,NULL),
(2868,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab2zur4vj204z05iaak.jpg','看!说中他了,他生气了。',0,NULL,1510716685932,NULL),
(2869,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab5g01hwj20a40a475t.jpg','女人冇個靠得住',0,NULL,1510716685932,NULL),
(2870,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab0tzglaj208c08ctah.jpg','咦惹',0,NULL,1510716685932,NULL),
(2871,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab4e6naig206o06oaa5.gif','这么点钱就想打发我?',0,NULL,1510716685932,NULL),
(2872,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab4im27lg20b40b4t8v.gif','楼上峨桥最时的',0,NULL,1510716685932,NULL),
(2873,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab4rnn3lg20b405kdfv.gif','我见过各种傻逼，像你这么专业的还真是第一次见',0,NULL,1510716685932,NULL),
(2874,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab1w6zmdg206o08otft.gif','我去捡废品了,你们聊',0,NULL,1510716685932,NULL),
(2875,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flaawvb8o7g20o40o410l.gif','算出行，我掐指一算，今天你会来群里装逼',0,NULL,1510716685932,NULL),
(2876,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flaawaqm0oj204404egln.jpg','emmmm',0,NULL,1510716685932,NULL),
(2877,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab2w7kf7j206o06o3ym.jpg','冲你这句话，你爸我当定了',0,NULL,1510716685932,NULL),
(2878,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab2jvcsqj20hq0hsk0y.jpg','我QQ小冰觉得你是个傻逼',0,NULL,1510716685932,NULL),
(2879,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab2n2dp5j207v08ajt7.jpg','我来啦, 接住',0,NULL,1510716685932,NULL),
(2880,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab5cwcc4g206o06oaa2.gif','狗日的群主,也不发个红包',0,NULL,1510716685932,NULL),
(2881,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab40qbtoj204v05cdge.jpg','JJ不足5毫米的渣渣',0,NULL,1510716685932,NULL),
(2882,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab53ut6dg207e06bq3e.gif','我和你吻鳖',0,NULL,1510716685932,NULL),
(2883,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flabipznfqg208c08c0t7.gif','抱歉，我只和处男讲话',0,NULL,1510716685932,NULL),
(2884,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab4gpu78g20c80c875c.gif','真皮皮虾座椅',0,NULL,1510716685932,NULL),
(2885,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flabinw5j0j20gc0hsgsp.jpg','停止你的性幻想，你要明白你只能和手过一辈子的事实',0,NULL,1510716685932,NULL),
(2886,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab3gi3akj205i05hmx1.jpg','冷漠',0,NULL,1510716685932,NULL),
(2887,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flabgjwgp5j2046046dg7.jpg','啦啪',0,NULL,1510716685932,NULL),
(2888,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flabi742yyj205k05k3z1.jpg','垃圾!弱逼!',0,NULL,1510716685932,NULL),
(2889,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab4py9bzj20ec0hswlg.jpg','以前我以为钱可以买到一切，现在才发现真的不行，因为钱不够',0,NULL,1510716685932,NULL),
(2890,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab2xqwi9j204e04oa9x.jpg','暗中观察',0,NULL,1510716685932,NULL),
(2891,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gll8se3j20dx0hsteq.jpg','楼撒比,我心中有数',0,NULL,1510716685932,NULL),
(2892,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flabi2mkycj20gc0hs0yp.jpg','不乐意就滚，别在这儿甩脸子',0,NULL,1510716685932,NULL),
(2893,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gl9jikug2073073q31.gif','听不懂',0,NULL,1510716685932,NULL),
(2894,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flabgbk75jj20hs0h8jxo.jpg','一夜800爱干干,不干滚',0,NULL,1510716685932,NULL),
(2895,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gm8ihttg206o074jry.gif','不要欺负人家,好不辣~',0,NULL,1510716685932,NULL),
(2896,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab4c926pg205a04wn5s.gif','我明白我收拾一下就滚',0,NULL,1510716685932,NULL),
(2897,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flabhst6qog20af0afdgc.gif','白底可是图片的老祖宗啊!!!',0,NULL,1510716685932,NULL),
(2898,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9glbjgtlg206o06omxd.gif','美丽漂亮迷人美少女三连',0,NULL,1510716685932,NULL),
(2899,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab42zpplg206o06odgj.gif','窥屏',0,NULL,1510716685932,NULL),
(2900,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gmeflf1j208c08cglp.jpg','好无聊好想被强奸',0,NULL,1510716685932,NULL),
(2901,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gmm57hwg208c08ctfh.gif','哈喽（小黄人）',0,NULL,1510716685932,NULL),
(2902,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flabgteqsqj20go047mxq.jpg','你颜值过低发送失败',0,NULL,1510716685932,NULL),
(2903,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab3exkywj208w08w3ys.jpg','放你md老坛酸菜屁',0,NULL,1510716685932,NULL),
(2904,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab3wqzdbj208c08cmxe.jpg','左青龙右白虎',0,NULL,1510716685932,NULL),
(2905,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab5n7ox6j203m03mjrl.jpg','去开房吗',0,NULL,1510716685932,NULL),
(2906,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab3jawidj208c08c75m.jpg','你今天要连跪',0,NULL,1510716685932,NULL),
(2907,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flabi4wsykj207v094mx8.jpg','死亡凝视',0,NULL,1510716685932,NULL),
(2908,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab5b7t5jg208c08c3ys.gif','整个东莞就你名堂最多',0,NULL,1510716685932,NULL),
(2909,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab5hh8qcg20b405k743.gif','知道了，儿子',0,NULL,1510716685932,NULL),
(2910,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9glt48ltg203103cjv6.gif','看屎的眼神',0,NULL,1510716685932,NULL),
(2911,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flabhmlxlag206o06o3yo.gif','女人都是废物',0,NULL,1510716685932,NULL),
(2912,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab55lkiwg208a08cglm.gif','加我网恋',0,NULL,1510716685932,NULL),
(2913,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab3uttwej20hs0hswjl.jpg','匹配也跪',0,NULL,1510716685932,NULL),
(2914,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab51zi9zj20hs0h1amm.jpg','怪我给你自出过了火',0,NULL,1510716685932,NULL),
(2915,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gm3nsu7j20g90hsgs8.jpg','皮痒好想被打哦',0,NULL,1510716685932,NULL),
(2916,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab5lhojdg20b40aj0th.gif','我不信',0,NULL,1510716685932,NULL),
(2917,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flabhv4t8og20c809475i.gif','有没有一起绝地求基的',0,NULL,1510716685932,NULL),
(2918,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flabghyk58j20gv0hs45b.jpg','那来开房吧',0,NULL,1510716685932,NULL),
(2919,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flabig0dssg206o06u0t2.gif','我想要一个小哥哥',0,NULL,1510716685932,NULL),
(2920,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gle1oorj205k05b3z0.jpg','该配合你演出的我演视而不见',0,NULL,1510716685932,NULL),
(2921,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flabgly260g206o06ojrn.gif','群里太安静了',0,NULL,1510716685932,NULL),
(2922,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab5j4ytzj206o06ot8p.jpg','滚开,包皮男',0,NULL,1510716685932,NULL),
(2923,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gln2ybxj204x04udft.jpg','真他妈让人害怕',0,NULL,1510716685932,NULL),
(2924,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gm673crg206o07i3yy.gif','小哥哥玩不玩大人游戏',0,NULL,1510716685932,NULL),
(2925,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab45a69vg208c08c0t6.gif','不要隔着屏幕爱上一个人',0,NULL,1510716685932,NULL),
(2926,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gnbombhg204y05vq3i.gif','藐视一群傻逼',0,NULL,1510716685932,NULL),
(2927,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flabhbo87wg208w04zk5f.gif','谁让你装逼了（喝醉了）',0,NULL,1510716685932,NULL),
(2928,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab4e6naig206o06oaa5.gif','这么点钱就想打发我?',0,NULL,1510716685932,NULL),
(2929,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flabgr7hkij20hs0hsjw2.jpg','很厉害嘛,小伙子',0,NULL,1510716685932,NULL),
(2930,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flabhqnx1kg206o06odg1.gif','这么大个白底的图你怎么好意思发出来',0,NULL,1510716685932,NULL),
(2931,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab3yoz2pg206o077aai.gif','男朋友都没有，还搁这儿骚呢',0,NULL,1510716685932,NULL),
(2932,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab3pnp9xj20hs0hsgr1.jpg','你只要排位就连跪',0,NULL,1510716685932,NULL),
(2933,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flabheqwtrj205k05kmxx.jpg','呼叫亲爱的俺想你了',0,NULL,1510716685932,NULL),
(2934,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1flab4im27lg20b40b4t8v.gif','楼上峨桥最时的',0,NULL,1510716685932,NULL),
(2935,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab5g01hwj20a40a475t.jpg','女人冇個靠得住',0,NULL,1510716685932,NULL),
(2936,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flabie2tcyg206o057q47.gif','你正常意。我害怕',0,NULL,1510716685932,NULL),
(2937,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gmasvrmg208c08cjru.gif','我有点性冲动',0,NULL,1510716685932,NULL),
(2938,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flabhh6gvmg206o094dgc.gif','看什么看!没见过暴发户啊',0,NULL,1510716685932,NULL),
(2939,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flabisyt0fg208c09gwfs.gif','要嚼一个吗?槟榔香烟一杯茶,熬夜跑车还怕啥?',0,NULL,1510716685932,NULL),
(2940,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flabhkqelwg206o06o0ua.gif','c哩c哩c哩c哩要来干',0,NULL,1510716685932,NULL),
(2941,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flab59du4hg2064064wei.gif','这位朋友,我他妈受够你了噢!',0,NULL,1510716685932,NULL),
(2942,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1flabiaw2fjg206o05140x.gif','请停止你的性幻想',0,NULL,1510716685932,NULL),
(2943,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab57nan5g206o06ojrv.gif','小哥哥处对象吗？我偷老公的钱养你',0,NULL,1510716685932,NULL),
(2944,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1flab3czngzj204g047gm2.jpg','卧槽!羡慕啊!',0,NULL,1510716685932,NULL),
(2945,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flab4rnn3lg20b405kdfv.gif','我见过各种傻逼，像你这么专业的还真是第一次见',0,NULL,1510716685932,NULL),
(2946,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1flabhor5c2j208c08c0tb.jpg','话不投机,聊你妈逼我日你妈卖批,告辞',0,NULL,1510716685932,NULL),
(2947,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gmcp70fg206o081wep.gif','你得对我负责',0,NULL,1510716685932,NULL),
(2948,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gssho5pj208c08sdgk.jpg','抬杠',0,NULL,1510716685932,NULL),
(2949,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9ucfjyctg204o068e75.gif','小猫老虎',0,NULL,1510716685932,NULL),
(2950,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9ud0xmo2g2080062wm6.gif','群里每人一杯',0,NULL,1510716685932,NULL),
(2951,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9tcbw563g206o06o103.gif','拜托拜托',0,NULL,1510716685932,NULL),
(2952,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9grek0s5g20j60j675a.gif','我们不一样我们当然不一样我哪能跟傻逼一样',0,NULL,1510716685932,NULL),
(2953,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gpemkg9j208c08c0tu.jpg','想骗我发图，我就不！然后偷去装逼不发！打的一手好算盘（不发）',0,NULL,1510716685932,NULL),
(2954,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9u17nqzjg203h02t0uv.gif','早，白痴们！',0,NULL,1510716685932,NULL),
(2955,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9u1exvsfj20k00kg74r.jpg','我可是开封文化艺术职业学院的人',0,NULL,1510716685932,NULL),
(2956,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gota6gzj208c08c759.jpg','很好今天装逼到此结束男同学可以放学回家了女同学请留下',0,NULL,1510716685932,NULL),
(2957,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gqrm6e5g206o06o3ym.gif','等我拔你鸡巴毛，你就知道什么叫痛了',0,NULL,1510716685932,NULL),
(2958,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gqbsb3ag206o05tt8r.gif','百度一下,你就知道',0,NULL,1510716685932,NULL),
(2959,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9tfzm3ahg204g04gaj6.gif','等我出去了，我要去吃肯德基！',0,NULL,1510716685932,NULL),
(2960,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9grv44ypg20710710t7.gif','给我滚远',0,NULL,1510716685932,NULL),
(2961,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gs7bjxmj20hs0hjq7u.jpg','就没人理他一下吗?他现在好尴尬',0,NULL,1510716685932,NULL),
(2962,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9udkw89gg206r06ob0v.gif','我来看看谁在演戏',0,NULL,1510716685932,NULL),
(2963,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9teh9k0qg206i084npe.gif','喵喵喵喵？',0,NULL,1510716685932,NULL),
(2964,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9tejkb82j20g707vaaa.jpg','你们对帅娇喘一无所知！',0,NULL,1510716685932,NULL),
(2965,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9goptfn8j20hg0hs16f.jpg','小姐,你这个态度怎么给我服务',0,NULL,1510716685932,NULL),
(2966,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gprmqwug207i05ydq8.gif','完全O你妈蛇皮棒棒K',0,NULL,1510716685932,NULL),
(2967,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gq9rnkig205205iglq.gif','对没错',0,NULL,1510716685932,NULL),
(2968,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9grbkbraj20hs0hsdob.jpg','简直跟猪一样',0,NULL,1510716685932,NULL),
(2969,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9tc5rfifj203h01cq2x.jpg','吃火锅',0,NULL,1510716685932,NULL),
(2970,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9tbe9l9pj209v05gwee.jpg','皮卡丘（戴眼镜版）',0,NULL,1510716685932,NULL),
(2971,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9tg40t34j205i04lweb.jpg','喝首歌给你听',0,NULL,1510716685932,NULL),
(2972,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gqelj0tg206o06ogmp.gif','别说了我已经哭了',0,NULL,1510716685932,NULL),
(2973,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9tbg3udoj20ak08ct8w.jpg','好球，这下离我远了吧！',0,NULL,1510716685932,NULL),
(2974,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9tbausiej208h08hweh.jpg','人家要抱抱啦',0,NULL,1510716685932,NULL),
(2975,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gnds98jj20e80e8jrq.jpg','荣耀王者',0,NULL,1510716685932,NULL),
(2976,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gpbpk3oj20hs0gkqdl.jpg','非常恐怖兄弟',0,NULL,1510716685932,NULL),
(2977,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9tbcmgzhj206w06ujrh.jpg','小可爱穿睡衣',0,NULL,1510716685932,NULL),
(2978,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gqpizg4j208c08cdh5.jpg','我跑路了拜拜',0,NULL,1510716685932,NULL),
(2979,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gntsohqg206o06omxb.gif','熬夜、脱发、教路、肚子用普通',0,NULL,1510716685932,NULL),
(2980,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9grjnzn7j20a109ugoz.jpg','你很快就会失去我',0,NULL,1510716685932,NULL),
(2981,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gq44ob2j20hs0ean4p.jpg','我要怎么做才能操到这个妹子，先打个我想操你试试看',0,NULL,1510716685932,NULL),
(2982,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9tffe7m2g20al08bdu4.gif','乱码',0,NULL,1510716685932,NULL),
(2983,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9udn12zqg202802sq2z.gif','金三胖笑了',0,NULL,1510716685932,NULL),
(2984,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9tfgxuimj208c08cmx6.jpg','去死吧',0,NULL,1510716685932,NULL),
(2985,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gq7nsnrg208c08cgmm.gif','区区几个狗群员,还反上天了!管理员管理员',0,NULL,1510716685932,NULL),
(2986,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9ud2j4hag201e01ejr7.gif','猫爪',0,NULL,1510716685932,NULL),
(2987,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9u19jjzlj20g90gaaag.jpg','公子哥来也',0,NULL,1510716685932,NULL),
(2988,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9tfmze9cg208c08cwf8.gif','啊！',0,NULL,1510716685932,NULL),
(2989,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9u1d0z09j2064064dg5.jpg','对不起，偿忍住，哈哈哈哈。',0,NULL,1510716685932,NULL),
(2990,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9grzj9c3j206o06omxp.jpg','呵~小屁孩儿',0,NULL,1510716685932,NULL),
(2991,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9tfk2wf3g206o06oaa8.gif','英语分析',0,NULL,1510716685932,NULL),
(2992,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9grwqfnij203e02edfp.jpg','JJ这么小也敢出来混',0,NULL,1510716685932,NULL),
(2993,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9tem82rsj20go099aat.jpg','RRR（SSR）',0,NULL,1510716685932,NULL),
(2994,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9goc1rkfg206o05i748.gif','大哥,火',0,NULL,1510716685932,NULL),
(2995,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9goy8njyg208c06eq38.gif','就凭你刚才的行为,我有足够的理由叫你傻逼',0,NULL,1510716685932,NULL),
(2996,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gsexcegj206o0c4tc8.jpg','看到这个火腿没有，好吃!',0,NULL,1510716685932,NULL),
(2997,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9tqmsyh3j205d05cdfr.jpg','哼，爸爸不想理你。',0,NULL,1510716685932,NULL),
(2998,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gqizr1mg206o06omzo.gif','汪地一下就哭了',0,NULL,1510716685932,NULL),
(2999,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gspjfw6g204g03gdgb.gif','天空一声巨响,老子闪亮登场。',0,NULL,1510716685932,NULL),
(3000,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gn8v8ntj20hs0hi0za.jpg','敢玩吗?真是老刺激了',0,NULL,1510716685932,NULL),
(3001,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9u14aw31g201y01y0sj.gif','头上小猫',0,NULL,1510716685932,NULL),
(3002,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gqmfahbg20d90hswfw.gif','我一直想问一个问题为什么你们都那么有钱',0,NULL,1510716685932,NULL),
(3003,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9goa924sj20hc0gl7hb.jpg','溜了溜了',0,NULL,1510716685932,NULL),
(3004,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9u1bawelj208v08xdg2.jpg','露奶二次元',0,NULL,1510716685932,NULL),
(3005,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9tfigo75g208c08cwee.gif','上王者',0,NULL,1510716685932,NULL),
(3006,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gnrov43j20hs0hs130.jpg','姐姐点开我的兴像添加为好友看大吊',0,NULL,1510716685932,NULL),
(3007,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9grsqo7ij20go0go11g.jpg','我和你（狗狗）',0,NULL,1510716685932,NULL),
(3008,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9tg2i8bcj20ef0cjdgc.jpg','权利让我无法无天',0,NULL,1510716685932,NULL),
(3009,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gqwkzpoj2086086tbl.jpg','液叉没礼貌的奸笑',0,NULL,1510716685932,NULL),
(3010,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gmx3xmyj208c08j0vx.jpg','解散吧，破鸡巴群个能操的都没有',0,NULL,1510716685932,NULL),
(3011,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9tf15k9jg206o06oqdy.gif','转圈圈',0,NULL,1510716685932,NULL),
(3012,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gow5thqj208c08c74r.jpg','一&pi;胡言',0,NULL,1510716685932,NULL),
(3013,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9tc48f8tg208r0874g8.gif','好无聊哦',0,NULL,1510716685932,NULL),
(3014,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9ucsta11j20ex0hse0n.jpg','膨胀（梦奇）',0,NULL,1510716685932,NULL),
(3015,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gmr5lxwj20a008cq5f.jpg','那我+4',0,NULL,1510716685932,NULL),
(3016,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pl0d34rg204y05idft.gif','阳痿老杂种操我妈?',0,NULL,1510716685932,NULL),
(3017,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pml4t7kg208c08c0sx.gif','作业劳资搞死你',0,NULL,1510716685932,NULL),
(3018,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkgn8pqj208c08e3yh.jpg','刚才有个人骂我已经倒下了我不希望你是第二个',0,NULL,1510716685932,NULL),
(3019,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkt1apnj20g407zaal.jpg','表情逐渐变态',0,NULL,1510716685932,NULL),
(3020,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pm86x6ug208w062nbw.gif','看来你还不知道我叼毛兽的厉害',0,NULL,1510716685932,NULL),
(3021,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkk3h8qg205h04t0tb.gif','你今年可比去年傻多了',0,NULL,1510716685932,NULL),
(3022,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gx3ryp0j203x04674c.jpg','老子早料到你会这么说',0,NULL,1510716685932,NULL),
(3023,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gye27beg206o06odg4.gif','赶紧给我滚吧最讨厌男人了',0,NULL,1510716685932,NULL),
(3024,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pl9lp3oj20go0j0dgy.jpg','死靓仔说话给我注意点，不然见你一次打你一次',0,NULL,1510716685932,NULL),
(3025,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pknfjcej20b40b4js1.jpg','垃圾就你还神?秒杀你个垃圾!',0,NULL,1510716685932,NULL),
(3026,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gx5ggksj203m049q2t.jpg','表示怀疑',0,NULL,1510716685932,NULL),
(3027,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pki4c95j205i02vdfm.jpg','不一样你妈个臭逼?',0,NULL,1510716685932,NULL),
(3028,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gxskh5jg205t05uq3m.gif','你们骂人归骂人别把老子也带上，我操你们死妈了啊',0,NULL,1510716685932,NULL),
(3029,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pl6ihy1j204w02iq32.jpg','不太懂不太懂',0,NULL,1510716685932,NULL),
(3030,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pl4luy9j205005qab4.jpg','砖家言之有理我操',0,NULL,1510716685932,NULL),
(3031,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmmsau3j207206zgln.jpg','帅气的身姿',0,NULL,1510716685932,NULL),
(3032,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8plgmdclg206804bdft.gif','叼毛兽是不是没长鸡巴的傻叼?&middot;答案:是的,没错。',0,NULL,1510716685932,NULL),
(3033,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gy7z72ij208a08a0wo.jpg','无助的眼神',0,NULL,1510716685932,NULL),
(3034,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkp9jkvj20fj09u74l.jpg','城外有50吨屎堵塞，朕命令你去吃掉！奴才嗻！',0,NULL,1510716685932,NULL),
(3035,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gx1uy9dj20hs0hswob.jpg','喂!狗群主我操你妈',0,NULL,1510716685932,NULL),
(3036,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8plez3iig208c068t8s.gif','洪荒之力来了',0,NULL,1510716685932,NULL),
(3037,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pldbgtuj205205i744.jpg','注意你的言辞，小智障',0,NULL,1510716685932,NULL),
(3038,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pncf6v9j20hs0hs74v.jpg','起床了，你媳妇儿跟人跑了',0,NULL,1510716685932,NULL),
(3039,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8plqqq62j20i90i93zh.jpg','嘴角疯狂他妈上扬',0,NULL,1510716685932,NULL),
(3040,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gx8ggi2g208c07vjrz.gif','这群怎么什么鸡巴人都有',0,NULL,1510716685932,NULL),
(3041,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmelgvpj205104swf5.jpg','辛辣填shi',0,NULL,1510716685932,NULL),
(3042,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmjdunxg204203s0wi.gif','叼毛兽好利害，我想操她',0,NULL,1510716685932,NULL),
(3043,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkuwjmxg208c08ct8y.gif','我的身体里又充满氪星石的力量！',0,NULL,1510716685932,NULL),
(3044,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pl289y3j20cg0d33ys.jpg','你不会就是不知火舞的弟弟，不知好歹吧',0,NULL,1510716685932,NULL),
(3045,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8plopgmfj20jg0jg3zo.jpg','妲己喝茶',0,NULL,1510716685932,NULL),
(3046,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8plsm86qg208c08c3z6.gif','不小心开启前置摄像头的你',0,NULL,1510716685932,NULL),
(3047,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmtu7dij20ak0ey3yt.jpg','捏捏小可爱的脸',0,NULL,1510716685932,NULL),
(3048,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmomadsj20e60d9wet.jpg','手机不好玩，酒也不好喝，你爸爸我想谈恋爱了',0,NULL,1510716685932,NULL),
(3049,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gyknyilg206o06ogln.gif','我们中出了一个数徒',0,NULL,1510716685932,NULL),
(3050,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pn30n63g206o06oq7q.gif','猴子来啦！',0,NULL,1510716685932,NULL),
(3051,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gxlzmxcg208c05nq37.gif','我要拯救你们这群逗逼',0,NULL,1510716685932,NULL),
(3052,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gymjufsg206o06ot8q.gif',' Ace不知死活的臭男人',0,NULL,1510716685932,NULL),
(3053,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkyodh5j205q04yq37.jpg','天冷了,少穿点,穿那么多奶子都看不见了',0,NULL,1510716685932,NULL),
(3054,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gxxbkrvg208c08cq3j.gif','这群管理好丑',0,NULL,1510716685932,NULL),
(3055,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkr0lqkj20d70akjrs.jpg','中指一个送给你',0,NULL,1510716685932,NULL),
(3056,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8plig0c0j203e03u74d.jpg','他就是叼毛兽',0,NULL,1510716685932,NULL),
(3057,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gygqnpig206o06674f.gif','人生真是寂寞冷如雪啊',0,NULL,1510716685932,NULL),
(3058,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmvpj09j20k00f074r.jpg','做人呢，最主要是开心',0,NULL,1510716685932,NULL),
(3059,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmbulzvj209u0a1wep.jpg','小可爱来了',0,NULL,1510716685932,NULL),
(3060,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmqffxrj205a05agm7.jpg','哎哟车开太快了，晕晕',0,NULL,1510716685932,NULL),
(3061,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gxpcir2g208c06tq3q.gif','看出来了,这群只能靠这类图片来维持气氛了',0,NULL,1510716685932,NULL),
(3062,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pm9tl4pj2046046746.jpg','没人疼没人爱，我是地里的小白菜',0,NULL,1510716685932,NULL),
(3063,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkdh6uyj207a07xgmp.jpg','你TM是不是有病',0,NULL,1510716685932,NULL),
(3064,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8plbrneij20b40aaaal.jpg','给你喜之郎果冻，你快滚出地球当太空人吧',0,NULL,1510716685932,NULL),
(3065,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkbfmdyj20c506t3yp.jpg','小帅哥教皇',0,NULL,1510716685932,NULL),
(3066,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl9gwalvmqj205k01nq2s.jpg','快30岁了稳重一点',0,NULL,1510716685932,NULL),
(3067,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8plmazx6j208w08w74e.jpg','继续,我看你们能玩什么花样',0,NULL,1510716685932,NULL),
(3068,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gxjon36g205i05idg1.gif','天哪!你们这群狗群员又造反了',0,NULL,1510716685932,NULL),
(3069,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkwqhm0j20bg09b74d.jpg','操你爸，不管你说得多么天花缭乱我就是上面三个字',0,NULL,1510716685932,NULL),
(3070,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkf0792j201v02djr6.jpg','共产党?',0,NULL,1510716685932,NULL),
(3071,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gysxrogg206o06oaa9.gif','你身上什么味道让我神魂颠倒变得无可救药',0,NULL,1510716685932,NULL),
(3072,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gxukygog206o05st8p.gif','敢骂你爷爷我,等下把你逼嘴扇肿',0,NULL,1510716685932,NULL),
(3073,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gxz63dhj205k01kt8m.jpg','深夜小游戏摇骰比大小输了真心话无底线',0,NULL,1510716685932,NULL),
(3074,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmyeipbj20hs0hswg5.jpg','菜狗',0,NULL,1510716685932,NULL),
(3075,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pn8gwwyj203c033744.jpg','奥义,神的鄙视（中指）',0,NULL,1510716685932,NULL),
(3076,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gyoikopg206o06laa8.gif','傻不拉几的国人',0,NULL,1510716685932,NULL),
(3077,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl9gyitcvhg208c08c3yn.gif','最近出现一批爱扔手榴弹的傻逼',0,NULL,1510716685932,NULL),
(3078,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pna9phlj208n05tt8t.jpg','bang我打你妈',0,NULL,1510716685932,NULL),
(3079,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gxhh46kg208c06dn18.gif','你这群禽兽',0,NULL,1510716685932,NULL),
(3080,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pms2hzbg208c08c0sv.gif','扭曲的恐吓',0,NULL,1510716685932,NULL),
(3081,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl9gybtm9wg206o06q0t6.gif','天天爱来爱去爱你妹啊劳资最讨厌男人了',0,NULL,1510716685932,NULL),
(3082,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pluup7yj20b40bbdgl.jpg','猪儿虫爱着小青龙',0,NULL,1510716685932,NULL),
(3083,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl9gyqx2fcg206o06o74p.gif','妹妹啊过来我告诉你个秘密其实男人都是可怜虫都在祈求女人的爱',0,NULL,1510716685932,NULL),
(3084,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8qayhh69j205k05k0ti.jpg','辣鸡！',0,NULL,1510716685932,NULL),
(3085,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pl6ihy1j204w02iq32.jpg','不太懂不太懂',0,NULL,1510716685932,NULL),
(3086,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkuwjmxg208c08ct8y.gif','我的身体里又充满氪星石的力量！',0,NULL,1510716685932,NULL),
(3087,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pl0d34rg204y05idft.gif','阳痿老杂种操我妈?',0,NULL,1510716685932,NULL),
(3088,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pl289y3j20cg0d33ys.jpg','你不会就是不知火舞的弟弟，不知好歹吧',0,NULL,1510716685932,NULL),
(3089,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8plez3iig208c068t8s.gif','洪荒之力来了',0,NULL,1510716685932,NULL),
(3090,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8qalwv9eg205604i0v1.gif','亲一个',0,NULL,1510716685932,NULL),
(3091,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkp9jkvj20fj09u74l.jpg','城外有50吨屎堵塞，朕命令你去吃掉！奴才嗻！',0,NULL,1510716685932,NULL),
(3092,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkyodh5j205q04yq37.jpg','天冷了,少穿点,穿那么多奶子都看不见了',0,NULL,1510716685932,NULL),
(3093,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8qnywclzg20dt0dtgzt.gif','动动脸',0,NULL,1510716685932,NULL),
(3094,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8qlsfg24g203c02mwhq.gif','赌气',0,NULL,1510716685932,NULL),
(3095,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pluup7yj20b40bbdgl.jpg','猪儿虫爱着小青龙',0,NULL,1510716685932,NULL),
(3096,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl737f4fsvj208s08u3yz.jpg','婀娜多姿',0,NULL,1510716685932,NULL),
(3097,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pl4luy9j205005qab4.jpg','砖家言之有理我操',0,NULL,1510716685932,NULL),
(3098,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8q8z864fg204602sdi0.gif','胸胸',0,NULL,1510716685932,NULL),
(3099,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8qmyza2hg208b06s785.gif','给我咬死楼上那傻逼，装逼神兽！',0,NULL,1510716685932,NULL),
(3100,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pxuy51kj205i03la9u.jpg','我完全不敢说话',0,NULL,1510716685932,NULL),
(3101,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8qlynsofg203703o459.gif','不要嘛（摇头）',0,NULL,1510716685932,NULL),
(3102,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8plbrneij20b40aaaal.jpg','给你喜之郎果冻，你快滚出地球当太空人吧',0,NULL,1510716685932,NULL),
(3103,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl737d3lbqj20dc0bzt9h.jpg','蘑菇头舞功',0,NULL,1510716685932,NULL),
(3104,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8plgmdclg206804bdft.gif','叼毛兽是不是没长鸡巴的傻叼?&middot;答案:是的,没错。',0,NULL,1510716685932,NULL),
(3105,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmjdunxg204203s0wi.gif','叼毛兽好利害，我想操她',0,NULL,1510716685932,NULL),
(3106,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkt1apnj20g407zaal.jpg','表情逐渐变态',0,NULL,1510716685932,NULL),
(3107,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkdh6uyj207a07xgmp.jpg','你TM是不是有病',0,NULL,1510716685932,NULL),
(3108,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pl9lp3oj20go0j0dgy.jpg','死靓仔说话给我注意点，不然见你一次打你一次',0,NULL,1510716685932,NULL),
(3109,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8qanv6qsg206o06o74n.gif','人生在世，吃喝二字！',0,NULL,1510716685932,NULL),
(3110,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pna9phlj208n05tt8t.jpg','bang我打你妈',0,NULL,1510716685932,NULL),
(3111,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pknfjcej20b40b4js1.jpg','垃圾就你还神?秒杀你个垃圾!',0,NULL,1510716685932,NULL),
(3112,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8qmpq2lng204o03mwff.gif','打金馆长蛋蛋',0,NULL,1510716685932,NULL),
(3113,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8qmn01szg208w07a7va.gif','单身狗进化！',0,NULL,1510716685932,NULL),
(3114,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8q8o3n41g206o06odfv.gif','拒绝三连',0,NULL,1510716685932,NULL),
(3115,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8qb039e2g200s00ra9v.gif','哈哈！',0,NULL,1510716685932,NULL),
(3116,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8qnef2r2g201e01e746.gif','数钱数钱！',0,NULL,1510716685932,NULL),
(3117,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkf0792j201v02djr6.jpg','共产党?',0,NULL,1510716685932,NULL),
(3118,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pldbgtuj205205i744.jpg','注意你的言辞，小智障',0,NULL,1510716685932,NULL),
(3119,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl737h2v3nj206p06p3yv.jpg','我又回来 了，想我没',0,NULL,1510716685932,NULL),
(3120,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8py0a7ing208c08cjsa.gif','静静，我爱你，你爱我吗？',0,NULL,1510716685932,NULL),
(3121,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8plkejr0j20c8093t8y.jpg','哇塞，奥特曼之母！',0,NULL,1510716685932,NULL),
(3122,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8pm9tl4pj2046046746.jpg','没人疼没人爱，我是地里的小白菜',0,NULL,1510716685932,NULL),
(3123,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8q8vv6vag206o06o0vs.gif','大佬蘑菇头',0,NULL,1510716685932,NULL),
(3124,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8qavz6quj20hs0hsjvl.jpg','否认三连',0,NULL,1510716685932,NULL),
(3125,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8qb8lwwrj206k06h40s.jpg','发呆（黑人）',0,NULL,1510716685932,NULL),
(3126,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8qn7g9qxg208w05on5o.gif','SB在哪里（奥特曼）',0,NULL,1510716685932,NULL),
(3127,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8qmuh6r4g207n06sn1i.gif','群主辛苦了，给您做荷包蛋！',0,NULL,1510716685932,NULL),
(3128,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8plig0c0j203e03u74d.jpg','他就是叼毛兽',0,NULL,1510716685932,NULL),
(3129,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pxy76d8g206o06oq59.gif','蘑菇头旋转！',0,NULL,1510716685932,NULL),
(3130,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl737j4254j208c08cq3r.jpg','所有作业消失吧',0,NULL,1510716685932,NULL),
(3131,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8plmazx6j208w08w74e.jpg','继续,我看你们能玩什么花样',0,NULL,1510716685932,NULL),
(3132,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8qncsejng205604i0w9.gif','哭啦',0,NULL,1510716685932,NULL),
(3133,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkwqhm0j20bg09b74d.jpg','操你爸，不管你说得多么天花缭乱我就是上面三个字',0,NULL,1510716685932,NULL),
(3134,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pkgn8pqj208c08e3yh.jpg','刚才有个人骂我已经倒下了我不希望你是第二个',0,NULL,1510716685932,NULL),
(3135,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8qb4uibtg203c03ctcj.gif','抖眉毛！',0,NULL,1510716685932,NULL),
(3136,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8q8rzvz8j202m01s3yf.jpg','吐舌头',0,NULL,1510716685932,NULL),
(3137,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8plqqq62j20i90i93zh.jpg','嘴角疯狂他妈上扬',0,NULL,1510716685932,NULL),
(3138,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pncf6v9j20hs0hs74v.jpg','起床了，你媳妇儿跟人跑了',0,NULL,1510716685932,NULL),
(3139,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8qnnea0oj20dc0hs47h.jpg','哼，宝宝生气了',0,NULL,1510716685932,NULL),
(3140,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8pn8gwwyj203c033744.jpg','奥义,神的鄙视（中指）',0,NULL,1510716685932,NULL),
(3141,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8q98hob8g206o06o0vp.gif','彩色鸭子',0,NULL,1510716685932,NULL),
(3142,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8q93qyivg206y05kgmj.gif','一起以为，只要潜水了。',0,NULL,1510716685932,NULL),
(3143,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl8q8q68meg202s02sglx.gif','熊猫人',0,NULL,1510716685932,NULL),
(3144,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8q9nythxg204i03zwqu.gif','黑眼圈熊猫人',0,NULL,1510716685932,NULL),
(3145,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl8plsm86qg208c08c3z6.gif','不小心开启前置摄像头的你',0,NULL,1510716685932,NULL),
(3146,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8qaiyos6g20bc09bnov.gif','为什么？（奥特曼）',0,NULL,1510716685932,NULL),
(3147,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8q9q6g2wg203n03ewep.gif','青蛙手拿两个蜡烛',0,NULL,1510716685932,NULL),
(3148,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl737kvnhgj208c078mx7.jpg','每次离开问题总是装做轻松的样子',0,NULL,1510716685932,NULL),
(3149,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8pki4c95j205i02vdfm.jpg','不一样你妈个臭逼?',0,NULL,1510716685932,NULL),
(3150,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl8qaqho2rg203y04egn6.gif','教皇跳舞',0,NULL,1510716685932,NULL),
(3151,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl8pmelgvpj205104swf5.jpg','辛辣填shi',0,NULL,1510716685932,NULL),
(3152,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73iz1bnuj20u00rvjsj.jpg','你能不能从我女朋友身上下来',0,NULL,1510716685932,NULL),
(3153,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73jbcs9tg208c08cq33.gif','祝大家中秋安康!请收下我的爱!',0,NULL,1510716685932,NULL),
(3154,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73ks5jjmg208c08c0sx.gif','我有秋裤我不冷!',0,NULL,1510716685932,NULL),
(3155,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73yhrftpj207u081abc.jpg','叼毛兽儿子有我的风范',0,NULL,1510716685932,NULL),
(3156,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73y1re2wg205k05kwet.gif','小婊砸还不去铲屎',0,NULL,1510716685932,NULL),
(3157,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73itdugkg208c08ct8s.gif','小心我砍死你',0,NULL,1510716685932,NULL),
(3158,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73l67m3kj206o06ojrl.jpg','不敢吱声',0,NULL,1510716685932,NULL),
(3159,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73j7pmd9j21320kjgo7.jpg','我做错了什么!',0,NULL,1510716685932,NULL),
(3160,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73zgh2vpg204i03zwqu.gif','黑眼圈熊猫人',0,NULL,1510716685932,NULL),
(3161,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73kn3dh1j206o06oaa1.jpg','你是傻逼，我是帅比当然不一样',0,NULL,1510716685932,NULL),
(3162,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73yveg0og206y06zwek.gif','游戏输了没关系，反正你也赢不了几场',0,NULL,1510716685932,NULL),
(3163,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73yaqfz0j206o06ot8k.jpg','你意思就是说要和我胖虎对着干咯?',0,NULL,1510716685932,NULL),
(3164,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl76w38f0lj20hs0hswev.jpg','给你吃糖糖',0,NULL,1510716685932,NULL),
(3165,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73xt6ee3g20dw060atc.gif','文胸掉了',0,NULL,1510716685932,NULL),
(3166,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73jgasw5g208c08caav.gif','这操作真是爆炸',0,NULL,1510716685932,NULL),
(3167,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73jm0rxtj20fe0blt8x.jpg','我爱你，如鲸问海，似多投林。',0,NULL,1510716685932,NULL),
(3168,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73x5q2yzj209407nglp.jpg','这人该不会是傻子吧？',0,NULL,1510716685932,NULL),
(3169,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl76wpkrjyj203e01y747.jpg','哼！',0,NULL,1510716685932,NULL),
(3170,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73y5apw4j203u03qwea.jpg','与黑恶势力交易',0,NULL,1510716685932,NULL),
(3171,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73j9g3egj209q05pdfv.jpg','成功的达成了共识',0,NULL,1510716685932,NULL),
(3172,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73ktut4ij205g05g746.jpg','我是冷场王',0,NULL,1510716685932,NULL),
(3173,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73yjubflj208c08cjru.jpg','会心一笑 Critical smile',0,NULL,1510716685932,NULL),
(3174,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73yeobn6g208c08c0t0.gif','妈耶,这真的是我的账单吗',0,NULL,1510716685932,NULL),
(3175,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73ypjf9dg208c08cgmd.gif','是是是',0,NULL,1510716685932,NULL),
(3176,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73jo0p84j20220240rj.jpg','挠奶子',0,NULL,1510716685932,NULL),
(3177,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73kz5hodj2079079weu.jpg','兄弟挺骚有空一起拉屎',0,NULL,1510716685932,NULL),
(3178,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73iv3pgwj208c07jglj.jpg','你可以再说一遍',0,NULL,1510716685932,NULL),
(3179,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73l9cyqgj205g05gt8m.jpg','要冷场了快走',0,NULL,1510716685932,NULL),
(3180,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73l3enc0j205i05a748.jpg','你可以和我在一起吗?',0,NULL,1510716685932,NULL),
(3181,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl76wr5ggrj208w08wq2z.jpg','hhh',0,NULL,1510716685932,NULL),
(3182,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73kks4ebj204p08c3yq.jpg','开启wif撩妹模式',0,NULL,1510716685932,NULL),
(3183,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73y3p6xwj206o06ojrf.jpg','接招绿帽波',0,NULL,1510716685932,NULL),
(3184,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73y962koj205i0580sn.jpg','憋回一口脏话',0,NULL,1510716685932,NULL),
(3185,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl737ao9mwg206o06oq2z.gif','手残八连',0,NULL,1510716685932,NULL),
(3186,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73jtx4qqj20gm0gomye.jpg','我一个E过去你可能会死',0,NULL,1510716685932,NULL),
(3187,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73ia54t6j201o01sjr5.jpg','本蘑菇头打死你',0,NULL,1510716685932,NULL),
(3188,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl7378d66qj206w04tgm1.jpg','卢克大楼',0,NULL,1510716685932,NULL),
(3189,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73io1ufwj208s08wglr.jpg','切',0,NULL,1510716685932,NULL),
(3190,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73yljy6vj205u04s3yf.jpg','李哥我皮肤呢???',0,NULL,1510716685932,NULL),
(3191,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73k9xkjpj206o06o0tb.jpg','想看你姥姥个腿',0,NULL,1510716685932,NULL),
(3192,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73ik9mtqg206o06oadk.gif','被窝以外的世界好危险呐',0,NULL,1510716685932,NULL),
(3193,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73iwpx6fg208c08c747.gif','没有!再问打屎你',0,NULL,1510716685932,NULL),
(3194,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73je5tusj208c08cwg3.jpg','你也有落到我手里的那一天啊',0,NULL,1510716685932,NULL),
(3195,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73j44zp0g208c08cjtk.gif','我宣布,斗图大会现在开始。',0,NULL,1510716685932,NULL),
(3196,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73yn76a9j201o01sjr5.jpg','呵,人类',0,NULL,1510716685932,NULL),
(3197,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73l1i8wvg208c08cmxj.gif','好好上课',0,NULL,1510716685932,NULL),
(3198,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73imbvtbj208r08wt8u.jpg','你算个毛线',0,NULL,1510716685932,NULL),
(3199,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73xz5wqqj201l0123y9.jpg','想打架',0,NULL,1510716685932,NULL),
(3200,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73xxlx5pj208c08cab5.jpg','不是我菜,我被针对了,能理解吗?',0,NULL,1510716685932,NULL),
(3201,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73k6df1uj208c089jri.jpg','肥胖让我嘻哈',0,NULL,1510716685932,NULL),
(3202,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73jjzwt5g208c08c747.gif','我其实很吃藕',0,NULL,1510716685932,NULL),
(3203,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73irnxo3g205l04rmx4.gif','分分钟剃你光头',0,NULL,1510716685932,NULL),
(3204,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73jqm3i6j205i05imx0.jpg','摸胸算加不命收一分钱',0,NULL,1510716685932,NULL),
(3205,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73yrifqdj208w08wt91.jpg','现在你就是喊破喉咙也没用',0,NULL,1510716685932,NULL),
(3206,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73k41pzkj208c08c74b.jpg','炸弹你怕不怕',0,NULL,1510716685932,NULL),
(3207,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73ibr8lpj204l0573yc.jpg','蓝翔挖掘机倔烂你妈逼',0,NULL,1510716685932,NULL),
(3208,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73jxfprqj204y05i74h.jpg','我不是你的小甜甜了吗',0,NULL,1510716685932,NULL),
(3209,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73idz1ieg208c08cwev.gif','放你娘的五香麻辣屁',0,NULL,1510716685932,NULL),
(3210,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73y7cqweg208c08caa4.gif','纳尼?班花怀孕了???',0,NULL,1510716685932,NULL),
(3211,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73ji1tuhj205i040a9w.jpg','今天爆率那叫一个高呀（黑脸）',0,NULL,1510716685932,NULL),
(3212,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73yto7wij20k00eqjrz.jpg','这年代动不动就跑出来几个大佬',0,NULL,1510716685932,NULL),
(3213,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73j114g1g206o06omxm.gif','仙女的窥探',0,NULL,1510716685932,NULL),
(3214,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl76wnisg8g208w050nh0.gif','猫的习性！',0,NULL,1510716685932,NULL),
(3215,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73k097vtj203c01ygld.jpg','我这人最老实了',0,NULL,1510716685932,NULL),
(3216,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl73yct35mj20460350sx.jpg','我有焚寂,别惹我',0,NULL,1510716685932,NULL),
(3217,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl73yy8rsvj204s04gmx0.jpg','-1cm',0,NULL,1510716685932,NULL),
(3218,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl73kpew3tj205e05it8w.jpg','我想要一块钱',0,NULL,1510716685932,NULL),
(3219,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73ig7e3cg208c08c751.gif','难道六岁的我就不能为爱流一次眼泪吗',0,NULL,1510716685932,NULL),
(3220,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77pual2hj206o06ogmu.jpg','叼毛,你静点',0,NULL,1510716685932,NULL),
(3221,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77p1rnhoj20dc0dc40m.jpg','绿坏坏',0,NULL,1510716685932,NULL),
(3222,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77q838upj205i05i0sl.jpg','这又是哪个戏精野婊',0,NULL,1510716685932,NULL),
(3223,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77my6lxdg205k05kmx9.gif','八色懵逼大分队',0,NULL,1510716685932,NULL),
(3224,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77nfcbrmj20b00a5mxt.jpg','垃圾被抢了，馒头也凉了，只有流出的鼻涕，才让我觉得人生是咸咸的。',0,NULL,1510716685932,NULL),
(3225,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77nsjstfj204205ajr9.jpg','大哥，你这话我没法接',0,NULL,1510716685932,NULL),
(3226,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77oakmomj206o06ot8p.jpg','楼上请看这个',0,NULL,1510716685932,NULL),
(3227,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77pw5tbtj209c09cq2y.jpg','你比六环少一环',0,NULL,1510716685932,NULL),
(3228,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77nqzvbuj205105i3yf.jpg','傻逼没完了?????',0,NULL,1510716685932,NULL),
(3229,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl777v4oisj20hs0hsjs4.jpg','宝宝不开心了',0,NULL,1510716685932,NULL),
(3230,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77oizzblj20jg0jgwfo.jpg','无视',0,NULL,1510716685932,NULL),
(3231,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl7780ux6uj20gg0ek74n.jpg','你比WE还好打',0,NULL,1510716685932,NULL),
(3232,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77op6i9dj206h06wt8q.jpg','我不仅要盗你的图,还要在你面前发很多遍,很多遍!!!',0,NULL,1510716685932,NULL),
(3233,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77on8q4zg208c069dfy.gif','师父好像得了神经病怕是治不好了',0,NULL,1510716685932,NULL),
(3234,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77oenm3qj205k05kglw.jpg','别发这些没用的了，我只爱看奶子',0,NULL,1510716685932,NULL),
(3235,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77o8x9kuj208c08cmx8.jpg','给你全家上香',0,NULL,1510716685932,NULL),
(3236,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl777qsr5aj206m06yglo.jpg','绿装大佬',0,NULL,1510716685932,NULL),
(3237,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77ny01fcj208c08cjrl.jpg','看我的尚方宝棍，群主',0,NULL,1510716685932,NULL),
(3238,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77pdud9aj207o06o0su.jpg','姑娘你受精了',0,NULL,1510716685932,NULL),
(3239,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77p3jw1gg207y06cgln.gif','你完了,你妈让你娶我',0,NULL,1510716685932,NULL),
(3240,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl76w1dtacg203y03cjve.gif','这人怎么这样噢',0,NULL,1510716685932,NULL),
(3241,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77n06bsbg208c08cq37.gif','打洗你',0,NULL,1510716685932,NULL),
(3242,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77n25v9vj208c08cglw.jpg','馊阴吹丝挺 So interesting',0,NULL,1510716685932,NULL),
(3243,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77q9rt6rj201g00y0sh.jpg','傻逼',0,NULL,1510716685932,NULL),
(3244,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77pr8290g206o06ot8r.gif','吐你一脸瓜子',0,NULL,1510716685932,NULL),
(3245,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77og9il1j205i05idfq.jpg','I&#039;m sorry dalao',0,NULL,1510716685932,NULL),
(3246,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77p5iensj20b40b40sz.jpg','骚年你需要它安慰你的心灵',0,NULL,1510716685932,NULL),
(3247,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77pyjvo1j206u05rjs3.jpg','小盆友今天吃屎了吗',0,NULL,1510716685932,NULL),
(3248,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77pi1iguj20fs0fsmy7.jpg','般般的我一般般的拽，一般般的你我甩都不甩',0,NULL,1510716685932,NULL),
(3249,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77oykehtj205k05kgm4.jpg','你在这样的话，我就拉你去滚床单',0,NULL,1510716685932,NULL),
(3250,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77owewh8j208c069js7.jpg','你能奈我何',0,NULL,1510716685932,NULL),
(3251,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl76vxtsr1g202d03mmyt.gif','小妹子动动身体',0,NULL,1510716685932,NULL),
(3252,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77ncwdstg208w08wjrp.gif','和你有关系吗',0,NULL,1510716685932,NULL),
(3253,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77pnwlfbj205s01fglf.jpg','闭嘴吧，你中年老妇女',0,NULL,1510716685932,NULL),
(3254,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77o5htc8g208c08ct8n.gif','以后就不玩手机了',0,NULL,1510716685932,NULL),
(3255,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77n6nrmwg207g08c74j.gif','突然心理扭曲',0,NULL,1510716685932,NULL),
(3256,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77npd5lzj20d108vglr.jpg','尼马派出所',0,NULL,1510716685932,NULL),
(3257,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77o1jn49g208c08cdfq.gif','来撩我啊',0,NULL,1510716685932,NULL),
(3258,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl777yh001j201301r0qz.jpg','小黄鸭',0,NULL,1510716685932,NULL),
(3259,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77olecgog208c08cq3f.gif','劳资早就看你不爽了',0,NULL,1510716685932,NULL),
(3260,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77p83rqtj20jb0fhq42.jpg','群主给我找个老婆就按这样的找',0,NULL,1510716685932,NULL),
(3261,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77pm9po0j20b40akaak.jpg','沙虫,我们走!',0,NULL,1510716685932,NULL),
(3262,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77q2jbayj206o06ot9a.jpg','死鬼爱我又不说',0,NULL,1510716685932,NULL),
(3263,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77nuk0l6j205i050glt.jpg','干嘛啊?我都害羞了',0,NULL,1510716685932,NULL),
(3264,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77occyy4g208c08cglo.gif','我虽然胖但是你丑啊!!',0,NULL,1510716685932,NULL),
(3265,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77pk4m26j205i0500sm.jpg','女人都没脑子',0,NULL,1510716685932,NULL),
(3266,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl76vv1p3nj20jv0hswf8.jpg','卧槽羡慕啊！是海豹！海豹上岸了！啊，我死了！',0,NULL,1510716685932,NULL),
(3267,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl777ouceig20b4069qh1.gif','谁的鸡儿，都别想放假！',0,NULL,1510716685932,NULL),
(3268,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl777spab4j203u05i0sv.jpg','大叔抠脚',0,NULL,1510716685932,NULL),
(3269,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl777wynu3j205b07zjrj.jpg','二次元小萌妹',0,NULL,1510716685932,NULL),
(3270,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77q019h8j201p00l0ge.jpg','有毛病',0,NULL,1510716685932,NULL),
(3271,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77nnkir4j20p00jgtem.jpg','我有钱嫁给我吧',0,NULL,1510716685932,NULL),
(3272,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77pc0a9jj20e80e8jrq.jpg','胖虎激光 biubiu',0,NULL,1510716685932,NULL),
(3273,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77n4s7mhj20ei0lst9q.jpg','老子当年在日耳曼森林里，灭过罗马军团，会怕你这个SB',0,NULL,1510716685932,NULL),
(3274,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl7779lq2ij206s08774d.jpg','情侣佬出去玩喽',0,NULL,1510716685932,NULL),
(3275,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77nw28djj205i04iq2s.jpg','我TM。。。',0,NULL,1510716685932,NULL),
(3276,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77os0f57g206908cjsk.gif','背上我的小书包，从此浪迹天涯',0,NULL,1510716685932,NULL),
(3277,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77navjb5g208w08wt8r.gif','闭嘴,白痴',0,NULL,1510716685932,NULL),
(3278,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77o752n0j203z04gt8l.jpg','faker等我回国了就把bang杀了',0,NULL,1510716685932,NULL),
(3279,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77nzszwqg206o06oglq.gif','你们能不能像我一样成熟点',0,NULL,1510716685932,NULL),
(3280,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77o3rhanj208c08cq3a.jpg','再见了!我的心脏!',0,NULL,1510716685932,NULL),
(3281,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77q6f9gxj206o06ot8y.jpg','可爱',0,NULL,1510716685932,NULL),
(3282,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77p9wb25j205i04cdfv.jpg','停一下打个广告，处对象加我',0,NULL,1510716685932,NULL),
(3283,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77ou150cg205k05kglo.gif','哥哥认真的样子好f帅',0,NULL,1510716685932,NULL),
(3284,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77q4cqo4j20ae0a3q34.jpg','这种人就得打, 跟他讲道理是没有用的!',0,NULL,1510716685932,NULL),
(3285,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77pfg94ej207805k748.jpg','企业',0,NULL,1510716685932,NULL),
(3286,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77ppf12tj201s00y3y9.jpg','孩子',0,NULL,1510716685932,NULL),
(3287,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77n900r9j20g40g40ti.jpg','你们安静点，听我说其实我想说的是在座的各位都是垃圾。',0,NULL,1510716685932,NULL),
(3288,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77kjdojzg206o06owks.gif','好啊骂好烦啊',0,NULL,1510716685932,NULL),
(3289,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77m1fnujj205105kwee.jpg','有话好好说!不要动不动就发自拍',0,NULL,1510716685932,NULL),
(3290,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77jslsn1g208c08cabb.gif','姐们你熬夜吧，我和你老公先睡了',0,NULL,1510716685932,NULL),
(3291,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77lbuygbj208i05ydfu.jpg','各位菜B,我又来拿冠军了!',0,NULL,1510716685932,NULL),
(3292,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77lzxswaj20b40deq3c.jpg','处男!正面上我啊!',0,NULL,1510716685932,NULL),
(3293,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77qq4s9oj205i05ejr8.jpg','宝贝你千万别落泪男神我的心会疲惫',0,NULL,1510716685932,NULL),
(3294,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77join0yj205f055aa0.jpg','同志,59',0,NULL,1510716685932,NULL),
(3295,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77qldverj207g06wmx9.jpg','懂我的意思吧♂',0,NULL,1510716685932,NULL),
(3296,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77qvtiyrj202102b743.jpg','闪亮亮',0,NULL,1510716685932,NULL),
(3297,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77mgz08fj208w08wt8s.jpg','一天天说自己帅的人都是智障，真正帅的人都是低调的',0,NULL,1510716685932,NULL),
(3298,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77qjexfgj20go0ef754.jpg','干杯，为我们的友谊',0,NULL,1510716685932,NULL),
(3299,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77l31z73j205i05iwec.jpg','你妈死了',0,NULL,1510716685932,NULL),
(3300,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77qzx272j206o06ot95.jpg','大哥抽烟',0,NULL,1510716685932,NULL),
(3301,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77k1ya6tj205i0320ss.jpg','来，让我们心碰心',0,NULL,1510716685932,NULL),
(3302,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77lpep8tj206o06o0tl.jpg','我要吃辣条',0,NULL,1510716685932,NULL),
(3303,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77k67jtuj20sc0q074u.jpg','一人一句大哥，让我体验一下当黑社会巨头的感觉',0,NULL,1510716685932,NULL),
(3304,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77r1snp6g208c08c74h.gif','学弟初来乍到，请各位学姐使劲撩',0,NULL,1510716685932,NULL),
(3305,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77mezpp4j208w08wjri.jpg','滚你奶奶的',0,NULL,1510716685932,NULL),
(3306,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77kxyxuxg208c08c3yn.gif','爸爸的爱，智障儿子爸爸还是爱你的',0,NULL,1510716685932,NULL),
(3307,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77lej0b9j20jd0m83zg.jpg','那是什么?叔叔',0,NULL,1510716685932,NULL),
(3308,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77qoiqoxj20hp0gngmm.jpg','阿拉德就交给你们了',0,NULL,1510716685932,NULL),
(3309,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77lukxq3j208c068gly.jpg','鸭式滑稽心',0,NULL,1510716685932,NULL),
(3310,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77jwefqvj20dw0cz74w.jpg','你妈逼,在瞎BB往你妈逼里捅黄瓜',0,NULL,1510716685932,NULL),
(3311,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77lib5bej205j06v0su.jpg','所以你就日了隔壁家的狗?',0,NULL,1510716685932,NULL),
(3312,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77mjxas2g208c069aam.gif','虚假姐妹情',0,NULL,1510716685932,NULL),
(3313,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77keg1bqj208c08c74s.jpg','给你点颜色看看',0,NULL,1510716685932,NULL),
(3314,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77l1d11uj2040042weq.jpg','好的,儿子',0,NULL,1510716685932,NULL),
(3315,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77lwbv5pj204m05imx2.jpg','一群基佬滚!',0,NULL,1510716685932,NULL),
(3316,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77qxhx2gj205l05djrd.jpg','我在用群员的高贵身份在和你聊天，你特么给老子注意点',0,NULL,1510716685932,NULL),
(3317,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77jqbqrkj208c08cdfw.jpg','你是不是背着我在打游戏?',0,NULL,1510716685932,NULL),
(3318,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77llkzpeg208w08wt92.gif','羊鞭',0,NULL,1510716685932,NULL),
(3319,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77ly1f86j208c08cq36.jpg','一片空白',0,NULL,1510716685932,NULL),
(3320,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77m4pw2cg208c08c746.gif','和我讲道理是没用的',0,NULL,1510716685932,NULL),
(3321,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77ln5rqzj202w03tdfp.jpg','谢谢你，但我还是从出生点走过来吧。',0,NULL,1510716685932,NULL),
(3322,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77kzjvr5g208c08caa4.gif','吃惊! 刚才发生了什么',0,NULL,1510716685932,NULL),
(3323,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77r3iankj209q07fglm.jpg','请你喝卡布奇诺！',0,NULL,1510716685932,NULL),
(3324,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77lgjvpnj207w07j0t2.jpg','又想用我的表情包撩别人告辞',0,NULL,1510716685932,NULL),
(3325,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77mwc36wj208c088jrq.jpg','我把钱全部花在整容上了',0,NULL,1510716685932,NULL),
(3326,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77knfgckj20qo0f0wf2.jpg','吓死你',0,NULL,1510716685932,NULL),
(3327,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77jmxabsj208w08w0tj.jpg','吃翔,滚尼玛黑暗之神',0,NULL,1510716685932,NULL),
(3328,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77m36somj208w08wmxb.jpg','唔！',0,NULL,1510716685932,NULL),
(3329,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77jyi9grj205y057js3.jpg','同志，莫洛托夫',0,NULL,1510716685932,NULL),
(3330,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77ljt8ibj205i05i748.jpg','兄我，单身快乐，曾经身体都进去过，现在连空间也进不去。',0,NULL,1510716685932,NULL),
(3331,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77qdcybtg206o06omxg.gif','垃圾游戏，毁我青春，颓我精神，耗我钱财',0,NULL,1510716685932,NULL),
(3332,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77k7sphrj205f058mx2.jpg','同志, MP40',0,NULL,1510716685932,NULL),
(3333,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77kqsv56j206o06o40l.jpg','我们不一样',0,NULL,1510716685932,NULL),
(3334,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77lsoz4mj206o06o0sp.jpg','我就要吃辣条',0,NULL,1510716685932,NULL),
(3335,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77mcnfwig205w05ttd9.gif','快夸我',0,NULL,1510716685932,NULL),
(3336,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77kl9at9g208c08c0t1.gif','加油!你是最胖的!',0,NULL,1510716685932,NULL),
(3337,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77la7oubj205i04nwel.jpg','FGO 启动!!',0,NULL,1510716685932,NULL),
(3338,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77qf24j5j208s064mx4.jpg','女人,你这是在玩火',0,NULL,1510716685932,NULL),
(3339,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77qru6mdj204i04edfq.jpg','2000人的群空虚得像我家的厕所',0,NULL,1510716685932,NULL),
(3340,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77jugbmgj208205st90.jpg','清华学子必备课程学业繁忙,告辞',0,NULL,1510716685932,NULL),
(3341,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77ka33wsj207s07a3zj.jpg','34同志, T3',0,NULL,1510716685932,NULL),
(3342,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77k41cn4g208c08c3yk.gif','目标?不存在的。',0,NULL,1510716685932,NULL),
(3343,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77mucd03j203m03aa9u.jpg','而你,靓仔到嗨甘，仲好有钱',0,NULL,1510716685932,NULL),
(3344,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77mqtqdxj20bb07iwep.jpg','听说,下雨天,吹牛能会被雷劈哦!',0,NULL,1510716685932,NULL),
(3345,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77kudkjxj206o06oaag.jpg','往往都是长相平凡的女生更善解人意，而那些美女们都不理我',0,NULL,1510716685932,NULL),
(3346,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77kcjnzrj207s07agmk.jpg','回志, BF109',0,NULL,1510716685932,NULL),
(3347,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77lr4q65g208c08c74j.gif','别再拿刀跟我比划!',0,NULL,1510716685932,NULL),
(3348,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77l8hc6ej20et0adwf1.jpg','大哥戴这个,贼丢人',0,NULL,1510716685932,NULL),
(3349,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77k06bn8j208c08cjrh.jpg','昨天修仙死了一个',0,NULL,1510716685932,NULL),
(3350,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77mstogpj208w08wdfy.jpg','小仙女,你认同我的看法吗',0,NULL,1510716685932,NULL),
(3351,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77mo8i7ug206o06o40p.gif','不想理你',0,NULL,1510716685932,NULL),
(3352,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77kw8prdj20go0cigm1.jpg','暗中观察',0,NULL,1510716685932,NULL),
(3353,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77ksiax8g2078078dfz.gif','万圣节为什么不放假',0,NULL,1510716685932,NULL),
(3354,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77qu5n2eg208c08cmxn.gif','old driver daidai me 老司机带带我',0,NULL,1510716685932,NULL),
(3355,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77qgtf3ng203w02njrf.gif','垃圾游戏毁我青春（OSU）',0,NULL,1510716685932,NULL),
(3356,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5uthxetpg205i05c1b5.gif','你正常点，我害怕！（动态版）',0,NULL,1510716685932,NULL),
(3357,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkwh9moj205g05gq2u.jpg','穿羽绒服救场',0,NULL,1510716685932,NULL),
(3358,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkmqil5g208c08c74e.gif','老子高傲的抬头并不吃你这一套',0,NULL,1510716685932,NULL),
(3359,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zl8ee7dj207k07vgll.jpg','我来啦,接住',0,NULL,1510716685932,NULL),
(3360,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77jda6r3j206804pt8o.jpg','哥就是亮么屌，不服憋着。',0,NULL,1510716685932,NULL),
(3361,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkoa7e9g206j0630sm.gif','铅笔盒,扔楼里',0,NULL,1510716685932,NULL),
(3362,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6afq366pj204u04udfn.jpg','肿摸肥事',0,NULL,1510716685932,NULL),
(3363,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6ag5dhq3g208c069aa0.gif','我一点也不稀罕SSR',0,NULL,1510716685932,NULL),
(3364,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6agec68ij20b40b4wg8.jpg','每当想、我的中指都会勃起。',0,NULL,1510716685932,NULL),
(3365,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zl52ukoj208t07gmxg.jpg','再发这种东西，老子劈了你',0,NULL,1510716685932,NULL),
(3366,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zl3bfodj2023027a9u.jpg','有趣',0,NULL,1510716685932,NULL),
(3367,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6afz052dg2082082t8t.gif','去小树林呀',0,NULL,1510716685932,NULL),
(3368,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl5zl6qkreg208c08ct8s.gif','宁愿黄也不想绿',0,NULL,1510716685932,NULL),
(3369,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl5zlaj3noj205605ijr7.jpg','上膛',0,NULL,1510716685932,NULL),
(3370,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6ag0z464j206f06y74a.jpg','长得丑就可以为所欲为了吗？',0,NULL,1510716685932,NULL),
(3371,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77jkyirij20c808hjrn.jpg','记准我不喜欢别人或帅',0,NULL,1510716685932,NULL),
(3372,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zk0fpgnj205i02xmx0.jpg','我们都是地球人',0,NULL,1510716685932,NULL),
(3373,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77innokkj20qo0q9myh.jpg','你千嘛去了。消息也不回',0,NULL,1510716685932,NULL),
(3374,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6aghoit4j208c08cgmr.jpg','作为一个孩子，我想用塑料小鸭打爆你的狗头',0,NULL,1510716685932,NULL),
(3375,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl6ag9ssstj208c08cmxp.jpg','巴拉拉能量,变出朋友一',0,NULL,1510716685932,NULL),
(3376,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77jj6qlvg208c08cjrh.gif','我可能收买了假的监考老师',0,NULL,1510716685932,NULL),
(3377,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zixpeilg207t05znm3.gif','爱心送给你',0,NULL,1510716685932,NULL),
(3378,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77jbmcfrj208w08w0u1.jpg','去吧,大黄屎',0,NULL,1510716685932,NULL),
(3379,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl73xuqmeyj205i04dmwy.jpg','彩虹蘑菇头',0,NULL,1510716685932,NULL),
(3380,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5ur58o1gj20f909waaj.jpg','你都在看电脑桌面？',0,NULL,1510716685932,NULL),
(3381,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77jhi3h4j20680683yl.jpg','你继续装逼看着呢',0,NULL,1510716685932,NULL),
(3382,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77j72zroj204o05ka9z.jpg','我的心只属于你',0,NULL,1510716685932,NULL),
(3383,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkiub9gj205k05p0t1.jpg','突然看懂暗示',0,NULL,1510716685932,NULL),
(3384,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77j5dj2aj203x05iweb.jpg','他俩睡过',0,NULL,1510716685932,NULL),
(3385,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77irlfxrj203202vjrf.jpg','哭然打响',0,NULL,1510716685932,NULL),
(3386,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zhymefjg20bu0fl7ix.gif','萌妹子跳骚舞',0,NULL,1510716685932,NULL),
(3387,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77j3ul6aj208c08cmx7.jpg',' WOW WOW，信仰在何方',0,NULL,1510716685932,NULL),
(3388,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6afrrtu4j205g05gq2w.jpg','拉低了全宇宙的智商',0,NULL,1510716685932,NULL),
(3389,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkdlet5g202v034tfn.gif','变脸！',0,NULL,1510716685932,NULL),
(3390,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77iyhzuwj20fi0fq74m.jpg','老子看你也是单身, 要不要老子做你男朋友啊',0,NULL,1510716685932,NULL),
(3391,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl6agje8zsj208c08ct8q.jpg','砍烂!砍烂!',0,NULL,1510716685932,NULL),
(3392,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjqxu5aj2014014a9t.jpg','飞行竹蜻蜓',0,NULL,1510716685932,NULL),
(3393,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6ag3e04fg208c08c3yv.gif','我耳朵瞎了,听不到。',0,NULL,1510716685932,NULL),
(3394,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zk2faaxg208c08cq3l.gif','沉浸在知识的海洋',0,NULL,1510716685932,NULL),
(3395,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkksdkyg208c08cwej.gif','我就算死了，也要拉上你陪葬',0,NULL,1510716685932,NULL),
(3396,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77ipx66rj20b40b4jrt.jpg','六个核桃, 我们去帮那个傻逼补补脑',0,NULL,1510716685932,NULL),
(3397,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkuydexj208c08cjri.jpg','给你00块钱,含住我的棍子。',0,NULL,1510716685932,NULL),
(3398,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6afwvrrdj20hs0i575e.jpg','我不允许别人比我骚',0,NULL,1510716685932,NULL),
(3399,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkpyfxdj205605i3yf.jpg','那又怎样',0,NULL,1510716685932,NULL),
(3400,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5usv20ogg20af09ynpe.gif','大吉大利，晚上吃鸡！（唐僧）',0,NULL,1510716685932,NULL),
(3401,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6ag6vywhj202d01xa9u.jpg','我是你爹',0,NULL,1510716685932,NULL),
(3402,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkgwwa4j20500503yg.jpg','冷场了,好尴尬啊!',0,NULL,1510716685932,NULL),
(3403,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6aftsubqj20b40b474e.jpg','low b',0,NULL,1510716685932,NULL),
(3404,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77iwhi3yj205i05idfp.jpg','我表哥来了，你们统统死啦死啦滴',0,NULL,1510716685932,NULL),
(3405,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77j0cwtnj20dw0dwdge.jpg','看来你是皮痒了, 迫不及待让我来修理你',0,NULL,1510716685932,NULL),
(3406,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77il2v1rj20hs0hs74t.jpg','哥，处对象不？',0,NULL,1510716685932,NULL),
(3407,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkfbtgxj202u02raa4.jpg','快乐',0,NULL,1510716685932,NULL),
(3408,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zk6sgjeg208c08cwet.gif','瞅瞅我迷人的眼神',0,NULL,1510716685932,NULL),
(3409,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkzma8bj208c08caa2.jpg','坏坏都被你气吐血了',0,NULL,1510716685932,NULL),
(3410,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77jfna8aj208w08w0tr.jpg','卧槽,你个小婊砸,巴拉拉基佬光环',0,NULL,1510716685932,NULL),
(3411,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl777com0rg208c08c0ui.gif','抖腿！',0,NULL,1510716685932,NULL),
(3412,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl77it8qyyj208c08c3yh.jpg','啊，我的钛合金狗眼!',0,NULL,1510716685932,NULL),
(3413,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl5zkt0xdvj20k00k0dh1.jpg','鸭子，牙签，金针菇，小屌超人，你在不在',0,NULL,1510716685932,NULL),
(3414,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zk4zjtuj208w08w0u8.jpg','古他妈黑暗之神搞基术',0,NULL,1510716685932,NULL),
(3415,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77j1xvj7j205k05k3yi.jpg','小三跪下。',0,NULL,1510716685932,NULL),
(3416,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl77iiyxo1j20g40fcdgn.jpg','他们说，只要我的速度够快寂寞就追不上我',0,NULL,1510716685932,NULL),
(3417,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl5zk8en2pg20460463yl.gif','吓（红猪）',0,NULL,1510716685932,NULL),
(3418,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5usy1fkvj20dw0ksdhp.jpg','关云长骑自行车',0,NULL,1510716685932,NULL),
(3419,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zl1vb1ag206u06uwf9.gif','气氛嗨起来',0,NULL,1510716685932,NULL),
(3420,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl77iuzof6g205k05kdg5.gif','打起来打起来',0,NULL,1510716685932,NULL),
(3421,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6afoj3otj205i05iglp.jpg','谁刷屏,谁死全家!',0,NULL,1510716685932,NULL),
(3422,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl77j8yhlpj20c8089mxg.jpg','得帅就是累',0,NULL,1510716685932,NULL),
(3423,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zky2uf0j205a04qweb.jpg','脚骨我郎断你',0,NULL,1510716685932,NULL),
(3424,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6ad7mf06j2020026we9.jpg','我配',0,NULL,1510716685932,NULL),
(3425,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6aepy67pj20b40873yn.jpg','停停停,我也是基佬',0,NULL,1510716685932,NULL),
(3426,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6ad62ycmj20k00k075j.jpg','有屁话快说完我要删朋友了',0,NULL,1510716685932,NULL),
(3427,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6afkdnu5j201q01tmwx.jpg','呵，平胸女人',0,NULL,1510716685932,NULL),
(3428,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjuhx8cg208c08ct8w.gif','l可是one个 very very good的人（我可是一个非常好的人）',0,NULL,1510716685932,NULL),
(3429,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6ae759shj207307374x.jpg','不要问我为什摸厂长是我表锅',0,NULL,1510716685932,NULL),
(3430,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6addbgs6j204304pwed.jpg','我的帅总是令狗管理感到无地自容',0,NULL,1510716685932,NULL),
(3431,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6ad33qrbg208c08cq33.gif','唔，远处似乎来了一傻逼',0,NULL,1510716685932,NULL),
(3432,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjkf570g206o06odga.gif','看我真挚的眼神',0,NULL,1510716685932,NULL),
(3433,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6af67wckg208c08c3yk.gif','虽然你有黑眼圈但你不是国宝呀!',0,NULL,1510716685932,NULL),
(3434,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6ae4rmodg208c076abt.gif','你算哪瓣蒜?',0,NULL,1510716685932,NULL),
(3435,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6adt8hysj204v04bjr9.jpg','再bb就砍死你',0,NULL,1510716685932,NULL),
(3436,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjih1z7g208c08c0tb.gif','巴拉巴拉,怀孕术',0,NULL,1510716685932,NULL),
(3437,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6adv7jo9j202q0393yn.jpg','老阿姨不要装嫩可以吗？好恶心',0,NULL,1510716685932,NULL),
(3438,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6aebbz6pg208c08ct99.gif','知道了真相后变方的围观群众',0,NULL,1510716685932,NULL),
(3439,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjpc4fdg208c07xgmm.gif','巴拉拉氪金能量!',0,NULL,1510716685932,NULL),
(3440,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl6afbsj87j208k03jdfs.jpg','假操作也没用了',0,NULL,1510716685932,NULL),
(3441,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tl7q725g205i04bq2w.gif','一起？',0,NULL,1510716685932,NULL),
(3442,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjcdo72j208c08cglx.jpg','秋裤呀!!!赐予我神奇的力',0,NULL,1510716685932,NULL),
(3443,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zj21mdfg208c08ct8y.gif','10米外六亲不认',0,NULL,1510716685932,NULL),
(3444,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjgf1hlg208c08cjrm.gif','是不是撩妹去了',0,NULL,1510716685932,NULL),
(3445,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6aeo1r6lj202502ldfl.jpg','大大大大佬?!',0,NULL,1510716685932,NULL),
(3446,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zj6cc5qg207n07njrm.gif','额。。（摸鱼）',0,NULL,1510716685932,NULL),
(3447,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tlp9tndj205m04jaaq.jpg','麻痹',0,NULL,1510716685932,NULL),
(3448,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6adbp0ihg208c08c749.gif','爸爸还是爱你的 i love my baby',0,NULL,1510716685932,NULL),
(3449,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl6afei62aj20k00khq49.jpg','这两天风声紧,管理查车查的厉害,都互相转告,半夜3点~4点开车,时间不定。',0,NULL,1510716685932,NULL),
(3450,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6adpvzjgj20dc0dc76f.jpg','导弹射爆你',0,NULL,1510716685932,NULL),
(3451,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6afh6utag208c08c758.gif','我和我最后的倔强',0,NULL,1510716685932,NULL),
(3452,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6aez837rj207706z75v.jpg','你仿佛懂我的眼神',0,NULL,1510716685932,NULL),
(3453,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4tlj33b2j203c02sdfx.jpg','一脚踢死你',0,NULL,1510716685932,NULL),
(3454,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6afmhyl5g206j08c74o.gif','挠头，明明比我丑却有女朋友',0,NULL,1510716685932,NULL),
(3455,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tlhfdd1j20dz0fd4b1.jpg','给我绿拐',0,NULL,1510716685932,NULL),
(3456,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl5zj8s5ocj20k00jcgma.jpg','你长得丑不说，游戏还打的很渣，完全就是狗屎',0,NULL,1510716685932,NULL),
(3457,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6aeijpf9j205x03kq2t.jpg','刚刚那个是假操作咔卡',0,NULL,1510716685932,NULL),
(3458,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4tx7s2a5j20k00csgo4.jpg','妖艳小猪',0,NULL,1510716685932,NULL),
(3459,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjecza0j20go0fu0t4.jpg','KFC你爷爷我一刀劈死你',0,NULL,1510716685932,NULL),
(3460,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6ae8z7x4g208c08cglz.gif','我要飞得更高',0,NULL,1510716685932,NULL),
(3461,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6af2ejfsj20k00jzgn9.jpg','然是选择原谅她',0,NULL,1510716685932,NULL),
(3462,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tlmi7h8j206o06odfv.jpg','女神三连',0,NULL,1510716685932,NULL),
(3463,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6aef74sgj20k00fd0v3.jpg','excuse me ?',0,NULL,1510716685932,NULL),
(3464,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6aerozwug206o06oq2x.gif','最受不了你这种直男',0,NULL,1510716685932,NULL),
(3465,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tmi0y14g20dc07i4qp.gif','抛媚眼',0,NULL,1510716685932,NULL),
(3466,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6adwr142j201t021gld.jpg','稽毒犬',0,NULL,1510716685932,NULL),
(3467,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6adgmovcj205i053mxc.jpg','别的小朋友都有男朋友陪男朋友带躺，而我还在王者峡谷被别入的老公按着追着锤。',0,NULL,1510716685932,NULL),
(3468,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6afiw49jj205i05i744.jpg','我就是只小猫味还萌萌的那种，你能拿我怎么样，打我呀',0,NULL,1510716685932,NULL),
(3469,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjst6ajg208c08cgm2.gif','美女!有空一起睡个觉呀!',0,NULL,1510716685932,NULL),
(3470,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6aekqx79j208c08c3z1.jpg','喂妖妖灵吗?给我一把加特林',0,NULL,1510716685932,NULL),
(3471,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6adjigbuj205k05kq2t.jpg','不，我渴望奶子',0,NULL,1510716685932,NULL),
(3472,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6ae1gbgig208c08caa2.gif','我可能变帅了',0,NULL,1510716685932,NULL),
(3473,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6aetlpqrg208c08c0ss.gif','我接住了,我会好好保管的',0,NULL,1510716685932,NULL),
(3474,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6adi1z6oj205i025dfl.jpg','扩列',0,NULL,1510716685932,NULL),
(3475,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6adl8x4zj205405kwee.jpg','儿子们我回来了',0,NULL,1510716685932,NULL),
(3476,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjyxe40g208c08cac8.gif','我要的是一个肯定',0,NULL,1510716685932,NULL),
(3477,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6ad9ztsnj207s07i3zc.jpg','同志,毛瑟98K',0,NULL,1510716685932,NULL),
(3478,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjmhtjbj208c08cdga.jpg','作业我有罪,我去死',0,NULL,1510716685932,NULL),
(3479,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tlku0mej20ak08qdg2.jpg','对方不想和你说话，并向你扔了一个无限死循环！',0,NULL,1510716685932,NULL),
(3480,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjah5fhj205i02xt8k.jpg','我们都是人类',0,NULL,1510716685932,NULL),
(3481,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zjw7sonj20gi0gc3yy.jpg','你说什么有种再说100000遍',0,NULL,1510716685932,NULL),
(3482,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl6aderqlbj204u04h3yb.jpg','我觉得ok',0,NULL,1510716685932,NULL),
(3483,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6aevb6soj206o06odfs.jpg','抱我的小宝贝',0,NULL,1510716685932,NULL),
(3484,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl6aeh024uj205k05k0so.jpg','狗东西你是不是皮痒了',0,NULL,1510716685932,NULL),
(3485,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl6af8207qj20dy04rmxa.jpg','一百块都不给我，还想操作',0,NULL,1510716685932,NULL),
(3486,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl5zizzyvoj20c606474k.jpg','我擦死靓仔你以为我不敢啊',0,NULL,1510716685932,NULL),
(3487,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6afa2643g208c08caa4.gif','要动脑，不想了',0,NULL,1510716685932,NULL),
(3488,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl5zj49x9yj20hg0hgjs4.jpg','老子有你洗澡时候的裸照',0,NULL,1510716685932,NULL),
(3489,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl6adzkwntj20fv0d40tk.jpg','好了好了，本女神都知道了',0,NULL,1510716685932,NULL),
(3490,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl6af48ipdj20dy05oglq.jpg','这才是真操作啪!咔',0,NULL,1510716685932,NULL),
(3491,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl6adrn5pig207b08cwef.gif','萝卜青菜，各有所爱',0,NULL,1510716685932,NULL),
(3492,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4txbutfpj208c08cdfx.jpg','找K啊!',0,NULL,1510716685932,NULL),
(3493,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzwphyqj208c08cwff.jpg','滑动解锁（胸胸）',0,NULL,1510716685932,NULL),
(3494,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzbufp6j206o06o0sp.jpg','CNM你个SB，NMB（素质三连）',0,NULL,1510716685932,NULL),
(3495,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzhl55lj20c80db74n.jpg','男孩子家家的也不嫌丢人!',0,NULL,1510716685932,NULL),
(3496,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tyrz53qj2020028741.jpg','呕吐',0,NULL,1510716685932,NULL),
(3497,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tx45if0j205005m0sq.jpg','猫',0,NULL,1510716685932,NULL),
(3498,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4txlya3lj203d02r3ya.jpg','噗！（放屁）',0,NULL,1510716685932,NULL),
(3499,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4u02em4qj20nv0qo3zw.jpg','我靠!一进来就看到这么丑的妞真倒霉',0,NULL,1510716685932,NULL),
(3500,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tz2p7dvj205e05idfo.jpg','各部门请注意马上八点了',0,NULL,1510716685932,NULL),
(3501,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tya5zgtj20dm06t3yt.jpg','黑暗逐渐出现',0,NULL,1510716685932,NULL),
(3502,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzkvdzoj20c808w3yu.jpg','华佗扁鹊说的对，救不了，告辞，张仲景三连',0,NULL,1510716685932,NULL),
(3503,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4txtymvij208c08cmx6.jpg','你撒谎我可以放你一马',0,NULL,1510716685932,NULL),
(3504,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzopn2aj20b1075dg7.jpg','对不起我错了我不该那么说的廉颇三连',0,NULL,1510716685932,NULL),
(3505,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzyjk3yg206o06oaao.gif','可以（小猪）',0,NULL,1510716685932,NULL),
(3506,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4u0gozgvj20b1087jtp.jpg','好烦,最近宋仲基老压到我头发',0,NULL,1510716685932,NULL),
(3507,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4txdkcoaj2050050t8l.jpg','真他妈令人害怕',0,NULL,1510716685932,NULL),
(3508,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4ty69n9bj205i02x0sl.jpg','我们在借里',0,NULL,1510716685932,NULL),
(3509,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tyitv5lj204602vweg.jpg','看楼上裤衩子',0,NULL,1510716685932,NULL),
(3510,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4txiputfg206o06owei.gif','无法斗图',0,NULL,1510716685932,NULL),
(3511,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4u0d74x3j20go0gota9.jpg','没有,滚',0,NULL,1510716685932,NULL),
(3512,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4u07uytug208c08c3yu.gif','拜拜',0,NULL,1510716685932,NULL),
(3513,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4txa5yzug208c08cq3p.gif','凶你',0,NULL,1510716685932,NULL),
(3514,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tyfd0m9j205i05iaa8.jpg','窝日哩滴妈耶',0,NULL,1510716685932,NULL),
(3515,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tykwntzg208c08cdg7.gif','不给我就轰你',0,NULL,1510716685932,NULL),
(3516,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4txvlp4ug207w07j3yp.gif','我的床生病了，我要回去照顾它了，告辞',0,NULL,1510716685932,NULL),
(3517,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4tza5mt2j2046046t8j.jpg','你很鸡巴骚话多',0,NULL,1510716685932,NULL),
(3518,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tyouj8fj20k00k0gmr.jpg','溜了溜了',0,NULL,1510716685932,NULL),
(3519,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4u005853j203o02ogle.jpg','咚,矮10厘米',0,NULL,1510716685932,NULL),
(3520,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tz4g6wnj20go0fnt96.jpg','大哥吃金拱门',0,NULL,1510716685932,NULL),
(3521,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzj21yzj202602cjr6.jpg','叫你妈叫!',0,NULL,1510716685932,NULL),
(3522,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tyw8g8cg206o06ojrf.gif','风里雨里在这等你',0,NULL,1510716685932,NULL),
(3523,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tyui6dlj206o06oq4y.jpg','哈哈,大家都在装逼!',0,NULL,1510716685932,NULL),
(3524,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tx0xwubj20au0eggmp.jpg','装逼王朝',0,NULL,1510716685932,NULL),
(3525,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4tybp87xj2032034jr6.jpg','卧槽，情趣内裤',0,NULL,1510716685932,NULL),
(3526,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4txs7e0fj208c04hgmy.jpg','我是一只猫猫虫',0,NULL,1510716685932,NULL),
(3527,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4txkfgfij209i09i3yn.jpg','我看您还是去死吧',0,NULL,1510716685932,NULL),
(3528,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzqgzsnj206o06o0t3.jpg','给你一钱赶紧滚',0,NULL,1510716685932,NULL),
(3529,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4tx2f4xlj2064064wee.jpg','萌妹咬东西',0,NULL,1510716685932,NULL),
(3530,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tz8mkjej205205idfn.jpg','看把你狂的',0,NULL,1510716685932,NULL),
(3531,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4txh2q4fj20co0bcjrt.jpg','女人喜欢被大鸡巴插进去',0,NULL,1510716685932,NULL),
(3532,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tydgzd7j208c07qq30.jpg','这让我怎么回答你',0,NULL,1510716685932,NULL),
(3533,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4txpqvdnj203002mwe9.jpg','你想都不要想!',0,NULL,1510716685932,NULL),
(3534,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4ty1hzzjj204v05iq2u.jpg','我想对你说,三个字',0,NULL,1510716685932,NULL),
(3535,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4u0a9y0zj20j60j6ab5.jpg','掐指一算，令天有好事发生',0,NULL,1510716685932,NULL),
(3536,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4ty4ootij203k03k0sk.jpg','谢谢啦',0,NULL,1510716685932,NULL),
(3537,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4ty32lo9j206z06vjrc.jpg','呼叫小仙女!',0,NULL,1510716685932,NULL),
(3538,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tymiyi9j206t07fmx8.jpg','老子出场就是一句狗群员操你妈逼',0,NULL,1510716685932,NULL),
(3539,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4u060cinj20k00k0abi.jpg','这该死的爱情',0,NULL,1510716685932,NULL),
(3540,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tz18zwsj208c08cmxa.jpg','吃劳资一炮儿',0,NULL,1510716685932,NULL),
(3541,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4u0l5jwkj206o06oq3i.jpg','死鬼mua',0,NULL,1510716685932,NULL),
(3542,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4txo7kl2j206o06o3zu.jpg','太可爱了吧，快来给老子抱抱',0,NULL,1510716685932,NULL),
(3543,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzdzb1vg207706z0sz.gif','你们哪来的钱买大乔',0,NULL,1510716685932,NULL),
(3544,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4txf7btvg2064064q2w.gif','给老子豁出去了',0,NULL,1510716685932,NULL),
(3545,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tyqh9nqj205i05imx5.jpg','叫你爸了个鸡巴叫',0,NULL,1510716685932,NULL),
(3546,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4txzynrrg208c08cq4l.gif','求求你不要这么骚行吗',0,NULL,1510716685932,NULL),
(3547,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4u0jcwpnj20k00k0wex.jpg','快点群主要醒了',0,NULL,1510716685932,NULL),
(3548,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzfkhpej203r03wglg.jpg','我们不一样不一样',0,NULL,1510716685932,NULL),
(3549,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzul5vtg208c08cq39.gif','为我们建立在金钱上的友情干杯',0,NULL,1510716685932,NULL),
(3550,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4u03wbl3j201s01y741.jpg','哦泄特',0,NULL,1510716685932,NULL),
(3551,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4tyh6mfwj205205ijr9.jpg','金拱门集会,走!',0,NULL,1510716685932,NULL),
(3552,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzsw7ynj2073073401.jpg','手手（猫手）',0,NULL,1510716685932,NULL),
(3553,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4ty84uifj208w08wt8x.jpg','求管理!求管理！奶子都没有，当个屁管理',0,NULL,1510716685932,NULL),
(3554,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4u1sks4bg208c08cweq.gif','念天地之悠悠，独碧根果难剥',0,NULL,1510716685932,NULL),
(3555,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl4tz72hxug208c08cgna.gif','说得好像真的一样',0,NULL,1510716685932,NULL),
(3556,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl4tzmwbi3g208c08cwfl.gif','八嘎?',0,NULL,1510716685932,NULL),
(3557,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tyxyhx9j208c08cjrl.jpg','我萌吗',0,NULL,1510716685932,NULL),
(3558,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl4tyzlip4j203e02u0sk.jpg','不给糖就打你',0,NULL,1510716685932,NULL),
(3559,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl4txx97wxj208k08974h.jpg','是谁我都不在乎,等她骚够了记得回来找我',0,NULL,1510716685932,NULL),
(3560,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ope7psgj20yi0thwfl.jpg','你太小了',0,NULL,1510716685932,NULL),
(3561,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqmh8vij205i05fq2v.jpg','能给我操一下吗?哪怕插你嘴也可以啊!',0,NULL,1510716685932,NULL),
(3562,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ost2ua0j20hs0hhq9j.jpg','真是倒了八辈子的煤了，才能遇见你这种人渣',0,NULL,1510716685932,NULL),
(3563,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ortnxwqj20hs0ih0u0.jpg','你个死基佬',0,NULL,1510716685932,NULL),
(3564,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqydvyqj205i02xweh.jpg','我们不一样:不一样',0,NULL,1510716685932,NULL),
(3565,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3orfcq3pj205405kdfz.jpg','是你麻痹你说是就是?',0,NULL,1510716685932,NULL),
(3566,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqasybwj208c08ct8r.jpg','吃我一炮',0,NULL,1510716685932,NULL),
(3567,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3or4pv8og208c08ct8z.gif','到此为止,你的屁话太多了!',0,NULL,1510716685932,NULL),
(3568,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opbzgqfg206o06odge.gif','我是你的小可爱吗?',0,NULL,1510716685932,NULL),
(3569,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqhe7sdg208c08cabi.gif','溜了溜了',0,NULL,1510716685932,NULL),
(3570,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3os5bacbj20hs0gxwfo.jpg','一脸骚样还卖萌',0,NULL,1510716685932,NULL),
(3571,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opm9h5aj206o06oq34.jpg','厉害厉害可以可以666（佩服三连）',0,NULL,1510716685932,NULL),
(3572,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ouc971nj20dw0dwwj9.jpg','你尽管撤回，看不到算我输（微X模块）',0,NULL,1510716685932,NULL),
(3573,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oowtcixj205a05ajra.jpg','闹嘴啊!烦不烦啊',0,NULL,1510716685932,NULL),
(3574,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opnt40oj201s01sa9t.jpg','猪八盖啊',0,NULL,1510716685932,NULL),
(3575,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ou5hfk3g208c08cmxp.gif','别逼我下手',0,NULL,1510716685932,NULL),
(3576,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oron88yg208c08cjrx.gif','穿着秋裤就是爽',0,NULL,1510716685932,NULL),
(3577,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq7o5nwj208708mwel.jpg','天台的兄弟们，赌马结果很快出来了，排好队准备跳了',0,NULL,1510716685932,NULL),
(3578,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opxngg6j206o06oq38.jpg','很好，今天装逼到此结束。男同学可以放学回家，女同学留下',0,NULL,1510716685932,NULL),
(3579,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq2lxedj205405kmxf.jpg','你又是哪里来的狗东西滚我操你妈的',0,NULL,1510716685932,NULL),
(3580,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3os143o0g205i03adfw.gif','没人理真可怜',0,NULL,1510716685932,NULL),
(3581,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqorwapj20d70c6dg6.jpg','你不要给我太过分',0,NULL,1510716685932,NULL),
(3582,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3opindiaj201e020741.jpg','乖巧',0,NULL,1510716685932,NULL),
(3583,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3op586ifj205i05it8k.jpg','旁边还有个男人，喘着气说他要冲刺了',0,NULL,1510716685932,NULL),
(3584,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqwnilbg208c08c0te.gif','好了,以开始了',0,NULL,1510716685932,NULL),
(3585,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3orblrczj20c80c83yo.jpg','你再bb我就把你按在地上操',0,NULL,1510716685932,NULL),
(3586,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3op1bs2oj20gv0gtq3m.jpg','我讨厌用情侣头像的人',0,NULL,1510716685932,NULL),
(3587,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ooyyugtj206o06ojrz.jpg','你哪来的勇气艾特我',0,NULL,1510716685932,NULL),
(3588,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3otgppceg206o06naa6.gif','老婆你给我闭嘴',0,NULL,1510716685932,NULL),
(3589,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3osfn1pyj20hs0dh79w.jpg','偷情+我逼超紧',0,NULL,1510716685932,NULL),
(3590,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3or2l0njj206i04y748.jpg','求求你加我（熊猫人抱腿）',0,NULL,1510716685932,NULL),
(3591,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3os989y2g206o06oaaf.gif','2017年最流行原谅色发型今年你，绿了么?',0,NULL,1510716685932,NULL),
(3592,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ot3nffkg202s02smx6.gif','快点来啊，等不及啦~',0,NULL,1510716685932,NULL),
(3593,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3osiuhstg202t02it8m.gif','好想舔女曾理',0,NULL,1510716685932,NULL),
(3594,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqkujpij204c03sq2t.jpg','变成光头!（巴拉拉魔仙）',0,NULL,1510716685932,NULL),
(3595,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ops6jeog208c08cmy0.gif','不要',0,NULL,1510716685932,NULL),
(3596,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3or6hyarg208c08ct8v.gif','我可能是假群主。',0,NULL,1510716685932,NULL),
(3597,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq0wetxg208c08cdhf.gif','丑拒',0,NULL,1510716685932,NULL),
(3598,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opke2roj208u08u74d.jpg','可你也不能含我鸡啊',0,NULL,1510716685932,NULL),
(3599,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqr87ekj20fk0f9gm8.jpg','大丸丸,我想修你的车（一个汽车维修员）',0,NULL,1510716685932,NULL),
(3600,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqj5n5wg208c06974d.gif','今天工地有点热，砖头有些烫手。',0,NULL,1510716685932,NULL),
(3601,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq96f2yg208c068wef.gif','二狗别闹',0,NULL,1510716685932,NULL),
(3602,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oukuepig206o06ojrr.gif','哟,阿姨们都在呢',0,NULL,1510716685932,NULL),
(3603,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oph6bytj208c08cjsp.jpg','无fuck说',0,NULL,1510716685932,NULL),
(3604,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3or0vy7ij20qo0qoabd.jpg','这傻逼我也是醉了',0,NULL,1510716685932,NULL),
(3605,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ou7iihbg206o06owew.gif','妈个鸡',0,NULL,1510716685932,NULL),
(3606,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opq2dhqj20m80m80tz.jpg','大哥抽这个,苏联进口的!(大伊万)',0,NULL,1510716685932,NULL),
(3607,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3op6pkcdj205a05a744.jpg','tui!臭不要脸',0,NULL,1510716685932,NULL),
(3608,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3op8eh59j203m04f74j.jpg','你卢本伟很叼?吃屎吧,我操你妈。',0,NULL,1510716685932,NULL),
(3609,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3otqhggxj20hs0hswm4.jpg','死平胸妹，注意你的言辞!',0,NULL,1510716685932,NULL),
(3610,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq5z5jsj205i04saa6.jpg','对不起我是直男',0,NULL,1510716685932,NULL),
(3611,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3opvvwjbg206o06ot8z.gif','本密探眉头一皱发现事情并不简单',0,NULL,1510716685932,NULL),
(3612,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ormgttsg208c08adgs.gif','你是想怎樣',0,NULL,1510716685932,NULL),
(3613,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3orjd3teg208c08cgnh.gif','好我闭嘴行了吧',0,NULL,1510716685932,NULL),
(3614,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ou1i5wtg204z04zgvh.gif','哈哈哈',0,NULL,1510716685932,NULL),
(3615,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3osh7xmag205i05igli.gif','踢掉,绝对踢掉',0,NULL,1510716685932,NULL),
(3616,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3or83kzrj205i04mq2x.jpg','老公不理偷情的加我（熊猫人）',0,NULL,1510716685932,NULL),
(3617,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3opa75nej205205imxc.jpg','看了半天记录没一个值得收藏的图，我操你们在座的人妈逼啊',0,NULL,1510716685932,NULL),
(3618,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3os746g6g206o06oq32.gif','闭嘴吧你中年老妇女',0,NULL,1510716685932,NULL),
(3619,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq4cjsxj208c08cglu.jpg','挖个坑,埋点士,数个12345',0,NULL,1510716685932,NULL),
(3620,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqdw7h7j20k00qo0va.jpg','皮皮虾，我们走！',0,NULL,1510716685932,NULL),
(3621,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3op3pqj3j205005iwee.jpg','好歹我也是个王者给我个面子',0,NULL,1510716685932,NULL),
(3622,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3or9tgxgj202e01taa2.jpg','揉你屁股（坏坏）',0,NULL,1510716685932,NULL),
(3623,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ou3hzaqg206o06o74b.gif','给你倒一杯卡布奇诺好不好?',0,NULL,1510716685932,NULL),
(3624,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oug2g55j206906ojrz.jpg','会 You a two b（你个2货）',0,NULL,1510716685932,NULL),
(3625,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqu7tdcj208c08cmyb.jpg','有没有小姐姐给看呀',0,NULL,1510716685932,NULL),
(3626,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ordkdopj20e30e0wet.jpg','我把logo到处印就能赚钱（Supreme）',0,NULL,1510716685932,NULL),
(3627,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3opu53e5g207s08caat.gif','很蓝瘦',0,NULL,1510716685932,NULL),
(3628,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3or6hyarg208c08ct8v.gif','我可能是假群主。',0,NULL,1510716685932,NULL),
(3629,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ouncv9zj204w03kmxz.jpg','看你就是食屎分子',0,NULL,1510716685932,NULL),
(3630,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3otqhggxj20hs0hswm4.jpg','死平胸妹，注意你的言辞!',0,NULL,1510716685932,NULL),
(3631,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3os989y2g206o06oaaf.gif','2017年最流行原谅色发型今年你，绿了么?',0,NULL,1510716685932,NULL),
(3632,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3op6pkcdj205a05a744.jpg','tui!臭不要脸',0,NULL,1510716685932,NULL),
(3633,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ou5hfk3g208c08cmxp.gif','别逼我下手',0,NULL,1510716685932,NULL),
(3634,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oukuepig206o06ojrr.gif','哟,阿姨们都在呢',0,NULL,1510716685932,NULL),
(3635,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opm9h5aj206o06oq34.jpg','厉害厉害可以可以666（佩服三连）',0,NULL,1510716685932,NULL),
(3636,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqkujpij204c03sq2t.jpg','变成光头!（巴拉拉魔仙）',0,NULL,1510716685932,NULL),
(3637,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqwnilbg208c08c0te.gif','好了,以开始了',0,NULL,1510716685932,NULL),
(3638,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq7o5nwj208708mwel.jpg','天台的兄弟们，赌马结果很快出来了，排好队准备跳了',0,NULL,1510716685932,NULL),
(3639,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqorwapj20d70c6dg6.jpg','你不要给我太过分',0,NULL,1510716685932,NULL),
(3640,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3or4pv8og208c08ct8z.gif','到此为止,你的屁话太多了!',0,NULL,1510716685932,NULL),
(3641,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3otgppceg206o06naa6.gif','老婆你给我闭嘴',0,NULL,1510716685932,NULL),
(3642,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ops6jeog208c08cmy0.gif','不要',0,NULL,1510716685932,NULL),
(3643,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ou3hzaqg206o06o74b.gif','给你倒一杯卡布奇诺好不好?',0,NULL,1510716685932,NULL),
(3644,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq2lxedj205405kmxf.jpg','你又是哪里来的狗东西滚我操你妈的',0,NULL,1510716685932,NULL),
(3645,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ou7iihbg206o06owew.gif','妈个鸡',0,NULL,1510716685932,NULL),
(3646,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oug2g55j206906ojrz.jpg','会 You a two b（你个2货）',0,NULL,1510716685932,NULL),
(3647,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq96f2yg208c068wef.gif','二狗别闹',0,NULL,1510716685932,NULL),
(3648,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqj5n5wg208c06974d.gif','今天工地有点热，砖头有些烫手。',0,NULL,1510716685932,NULL),
(3649,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqmh8vij205i05fq2v.jpg','能给我操一下吗?哪怕插你嘴也可以啊!',0,NULL,1510716685932,NULL),
(3650,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3or2l0njj206i04y748.jpg','求求你加我（熊猫人抱腿）',0,NULL,1510716685932,NULL),
(3651,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ourtmfaj208c08cdgs.jpg','没有钱就不要想这些事情',0,NULL,1510716685932,NULL),
(3652,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ov4pjmwg208c08c753.gif','草，好厉害的煞笔',0,NULL,1510716685932,NULL),
(3653,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ost2ua0j20hs0hhq9j.jpg','真是倒了八辈子的煤了，才能遇见你这种人渣',0,NULL,1510716685932,NULL),
(3654,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oudu1axj203x04i3yf.jpg','头疼',0,NULL,1510716685932,NULL),
(3655,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq0wetxg208c08cdhf.gif','丑拒',0,NULL,1510716685932,NULL),
(3656,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ouie3d0j206o06owfd.jpg','小任你以前不是这样的',0,NULL,1510716685932,NULL),
(3657,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ot3nffkg202s02smx6.gif','快点来啊，等不及啦~',0,NULL,1510716685932,NULL),
(3658,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3op1bs2oj20gv0gtq3m.jpg','我讨厌用情侣头像的人',0,NULL,1510716685932,NULL),
(3659,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oowtcixj205a05ajra.jpg','闹嘴啊!烦不烦啊',0,NULL,1510716685932,NULL),
(3660,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ooyyugtj206o06ojrz.jpg','你哪来的勇气艾特我',0,NULL,1510716685932,NULL),
(3661,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3op586ifj205i05it8k.jpg','旁边还有个男人，喘着气说他要冲刺了',0,NULL,1510716685932,NULL),
(3662,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oup9yi7g206o06oglt.gif','卒糊这对新淫，天残地久同肛共苦，早身贵几白连好鹅。',0,NULL,1510716685932,NULL),
(3663,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqasybwj208c08ct8r.jpg','吃我一炮',0,NULL,1510716685932,NULL),
(3664,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ouc971nj20dw0dwwj9.jpg','你尽管撤回，看不到算我输（微X模块）',0,NULL,1510716685932,NULL),
(3665,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ou1i5wtg204z04zgvh.gif','哈哈哈',0,NULL,1510716685932,NULL),
(3666,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opq2dhqj20m80m80tz.jpg','大哥抽这个,苏联进口的!(大伊万)',0,NULL,1510716685932,NULL),
(3667,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqu7tdcj208c08cmyb.jpg','有没有小姐姐给看呀',0,NULL,1510716685932,NULL),
(3668,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqydvyqj205i02xweh.jpg','我们不一样:不一样',0,NULL,1510716685932,NULL),
(3669,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqhe7sdg208c08cabi.gif','溜了溜了',0,NULL,1510716685932,NULL),
(3670,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opnt40oj201s01sa9t.jpg','猪八盖啊',0,NULL,1510716685932,NULL),
(3671,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3opu53e5g207s08caat.gif','很蓝瘦',0,NULL,1510716685932,NULL),
(3672,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opke2roj208u08u74d.jpg','可你也不能含我鸡啊',0,NULL,1510716685932,NULL),
(3673,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq4cjsxj208c08cglu.jpg','挖个坑,埋点士,数个12345',0,NULL,1510716685932,NULL),
(3674,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3opindiaj201e020741.jpg','乖巧',0,NULL,1510716685932,NULL),
(3675,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3or0vy7ij20qo0qoabd.jpg','这傻逼我也是醉了',0,NULL,1510716685932,NULL),
(3676,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oph6bytj208c08cjsp.jpg','无fuck说',0,NULL,1510716685932,NULL),
(3677,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oovak6jg208c08cdg5.gif','哇!猪精',0,NULL,1510716685932,NULL),
(3678,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3osiuhstg202t02it8m.gif','好想舔女曾理',0,NULL,1510716685932,NULL),
(3679,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3osh7xmag205i05igli.gif','踢掉,绝对踢掉',0,NULL,1510716685932,NULL),
(3680,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3op3pqj3j205005iwee.jpg','好歹我也是个王者给我个面子',0,NULL,1510716685932,NULL),
(3681,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3opvvwjbg206o06ot8z.gif','本密探眉头一皱发现事情并不简单',0,NULL,1510716685932,NULL),
(3682,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3op8eh59j203m04f74j.jpg','你卢本伟很叼?吃屎吧,我操你妈。',0,NULL,1510716685932,NULL),
(3683,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3os5bacbj20hs0gxwfo.jpg','一脸骚样还卖萌',0,NULL,1510716685932,NULL),
(3684,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opxngg6j206o06oq38.jpg','很好，今天装逼到此结束。男同学可以放学回家，女同学留下',0,NULL,1510716685932,NULL),
(3685,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3opa75nej205205imxc.jpg','看了半天记录没一个值得收藏的图，我操你们在座的人妈逼啊',0,NULL,1510716685932,NULL),
(3686,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3opbzgqfg206o06odge.gif','我是你的小可爱吗?',0,NULL,1510716685932,NULL),
(3687,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqr87ekj20fk0f9gm8.jpg','大丸丸,我想修你的车（一个汽车维修员）',0,NULL,1510716685932,NULL),
(3688,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3or83kzrj205i04mq2x.jpg','老公不理偷情的加我（熊猫人）',0,NULL,1510716685932,NULL),
(3689,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oq5z5jsj205i04saa6.jpg','对不起我是直男',0,NULL,1510716685932,NULL),
(3690,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ope7psgj20yi0thwfl.jpg','你太小了',0,NULL,1510716685932,NULL),
(3691,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3os746g6g206o06oq32.gif','闭嘴吧你中年老妇女',0,NULL,1510716685932,NULL),
(3692,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3os143o0g205i03adfw.gif','没人理真可怜',0,NULL,1510716685932,NULL),
(3693,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3osfn1pyj20hs0dh79w.jpg','偷情+我逼超紧',0,NULL,1510716685932,NULL),
(3694,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ov6f2hbj205i03t744.jpg','你妈逼',0,NULL,1510716685932,NULL),
(3695,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oqdw7h7j20k00qo0va.jpg','皮皮虾，我们走！',0,NULL,1510716685932,NULL),
(3696,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oojweudg207005kq37.gif','对方不想和你说话,并向你扔了个超级球',0,NULL,1510716685932,NULL),
(3697,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3onups74j203803cmwz.jpg','走开啦，死鬼',0,NULL,1510716685932,NULL),
(3698,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ov236r8j20e80e810j.jpg','妙啊',0,NULL,1510716685932,NULL),
(3699,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3omphtgvj204x04ljr9.jpg','你只是一只熬夜点外卖的猪精！',0,NULL,1510716685932,NULL),
(3700,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3onpc6isj205i05iq2t.jpg','我就是那個肥宅',0,NULL,1510716685932,NULL),
(3701,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3om8p742j205i05dweg.jpg','新款都没上,首页也没做聊，你妹天还不死去做图',0,NULL,1510716685932,NULL),
(3702,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3omny254j201o01ojr5.jpg','无奈',0,NULL,1510716685932,NULL),
(3703,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3owukobng208c08cgm3.gif','要我怎么说你才懂',0,NULL,1510716685932,NULL),
(3704,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oopflroj205405kjrb.jpg','草，戴了口罩还臭',0,NULL,1510716685932,NULL),
(3705,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3omxrz6yj205f05hq2x.jpg','谁tm喜欢你个死基佬,我说的是我老婆peri',0,NULL,1510716685932,NULL),
(3706,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oma6m4fj205i043jr6.jpg','老姐声音真酥',0,NULL,1510716685932,NULL),
(3707,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ov8xwqxg207105ajsn.gif','是谁在窥探我的菊花!',0,NULL,1510716685932,NULL),
(3708,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3owi5dt8j209408jaaw.jpg','关我屁事',0,NULL,1510716685932,NULL),
(3709,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oorliahg206o06oq3e.gif','你说啥，风太天我听不见',0,NULL,1510716685932,NULL),
(3710,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3owy9ee0j20af0afmxs.jpg','QQ小姐姐来一场QQ爱吗',0,NULL,1510716685932,NULL),
(3711,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ooblv8ij206o06o0t4.jpg','记录楼上与楼下屁眼交易全过程',0,NULL,1510716685932,NULL),
(3712,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ovqwytfg206o06o74o.gif','女管理今晚送个男群员来，不然全他妈的禁言',0,NULL,1510716685932,NULL),
(3713,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oodnb28j20c807p74g.jpg','对方不想和你说话，并向你扔了一个小火锅',0,NULL,1510716685932,NULL),
(3714,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3owemphxj20hs0hsq6i.jpg','你拿什么跟我斗图（斗图大赛颁奖台）',0,NULL,1510716685932,NULL),
(3715,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3om5cstyj203c01wdfm.jpg','没事我先挂了',0,NULL,1510716685932,NULL),
(3716,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ovu06l8j208c08c3zz.jpg','你站好你的街就行了，其他的事不用你操心',0,NULL,1510716685932,NULL),
(3717,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ow7ekq0g206o06ot8t.gif','阿姨别这样看我，我还不是你的女婿',0,NULL,1510716685932,NULL),
(3718,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oo1z69lj20fs0bpgm5.jpg','我差点笑出声~',0,NULL,1510716685932,NULL),
(3719,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3onxrb2rg208c08cdhh.gif','一个人的夜我的心应该放在哪里',0,NULL,1510716685932,NULL),
(3720,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ovjvu5jg205705i74i.gif','好不学,学傻逼!',0,NULL,1510716685932,NULL),
(3721,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ovetsgfj20hs0hsn2v.jpg','好了、孩子们该睡觉了',0,NULL,1510716685932,NULL),
(3722,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oxd4qehj2046042q3d.jpg','艾甩 克咬他',0,NULL,1510716685932,NULL),
(3723,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3omvy2xrj20ci0cigmr.jpg','给我糖',0,NULL,1510716685932,NULL),
(3724,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oxbb6zrg207006pn96.gif','烧楼上屁屁',0,NULL,1510716685932,NULL),
(3725,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3owg7teng206o06ogli.gif','跺脚叉腰嘴，嘟嘴',0,NULL,1510716685932,NULL),
(3726,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ow3t3qwj206o06odfx.jpg','你不配',0,NULL,1510716685932,NULL),
(3727,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3on88omeg206o06oaak.gif','社会社会',0,NULL,1510716685932,NULL),
(3728,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3omr6zg1g208c08aglj.gif','许个心愿谋点福利',0,NULL,1510716685932,NULL),
(3729,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ootf24aj208c08cgm2.jpg','真牛逼',0,NULL,1510716685932,NULL),
(3730,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3on4cls8g208c074q3x.gif','你算哪条黄瓜?',0,NULL,1510716685932,NULL),
(3731,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oww1g11j203c03c3yb.jpg','偷听（鸽子）',0,NULL,1510716685932,NULL),
(3732,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3owqczg5j20hf0hs12h.jpg','去你妈逼的,老是拿我用过的图怼我,我才不要跟你玩',0,NULL,1510716685932,NULL),
(3733,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ow0h0iaj205k05k74v.jpg','来呀，亮兵器呀',0,NULL,1510716685932,NULL),
(3734,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3onzk9bbj20b205jaaa.jpg','劳资转身就是一脚',0,NULL,1510716685932,NULL),
(3735,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ooi144tj206o06odgc.jpg','拿烟的手，微微颤抖',0,NULL,1510716685932,NULL),
(3736,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3owaps4rg206o06o3yo.gif','心寒',0,NULL,1510716685932,NULL),
(3737,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ont44ixj206o06oq36.jpg','老子一黄鳝肛死你',0,NULL,1510716685932,NULL),
(3738,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ovoq23uj207606jdhe.jpg','我马克思无话可说',0,NULL,1510716685932,NULL),
(3739,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ovi7sgog205i05cjrm.gif','忘不是本人',0,NULL,1510716685932,NULL),
(3740,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ona59h3g208c08cwel.gif','我能怎么办,我也好绝望。',0,NULL,1510716685932,NULL),
(3741,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oo3xa2pj206o06o0t6.jpg','能不能成熟点，都200来斤重的人了',0,NULL,1510716685932,NULL),
(3742,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ovgi0kcg208c07i0sv.gif','小盆友,我不想用我的图片伤害你!',0,NULL,1510716685932,NULL),
(3743,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3on5z5uoj205k05kq2u.jpg','我现在看不见,快点亲我。',0,NULL,1510716685932,NULL),
(3744,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3onnowf7j209w0b03z7.jpg','网恋吗?有感情就拉黑的那',0,NULL,1510716685932,NULL),
(3745,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oo7e57pj206b065tad.jpg','好孩子',0,NULL,1510716685932,NULL),
(3746,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3omclk6fg208c08cwet.gif','ok,没问题',0,NULL,1510716685932,NULL),
(3747,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3omstggqj2030043wek.jpg','你别治了，等死吧。谁他蚂敢给你治疗，老子烧了他家医院',0,NULL,1510716685932,NULL),
(3748,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ow938kcg206o04tt8t.gif','这时候装傻就对了',0,NULL,1510716685932,NULL),
(3749,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oonqeqmj203w04nwep.jpg','怎么滴,你打我啊',0,NULL,1510716685932,NULL),
(3750,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ovw0n77j2046043gm5.jpg','欧!我的天!',0,NULL,1510716685932,NULL),
(3751,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3onr6uc4g206o06o0st.gif','其实我一直都很佩服你这群妹纸，那么多你鸡巴一直挺住',0,NULL,1510716685932,NULL),
(3752,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3on00zssj20ek0giq42.jpg','民国三年等不到一场雨，一生等不来一句我爱你',0,NULL,1510716685932,NULL),
(3753,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oo9ag11j204y05i3yn.jpg','呜,我想吃肉',0,NULL,1510716685932,NULL),
(3754,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ow25wtaj206o06owen.jpg','我发去你妈个大西瓜',0,NULL,1510716685932,NULL),
(3755,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ommfdspj20fk0goq9r.jpg','我去买几个魔刹石,你就站在此地,不要开团',0,NULL,1510716685932,NULL),
(3756,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ow5k1vrj206o06oglr.jpg','崽儿阿爸看你很难受',0,NULL,1510716685932,NULL),
(3757,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3onkzxtfj20jg0jggv1.jpg','给dalao递茶',0,NULL,1510716685932,NULL),
(3758,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ovyjdjbj208b07s409.jpg','喷点春药大家一起骚',0,NULL,1510716685932,NULL),
(3759,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ovm1xj1j203x05ijrv.jpg','我找人打你!',0,NULL,1510716685932,NULL),
(3760,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oofj3q3j20a405r0ss.jpg','ADC（黄金枪）',0,NULL,1510716685932,NULL),
(3761,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3om75theg208c069aa2.gif','就因为我长的帅吗?',0,NULL,1510716685932,NULL),
(3762,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3on1yymej20k00hmmxl.jpg','在座的妹子有一个老子日一个',0,NULL,1510716685932,NULL),
(3763,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oolvvh2j20hs0hsdg5.jpg','完全融入不了话题啊',0,NULL,1510716685932,NULL),
(3764,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2v1z1zt1g20g10a07fr.gif','人家不要嘛',0,NULL,1510716685932,NULL),
(3765,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3om1bpoej20k00k0ac2.jpg','我想带你去浪漫的土耳其，然后一起去东京和巴黎，其实我很喜欢迈阿密，和有黑人的洛杉矶。',0,NULL,1510716685932,NULL),
(3766,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3olqw16lg206o06o3ye.gif','你才是猪',0,NULL,1510716685932,NULL),
(3767,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3fena355j20hs0hsac7.jpg','查视力',0,NULL,1510716685932,NULL),
(3768,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3oly9tyfg206o06o74c.gif','脸上有微笑,心理有B数',0,NULL,1510716685932,NULL),
(3769,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vdj2tt8j207r07raa3.jpg','宝宝要睡觉了（教皇）',0,NULL,1510716685932,NULL),
(3770,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29g7mj9hj208c08cweh.jpg','树新风，平时我是怎么教你的？',0,NULL,1510716685932,NULL),
(3771,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oljx3z0j209104kglm.jpg','你理我的时候我就感觉你跟别人刚做完。',0,NULL,1510716685932,NULL),
(3772,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2v27uofzj20by09o3ys.jpg','无脸人骑小车车',0,NULL,1510716685932,NULL),
(3773,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3ff38rvjg205y05zwek.gif','挑事三连',0,NULL,1510716685932,NULL),
(3774,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3om3wqjzj20hx0gymxx.jpg','为什么不说话,难道对我连一句敷衍都不愿意了吗?',0,NULL,1510716685932,NULL),
(3775,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ffmd8kdg204102ltax.gif','不要脸',0,NULL,1510716685932,NULL),
(3776,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29ge2juhg206o06o7bd.gif','啊哈（骷髅）',0,NULL,1510716685932,NULL),
(3777,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oaqxv5qj202702bjrd.jpg','金馆长小人',0,NULL,1510716685932,NULL),
(3778,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29g5yeo0j201w020a9u.jpg','小可爱',0,NULL,1510716685932,NULL),
(3779,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vd2py0wj20c6072412.jpg','来奶光擎天火山C支持包队火山C下波给酱油！',0,NULL,1510716685932,NULL),
(3780,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3olgiyjlj205a06at8n.jpg','忘我是最强王者可我没有老婆',0,NULL,1510716685932,NULL),
(3781,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2v1iugy7j207c051aa0.jpg','9-5/(8-3)*2+6=?（13=B）',0,NULL,1510716685932,NULL),
(3782,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl295943toj20gd0qoq3r.jpg','橘子皮抱橘子',0,NULL,1510716685932,NULL),
(3783,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2v22fognj204z05i3ya.jpg','我加你，乱扣是傻逼',0,NULL,1510716685932,NULL),
(3784,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl295m5en1j204t02jmwz.jpg','一锤子打死你',0,NULL,1510716685932,NULL),
(3785,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3ffrd02ig206o08wjri.gif','虫子屏幕爬',0,NULL,1510716685932,NULL),
(3786,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29g97stwg208c08cq33.gif','我不活了！我还活着！踢掉！',0,NULL,1510716685932,NULL),
(3787,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29tgse3zj20hs0hs3yw.jpg','一首帅到没朋友献给自己',0,NULL,1510716685932,NULL),
(3788,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3olcphb4j20sf0g0whp.jpg','',0,NULL,1510716685932,NULL),
(3789,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3fg56a1gj208c08cta7.jpg','熊猫人伤心表情',0,NULL,1510716685932,NULL),
(3790,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3olp7haug208c08cab6.gif','哟呕死了呕死了，简直是不要脸',0,NULL,1510716685932,NULL),
(3791,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ffixxe3g206o06owma.gif','蘑菇头走大路',0,NULL,1510716685932,NULL),
(3792,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl295jvc14g208c04o4f5.gif','我是谁？我在哪？我在干什么？',0,NULL,1510716685932,NULL),
(3793,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vdt6ru1g208c08cgln.gif','你也喜欢鹿晗？情敌，拔剑吧！',0,NULL,1510716685932,NULL),
(3794,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2v20vuobj203e03djr8.jpg','金三胖',0,NULL,1510716685932,NULL),
(3795,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ffo5agog20eu0ic74b.gif','闪光灯',0,NULL,1510716685932,NULL),
(3796,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vdv39urj208i0aut8w.jpg','adidas（插兜）',0,NULL,1510716685932,NULL),
(3797,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3fej1sjfg203c03c0su.gif','教皇妹子玩手枪',0,NULL,1510716685932,NULL),
(3798,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3oletkcpj206o06ojrm.jpg','不一样我们不一样',0,NULL,1510716685932,NULL),
(3799,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3fga35rug20290273ys.gif','一砖头打死你',0,NULL,1510716685932,NULL),
(3800,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl3olwh6enj206o06owen.jpg','就是就是',0,NULL,1510716685932,NULL),
(3801,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vewbbbcg206e06ke81.gif','胖妞跳舞',0,NULL,1510716685932,NULL),
(3802,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ffc7l8ag203c03cgzm.gif','妹子吃萝卜',0,NULL,1510716685932,NULL),
(3803,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29tf365wj205i050web.jpg','沙比陈浩七',0,NULL,1510716685932,NULL),
(3804,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3fekr41zg205r04y748.gif','切，臭小子',0,NULL,1510716685932,NULL),
(3805,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3olsojt7j206o06odfy.jpg','太刺激了',0,NULL,1510716685932,NULL),
(3806,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vcxmfftg206o06o74f.gif','电竞直男三连',0,NULL,1510716685932,NULL),
(3807,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vczqsnfj20k00a6gmc.jpg','咸鱼三连',0,NULL,1510716685932,NULL),
(3808,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vdx6l0tj20dk0fhmxn.jpg','小可爱',0,NULL,1510716685932,NULL),
(3809,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3ff1ebksg205u06kx5c.gif','骑猪',0,NULL,1510716685932,NULL),
(3810,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2v29obqdj205m05nq2w.jpg','思考一下（教皇）',0,NULL,1510716685932,NULL),
(3811,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3fg2tcgig206j05ini3.gif','亲亲',0,NULL,1510716685932,NULL),
(3812,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2956w481j205i03cq2q.jpg','眼睛歪了',0,NULL,1510716685932,NULL),
(3813,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vd7154wj20b406waa3.jpg','草三连',0,NULL,1510716685932,NULL),
(3814,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vdrb4i8g207t07tdlc.gif','生气了',0,NULL,1510716685932,NULL),
(3815,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgc6o7bg209q08ohdu.gif','懒狗',0,NULL,1510716685932,NULL),
(3816,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl3fg8apfog20qo0qon0s.gif','不不不',0,NULL,1510716685932,NULL),
(3817,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vdgwging206o06ownq.gif','谁在背后说我的坏话？',0,NULL,1510716685932,NULL),
(3818,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3ffppvffg204g03cq2r.gif','虫子屏幕爬',0,NULL,1510716685932,NULL),
(3819,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29tdlpomj204704ggli.jpg','请打死我谢谢',0,NULL,1510716685932,NULL),
(3820,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2v1mfx92j20by0hgweq.jpg','伟猫降临',0,NULL,1510716685932,NULL),
(3821,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vdl2h1oj20ag0agweo.jpg','舔舔舔',0,NULL,1510716685932,NULL),
(3822,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2v1koh5dj20c507c0t7.jpg','你看我可爱吗？',0,NULL,1510716685932,NULL),
(3823,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2955dvxjj20hs0hsdgl.jpg','emmmm.......（皇冠版）',0,NULL,1510716685932,NULL),
(3824,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vcrpp4lj20cr09gt8p.jpg','He tui',0,NULL,1510716685932,NULL),
(3825,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2v24alxmj20at0awmxd.jpg','我就看你一个人装逼就好了',0,NULL,1510716685932,NULL),
(3826,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3olmiqftj20ir0lfgmo.jpg','上网不网，恋纯属浪费电。别问我是谁，请与我相恋，和我处对象有排面',0,NULL,1510716685932,NULL),
(3827,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vcvntl5g206o06oq72.gif','万圣节快乐',0,NULL,1510716685932,NULL),
(3828,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl295oggh9j201s01sjr5.jpg','一拳打死你',0,NULL,1510716685932,NULL),
(3829,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl3oli5ubqj205i056a9w.jpg','关我皮丝?',0,NULL,1510716685932,NULL),
(3830,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vd5eiumj20k00k0wg0.jpg','绿头发',0,NULL,1510716685932,NULL),
(3831,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl3oluiae7g206o06oq36.gif','你是我的小呀小苹果',0,NULL,1510716685932,NULL),
(3832,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vnmaq1oj209709kdfy.jpg','老子想宝马撞死你个傻逼',0,NULL,1510716685932,NULL),
(3833,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhxryawg208c08ctag.gif','少点套路多点真诚',0,NULL,1510716685932,NULL),
(3834,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2viwpbqig208c069wfi.gif','哪里来的戏精',0,NULL,1510716685932,NULL),
(3835,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vi43ufuj208c08cweh.jpg','看来您非等屎之辈呀',0,NULL,1510716685932,NULL),
(3836,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vl1zmz9g208c08c3yl.gif','我太帅了万人爱',0,NULL,1510716685932,NULL),
(3837,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vilr27qj205i05i3yn.jpg','女管理那小骚货，昨晚舔我鸡巴那叫一个绝',0,NULL,1510716685932,NULL),
(3838,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhry0rqj203y04gq2t.jpg','死亡宣告，我出去了航把SKT都给杀了',0,NULL,1510716685932,NULL),
(3839,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhfin4sg208c08cq38.gif','狗都有秋裤，美慕嫉妒恨,',0,NULL,1510716685932,NULL),
(3840,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhtlpvug2082068dfx.gif','来斗图啊,怎么不说话了',0,NULL,1510716685932,NULL),
(3841,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vh3h65mj208w04gt8y.jpg','你不理我的时候感觉你再和别人做爱',0,NULL,1510716685932,NULL),
(3842,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vi0xxfyj205j05cglk.jpg','姐姐可以给你看下我JJ吗',0,NULL,1510716685932,NULL),
(3843,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vibid22j206o06ojrt.jpg','你人一定要这么飘吗?',0,NULL,1510716685932,NULL),
(3844,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vinhwrmg206o06oa9z.gif','大哥请笑纳',0,NULL,1510716685932,NULL),
(3845,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgot0y8j20h50fcab9.jpg','你是我的掌上明猪',0,NULL,1510716685932,NULL),
(3846,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vh4yklnj205305i0sj.jpg','l am a正经人',0,NULL,1510716685932,NULL),
(3847,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vha0jwmj205k04idfq.jpg','楼上一条傻逼狗',0,NULL,1510716685932,NULL),
(3848,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vj5wsnjj208c08cglk.jpg','浪费钱',0,NULL,1510716685932,NULL),
(3849,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vj0byltj208c08c74p.jpg','怎么大风越狠，我心越荡',0,NULL,1510716685932,NULL),
(3850,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vijxjjrj202s02pwel.jpg','走开你有梅毒',0,NULL,1510716685932,NULL),
(3851,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vh8h910j208g05e0sw.jpg','笑容逐渐缺德',0,NULL,1510716685932,NULL),
(3852,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhqcm88j208c08cjrl.jpg','看戏',0,NULL,1510716685932,NULL),
(3853,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhlnlz3j20g40g43z7.jpg','呜啊啊啊吓死你们',0,NULL,1510716685932,NULL),
(3854,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhv7atug208c08c74d.gif','我愿意做老婆的狗',0,NULL,1510716685932,NULL),
(3855,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vjdnxlwj206a0800tu.jpg','给朕退下!',0,NULL,1510716685932,NULL),
(3856,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgqt49bj20c80bwt9g.jpg','分手!操你妈的',0,NULL,1510716685932,NULL),
(3857,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vkusui1g208c06l3z6.gif','雷鋒精神，永放光芒',0,NULL,1510716685932,NULL),
(3858,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2visgywlj20k90flaaq.jpg','我可去你妈的吧',0,NULL,1510716685932,NULL),
(3859,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgw5q7vj205i05dq33.jpg','你以为挂头像会好混点吗？劳资打人妖从来不客气的',0,NULL,1510716685932,NULL),
(3860,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vi2japaj205i05imxa.jpg','不行我受不了这委屈',0,NULL,1510716685932,NULL),
(3861,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgxxdrvj202v05i0sm.jpg','鸡鸡硬硬的',0,NULL,1510716685932,NULL),
(3862,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vh6me3mj205i05idfz.jpg','我请你冷静一点!',0,NULL,1510716685932,NULL),
(3863,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vii6hcqj205f04vt8w.jpg','你果然是个骚货',0,NULL,1510716685932,NULL),
(3864,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vj2pmlhj208c08cq2x.jpg','你喝个锤子酒',0,NULL,1510716685932,NULL),
(3865,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vicz5r8g202s03c3ye.gif','越听越冷',0,NULL,1510716685932,NULL),
(3866,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vl084r9g205i05idfu.gif','我们之间的事不要告诉我老公喔',0,NULL,1510716685932,NULL),
(3867,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2viyhlitj20k00k0t98.jpg','楼上的，吃我断子绝孙剑',0,NULL,1510716685932,NULL),
(3868,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vjb0pq1j20g40g4aan.jpg','我发现这里有搞事的，来了',0,NULL,1510716685932,NULL),
(3869,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vh09p9yg207p08cmy7.gif','你别是个傻子吧',0,NULL,1510716685932,NULL),
(3870,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgit74yj20c70c7gm0.jpg','思考一下',0,NULL,1510716685932,NULL),
(3871,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vi5xypwj208c0693yz.jpg','要要切克闹,你说秋裤,我说要',0,NULL,1510716685932,NULL),
(3872,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vj949m5g208c08cq3d.gif','被你丑吐了',0,NULL,1510716685932,NULL),
(3873,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vl9kvkrg208c08cdhn.gif','我不吃我不饿，我没胃口',0,NULL,1510716685932,NULL),
(3874,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vieq4m3j205i05gaa2.jpg','好兄弟,我进传销肯定第一个拉你',0,NULL,1510716685932,NULL),
(3875,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2viq4nyvj2064064jrc.jpg','你算哪根香蕉',0,NULL,1510716685932,NULL),
(3876,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vigdr6vg205k05kq2u.gif','突如其来的贱，伤了老子前列腺',0,NULL,1510716685932,NULL),
(3877,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgf5mpgg206o06oweo.gif','表白三连',0,NULL,1510716685932,NULL),
(3878,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vj4cz3fg208c08cwej.gif','老夫子,捆绑你',0,NULL,1510716685932,NULL),
(3879,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vnkko1uj208806vaat.jpg','我要吃饭给我钱',0,NULL,1510716685932,NULL),
(3880,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgkwd9sj20b40b4dgn.jpg','上吊',0,NULL,1510716685932,NULL),
(3881,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vi7jpydj205004bglq.jpg','我现在只想做个好人',0,NULL,1510716685932,NULL),
(3882,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgujab6j206o06ot8r.jpg','老子单挑你们所有人废话少说开打吧!',0,NULL,1510716685932,NULL),
(3883,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vl5tv33j20el0d6glu.jpg','一级棒噢!',0,NULL,1510716685932,NULL),
(3884,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhhkr7fg208c08cdgf.gif','来自小仙女的鄙视',0,NULL,1510716685932,NULL),
(3885,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vkydvv5j206805jwed.jpg','100婚!100婚!（100分）',0,NULL,1510716685932,NULL),
(3886,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhj7mhbj207f06nmx4.jpg','看戏',0,NULL,1510716685932,NULL),
(3887,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vh1qlaij205i05e744.jpg','要你管,老男人',0,NULL,1510716685932,NULL),
(3888,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vggrf50g201o01oq2v.gif','签到',0,NULL,1510716685932,NULL),
(3889,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vkwn8euj202z02yt8v.jpg','没劲',0,NULL,1510716685932,NULL),
(3890,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vi9mowoj20g40ezgmh.jpg','请阁下停止装B吧，我已经无法忍受你的攻击了',0,NULL,1510716685932,NULL),
(3891,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vlbr0muj208c08cmxs.jpg','我凭手速拿的，输出为什么说我抢位置',0,NULL,1510716685932,NULL),
(3892,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgsysqej20ir0m8ab4.jpg','baby怎么会这样，再也不能睡同床寂寞的我怎么度过夜',0,NULL,1510716685932,NULL),
(3893,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhbqbshg206y06yq32.gif','来我的怀里',0,NULL,1510716685932,NULL),
(3894,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhz9f89j201o01odfm.jpg','终于轮到我了',0,NULL,1510716685932,NULL),
(3895,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vgmn0a8g206o06o3yk.gif','仙女八连',0,NULL,1510716685932,NULL),
(3896,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2viudlz5g206o06ojrw.gif','你个傻狗',0,NULL,1510716685932,NULL),
(3897,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vl3z7x1j20c80c8mxp.jpg','你这个人很皮嘛',0,NULL,1510716685932,NULL),
(3898,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhnjhhmj205i05it8v.jpg','自从我扒了你裤子后，你就很少笑了是不是我做错了什么',0,NULL,1510716685932,NULL),
(3899,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vhdlxvzj20d10ghwf6.jpg','卧槽这电灯泡好闪',0,NULL,1510716685932,NULL),
(3900,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vyvyd0kg2028028t9b.gif','铅笔撒尿',0,NULL,1510716685932,NULL),
(3901,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29sfi6bqg208c08cwf5.gif','孩子们别说了,爸比爱你',0,NULL,1510716685932,NULL),
(3902,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29sdiy8fj204p0403yb.jpg','你看你，哈哈哈哈。',0,NULL,1510716685932,NULL),
(3903,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29t4u6x5j205p06daab.jpg','猪皮铁拳警告',0,NULL,1510716685932,NULL),
(3904,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29t1c9v3j206o06ojs9.jpg','不约，标叔我们不约',0,NULL,1510716685932,NULL),
(3905,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29smnuacj20g40g4t95.jpg','大哥抽烟',0,NULL,1510716685932,NULL),
(3906,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vlmg1smg206o06oq2y.gif','这大哥我当定了',0,NULL,1510716685932,NULL),
(3907,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmd3bl3g208c08cq2x.gif','我告诉你我们熊猫才不会跟你们较劲',0,NULL,1510716685932,NULL),
(3908,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmuvqo1g208c08cwei.gif','好啦好啦,最爱你了啦',0,NULL,1510716685932,NULL),
(3909,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29sxrzsdg204c03p0te.gif','给我一杯忘情水再给一个小妹妹',0,NULL,1510716685932,NULL),
(3910,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmncanlj204602pdfn.jpg','我日你得妈耶',0,NULL,1510716685932,NULL),
(3911,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vngishbj208106awek.jpg','我去你妈的臭鸭子!',0,NULL,1510716685932,NULL),
(3912,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29tc417ij202301ugld.jpg','他妈的',0,NULL,1510716685932,NULL),
(3913,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vm4c5kkj203c03cgll.jpg','你不会就是不知火舞的弟弟不知好歹吧',0,NULL,1510716685932,NULL),
(3914,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmlrpiug208c08ct9k.gif','啊!',0,NULL,1510716685932,NULL),
(3915,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmje687j208c08c3yq.jpg','我和你升么怨仇',0,NULL,1510716685932,NULL),
(3916,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmt6leaj20k00fk3z8.jpg','向RBQ致敬',0,NULL,1510716685932,NULL),
(3917,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29s6p3yyj20730730sy.jpg','你们还盯我大腿看',0,NULL,1510716685932,NULL),
(3918,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29t6l9k3j208w0870sv.jpg','姑娘我房门没关哦',0,NULL,1510716685932,NULL),
(3919,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29sagjvpj2076071wej.jpg','你们尽管团，大乔不把你们送回家算我输',0,NULL,1510716685932,NULL),
(3920,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vm7ih08j205t05da9z.jpg','读书要紧,告辞',0,NULL,1510716685932,NULL),
(3921,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29sivi9fj208c08zq31.jpg','你只有打飞机的命',0,NULL,1510716685932,NULL),
(3922,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmypc3aj208w08wdg6.jpg','姑娘广东欢迎你',0,NULL,1510716685932,NULL),
(3923,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vm9p473j204z05hq34.jpg','劳资看看今天谁敢得罪我',0,NULL,1510716685932,NULL),
(3924,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29sh8tz5j208506uwep.jpg','不仅笑容完全消失，甚至还在嘟隴',0,NULL,1510716685932,NULL),
(3925,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29t30u9kj202e027jre.jpg','怕狗',0,NULL,1510716685932,NULL),
(3926,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vn8x9ztj206o06oq4a.jpg','我装去你妈个大西瓜',0,NULL,1510716685932,NULL),
(3927,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vn24j2fj204603e3yh.jpg','哪儿来的傻子',0,NULL,1510716685932,NULL),
(3928,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29sz9tdlj205i04xzk7.jpg','我直接日你妈',0,NULL,1510716685932,NULL),
(3929,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vlp7fieg208c07vwff.gif','别逼我下手',0,NULL,1510716685932,NULL),
(3930,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmfji23g206908cgmh.gif','妈我没钱啦!',0,NULL,1510716685932,NULL),
(3931,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vm2nkowj203c03cmx4.jpg','一天天就知道玩手机，白天黑夜玩手机等着猝死吧你',0,NULL,1510716685932,NULL),
(3932,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vytwzyng206o06ojyu.gif','脏话三连',0,NULL,1510716685932,NULL),
(3933,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmwk6o4g208c08caa1.gif','崽啊，爸爸对你很失望',0,NULL,1510716685932,NULL),
(3934,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vyi1yf1g205104z7ih.gif','完了完了',0,NULL,1510716685932,NULL),
(3935,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29s8uk8oj206o06owf2.jpg','我胖虎今天要打死你',0,NULL,1510716685932,NULL),
(3936,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vlkjgxkj20aw0gogm5.jpg','大家好我是萌新',0,NULL,1510716685932,NULL),
(3937,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vnepoezj203d02l744.jpg','昨天操狗搞伤了（皮卡丘）',0,NULL,1510716685932,NULL),
(3938,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29su2jxyj208w07fq33.jpg','10元一次来!让我们把革命的友谊再升华下',0,NULL,1510716685932,NULL),
(3939,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmqr1mmj206o06ogll.jpg','这么色的吗？兄弟',0,NULL,1510716685932,NULL),
(3940,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vn3ys40j20a70983yo.jpg','欢迎加Q,萌猪猪一枚',0,NULL,1510716685932,NULL),
(3941,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vlgjbczj2073073jrr.jpg','打扰了,打扰了',0,NULL,1510716685932,NULL),
(3942,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29t8mbl9g206o06oaaq.gif','裹紧我的小被子',0,NULL,1510716685932,NULL),
(3943,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vn69hxgj20jw0jtdgj.jpg','眼睛眼睛嘴巴，我的照骗',0,NULL,1510716685932,NULL),
(3944,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29skuiqgg208c080750.gif','糖炒栗子',0,NULL,1510716685932,NULL),
(3945,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29tanx6yj205406b74r.jpg','跟你们聊天聊的劳资的压索都没抢，操你妈',0,NULL,1510716685932,NULL),
(3946,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29svnbr2j205i05bq2u.jpg','我尼玛个臭嗨',0,NULL,1510716685932,NULL),
(3947,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vlen5f0j202801oq2q.jpg','重新加载',0,NULL,1510716685932,NULL),
(3948,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vlslo11j20h102qaa0.jpg','万圣节可以请你吃脱氧核糖吗（DNA）',0,NULL,1510716685932,NULL),
(3949,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29sc1lwkj208y08mmx4.jpg','老子怼死你',0,NULL,1510716685932,NULL),
(3950,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29s4u9j4j204y05ijrn.jpg','贴表情的俊逼。怎么不贴尼玛裸照',0,NULL,1510716685932,NULL),
(3951,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vnd5q02j203d02ldfo.jpg','受伤的眼神',0,NULL,1510716685932,NULL),
(3952,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vliel29g208c08cglp.gif','没有秋裤的人生是不精彩的人生',0,NULL,1510716685932,NULL),
(3953,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vyks6abj205805kwfn.jpg','马的',0,NULL,1510716685932,NULL),
(3954,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmp1tm4j202s02st8t.jpg','疲惫',0,NULL,1510716685932,NULL),
(3955,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vlr084yj205c05cmx1.jpg','我们不一样',0,NULL,1510716685932,NULL),
(3956,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vn0ftsxj205k05kq2v.jpg','我长得这么帅居然不约，还有王法吗?还有法律吗?',0,NULL,1510716685932,NULL),
(3957,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2vnbkbkej20c80c8js3.jpg','用一万块的 iphoneX骂你是你赚到了懂吗',0,NULL,1510716685932,NULL),
(3958,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29s2a1y3j209u0b0glv.jpg','如果我没生育能力怎么会生出你这个逆子',0,NULL,1510716685932,NULL),
(3959,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29sqo3a8j20ae070wi4.jpg','吃饭了吗？',0,NULL,1510716685932,NULL),
(3960,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vnib30cg208806vq38.gif','一定是这样子的',0,NULL,1510716685932,NULL),
(3961,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vyo4rxeg206o06omyl.gif','蘑菇头变幻头',0,NULL,1510716685932,NULL),
(3962,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmbh58vg208c08cq2z.gif','原来是这样啊可是这关我屁事',0,NULL,1510716685932,NULL),
(3963,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29s0cjixg208c08cjrx.gif','你脑子是不是进水了?',0,NULL,1510716685932,NULL),
(3964,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vm5xoomj202i03cmwx.jpg','打扰了',0,NULL,1510716685932,NULL),
(3965,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2vmhkzzag2073073aaa.gif','你可知道这样会害我们灭队',0,NULL,1510716685932,NULL),
(3966,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29ssbhxyj20580500sy.jpg','意中人，佐藤、露娜猫、全踏马是沙比',0,NULL,1510716685932,NULL),
(3967,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2vm11jivj20hd0h2q7n.jpg','鸣鸣quq',0,NULL,1510716685932,NULL),
(3968,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6w2o7ug206p05sdfw.gif','不听话就射死你',0,NULL,1510716685932,NULL),
(3969,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29rfozvbj20fk0fkgmn.jpg','吃点儿QQ糖冷静一下',0,NULL,1510716685932,NULL),
(3970,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7gqnszj205i05idfy.jpg','大傻逼',0,NULL,1510716685932,NULL),
(3971,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6iwsaug208c07vwev.gif','吃瓜群众多幸福!',0,NULL,1510716685932,NULL),
(3972,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29rwq9bgg208c069wet.gif','你能奈我何',0,NULL,1510716685932,NULL),
(3973,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29qzleojg208c08cweo.gif','我好像收到了假简历',0,NULL,1510716685932,NULL),
(3974,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0hs3lq53j20k00k0761.jpg','霸群！',0,NULL,1510716685932,NULL),
(3975,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i709841j20c80drq3b.jpg','在这群你算个鸡巴',0,NULL,1510716685932,NULL),
(3976,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2a4pqlvqg206o06it9q.gif','快递到了!',0,NULL,1510716685932,NULL),
(3977,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7l67p2j205i05i0sv.jpg','旁边还有个男人喘着气说，他要冲刺了',0,NULL,1510716685932,NULL),
(3978,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2a4j5xpdg206o06oaaf.gif','我要把你摁在墙上亲听到没!摁在墙上亲',0,NULL,1510716685932,NULL),
(3979,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i3sm4wkj203b03bwec.jpg','思考中',0,NULL,1510716685932,NULL),
(3980,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6pgjfnj205h05hjrb.jpg','技术太渣、完全不敢说话',0,NULL,1510716685932,NULL),
(3981,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29rdkrt9g206o06oglk.gif','哥有秋裤你有吗',0,NULL,1510716685932,NULL),
(3982,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2a4r7j8ij204904umx1.jpg','老子要上学去了（狗狗）',0,NULL,1510716685932,NULL),
(3983,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29rbviyog208c089dgp.gif','你的脸好大啊',0,NULL,1510716685932,NULL),
(3984,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6r1ubdj203w03cmwz.jpg','膜拜大佬',0,NULL,1510716685932,NULL),
(3985,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7s7yldg2073073t8p.gif','天使一般的坏坏',0,NULL,1510716685932,NULL),
(3986,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29rj7dq9j208c082mxu.jpg','我为什么要减肥，我又不是吃不起',0,NULL,1510716685932,NULL),
(3987,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2a4ed45tj20fv0hsjz5.jpg','妹子是你啊，穿上衣服我还没认出来',0,NULL,1510716685932,NULL),
(3988,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29ruzm71j205605idfr.jpg','自娱自乐的蠢货',0,NULL,1510716685932,NULL),
(3989,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i33l7lij20dw0iijsj.jpg','小黑猫发呆',0,NULL,1510716685932,NULL),
(3990,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29qvpsqtg208c08ct8r.gif','踩死你踩死你你个臭不要脸的',0,NULL,1510716685932,NULL),
(3991,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29qxpwpbj20fk0fkt9d.jpg','臭男人你逼逼叨叨干什么',0,NULL,1510716685932,NULL),
(3992,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29r7t3bkj201v01r0sd.jpg','你妈卖批',0,NULL,1510716685932,NULL),
(3993,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl2a492ijaj20b40b40u1.jpg','请问.你是不是处子之身',0,NULL,1510716685932,NULL),
(3994,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7d13vwj20fo09qjyo.jpg','再给我bb?',0,NULL,1510716685932,NULL),
(3995,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29rydp2sg206o06ojrm.gif','发张自拍看看！有素颜的吗？现在照啊！直男三连',0,NULL,1510716685932,NULL),
(3996,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29tnrn2ig2046034756.gif','洋葱打人',0,NULL,1510716685932,NULL),
(3997,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0hs69638j20a809nmy6.jpg','来嘛，求你了',0,NULL,1510716685932,NULL),
(3998,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6fh6qaj20hs0hsmxm.jpg','社会小茜',0,NULL,1510716685932,NULL),
(3999,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl2a4kqi1hj205504xmx2.jpg','和你有关系吗',0,NULL,1510716685932,NULL),
(4000,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29tky1bmj203d02la9v.jpg','皮卡丘偷看',0,NULL,1510716685932,NULL),
(4001,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29r1enx5j208c08cjri.jpg','没人来迎合一下为父,这让为父很尴尬',0,NULL,1510716685932,NULL),
(4002,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29rtfw9zj20co0cjdg6.jpg','没有新图,你就别装逼了!',0,NULL,1510716685932,NULL),
(4003,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7msht6j205a05amx3.jpg','脾气开始不好了',0,NULL,1510716685932,NULL),
(4004,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6mcpqsg2073073glr.gif','我不知道,什么都不知道',0,NULL,1510716685932,NULL),
(4005,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6h355gj203d03j3yd.jpg','保佑群里不说话的都尿床',0,NULL,1510716685932,NULL),
(4006,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0hrzz7paj2062062aa4.jpg','你哪个幼儿园的？挺狂的嘛。（不凉幼儿园）',0,NULL,1510716685932,NULL),
(4007,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7jdzs6j206o06o0tm.jpg','不聊了你们一开口就那么污',0,NULL,1510716685932,NULL),
(4008,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl2a4h65hkj208c08cgnp.jpg','妈了个逼的惯的你',0,NULL,1510716685932,NULL),
(4009,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0hrwnjwvj20qo0g5jrv.jpg','嘿嘿（熊猫）',0,NULL,1510716685932,NULL),
(4010,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2a4n5tm0j208c08cgmo.jpg','嘘别说话让他一个人自言自语',0,NULL,1510716685932,NULL),
(4011,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0hry6fd0g201d01e3y9.gif','抱抱',0,NULL,1510716685932,NULL),
(4012,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i3lj7zsj20cf0g2dha.jpg','我不和你吵架，我才懒得发火，我这个人善良又可爱，但你非要跟我讲大道理的话，我建议你去死。',0,NULL,1510716685932,NULL),
(4013,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29roeqh3j204l05iglp.jpg','不行啊太耽搁学习了!',0,NULL,1510716685932,NULL),
(4014,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7oq9hfj207i0cmmxg.jpg','我即使是死了被钉在棺材里,也要在墓里,用这腐朽的声带喊出.大麦我操你妈。',0,NULL,1510716685932,NULL),
(4015,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29rha290j205k05k3yl.jpg','没钱还任性',0,NULL,1510716685932,NULL),
(4016,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i75lbtsj202l02kjr6.jpg','呀嘞呀嘞',0,NULL,1510716685932,NULL),
(4017,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i2ol70uj201t01sa9u.jpg','发呆（二次元）',0,NULL,1510716685932,NULL),
(4018,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl29rl3l0pj20k00k0q3l.jpg','你比傻逼还傻',0,NULL,1510716685932,NULL),
(4019,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6kr5y5j206o06oweh.jpg','令人窒息的操作',0,NULL,1510716685932,NULL),
(4020,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29rmrmc0j205606mjrf.jpg','这位施主你的鸡巴掉了!',0,NULL,1510716685932,NULL),
(4021,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i72f06ag20730733z4.gif','我老公呢',0,NULL,1510716685932,NULL),
(4022,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29r69oqsg208c08cabu.gif','看透人生',0,NULL,1510716685932,NULL),
(4023,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl29rpyxyqg208c069jrh.gif','太丑!不要!',0,NULL,1510716685932,NULL),
(4024,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6y17xzj205k05kglm.jpg','去你妈的',0,NULL,1510716685932,NULL),
(4025,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29tjewzkj20hs0hs0tg.jpg','送花花给你（白熊）',0,NULL,1510716685932,NULL),
(4026,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7qd742g2073073dfq.gif','生活不止眼前的苟且，还有远方的苟且',0,NULL,1510716685932,NULL),
(4027,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6ubcu4j207905lmx3.jpg','你以前很迁就我的',0,NULL,1510716685932,NULL),
(4028,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6sr97uj205005kt8q.jpg','你出去,我不想看见你个短命娃儿',0,NULL,1510716685932,NULL),
(4029,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7f1kvhj20hq0hq0tn.jpg','略略略',0,NULL,1510716685932,NULL),
(4030,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29r39e2zg208f06st8s.gif','群里的家们都去哪里疯去了',0,NULL,1510716685932,NULL),
(4031,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4og9e2j206405e0sp.jpg','不要跑（奥特曼）',0,NULL,1510716685932,NULL),
(4032,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl29r9nkrng208c08c74j.gif','差点被儿子发现我是假的',0,NULL,1510716685932,NULL),
(4033,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6nxywvj207k06mmx3.jpg','那是不可能的,傻逼',0,NULL,1510716685932,NULL),
(4034,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl2a46ov5qg20960ax0vh.gif','多谢施主',0,NULL,1510716685932,NULL),
(4035,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl29rrj6dpg208c08c0sr.gif','嗨嗨嗨,醒一醒我们快要失去外挂了',0,NULL,1510716685932,NULL),
(4036,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i820h4tj20fn0c3wer.jpg','我没进决赛，我也是（RNG、黄牛、WE）',0,NULL,1510716685932,NULL),
(4037,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i302pkqj204k04mdg4.jpg','哪来的打字狗?',0,NULL,1510716685932,NULL),
(4038,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i61fpcxg206y06yq31.gif','不服顺着网线来打老子呀',0,NULL,1510716685932,NULL),
(4039,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i45n1cpj20hs0hs74s.jpg','男左女右',0,NULL,1510716685932,NULL),
(4040,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i41jbgpj20op0kiad7.jpg','我现在就去杀你亲妈',0,NULL,1510716685932,NULL),
(4041,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4vlg1rj204d033mxa.jpg','你这是什么表情，不高兴可以去吃屎',0,NULL,1510716685932,NULL),
(4042,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i3i7213j20go0jgdig.jpg','晚安',0,NULL,1510716685932,NULL),
(4043,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i3d8ujvg2073073wej.gif','儿子快回家吃饭了',0,NULL,1510716685932,NULL),
(4044,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5g7h87j20fh0by74m.jpg','还有这种操作?',0,NULL,1510716685932,NULL),
(4045,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0ij8pkfag206o06ojz2.gif','出来聊天',0,NULL,1510716685932,NULL),
(4046,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5zp2juj206405574h.jpg','发红包啦快出来',0,NULL,1510716685932,NULL),
(4047,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4xljrdj207y08cjrl.jpg','不是我水,刚才网卡了,能理解吗?',0,NULL,1510716685932,NULL),
(4048,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6aw8mtj20g00buwfa.jpg','吃屁',0,NULL,1510716685932,NULL),
(4049,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i3u8dulj204w02iglg.jpg','你懂我意思吧',0,NULL,1510716685932,NULL),
(4050,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i54jigzg208c08cdhi.gif','大哥抽烟',0,NULL,1510716685932,NULL),
(4051,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6323s2j208l06uglj.jpg','嗨是甲鲁浪代嘿',0,NULL,1510716685932,NULL),
(4052,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i2smzgmj205a05awgd.jpg','学业繁忙,告辞!',0,NULL,1510716685932,NULL),
(4053,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4342ffg206o06ojrb.gif','啪~你死了',0,NULL,1510716685932,NULL),
(4054,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i3nhfh9j204n04kmxe.jpg','把你给我，然后让你对象滚蛋',0,NULL,1510716685932,NULL),
(4055,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4ce7qbj205i04ugma.jpg','你老公好紧',0,NULL,1510716685932,NULL),
(4056,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4tl636j20e80ilgmr.jpg','有些人,一转身,就是一被子',0,NULL,1510716685932,NULL),
(4057,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl1270gwhbj20hu0gy0tf.jpg','我操你妈个逼（乱码版）',0,NULL,1510716685932,NULL),
(4058,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4qhby9j207z06kt91.jpg','哎哟我草！纯洁的一天开始了！！',0,NULL,1510716685932,NULL),
(4059,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i58j7i6j205f05qjr9.jpg','杰上的你裤子掉了',0,NULL,1510716685932,NULL),
(4060,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i87516nj203b03cmwx.jpg','妹子抽烟',0,NULL,1510716685932,NULL),
(4061,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i2xrun8j208c08cwem.jpg','今天那么冷要不要来一个爱的抱抱啊',0,NULL,1510716685932,NULL),
(4062,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7u7b1pj20b30eg3yz.jpg','神农三连',0,NULL,1510716685932,NULL),
(4063,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5qbeymj202102bgln.jpg','红彤彤',0,NULL,1510716685932,NULL),
(4064,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jeqqtvej20ih0ae0ta.jpg','抵赖三连',0,NULL,1510716685932,NULL),
(4065,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5eanjrj206o06ot8r.jpg','出来',0,NULL,1510716685932,NULL),
(4066,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i49qql3j205i05iweq.jpg','处对象吗?我偷老婆的钱养你',0,NULL,1510716685932,NULL),
(4067,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i388gopj20hs0hsdgw.jpg','我是你的掌上名猪',0,NULL,1510716685932,NULL),
(4068,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i500g70j206o06o3z3.jpg','我不信除非你开水浇裤裆',0,NULL,1510716685932,NULL),
(4069,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5trym8j205i027dfm.jpg','我不希望你冷场，所以这个场我来冷',0,NULL,1510716685932,NULL),
(4070,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i2vsv8uj20g30exmy7.jpg','你不应该惹怒年仅五岁且手持大型生化武器的我',0,NULL,1510716685932,NULL),
(4071,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i3b9nrbj20k00k03zl.jpg','老子会八百种姿势，五百种插法操得你下不了床',0,NULL,1510716685932,NULL),
(4072,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i3qz26aj205b0550u1.jpg','尴尬不失礼貌的微笑',0,NULL,1510716685932,NULL),
(4073,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5cgswig206o06ojrg.gif','吓的我都灵魂出窍了',0,NULL,1510716685932,NULL),
(4074,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12729guvg201e02sglq.gif','楼上疯了',0,NULL,1510716685932,NULL),
(4075,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i47hax5j208w0b4aa9.jpg','你装逼的套路,不像是靖西人',0,NULL,1510716685932,NULL),
(4076,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl1274sdatj20hz0fvq46.jpg','弹幕走一波',0,NULL,1510716685932,NULL),
(4077,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpsvhi8j205b02odfl.jpg','踢JJ',0,NULL,1510716685932,NULL),
(4078,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i358kdqj2052052jr8.jpg','老婆',0,NULL,1510716685932,NULL),
(4079,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5xuqebg206y06waa0.gif','排位被虐了?',0,NULL,1510716685932,NULL),
(4080,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4gwtrvj20fp0fpglw.jpg','不瘦十斤不换头像',0,NULL,1510716685932,NULL),
(4081,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5ofvabg208c08cae6.gif','让我们一起摇摆',0,NULL,1510716685932,NULL),
(4082,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4kcri8j204g050glh.jpg','噗',0,NULL,1510716685932,NULL),
(4083,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i89a660j20fa0krjrx.jpg','可爱小鸭鸭',0,NULL,1510716685932,NULL),
(4084,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i64rc9jg208c08caa1.gif','心硬如铁',0,NULL,1510716685932,NULL),
(4085,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i66suzej208w08w74o.jpg','怎么不开车了',0,NULL,1510716685932,NULL),
(4086,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0ijadxbtj204904awec.jpg','吃惊',0,NULL,1510716685932,NULL),
(4087,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i8me5fyj206k058jra.jpg','OK（小猫）',0,NULL,1510716685932,NULL),
(4088,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4mmz4tj203k03kmx1.jpg','乖巧懂事',0,NULL,1510716685932,NULL),
(4089,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5vlmp4j202s02pmxc.jpg','不要无理取闹',0,NULL,1510716685932,NULL),
(4090,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5hzpzlg206o06oglm.gif','我好无聊,你都不理我',0,NULL,1510716685932,NULL),
(4091,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i6dl9gvg208c08cac5.gif','千山万水总是情，没有秋裤真不行',0,NULL,1510716685932,NULL),
(4092,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4etpb6j20dc0dcq3b.jpg','我想和你做爱，从厕所到阳台',0,NULL,1510716685932,NULL),
(4093,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i85jxq7j20b30egt9j.jpg','荆轲三连',0,NULL,1510716685932,NULL),
(4094,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i56s9odj206o06o3z3.jpg','大哥吃香蕉，吃啥补啥',0,NULL,1510716685932,NULL),
(4095,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5araumg202s02sgly.gif','开饭（动图）',0,NULL,1510716685932,NULL),
(4096,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7vo6qfg201h01fq2q.gif','抖抖抖（狮子）',0,NULL,1510716685932,NULL),
(4097,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i68ibewg204d03edfs.gif','死相',0,NULL,1510716685932,NULL),
(4098,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0i5s1jbwj205i04qgli.jpg','你是猪吗？睡了一天',0,NULL,1510716685932,NULL),
(4099,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i805qyej20bd06k3yu.jpg','鲁迅三连',0,NULL,1510716685932,NULL),
(4100,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0jeor6uvj20bv0gqt9q.jpg','不要放弃，来瓶妹动！释放身体多余蛋白质！拿你时刻妹动回来！',0,NULL,1510716685932,NULL),
(4101,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0i7xw4atj205i0493yn.jpg','我们送LCK进决赛了（RNG、黄牛、WE）',0,NULL,1510716685932,NULL),
(4102,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0i8krq4ig208w0504ae.gif','来打架呀！',0,NULL,1510716685932,NULL),
(4103,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0i4ipzzcg208c08ct8v.gif','兄弟烫头不?',0,NULL,1510716685932,NULL),
(4104,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12jbyzbjj205i04emxa.jpg','没加我小可爱加我一下，你最可爱',0,NULL,1510716685932,NULL),
(4105,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12jp7w09j2073073746.jpg','看我的小眼神~',0,NULL,1510716685932,NULL),
(4106,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl126wgh0zj20k00k0jsg.jpg','粤语三连',0,NULL,1510716685932,NULL),
(4107,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12ld0ks3j208w08w74f.jpg','呦呵,这不是楼上的装逼王吗!享年18楼',0,NULL,1510716685932,NULL),
(4108,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12kyty0tj20fk0fk3zk.jpg','她连操都不让你操，你还相信她爱你?她分明只是把你当傻逼',0,NULL,1510716685932,NULL),
(4109,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12lb8fxnj20k00k0q3i.jpg','凭你也配?换你家大佬出来斗图',0,NULL,1510716685932,NULL),
(4110,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12jwiwomj203702oq2r.jpg','有谁来农药不',0,NULL,1510716685932,NULL),
(4111,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl126qszerj209e0933yp.jpg','闪开，老子要拿五杀，求求你别送了',0,NULL,1510716685932,NULL),
(4112,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12i26x92j20az06474k.jpg','垃圾',0,NULL,1510716685932,NULL),
(4113,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12l4wlhrj209g08f3zd.jpg','我掐你奶子信不',0,NULL,1510716685932,NULL),
(4114,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12j29o6pj2047049js0.jpg','然后你麻痹',0,NULL,1510716685932,NULL),
(4115,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12kj0bsvj205i04cdfn.jpg','禁，求有本事来禁老子',0,NULL,1510716685932,NULL),
(4116,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12izswaoj205i05ijrj.jpg','有没有分手的小姐姐我可以接盘',0,NULL,1510716685932,NULL),
(4117,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12ije6wag208c08cgnc.gif','达成共识',0,NULL,1510716685932,NULL),
(4118,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12ilafazj20b40br74i.jpg','靠!有种放学别走!',0,NULL,1510716685932,NULL),
(4119,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12ll0gxdg206j06jmx8.gif','发张自拍看看，有素颜的吗？现在照啊！屌丝三连',0,NULL,1510716685932,NULL),
(4120,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12lhe26lj205i05iwea.jpg','白砂糖万圣节发糖果,每人10粒,先到先得',0,NULL,1510716685932,NULL),
(4121,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12j4ir15j204n05vaas.jpg','飘了伙计?我日你妈卖批',0,NULL,1510716685932,NULL),
(4122,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12kvz0fog208108c0t0.gif','仰望高端玩家',0,NULL,1510716685932,NULL),
(4123,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ibzqr7g208c08c0tj.gif','奶子就像海绵里的水，只要愿挤总还是有的',0,NULL,1510716685932,NULL),
(4124,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12jg24ckj204n05v3yf.jpg','飘了伙计?我日你妈卖批',0,NULL,1510716685932,NULL),
(4125,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl126p5k8lj20dc0dcmyd.jpg','闪开！我还能五杀！',0,NULL,1510716685932,NULL),
(4126,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12hypj83j20b1075mx7.jpg','穷逼三连',0,NULL,1510716685932,NULL),
(4127,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12jt9ri4j20dw0dw0t4.jpg','该配合你装逼的我尽力在表演',0,NULL,1510716685932,NULL),
(4128,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12k4hj1bj20sg0sgwfp.jpg','器张',0,NULL,1510716685932,NULL),
(4129,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12ht1qkqj206k06bq38.jpg','挑事三连',0,NULL,1510716685932,NULL),
(4130,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12jzzmpog208c08bjsx.gif','坚强的自己不需要别人抱',0,NULL,1510716685932,NULL),
(4131,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ifyqsng207o08cq4x.gif','我没有送,人家凭本事杀的我,能理解吗',0,NULL,1510716685932,NULL),
(4132,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12ja7ep8j208c08c74d.jpg','一帮完蛋玩意儿',0,NULL,1510716685932,NULL),
(4133,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12jr4ftrg208c08c3yo.gif','挠的开了花（熊本熊）',0,NULL,1510716685932,NULL),
(4134,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12l25tgxj208c08cwel.jpg','我不介意先得到你的身体!',0,NULL,1510716685932,NULL),
(4135,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12hr0ld4j20eb0qomyx.jpg','帽子戏法',0,NULL,1510716685932,NULL),
(4137,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12kl1zc5j20c80c8weo.jpg','死猪不怕开水烫，越到考试我越浪',0,NULL,1510716685932,NULL),
(4138,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12ipzmsxj2073073ab1.jpg','男人都是窝囊废',0,NULL,1510716685932,NULL),
(4139,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12j8c5g5j207608c3yt.jpg','挠头。。。明明说爱我还要送我绿帽子',0,NULL,1510716685932,NULL),
(4140,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12losab9g208c082gn9.gif','想买这个（小猫）',0,NULL,1510716685932,NULL),
(4141,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12kdu38mg206o06o3z4.gif','今天也很优雅呢',0,NULL,1510716685932,NULL),
(4142,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12k9y5h6g208c08cq2z.gif','周五夜晚打开的正确模式 biu - biu ~ biu',0,NULL,1510716685932,NULL),
(4143,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12ku0klzj205i05i3ye.jpg','流下了没钱的泪水',0,NULL,1510716685932,NULL),
(4144,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12l6q775j205o056mxe.jpg','忘你是我见过男孩子中最色又最丑中的一个',0,NULL,1510716685932,NULL),
(4146,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12ixul8xj20fs0fsabv.jpg','上车',0,NULL,1510716685932,NULL),
(4147,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12kbl38uj205k05kdfs.jpg','没我的日子里,你过的好吗?我好想你,你想我吗?',0,NULL,1510716685932,NULL),
(4148,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12i0bbumj203u05g0so.jpg','熊猫人吃惊',0,NULL,1510716685932,NULL),
(4149,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12ksdwj0j205i05ct8n.jpg','妈的智勇双全说的就是你吧',0,NULL,1510716685932,NULL),
(4150,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12kp1vrlg208c07y40k.gif','你算哪块小饼子?',0,NULL,1510716685932,NULL),
(4151,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12lj3k9tj206y06igll.jpg','听说你要吃鸡?鸡哥,算了算了',0,NULL,1510716685932,NULL),
(4152,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12k6i03kj205104rdg2.jpg','来别客气有本事往这',0,NULL,1510716685932,NULL),
(4155,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12l91gfaj20k00k0dgi.jpg','兄弟，我觉得应该打他等他说完',0,NULL,1510716685932,NULL),
(4157,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12hx1awsj2032031mx9.jpg','吊（熊猫人教皇）',0,NULL,1510716685932,NULL),
(4158,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12khhz6jj205i05i0t1.jpg','战术肥宅（绝地求生）',0,NULL,1510716685932,NULL),
(4159,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12jidmkaj20dw0eodgd.jpg','有傻逼出没,请勿靠近。',0,NULL,1510716685932,NULL),
(4160,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12jjzwqyj205805ia9x.jpg','你哪个村的猪这么膨胀',0,NULL,1510716685932,NULL),
(4161,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl12in4eh3g206j06jdfu.gif','浓硫酸',0,NULL,1510716685932,NULL),
(4162,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12k88n2xj205a05awek.jpg','已退群（盖章）',0,NULL,1510716685932,NULL),
(4164,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12j6bzwqj2073073aa9.jpg','姑凉我们过日子吧，我偷电瓶车养你',0,NULL,1510716685932,NULL),
(4165,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl12kqovnlj204g045a9y.jpg','我马上就要打你了',0,NULL,1510716685932,NULL),
(4166,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl12hvaduxj20f20f2dgk.jpg','给你跪下啦',0,NULL,1510716685932,NULL),
(4169,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12jec11pj20df0cy751.jpg','这是你逼我使用巴拉拉能量的！死了我可不管！',0,NULL,1510716685932,NULL),
(4170,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl126tztu9j20a00au0t8.jpg','钓鱼',0,NULL,1510716685932,NULL),
(4171,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl12kfdbjhj205i05i3ye.jpg','我觉得不行',0,NULL,1510716685932,NULL),
(4172,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7lfnqaj204t0di3yq.jpg','过来给我装下逼，不然抽死你。',0,NULL,1510716685932,NULL),
(4173,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k64xtdcj208c08cq4h.jpg','你会喜欢我吗？不会我教你呀',0,NULL,1510716685932,NULL),
(4174,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7jj07kj206o06ogme.jpg','我能去你的头上抓羊吗?',0,NULL,1510716685932,NULL),
(4175,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6ru6x9g208c08cjrt.gif','表示很无语',0,NULL,1510716685932,NULL),
(4176,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6pagitj208c08cq34.jpg','我单身是因为大家都以为我有对象',0,NULL,1510716685932,NULL),
(4177,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6nir41j205m06r3yf.jpg','很强兄弟',0,NULL,1510716685932,NULL),
(4178,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7ericfg208w08mnft.gif','晦想来',0,NULL,1510716685932,NULL),
(4179,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k66qyvdj202v02v3yj.jpg','有意思',0,NULL,1510716685932,NULL),
(4180,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpa36sbj20dp09nmxm.jpg','给您烧香了',0,NULL,1510716685932,NULL),
(4182,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6h9fc9g208c08cq3i.gif','听说你喜欢我?',0,NULL,1510716685932,NULL),
(4184,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6eavy4j20go0gojt4.jpg','要亲亲',0,NULL,1510716685932,NULL),
(4185,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6lto3mj205g05iq30.jpg','没位置了',0,NULL,1510716685932,NULL),
(4187,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6k96txg2073073wep.gif','我错了,别这样嘛',0,NULL,1510716685932,NULL),
(4188,'https://ws1.sinaimg.cn/bmiddle/9150e4e5ly1fl0k7hbacoj20go0goq3n.jpg','嘻嘻,嘻嘻',0,NULL,1510716685932,NULL),
(4189,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6vi9q8j208c08cglm.jpg','我是有脾气的',0,NULL,1510716685932,NULL),
(4192,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpdc46zj201u01xt8h.jpg','抱腿',0,NULL,1510716685932,NULL),
(4193,'https://ws2.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpbt5lxg208c08cmx0.gif','万能懵逼公式',0,NULL,1510716685932,NULL),
(4194,'https://ws4.sinaimg.cn/bmiddle/9150e4e5ly1fl0jpvdokvj205i046jr8.jpg','中指（熊猫人）',0,NULL,1510716685932,NULL),
(4201,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k66qyvdj202v02v3yj.jpg','有意思',0,NULL,1510716685932,NULL),
(4202,'https://ws3.sinaimg.cn/bmiddle/9150e4e5ly1fl0k6vi9q8j208c08cglm.jpg','我是有脾气的',0,NULL,1510716685932,NULL),
(4210,'https://ws1.sinaimg.cn/large/9150e4e5ly1flhzn5uk1uj20dm0d5tck.jpg','今晚,苏荷不几不散。',0,NULL,1510716730815,1510716731338),
(4211,'https://ws4.sinaimg.cn/large/9150e4e5ly1flhzn8x20wj20dj0d0q70.jpg','今晚,要你起唔到身。',0,NULL,1510716730815,1510716731338),
(4212,'https://ws4.sinaimg.cn/large/9150e4e5ly1flhznc2whxj20cm0eedjq.jpg','今晚, 要你行路都迷失方向。',0,NULL,1510716730815,1510716731338),
(4213,'https://ws2.sinaimg.cn/large/9150e4e5ly1flhznfg6lvj20dn0cvjvh.jpg','今晚,要你怀疑人生',0,NULL,1510716730815,1510716731338),
(4214,'https://ws1.sinaimg.cn/large/9150e4e5ly1flhznj41xuj20f10clae7.jpg','=①今晚,要你呢个门口都出唔到',0,NULL,1510716730815,1510716731338),
(4215,'https://ws4.sinaimg.cn/large/9150e4e5ly1flhznm4d21j20c20egjv9.jpg','呢洒我就干你们随意',0,NULL,1510716730815,1510716731338),
(4216,'https://ws4.sinaimg.cn/large/9150e4e5ly1flhznp6lldj20ck0de42f.jpg','今晚,要你点过佐一晚都唔记得',0,NULL,1510716730815,1510716731338),
(4217,'https://ws1.sinaimg.cn/large/9150e4e5ly1flhznskj1yj20f20c678h.jpg','连我都饮唔赢,点解你甘Shi嘎。',0,NULL,1510716730815,1510716731338),
(4218,'https://ws2.sinaimg.cn/large/9150e4e5ly1flgsaim0w3j20hs0gx0td.jpg','晚上到我房里来',0,NULL,1510716730815,1510716732220),
(4219,'https://ws2.sinaimg.cn/large/9150e4e5ly1flgsakoz5rj20hs0gtt9j.jpg','什么也不要说了，先把裤子脱了',0,NULL,1510716730815,1510716732220),
(4220,'https://ws3.sinaimg.cn/large/9150e4e5ly1flgsamn4afj20hs0h03z9.jpg','感觉身体被掏空',0,NULL,1510716730815,1510716732220),
(4223,'https://ws1.sinaimg.cn/large/9150e4e5ly1flgsasey0oj20hs0h1mxw.jpg','小就不能满足你了',0,NULL,1510716730815,1510716732220),
(4224,'https://ws3.sinaimg.cn/large/9150e4e5ly1flgsau8thuj20hs0grt9b.jpg','我好吃吗',0,NULL,1510716730815,1510716732220),
(4225,'https://ws2.sinaimg.cn/large/9150e4e5ly1flgsaw66ujj20hs0gx754.jpg','你昨天在床上可不是这么说的',0,NULL,1510716730815,1510716732220),
(4226,'https://ws1.sinaimg.cn/large/9150e4e5ly1flgsay18g9j20hs0gtaaq.jpg','别说话用嘴去感受',0,NULL,1510716730815,1510716732220),
(4227,'https://ws3.sinaimg.cn/large/9150e4e5ly1flgsli7kkvj20fe0azagt.jpg','把你的宝贝拿出来我看看',0,NULL,1510716730815,1510716732757),
(4228,'https://ws2.sinaimg.cn/large/9150e4e5ly1flgslmemxoj20fe0dojxl.jpg','溜的过程中，不忘对你邪魅一笑',0,NULL,1510716730815,1510716732757),
(4229,'https://ws4.sinaimg.cn/large/9150e4e5ly1flgslqtv9yj20fe0ga100.jpg','哇塞',0,NULL,1510716730815,1510716732757),
(4230,'https://ws1.sinaimg.cn/large/9150e4e5ly1flgslti8pcj20do0ergoj.jpg','你在说啥子？',0,NULL,1510716730815,1510716732757),
(4231,'https://ws4.sinaimg.cn/large/9150e4e5ly1flgslw4e9jj20bb0bndia.jpg','嘻嘻嘻嘻',0,NULL,1510716730815,1510716732757),
(4232,'https://ws4.sinaimg.cn/large/9150e4e5ly1flgsm0olgnj20fd0btgt8.jpg','倔强的一笑',0,NULL,1510716730815,1510716732757),
(4233,'https://ws2.sinaimg.cn/large/9150e4e5ly1flgsm6a8saj20fe0bcwp2.jpg','开心到模糊',0,NULL,1510716730815,1510716732757),
(4234,'https://ws1.sinaimg.cn/large/9150e4e5ly1flgsmcp56mj20fe0f9amz.jpg','卧槽。。',0,NULL,1510716730815,1510716732757),
(4235,'https://ws3.sinaimg.cn/large/9150e4e5ly1flgsmfqm49j20e40fcdjl.jpg','我一个旋转跳跃就知道事情并不简单',0,NULL,1510716730815,1510716732757),
(4236,'https://ws2.sinaimg.cn/large/9150e4e5ly1flgsmmilcsj20fe0f8gyl.jpg','别说了，你这个感情骗子',0,NULL,1510716730815,1510716732757),
(4237,'https://ws1.sinaimg.cn/large/9150e4e5ly1flgsmtum2bj20fe0e8k5v.jpg','拿你的小胡萝卜戳死我呀',0,NULL,1510716730815,1510716732757),
(4238,'https://ws3.sinaimg.cn/large/9150e4e5ly1flgsn2y73tj20fe09hthj.jpg','太三人了，你真是我的人生导师',0,NULL,1510716730815,1510716732757),
(4239,'https://ws2.sinaimg.cn/large/9150e4e5ly1flgsn9vlpcj20fe0ekk5e.jpg','我一箭射你个红艳艳',0,NULL,1510716730815,1510716732757),
(4240,'https://ws2.sinaimg.cn/large/9150e4e5ly1flgsngvpy5j20fe0fptma.jpg','这里，原本满满都是你，但是，现在，很痛。',0,NULL,1510716730815,1510716732757),
(4241,'https://ws4.sinaimg.cn/large/9150e4e5ly1flgsnln5xij20fd0767ck.jpg','全家人都很嫌弃你',0,NULL,1510716730815,1510716732757),
(4242,'https://ws4.sinaimg.cn/large/9150e4e5ly1flgsnq7bitj20fd0b57c7.jpg','本仙，连略略略略都是那么迷人',0,NULL,1510716730815,1510716732757),
(4243,'https://ws4.sinaimg.cn/large/9150e4e5ly1flgsnvoy9lj20fd08owot.jpg','Emmmmmmmmmmmmmm',0,NULL,1510716730815,1510716732757),
(4244,'https://ws4.sinaimg.cn/large/9150e4e5ly1fleflcycjaj20de072dgd.jpg','我是不是你的小可爱?',0,NULL,1510716730815,1510716733507),
(4245,'https://ws4.sinaimg.cn/large/9150e4e5ly1flefleyv8uj209n053glw.jpg','你是抠脚大汉?',0,NULL,1510716730815,1510716733507),
(4246,'https://ws2.sinaimg.cn/large/9150e4e5ly1fleflhr69lj209n0530tl.jpg','你想请我吃饭?',0,NULL,1510716730815,1510716733507),
(4247,'https://ws4.sinaimg.cn/large/9150e4e5ly1fleflk58wyj209n053q3a.jpg','我才是那个可以强奸你的人?',0,NULL,1510716730815,1510716733507),
(4248,'https://ws2.sinaimg.cn/large/9150e4e5ly1fleflm8bk2j20de072gm4.jpg','你说你是傻逼么?',0,NULL,1510716730815,1510716733507),
(4249,'https://ws1.sinaimg.cn/large/9150e4e5ly1flefloi1lwj209n053t9h.jpg','你是丑八怪',0,NULL,1510716730815,1510716733507),
(4250,'https://ws1.sinaimg.cn/large/9150e4e5ly1fleflqxi58j209n053753.jpg','你爱我吗',0,NULL,1510716730815,1510716733507),
(4251,'https://ws1.sinaimg.cn/large/9150e4e5ly1fleflt1j2kj209n053754.jpg','你要给我清购物车？',0,NULL,1510716730815,1510716733507),
(4252,'https://ws1.sinaimg.cn/large/9150e4e5ly1fleflv4h7aj209n053js8.jpg','我是你男朋友吗',0,NULL,1510716730815,1510716733507),
(4253,'https://ws4.sinaimg.cn/large/9150e4e5ly1flef0y2fhzj20c80c8q4f.jpg','买了后悔三天不买后悔三年',0,NULL,1510716730815,1510716733855),
(4254,'https://ws1.sinaimg.cn/large/9150e4e5ly1flef10cypsj20c80c8q45.jpg','万一停产了咋办',0,NULL,1510716730815,1510716733855),
(4255,'https://ws1.sinaimg.cn/large/9150e4e5ly1flef12lk37j20c80c8q48.jpg','打折=不要线不买就亏大了',0,NULL,1510716730815,1510716733855),
(4256,'https://ws1.sinaimg.cn/large/9150e4e5ly1flef14xbjkj20c80c83ze.jpg','土的味道我知道',0,NULL,1510716730815,1510716733855),
(4257,'https://ws1.sinaimg.cn/large/9150e4e5ly1flef16rv02j206o06oq3c.jpg','自己赚的钱有能力为啥不买?',0,NULL,1510716730815,1510716733855),
(4258,'https://ws2.sinaimg.cn/large/9150e4e5ly1flef18ylzcj20c80c8ta4.jpg','再晚点就没有了',0,NULL,1510716730815,1510716733855),
(4259,'https://ws1.sinaimg.cn/large/9150e4e5ly1flef1b81zlj20c80c8aba.jpg','买买买使我快乐',0,NULL,1510716730815,1510716733855),
(4260,'https://ws3.sinaimg.cn/large/9150e4e5ly1flef1dgv51j20b40b4abi.jpg','支这里空空的',0,NULL,1510716730815,1510716733855),
(4261,'https://ws1.sinaimg.cn/large/9150e4e5ly1flef1fsfaij20c80c83zt.jpg','早买早享受',0,NULL,1510716730815,1510716733855),
(4262,'https://ws2.sinaimg.cn/large/9150e4e5ly1flefkllybaj20b40b4wer.jpg','别老看我朋友圈喜欢就表白',0,NULL,1510716730815,1510716734346),
(4263,'https://ws3.sinaimg.cn/large/9150e4e5ly1flefknm9i3j20b40b40sw.jpg','一把年纪还很可爱我真是个罪人',0,NULL,1510716730815,1510716734346),
(4264,'https://ws1.sinaimg.cn/large/9150e4e5ly1flefkpvhlxj20b40b4dg1.jpg','看我朋友圈又不撩我你咋这么怂',0,NULL,1510716730815,1510716734346),
(4265,'https://ws2.sinaimg.cn/large/9150e4e5ly1flefkrq5h2j20b40b4jrm.jpg','难道还要我来教你怎么来泡我吗?',0,NULL,1510716730815,1510716734346),
(4266,'https://ws2.sinaimg.cn/large/9150e4e5ly1flefkuzf9wj20b40b40t2.jpg','错过我这么好的仙女我要是你我就自杀',0,NULL,1510716730815,1510716734346),
(4267,'https://ws1.sinaimg.cn/large/9150e4e5ly1flefky0bw6j20b40b43yo.jpg','你再主动点我们的故事就开始了',0,NULL,1510716730815,1510716734346),
(4268,'https://ws2.sinaimg.cn/large/9150e4e5ly1flefl4jwm5j20b40b4t8y.jpg','我哪懂什么坚强全靠死撑',0,NULL,1510716730815,1510716734346),
(4269,'https://ws4.sinaimg.cn/large/9150e4e5ly1flefl8s9bzj20b40b4weg.jpg','当初就不该下凡',0,NULL,1510716730815,1510716734346),
(4270,'https://ws3.sinaimg.cn/large/9150e4e5ly1fleflaz31xj20b40b474m.jpg','我很好养的带我走',0,NULL,1510716730815,1510716734346),
(4271,'https://ws1.sinaimg.cn/large/9150e4e5ly1fleflx03wdj206o06ogls.jpg','单身吃你家大米了',0,NULL,1510716730815,1510716735219),
(4272,'https://ws4.sinaimg.cn/large/9150e4e5ly1fleflyu2yej206o06oaa9.jpg','你要再不理我我就真变狗不理了',0,NULL,1510716730815,1510716735219),
(4273,'https://ws3.sinaimg.cn/large/9150e4e5ly1flefm15joyj206o06odg8.jpg','两个黄鹂鸣翠柳，你还没有女朋友',0,NULL,1510716730815,1510716735219),
(4274,'https://ws4.sinaimg.cn/large/9150e4e5ly1flefm30a9qj206o06odg0.jpg','放过我吧，不要再虐狗了',0,NULL,1510716730815,1510716735219),
(4275,'https://ws1.sinaimg.cn/large/9150e4e5ly1flefm4qku8j206o06omxd.jpg','单身苦、单身累单、身只能搂着被',0,NULL,1510716730815,1510716735219),
(4276,'https://ws4.sinaimg.cn/large/9150e4e5ly1flefm6sr1pj206o06o3yt.jpg','别说你是单身狗狗的老婆满街走',0,NULL,1510716730815,1510716735219),
(4277,'https://ws2.sinaimg.cn/large/9150e4e5ly1flefm8ipg6j206o06o3yp.jpg','我不想脱单只想脱穷',0,NULL,1510716730815,1510716735219),
(4278,'https://ws3.sinaimg.cn/large/9150e4e5ly1flefmaebzhj206o06omxd.jpg','单身狗的悉念',0,NULL,1510716730815,1510716735219),
(4279,'https://ws2.sinaimg.cn/large/9150e4e5ly1flefmckjx1j206o06omxb.jpg','好像不单身能瘦十斤似的',0,NULL,1510716730815,1510716735219),
(4280,'https://ws2.sinaimg.cn/large/9150e4e5ly1flgarnu0ggj20hs0hsq4f.jpg','我允许你睡觉了吗？你就说晚安',0,NULL,1510716730815,1510716735598),
(4281,'https://ws2.sinaimg.cn/large/9150e4e5ly1flgarta9v0j20j50hsq3x.jpg','期待的搓搓手',0,NULL,1510716730815,1510716735598),
(4282,'https://ws3.sinaimg.cn/large/9150e4e5ly1flgarvw66zj20j60gd76h.jpg','作为一个孩子我想用塑料小鸭打爆你的狗头',0,NULL,1510716730815,1510716735598),
(4283,'https://ws3.sinaimg.cn/large/9150e4e5ly1flgas446bgj20j60hq429.jpg','·你不应该惹怒年仅五岁且手持大型生化武器的我',0,NULL,1510716730815,1510716735598),
(4284,'https://ws4.sinaimg.cn/large/9150e4e5ly1flgas7hyqxj20j60emmzu.jpg','年轻的生命中出现一丝阴霾',0,NULL,1510716730815,1510716735598),
(4285,'https://ws1.sinaimg.cn/large/9150e4e5ly1flgasa0x0cj20hs0hstad.jpg','他好帅',0,NULL,1510716730815,1510716735598),
(4286,'https://ws1.sinaimg.cn/large/9150e4e5ly1flgasd0agej20g40g4tao.jpg','你他妈在说什么，我还要装模作样听多久',0,NULL,1510716730815,1510716735598),
(4287,'https://ws4.sinaimg.cn/large/9150e4e5ly1flgasgpp19j20j60iw0vq.jpg','颁给您这位会演戏的婊子',0,NULL,1510716730815,1510716735598),
(4288,'https://ws3.sinaimg.cn/large/9150e4e5ly1flgasjy8i5j20g30g375m.jpg','是我不够骚了吗？',0,NULL,1510716730815,1510716735598),
(4289,'https://ws3.sinaimg.cn/large/9150e4e5ly1flef0gp0hxj206o06oglr.jpg','瓦特  你脑子瓦特了',0,NULL,1510716730815,1510716735944),
(4290,'https://ws2.sinaimg.cn/large/9150e4e5ly1flef0ih2vhj206o06oaab.jpg','有完没完',0,NULL,1510716730815,1510716735944),
(4291,'https://ws3.sinaimg.cn/large/9150e4e5ly1flef0k71s4j206o06omxc.jpg','胡萝北',0,NULL,1510716730815,1510716735944),
(4292,'https://ws4.sinaimg.cn/large/9150e4e5ly1flef0mbb63j206o06omxe.jpg','我怼死你',0,NULL,1510716730815,1510716735944),
(4293,'https://ws4.sinaimg.cn/large/9150e4e5ly1flef0o7h6cj206o06ojro.jpg','带上你的萝北快滚',0,NULL,1510716730815,1510716735944),
(4294,'https://ws2.sinaimg.cn/large/9150e4e5ly1flef0pvvq1j206o06oq35.jpg','萝北做错了什么?',0,NULL,1510716730815,1510716735944),
(4295,'https://ws1.sinaimg.cn/large/9150e4e5ly1flef0rvxugj206o06odg4.jpg','戳你小脑瓜',0,NULL,1510716730815,1510716735944),
(4296,'https://ws4.sinaimg.cn/large/9150e4e5ly1flef0tquqaj206o06odg2.jpg','叭你死了',0,NULL,1510716730815,1510716735944),
(4297,'https://ws1.sinaimg.cn/large/9150e4e5ly1flef0vmds2j206o06omxg.jpg','去NM的萝北',0,NULL,1510716730815,1510716735944),
(4298,'https://ws1.sinaimg.cn/large/9150e4e5ly1flgsnxatm2g2023021gll.gif','打鼓',0,NULL,1510716730815,1510716736655),
(4299,'https://ws4.sinaimg.cn/large/9150e4e5ly1flgsnze5kog201i01fq2v.gif','敲东西',0,NULL,1510716730815,1510716736655),
(4300,'https://ws1.sinaimg.cn/large/9150e4e5ly1flgso0wttbg201p01t0sl.gif','拉二胡',0,NULL,1510716730815,1510716736655),
(4301,'https://ws3.sinaimg.cn/large/9150e4e5ly1flgso2eyirg201t01kjr9.gif','弹古筝',0,NULL,1510716730815,1510716736655),
(4302,'https://ws1.sinaimg.cn/large/9150e4e5ly1flgso42jmag201w01wmxa.gif','舞带子',0,NULL,1510716730815,1510716736655),
(4303,'https://ws2.sinaimg.cn/large/9150e4e5ly1fleeza8k0vg206o06o44s.gif','喂 其他小朋友都已经有人帮还花呗了',0,NULL,1510716730815,1510716737508),
(4304,'https://ws4.sinaimg.cn/large/9150e4e5ly1fleezglw9mg206o06oajg.gif','为什么天天找我说话 是不是想帮我还花呗？',0,NULL,1510716730815,1510716737508),
(4305,'https://ws4.sinaimg.cn/large/9150e4e5ly1fleezn8f7wg206o06on2q.gif','恭喜你获得一个增进感情的机会： 复制以下链接到支付宝领取',0,NULL,1510716730815,1510716737508),
(4306,'https://ws3.sinaimg.cn/large/9150e4e5ly1fleezu19vcg206o06on64.gif','醒醒  现在是白天',0,NULL,1510716730815,1510716737508),
(4307,'https://ws2.sinaimg.cn/large/9150e4e5ly1fleezwzsl6g206o06o0ve.gif','你今天好美',0,NULL,1510716730815,1510716737508),
(4308,'https://ws4.sinaimg.cn/large/9150e4e5ly1flef0330jvg206o06o47z.gif','为什么不帮我还花呗 是不是不够爱我？',0,NULL,1510716730815,1510716737508),
(4309,'https://ws1.sinaimg.cn/large/9150e4e5ly1flef06voevg206o06odk7.gif','我不要和陌生人说话',0,NULL,1510716730815,1510716737508),
(4310,'https://ws4.sinaimg.cn/large/9150e4e5ly1flef09xo3lg206o06oac4.gif','假装不在',0,NULL,1510716730815,1510716737508),
(4311,'https://ws3.sinaimg.cn/large/9150e4e5ly1flef0cymbqg206o06o77m.gif','国家规定：今天轮到男朋友帮还花呗',0,NULL,1510716730815,1510716737508),
(4312,'https://ws3.sinaimg.cn/large/9150e4e5ly1flcvi9nwoyg201y01l742.gif','坏坏吹笛子 - 坏坏乐器系列表情包',0,NULL,1510716730815,1510716737862),
(4313,'https://ws4.sinaimg.cn/large/9150e4e5ly1flcvssxf0ag201p01tjr6.gif','拉二胡',0,NULL,1510716730815,1510716737862),
(4314,'https://ws2.sinaimg.cn/large/9150e4e5ly1flct4cs772g201i01fglg.gif','敲逻',0,NULL,1510716730815,1510716737862),
(4315,'https://ws1.sinaimg.cn/large/9150e4e5ly1flcvsugjsdg2023021jr9.gif','打鼓',0,NULL,1510716730815,1510716737862),
(4316,'https://ws2.sinaimg.cn/large/9150e4e5ly1flcvsvxcvzg201t019wea.gif','拉二胡',0,NULL,1510716730815,1510716737862),
(4317,'https://ws2.sinaimg.cn/large/9150e4e5ly1flcvsxfevcg201e01gjr5.gif','吹葫芦',0,NULL,1510716730815,1510716737862),
(4318,'https://ws2.sinaimg.cn/large/9150e4e5ly1flcvsyuop7g202802mq2r.gif','拨弦',0,NULL,1510716730815,1510716737862),
(4319,'https://ws2.sinaimg.cn/large/9150e4e5ly1flcvt0b87ng201t01kwea.gif','弹古筝',0,NULL,1510716730815,1510716737862),
(4320,'https://ws3.sinaimg.cn/large/9150e4e5ly1flcvt1r802g201y01l742.gif','吹笛子',0,NULL,1510716730815,1510716737862),
(4321,'https://ws3.sinaimg.cn/large/9150e4e5ly1flcvt36oklg201k01h3ya.gif','拉琵琶',0,NULL,1510716730815,1510716737862),
(4322,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3p7vz8y6j20k00k0wgo.jpg','抱着我的萝北大声痛哭',0,NULL,1510716730815,1510716738184),
(4323,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3p7yvrprj20k00k00uj.jpg','抱着我的小萝呗不说话',0,NULL,1510716730815,1510716738184),
(4324,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3p81qszkj20k00k0wgh.jpg','萝北做错了什么',0,NULL,1510716730815,1510716738184),
(4325,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3p84svkzj20k00k0ta9.jpg','你还真是个萝卜脑袋',0,NULL,1510716730815,1510716738184),
(4326,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3p87zr73j20k00k0gmw.jpg','这回真的进萝北了',0,NULL,1510716730815,1510716738184),
(4327,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3p8b1wrzj20k00k00u2.jpg','过去就是一萝北',0,NULL,1510716730815,1510716738184),
(4328,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3p8ejy76j20k00k0ac4.jpg','小姐姐要吃萝北吗?',0,NULL,1510716730815,1510716738184),
(4329,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3p8henqdj20k00k0myp.jpg','是我拿不起罗北还是你飘了',0,NULL,1510716730815,1510716738184),
(4330,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3p8jusj3j20k00k0401.jpg','说你呢?听到没',0,NULL,1510716730815,1510716738184),
(4331,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl9ij3px36j20fk0fkq3v.jpg','别的小朋友都有奶茶喝你什么时候买给我呀',0,NULL,1510716730815,1510716738708),
(4332,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl9ij5qe27j20fk0fkab0.jpg','别的小朋友都去吃寿司了你什么时候带我去呀',0,NULL,1510716730815,1510716738708),
(4333,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl9ij7v525j20fk0fkdgw.jpg','别的小朋友都去吃火锅了你什么时候带我去呀',0,NULL,1510716730815,1510716738708),
(4334,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl9ija33psj20fk0fkgmn.jpg','别的小朋友都去吃烤肉了你什么时候带我去吃呀',0,NULL,1510716730815,1510716738708),
(4335,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl9ijcdv67j20fk0fkmy2.jpg','别的小朋友都有小龙虾吃你什么时候剥给我呀',0,NULL,1510716730815,1510716738708),
(4336,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl9ijeu3d6j20fk0fkwfg.jpg','别的小朋友都有零食吃你什么时候带给我呀',0,NULL,1510716730815,1510716738708),
(4337,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl9ijhq0phj20fk0fkmy3.jpg','别的小朋友都在吃水果了你什么时候削给我呀',0,NULL,1510716730815,1510716738708),
(4338,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl9ijk5gsxj20fk0fkdgr.jpg','别的小朋友都去撸串串了你什么时候陪我去呀',0,NULL,1510716730815,1510716738708),
(4339,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl9ijnbw11j20fk0fkdgp.jpg','歪,老婆,我现在就带你去吃夜宵!',0,NULL,1510716730815,1510716738708),
(4340,'https://ws1.sinaimg.cn/large/9150e4e5ly1flazb45rgdj201w01wa9u.jpg','小黄鸭',0,NULL,1510716730815,1510716739033),
(4341,'https://ws2.sinaimg.cn/large/9150e4e5ly1flaz0i8a33j203203cq2q.jpg','嘎嘎大笑',0,NULL,1510716730815,1510716739033),
(4342,'https://ws3.sinaimg.cn/large/9150e4e5ly1flazb5n78sj203a03eglf.jpg','小猫撒泪',0,NULL,1510716730815,1510716739033),
(4343,'https://ws4.sinaimg.cn/large/9150e4e5ly1flaz0jrtzaj204g03bwed.jpg','来狗子拍张合照',0,NULL,1510716730815,1510716739033),
(4344,'https://ws2.sinaimg.cn/large/9150e4e5ly1flazb72l4zj201o01egld.jpg','二哈',0,NULL,1510716730815,1510716739033),
(4345,'https://ws3.sinaimg.cn/large/9150e4e5ly1flaz0la57lj2026023mwy.jpg','不屑',0,NULL,1510716730815,1510716739033),
(4346,'https://ws4.sinaimg.cn/large/9150e4e5ly1flaz0mqhokj203h039mwz.jpg','愣住',0,NULL,1510716730815,1510716739033),
(4347,'https://ws2.sinaimg.cn/large/9150e4e5ly1flazb8h2hsj202001zgld.jpg','悟空耶',0,NULL,1510716730815,1510716739033),
(4348,'https://ws2.sinaimg.cn/large/9150e4e5ly1flazb9z1j4j202f02fgle.jpg','公主',0,NULL,1510716730815,1510716739033),
(4349,'https://ws1.sinaimg.cn/large/9150e4e5ly1flayzslbxmj20j60j6wf9.jpg','千什么都不如学习',0,NULL,1510716730815,1510716740047),
(4350,'https://ws4.sinaimg.cn/large/9150e4e5ly1flayzutl7rj20j60j6757.jpg','不让我字习还不如让我去死',0,NULL,1510716730815,1510716740047),
(4351,'https://ws1.sinaimg.cn/large/9150e4e5ly1flayzxbghjj20j60j6757.jpg','我的心里只有学习',0,NULL,1510716730815,1510716740047),
(4352,'https://ws3.sinaimg.cn/large/9150e4e5ly1flayzzspijj20j60j6wfl.jpg','扶我起来我还能学',0,NULL,1510716730815,1510716740047),
(4353,'https://ws4.sinaimg.cn/large/9150e4e5ly1flaz0297ouj20j60j6ab0.jpg','今天谁也不能阻止我学习',0,NULL,1510716730815,1510716740047),
(4354,'https://ws1.sinaimg.cn/large/9150e4e5ly1flaz052papj20j60j63za.jpg','沉迷学习日渐消瘦',0,NULL,1510716730815,1510716740047),
(4355,'https://ws4.sinaimg.cn/large/9150e4e5ly1flaz07aapvj20j60j6t9u.jpg','我爱学习学习使我快乐',0,NULL,1510716730815,1510716740047),
(4356,'https://ws4.sinaimg.cn/large/9150e4e5ly1flaz09mv0qj20j60j6t9y.jpg','钟不学习我就浑军身受准受公每/3段冷',0,NULL,1510716730815,1510716740047),
(4357,'https://ws3.sinaimg.cn/large/9150e4e5ly1flaz0br64wj20j60j6jsi.jpg','你喜我也没用我只爱学习',0,NULL,1510716730815,1510716740047),
(4358,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl9t0ebwong20ac0ardh0.gif','瑟瑟发抖',0,NULL,1510716730815,1510716740548),
(4359,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl9t0h101ug20ac0art9k.gif','再胡说,我就把你小嘴吻得通红',0,NULL,1510716730815,1510716740548),
(4360,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl9t0ja5w8g206w076t9p.gif','乱屁渐欲迷人眼',0,NULL,1510716730815,1510716740548),
(4361,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl9t0laop1g20ac0arq3p.gif','快来吧!',0,NULL,1510716730815,1510716740548),
(4362,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl9t0ozbxvg20ac0arjt5.gif','对你永远24小时激情在线',0,NULL,1510716730815,1510716740548),
(4363,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl9t0rdwa7g20ac0ardh5.gif','波一个',0,NULL,1510716730815,1510716740548),
(4364,'https://ws4.sinaimg.cn/large/9150e4e5ly1flaz0df7fxj202n0233yh.jpg','哭了',0,NULL,1510716730815,1510716741657),
(4365,'https://ws1.sinaimg.cn/large/9150e4e5ly1flaz0f97cdj202j03c0st.jpg','抱爱心哭',0,NULL,1510716730815,1510716741657),
(4366,'https://ws3.sinaimg.cn/large/9150e4e5ly1flaz0gpbz9j203h035dfo.jpg','撞墙哭',0,NULL,1510716730815,1510716741657),
(4367,'https://ws3.sinaimg.cn/large/6af89bc8gw1f8r5uxsxmyj201s01st8h.jpg','哭了',0,NULL,1510716730815,1510716741657),
(4368,'https://ws1.sinaimg.cn/large/9150e4e5ly1fez6xips9nj201600z0jc.jpg','哭了',0,NULL,1510716730815,1510716741657),
(4369,'https://ws4.sinaimg.cn/large/9150e4e5ly1fhxoq0gs1tj201c01cdfl.jpg','哭了',0,NULL,1510716730815,1510716741657),
(4370,'https://ws1.sinaimg.cn/large/9150e4e5ly1fjp7pqaguej201o01o3yd.jpg','这里痛wdvbjo',0,NULL,1510716730815,1510716742078),
(4371,'https://ws4.sinaimg.cn/large/9150e4e5ly1fjegkqe4n8j201p01t3ya.jpg','这里超痛',0,NULL,1510716730815,1510716742078),
(4372,'https://ws4.sinaimg.cn/large/9150e4e5ly1fk8z2g3ha5j203403ct8l.jpg','这里都是你(坏坏心里痛)',0,NULL,1510716730815,1510716742078),
(4373,'https://ws4.sinaimg.cn/large/9150e4e5ly1fjh8xy7fulj201p01t0sh.jpg','这里痛(坏坏的心痛)',0,NULL,1510716730815,1510716742078),
(4374,'https://ws4.sinaimg.cn/large/9150e4e5ly1fja4spjiyoj201y022dfl.jpg','这里开心',0,NULL,1510716730815,1510716742078),
(4375,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl12l0bdefj201y0220qy.jpg','这里膨胀',0,NULL,1510716730815,1510716742078),
(4376,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl0i744ld2j203403cdfr.jpg','这里都是你',0,NULL,1510716730815,1510716742078),
(4377,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkvx0zk3qaj208309rt8q.jpg','这里逼数(心里)',0,NULL,1510716730815,1510716742078),
(4378,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkrba843ewj2050050dfp.jpg','这里这么长(坏坏)',0,NULL,1510716730815,1510716742078),
(4379,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl73ipxkqfj20c80c8wf1.jpg','这里这么长(坏坏)',0,NULL,1510716730815,1510716742078),
(4380,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkrb6ephv7j20a00apt91.jpg','这里,有党(坏坏心里)',0,NULL,1510716730815,1510716742078),
(4381,'https://ws3.sinaimg.cn/large/9150e4e5ly1fkonarohrqj202q02swea.jpg','这里硬硬的(坏坏)',0,NULL,1510716730815,1510716742078),
(4382,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl6aemk224j201y022gln.jpg','这里暗爽(坏坏)',0,NULL,1510716730815,1510716742078),
(4383,'https://ws1.sinaimg.cn/large/9150e4e5ly1fkfqfdp1oaj203c03kwea.jpg','这里空的(支付宝)',0,NULL,1510716730815,1510716742078),
(4384,'https://ws4.sinaimg.cn/large/9150e4e5ly1fjh4yr99hij201p01t742.jpg','这里都是你(坏坏)',0,NULL,1510716730815,1510716742078),
(4385,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl9if4p7iog206o06o0vp.gif','伸舌头 摇尾巴',0,NULL,1510716730815,1510716743248),
(4386,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl9if7mztrg20b40b4mxx.gif','老姐，我想',0,NULL,1510716730815,1510716743248),
(4387,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl9ifagmlzg203z03x0td.gif','今天登场',0,NULL,1510716730815,1510716743248),
(4388,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl9iftm339g206o06ok2x.gif','挠耳屎',0,NULL,1510716730815,1510716743248),
(4389,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl9igcqb9rg206o06oql9.gif','敲门',0,NULL,1510716730815,1510716743248),
(4390,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl9ih3b6iwg206o06otvl.gif','吃惊',0,NULL,1510716730815,1510716743248),
(4391,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl9ihtdksgg206o06o1gz.gif','吃惊',0,NULL,1510716730815,1510716743248),
(4392,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl9ii05en0g208807479i.gif','互舔',0,NULL,1510716730815,1510716743248),
(4393,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl9ii3wv3dg209q09qq52.gif','跳街舞送爱心',0,NULL,1510716730815,1510716743248),
(4394,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3usi7fc8j205i05ijrc.jpg','大哥要亮不',0,NULL,1510716730815,1510716743832),
(4395,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3usjsx94j205i05idfs.jpg','大哥抽烟不',0,NULL,1510716730815,1510716743832),
(4396,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3uslemcuj205i05ijrc.jpg','大哥口渴不',0,NULL,1510716730815,1510716743832),
(4397,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3usn187qj205i05idfy.jpg','大哥害怕不',0,NULL,1510716730815,1510716743832),
(4398,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3usojtrnj205i05iglk.jpg','大哥头疼不',0,NULL,1510716730815,1510716743832),
(4399,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3usq3fjaj205i05idft.jpg','大哥快递不',0,NULL,1510716730815,1510716743832),
(4400,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3usrrowuj205i05iq2w.jpg','大哥炒菜不',0,NULL,1510716730815,1510716743832),
(4401,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3ust8l4mj205i05it8o.jpg','大哥喝酒不',0,NULL,1510716730815,1510716743832),
(4402,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3usuuaxhj205i05iq2w.jpg','大哥听响不',0,NULL,1510716730815,1510716743832),
(4403,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl4w3kcbgbj20c00b8jrm.jpg','突然一股屎意袭来',0,NULL,1510716730815,1510716744187),
(4404,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl4w3o5u33j20c209oaa8.jpg','嗯。。。便秘了',0,NULL,1510716730815,1510716744187),
(4405,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl4w3mbs9bj20c409rdg2.jpg','护盾消失,终于通畅了',0,NULL,1510716730815,1510716744187),
(4406,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl4w3qhacvj20df0df3zk.jpg','小学生 膨胀',0,NULL,1510716730815,1510716744187),
(4407,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl77r5adpsj205k06yq2w.jpg','怎么！搞事情啊！',0,NULL,1510716730815,1510716744491),
(4408,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl77r7mproj205k06yt9e.jpg','我并不想和你说',0,NULL,1510716730815,1510716744491),
(4409,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl77r9kk6fj205k06y74l.jpg','砸死你!!!',0,NULL,1510716730815,1510716744491),
(4410,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl77rbddq6j205k06yq2x.jpg','搞事情呀!',0,NULL,1510716730815,1510716744491),
(4411,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl77rd3hu0j205k06yt8w.jpg','还搞事情吗!不搞了,大哥',0,NULL,1510716730815,1510716744491),
(4412,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl77rfct56j205k06ywf6.jpg','对万不想和你说话，并扔了一并雪碧。',0,NULL,1510716730815,1510716744491),
(4413,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3luj45xoj206x06x74b.jpg','易烊干玺的女人绝不认输',0,NULL,1510716730815,1510716744872),
(4414,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3lukvup2j206x06xt8q.jpg','薛之谦的女人绝不认输',0,NULL,1510716730815,1510716744872),
(4415,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3lumng5gj206x06x3yj.jpg','王嘉尔的女人绝不认输',0,NULL,1510716730815,1510716744872),
(4416,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3luoh0htj206x06x0sr.jpg','许魏洲的男人绝不认输',0,NULL,1510716730815,1510716744872),
(4417,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3luq8vf9j206x06xglm.jpg','防弹的女人绝不认输',0,NULL,1510716730815,1510716744872),
(4418,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3lus1xhcj206x06xt8q.jpg','马天宇的女人绝不认输',0,NULL,1510716730815,1510716744872),
(4419,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3lutx869j206x06xjre.jpg','陈伟霆的女人绝不认输',0,NULL,1510716730815,1510716744872),
(4420,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3luvne4zj206x06xjre.jpg','迪丽热巴的女人绝不认输',0,NULL,1510716730815,1510716744872),
(4421,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3luxfo2aj206x06xwei.jpg','彭于晏的女人绝不认输',0,NULL,1510716730815,1510716744872),
(4422,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3luzkj2rj20c809baaj.jpg','比心给你',0,NULL,1510716730815,1510716745203),
(4423,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3lv1j9nyj20b40b4t93.jpg','嘿嘿嘿',0,NULL,1510716730815,1510716745203),
(4424,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3lv3tp4dj209v09jjru.jpg','困，迷茫 对什么都提不起兴趣',0,NULL,1510716730815,1510716745203),
(4425,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3lv5hgdpj204k04k0sn.jpg','宠溺',0,NULL,1510716730815,1510716745203),
(4426,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3lv7k998j20bd0bd3z0.jpg','木啊',0,NULL,1510716730815,1510716745203),
(4427,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3lva414zj20ij0jp3zj.jpg','请你滚蛋',0,NULL,1510716730815,1510716745203),
(4428,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3lvby5hoj206p06kmxa.jpg','强颜欢笑',0,NULL,1510716730815,1510716745203),
(4429,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3lvemjnuj20hs0hsjs3.jpg','啊啊啊可爱到室息',0,NULL,1510716730815,1510716745203),
(4430,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3lvgcdv3j205k05kjrg.jpg','我是谁我在哪现在才几点',0,NULL,1510716730815,1510716745203),
(4431,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl59h59rcmj20c80c8jrp.jpg','小民阳',0,NULL,1510716730815,1510716745502),
(4432,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl59h72zh6j20c80c8jrq.jpg','大姜鱼',0,NULL,1510716730815,1510716745502),
(4433,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl59h90c5sj20c80c83yu.jpg','左木咬',0,NULL,1510716730815,1510716745502),
(4434,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl59har6m6j20c80c874l.jpg','大穷猫',0,NULL,1510716730815,1510716745502),
(4435,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl59hch1vej20c80c8aa9.jpg','墙背圆',0,NULL,1510716730815,1510716745502),
(4436,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl59he9vmaj20c80c8gm1.jpg','毛毛穷',0,NULL,1510716730815,1510716745502),
(4437,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl59hg2uwvj20c80c8jrt.jpg','小饭琼',0,NULL,1510716730815,1510716745502),
(4438,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl59hhoh9cj20c80c8dg0.jpg','小割几',0,NULL,1510716730815,1510716745502),
(4439,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl59hjei2oj20c80c8t8t.jpg','扑棱ne子',0,NULL,1510716730815,1510716745502),
(4440,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3voa9litj208k07gaa7.jpg','花哥嫁我！！！',0,NULL,1510716730815,1510716746018),
(4441,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3voc0w2gj208e05s3yj.jpg','叽',0,NULL,1510716730815,1510716746018),
(4442,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3vodq8luj208m06wdfw.jpg','交枪免死',0,NULL,1510716730815,1510716746018),
(4443,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3vofxqlsj209y072q34.jpg','咬你！！！',0,NULL,1510716730815,1510716746018),
(4444,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3vohqr2jj208k0580ss.jpg','咔嚓',0,NULL,1510716730815,1510716746018),
(4445,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3vojgjiej206w05g0sp.jpg','甩你一脸',0,NULL,1510716730815,1510716746018),
(4446,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3vol64k9j208605k0ss.jpg','呱',0,NULL,1510716730815,1510716746018),
(4447,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3von53eej209y078jrj.jpg','正解',0,NULL,1510716730815,1510716746018),
(4448,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3voos6w4j207a064gln.jpg','你妹的哈士奇！！！',0,NULL,1510716730815,1510716746018),
(4449,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3us5t5bgj20c60c6t8n.jpg',' Tony带水',0,NULL,1510716730815,1510716746285),
(4450,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3us7eftfj20c60c63yg.jpg','Star皆空',0,NULL,1510716730815,1510716746285),
(4451,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl3us8xc1aj20c60c6glk.jpg','Book思议',0,NULL,1510716730815,1510716746285),
(4452,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3usagjidj20c60c60so.jpg','半tour废',0,NULL,1510716730815,1510716746285),
(4453,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3usbz1b7j20c60c6wef.jpg','有bear来',0,NULL,1510716730815,1510716746285),
(4454,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl3usdkfyoj20c60c6749.jpg','关你 peace',0,NULL,1510716730815,1510716746285),
(4455,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3usf5bmsj20c60c60sp.jpg','深藏blue',0,NULL,1510716730815,1510716746285),
(4456,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3usgof6fj20c60c63yg.jpg','贪生pass',0,NULL,1510716730815,1510716746285),
(4457,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl6agmaij6j204r04h74b.jpg','吐血',0,NULL,1510716730815,1510716746622),
(4458,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl6agnzyp1j204e04naa3.jpg','蝙蝠翅膀',0,NULL,1510716730815,1510716746622),
(4459,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl3us2mhhej204204ydfv.jpg','思考问题',0,NULL,1510716730815,1510716746622),
(4460,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl3us48zvij204d04nt8r.jpg','哭啦',0,NULL,1510716730815,1510716746622),
(4461,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl6agpoon9j204v03q3yj.jpg','哈哈，你想干嘛',0,NULL,1510716730815,1510716746622),
(4462,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl6agrhf0jj204604maa4.jpg','嘿嘿',0,NULL,1510716730815,1510716746622),
(4463,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl6agtbsw9j204f04taa5.jpg','来打架呀',0,NULL,1510716730815,1510716746622),
(4464,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl6agv6jz2j203o050mx6.jpg','吐舌头',0,NULL,1510716730815,1510716746622),
(4465,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl6agx38fkj204g04ojrf.jpg','小子来打架不',0,NULL,1510716730815,1510716746622),
(4466,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl59s0w83oj205a05ajrb.jpg','黑影',0,NULL,1510716730815,1510716747136),
(4467,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl59s2h39bj205a05aq2x.jpg','猎空',0,NULL,1510716730815,1510716747136),
(4468,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl59s42avxj205a05amx5.jpg','DJ',0,NULL,1510716730815,1510716747136),
(4469,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl59s5lmljj205a05ajrd.jpg','麦克雷',0,NULL,1510716730815,1510716747136),
(4470,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl59s776n4j205a05aweg.jpg','hi（天使小姐姐）',0,NULL,1510716730815,1510716747136),
(4471,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl59s8rl2qj205a05aaa1.jpg','DVA',0,NULL,1510716730815,1510716747136),
(4472,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl1pohu354j203c02kaa0.jpg','可爱',0,NULL,1510716730815,1510716747599),
(4473,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl1pojcuxvj203c02kq2t.jpg','亲亲',0,NULL,1510716730815,1510716747599),
(4474,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl1pol5ye3j203c02kdfy.jpg','彩色（cnmmy）',0,NULL,1510716730815,1510716747599),
(4475,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl1pomu2d2j203c02kgln.jpg','摸摸',0,NULL,1510716730815,1510716747599),
(4476,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl1pp39ea9g20p00p00vn.gif','今晚小心点',0,NULL,1510716730815,1510716747882),
(4477,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl1pp7npsag20p00p0q5m.gif','今晚我陪你',0,NULL,1510716730815,1510716747882),
(4478,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl1ppbuq02g20p00p0782.gif','鬼来啦',0,NULL,1510716730815,1510716747882),
(4479,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl1ppighsyg20p00p012m.gif','万圣节快乐',0,NULL,1510716730815,1510716747882),
(4480,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl1ppn2g6mg20p00p0wjx.gif','想吃糖请排队',0,NULL,1510716730815,1510716747882),
(4481,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl1pq3b7obg20p00p01fp.gif','不给糖果就捣乱！',0,NULL,1510716730815,1510716747882),
(4482,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl30lzkmnqj20j60j6myc.jpg','蝴蝶结',0,NULL,1510716730815,1510716748193),
(4483,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl30m2el0dj20j60j63zs.jpg','可爱',0,NULL,1510716730815,1510716748193),
(4484,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl30m50ug0j20j60j63zu.jpg','可爱',0,NULL,1510716730815,1510716748193),
(4485,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl30m7at9nj20j60j6wfu.jpg','可爱',0,NULL,1510716730815,1510716748193),
(4486,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl30m9koxsj20j60j6myl.jpg','可爱',0,NULL,1510716730815,1510716748193),
(4487,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl30mbr2ehj20j60j60u0.jpg','可宜 ',0,NULL,1510716730815,1510716748193),
(4488,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl30meaggkj20j60j60u1.jpg','可爱',0,NULL,1510716730815,1510716748193),
(4489,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl30mgnl2zj20j60j6t9z.jpg','可爱',0,NULL,1510716730815,1510716748193),
(4490,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl30mis95zj20j60j6wfl.jpg','可爱',0,NULL,1510716730815,1510716748193),
(4491,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7p02vej20g40fe0u2.jpg','WE的比赛还用看?醒来之后又是一场胜利',0,NULL,1510716730815,1510716748515),
(4492,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7r1sfsj20b40cijs3.jpg','既会打o炮，也会打飞机',0,NULL,1510716730815,1510716748515),
(4493,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl0k7u2qsgj20910hwdh3.jpg','耶，广州见！',0,NULL,1510716730815,1510716748515),
(4494,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k7xf2z8j20b50c0tae.jpg','广州的大龙',0,NULL,1510716730815,1510716748515),
(4495,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl0k810xspj204c04k0st.jpg','天降正义！',0,NULL,1510716730815,1510716748515),
(4496,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl1poop9nzj20c80c8jrv.jpg','主啊，我爱你',0,NULL,1510716730815,1510716748813),
(4497,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl1q0m1doaj20c80c80ta.jpg','睡觉啦，舒服',0,NULL,1510716730815,1510716748813),
(4498,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl1q0nr4jxj20c80c874e.jpg','害羞了',0,NULL,1510716730815,1510716748813),
(4499,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl1poqe86mj20c80c8jrw.jpg','咬你',0,NULL,1510716730815,1510716748813),
(4500,'https://ws4.sinaimg.cn/large/9150e4e5ly1fl1pos68wkj20c80c8aag.jpg','嘿，来玩吧',0,NULL,1510716730815,1510716748813),
(4501,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl1q0ptj7zj20c80c8wf5.jpg','来玩球球啦',0,NULL,1510716730815,1510716748813),
(4502,'https://ws2.sinaimg.cn/large/9150e4e5ly1fl1potyu6fj20c80c8gm0.jpg','趴你身上',0,NULL,1510716730815,1510716748813),
(4503,'https://ws3.sinaimg.cn/large/9150e4e5ly1fl1pow3qhzj20c80c8aal.jpg','CC',0,NULL,1510716730815,1510716748813),
(4504,'https://ws1.sinaimg.cn/large/9150e4e5ly1fl1pozftx1j20c80c8jrw.jpg','听音乐（耳麦）',0,NULL,1510716730815,1510716748813),
(4505,'imgs/userupload/241520342712808.jpg','24',0,'描述*用户上传',1520342715347,1520342715347),
(4506,'imgs/userupload/191520951045261.png','19',0,'描述*用户上传',1520951051753,1520951051753),
(4507,'imgs/userupload/191521007041044.png','19',0,'*用户上传',1521007044274,1521007044274);

/*Table structure for table `messageinfo` */

DROP TABLE IF EXISTS `messageinfo`;

CREATE TABLE `messageinfo` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mtext` varchar(300) DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  `rmtext` varchar(300) DEFAULT NULL,
  `rmtime` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `messageinfo` */

/*Table structure for table `reptileinfo` */

DROP TABLE IF EXISTS `reptileinfo`;

CREATE TABLE `reptileinfo` (
  `reid` int(11) NOT NULL AUTO_INCREMENT,
  `retime` datetime DEFAULT NULL,
  `retype` varchar(10) DEFAULT NULL,
  `recount` int(11) DEFAULT NULL,
  `lastday` int(11) DEFAULT NULL,
  `usetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`reid`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

/*Data for the table `reptileinfo` */

insert  into `reptileinfo`(`reid`,`retime`,`retype`,`recount`,`lastday`,`usetime`) values 
(1,'2017-10-29 17:32:40','img',1,20171024,1),
(2,'2017-10-29 17:33:15','tt',1,20171024,1),
(10,'2017-10-30 09:34:00','img',198,20171026,3967),
(11,'2017-10-30 09:34:04','tt',15,20171025,2243),
(12,'2017-10-31 15:12:26','img',551,20171030,6375),
(13,'2017-10-31 15:12:32','tt',76,20171029,3140),
(14,'2017-11-01 15:15:56','img',0,20171030,1523),
(15,'2017-11-01 15:15:58','tt',0,20171029,179),
(16,'2017-11-02 15:18:46','img',0,20171030,1246),
(17,'2017-11-02 15:18:47','tt',0,20171029,181),
(18,'2017-11-03 15:30:02','img',0,20171030,1305),
(19,'2017-11-03 15:30:04','tt',0,20171029,312),
(20,'2017-11-04 15:35:56','img',0,20171030,1468),
(21,'2017-11-04 15:35:58','tt',0,20171029,298),
(22,'2017-11-05 15:40:35','img',0,20171030,1368),
(23,'2017-11-05 15:40:37','tt',0,20171029,176),
(24,'2017-10-30 21:29:52','img',0,20171030,1410),
(25,'2017-10-30 21:29:53','tt',0,20171029,313),
(26,'2017-10-30 21:31:31','img',0,20171030,1295),
(27,'2017-10-30 21:31:32','tt',0,20171029,297),
(28,'2017-10-30 21:34:15','img',0,20171030,1343),
(29,'2017-10-30 21:34:17','tt',0,20171029,298),
(30,'2017-10-30 21:35:26','img',0,20171030,1500),
(31,'2017-10-30 21:35:28','tt',0,20171029,297),
(32,'2017-10-30 21:36:48','img',0,20171030,1390),
(33,'2017-10-30 21:36:50','tt',0,20171029,188),
(34,'2017-10-30 21:39:19','img',0,20171030,1515),
(35,'2017-10-30 21:39:21','tt',0,20171029,407),
(36,'2017-10-30 21:41:03','img',0,20171030,1516),
(37,'2017-10-30 21:41:05','tt',0,20171029,345),
(38,'2017-10-30 21:43:43','img',0,20171030,1455),
(39,'2017-10-30 21:43:45','tt',0,20171029,188),
(40,'2017-10-30 21:45:10','img',0,20171030,1472),
(41,'2017-10-30 21:45:12','tt',0,20171029,315),
(42,'2017-10-30 21:45:52','img',0,20171030,1301),
(43,'2017-10-30 21:45:54','tt',0,20171029,298),
(44,'2017-10-30 21:48:11','img',0,20171030,1409),
(45,'2017-10-30 21:48:13','tt',0,20171029,625),
(46,'2017-10-30 21:58:49','img',0,20171030,2384),
(47,'2017-10-30 21:58:52','tt',0,20171029,180),
(48,'2017-10-30 22:02:13','img',0,20171030,1344),
(49,'2017-10-30 22:02:14','tt',0,20171029,188),
(50,'2017-10-31 12:20:04','img',62,20171031,2669),
(51,'2017-10-31 12:20:07','tt',5,20171030,1551),
(52,'2017-10-31 12:21:55','img',62,20171031,2052),
(53,'2017-10-31 12:21:58','tt',5,20171030,749),
(54,'2017-11-01 10:58:33','img',62,20171031,2489),
(55,'2017-11-01 10:58:35','tt',5,20171030,1234),
(56,'2017-11-01 11:22:10','img',62,20171031,2101),
(57,'2017-11-01 11:22:12','tt',5,20171030,1062),
(58,'2017-11-15 11:31:25','img',2690,20171115,44303),
(59,'2017-11-15 11:32:10','tt',295,20171114,18374),
(60,'2018-02-27 21:13:05','img',2570,20171114,1),
(61,'2018-02-28 21:13:41','img',3380,20171114,1),
(62,'2018-03-01 21:13:59','img',3044,20171114,1),
(63,'2018-03-02 21:14:15','img',2700,20171114,1),
(64,'2018-03-03 21:14:43','img',4847,20171114,1),
(65,'2018-03-04 21:15:04','img',4707,20171114,1),
(66,'2018-03-05 21:15:32','img',3147,20171114,1),
(67,'2018-03-06 21:15:50','img',2877,20171114,1),
(68,'2018-02-27 21:16:56','tt',978,20171114,1),
(69,'2018-02-28 21:17:06','tt',1045,20171114,1),
(70,'2018-03-01 21:17:10','tt',987,20171114,1),
(71,'2018-03-02 21:17:14','tt',1204,20171114,1),
(72,'2018-03-03 21:17:18','tt',1842,20171114,1),
(73,'2018-03-04 21:17:22','tt',1954,20171114,1),
(74,'2018-03-05 21:17:26','tt',1407,20171114,1),
(75,'2018-03-06 21:17:31','tt',1233,20171114,1),
(76,'2018-03-07 21:21:21','img',5233,20171114,1),
(77,'2018-03-07 21:21:39','tt',1507,20171114,1),
(78,'2018-03-08 22:09:52','img',4977,20171114,1),
(79,'2018-03-08 22:09:59','tt',1688,20171114,1),
(80,'2018-03-09 22:10:04','img',4855,20171114,1),
(81,'2018-03-09 22:10:09','tt',1877,20171114,1),
(82,'2018-03-10 22:10:19','img',4536,20171114,1),
(83,'2018-03-10 22:10:24','tt',1478,20171114,1),
(84,'2018-03-11 22:10:30','img',4957,20171114,1),
(85,'2018-03-11 22:10:34','tt',1789,20171114,1),
(86,'2018-03-12 22:10:38','img',4832,20171114,1),
(87,'2018-03-12 22:10:42','tt',1588,20171114,1),
(88,'2018-03-13 22:10:46','img',4153,20171114,1),
(89,'2018-03-13 22:10:50','tt',1542,20171114,1),
(90,'2018-03-14 22:13:01','img',0,20171114,1),
(91,'2018-03-14 22:13:04','tt',0,20171114,1);

/*Table structure for table `ttinfo` */

DROP TABLE IF EXISTS `ttinfo`;

CREATE TABLE `ttinfo` (
  `tid` bigint(15) NOT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '套图标题',
  `tag` varchar(100) DEFAULT NULL COMMENT '标签',
  `downloadtimes` int(11) DEFAULT NULL COMMENT '下载次数',
  `looktimes` int(11) DEFAULT NULL COMMENT '查看次数',
  `upid` bigint(15) DEFAULT NULL COMMENT '上传信息外键',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ttinfo` */

insert  into `ttinfo`(`tid`,`title`,`tag`,`downloadtimes`,`looktimes`,`upid`) values 
(1509326105676,'喵星人',NULL,0,0,1509326104849),
(1509326106254,'黄金小猫',NULL,0,0,1509326104849),
(1509327245664,'喵星人',NULL,0,0,1509327244587),
(1509327246274,'黄金小猫',NULL,0,0,1509327244587),
(1509347552827,'你想多了',NULL,0,0,1509347552513),
(1509347553168,'长腿熊猫人表情包',NULL,0,0,1509347552513),
(1509347553414,'大鼻孔',NULL,0,0,1509347552513),
(1509347553663,'可爱仓鼠',NULL,0,0,1509347552513),
(1509347553991,'小祖宗',NULL,0,0,1509347552513),
(1509347554449,'小老鼠',NULL,0,0,1509347552513),
(1509347554790,'动图表情包',NULL,0,0,1509347552513),
(1509347555099,'胖鸭子',NULL,0,0,1509347552513),
(1509347555345,'万圣节',NULL,0,0,1509347552513),
(1509423607705,'WE表情包',NULL,0,0,1509423607383),
(1509423718331,'WE表情包',NULL,0,0,1509423718019),
(1509505115934,'WE表情包',NULL,0,0,1509505115606),
(1509506533174,'WE表情包',NULL,0,0,1509506532862),
(1510716731338,'北方酱饮酒',NULL,0,0,1510716730815),
(1510716732220,'这是蘑菇',NULL,0,0,1510716730815),
(1510716732757,'美食大冒险',NULL,0,0,1510716730815),
(1510716733507,'windows弹窗表情包',NULL,0,0,1510716730815),
(1510716733855,'双十一熊本熊表情包',NULL,0,0,1510716730815),
(1510716734346,'光棍节朋友圈请把我带走（纯文字）',NULL,0,0,1510716730815),
(1510716735219,'单身狗',NULL,0,0,1510716730815),
(1510716735598,'佩奇',NULL,0,0,1510716730815),
(1510716735944,'可爱胡萝北表情包',NULL,0,0,1510716730815),
(1510716736655,'坏坏乐器另类版',NULL,0,0,1510716730815),
(1510716737508,'双十一花呗表情',NULL,0,0,1510716730815),
(1510716737862,'坏坏乐器系列表情包',NULL,0,0,1510716730815),
(1510716738184,'抱萝卜表情包',NULL,0,0,1510716730815),
(1510716738708,'歪歪打电话',NULL,0,0,1510716730815),
(1510716739033,'模糊表情包',NULL,0,0,1510716730815),
(1510716740047,'小恐龙',NULL,0,0,1510716730815),
(1510716740548,'双十一单身狗',NULL,0,0,1510716730815),
(1510716741657,'哭了',NULL,0,0,1510716730815),
(1510716742078,'这里痛（坏坏）',NULL,0,0,1510716730815),
(1510716743248,'蘑菇头gif表情包',NULL,0,0,1510716730815),
(1510716743832,'绝地吃鸡',NULL,0,0,1510716730815),
(1510716744187,'王者荣耀萌萌哒梦奇表情包',NULL,0,0,1510716730815),
(1510716744491,'雪碧',NULL,0,0,1510716730815),
(1510716744872,'不认输',NULL,0,0,1510716730815),
(1510716745203,'Tom and Jerry',NULL,0,0,1510716730815),
(1510716745502,'卖萌表情包',NULL,0,0,1510716730815),
(1510716746018,'手绘古装表情包',NULL,0,0,1510716730815),
(1510716746285,'中英混合文字表情',NULL,0,0,1510716730815),
(1510716746622,'手绘小表情',NULL,0,0,1510716730815),
(1510716747136,'Q版守望先锋表情',NULL,0,0,1510716730815),
(1510716747599,'抱抱么么哒',NULL,0,0,1510716730815),
(1510716747882,'酷儿表情包',NULL,0,0,1510716730815),
(1510716748193,'黑眼圈猫脸表情',NULL,0,0,1510716730815),
(1510716748515,'WE表情包',NULL,0,0,1510716730815),
(1510716748813,'可爱小东西',NULL,0,0,1510716730815);

/*Table structure for table `uploadinfo` */

DROP TABLE IF EXISTS `uploadinfo`;

CREATE TABLE `uploadinfo` (
  `upid` bigint(15) NOT NULL,
  `uptime` datetime DEFAULT NULL,
  `uptype` varchar(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`upid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `uploadinfo` */

insert  into `uploadinfo`(`upid`,`uptime`,`uptype`,`state`,`uid`) values 
(1509263345398,'2017-10-26 15:49:05','tt','正常',1),
(1509266508661,'2017-10-24 16:41:48','img','正常',1),
(1509266640929,'2017-10-29 16:44:00','img','正常',1),
(1509267150573,'2017-10-29 16:52:30','img','正常',1),
(1509267152313,'2017-10-29 16:52:32','tt','正常',1),
(1509269681104,'2017-10-29 17:34:41','img','正常',1),
(1509269684325,'2017-10-29 17:34:44','tt','正常',1),
(1509326100946,'2017-10-30 09:15:00','img','正常',1),
(1509326104849,'2017-10-30 09:15:04','tt','正常',1),
(1509326890583,'2017-10-30 09:28:10','img','正常',1),
(1509327240511,'2017-10-30 09:34:00','img','正常',1),
(1509327244587,'2017-10-30 09:34:04','tt','正常',1),
(1509347546076,'2017-10-30 15:12:26','img','正常',1),
(1509347552513,'2017-10-30 15:12:32','tt','正常',1),
(1509423604607,'2017-10-31 12:20:04','img','正常',1),
(1509423607383,'2017-10-31 12:20:07','tt','正常',1),
(1509423715858,'2017-10-31 12:21:55','img','正常',1),
(1509423718019,'2017-10-31 12:21:58','tt','正常',1),
(1509505113055,'2017-11-01 10:58:33','img','正常',1),
(1509505115606,'2017-11-01 10:58:35','tt','正常',1),
(1509506530605,'2017-11-01 11:22:10','img','正常',1),
(1509506532862,'2017-11-01 11:22:12','tt','正常',1),
(1510716685932,'2017-11-15 11:31:25','img','正常',1),
(1510716730815,'2017-11-15 11:32:10','tt','正常',1),
(1511067933065,'2017-11-19 13:05:33','tt','审核中',7),
(1511138866901,'2017-11-20 08:47:46','tt','审核中',7),
(1511419520541,'2017-11-23 14:45:20','tt','审核中',7),
(1511419807356,'2017-11-23 14:50:07','tt','审核中',7),
(1511419867335,'2017-11-23 14:51:07','tt','审核中',7),
(1511419925004,'2017-11-23 14:52:05','tt','审核中',7),
(1511421089332,'2017-11-23 15:11:29','tt','审核中',7),
(1520342715347,'2018-03-06 21:25:15','tt','审核中',1),
(1520951051753,'2018-03-13 22:24:11','tt','审核中',1),
(1520951739111,'2018-03-13 22:35:39','tt','审核中',1),
(1520951741541,'2018-03-13 22:35:41','tt','审核中',1),
(1521007044274,'2018-03-14 13:57:24','tt','审核中',1);

/*Table structure for table `usercount` */

DROP TABLE IF EXISTS `usercount`;

CREATE TABLE `usercount` (
  `ucid` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL,
  `cityname` varchar(5) DEFAULT NULL,
  `entertime` date DEFAULT NULL,
  PRIMARY KEY (`ucid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usercount` */

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `lastip` varchar(15) DEFAULT NULL COMMENT '上次登录IP',
  `lasttime` datetime DEFAULT NULL COMMENT '上次登录时间',
  `logintimes` int(11) DEFAULT NULL COMMENT '登录次数',
  `state` varchar(10) DEFAULT NULL COMMENT '账号状态',
  `question` varchar(100) DEFAULT NULL COMMENT '找回密码问题',
  `answer` varchar(32) DEFAULT NULL COMMENT '问题答案',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`uid`,`username`,`pwd`,`lastip`,`lasttime`,`logintimes`,`state`,`question`,`answer`) values 
(1,'root','63a9f0ea7bb98050796b649e85481845','127.0.0.1','2018-03-14 16:17:01',7,'admin',NULL,NULL),
(4,'test','c81e728d9d4c2f636f067f89cc14862c','0.0.0.0','2017-11-17 21:36:10',0,'right','s','w'),
(5,'1','c4ca4238a0b923820dcc509a6f75849b','0.0.0.0','2017-11-17 21:38:47',0,'right','1','1'),
(6,'2','c81e728d9d4c2f636f067f89cc14862c','0.0.0.0','2017-11-17 21:39:44',0,'right','2','2'),
(7,'3','eccbc87e4b5ce2fe28308fd9f2a7baf3','127.0.0.1','2017-11-23 15:11:06',10,'right','3','3'),
(8,'4','a87ff679a2f3e71d9181a67b7542122c','0.0.0.0','2017-11-17 21:45:00',0,'right','4','4'),
(9,'5','e4da3b7fbbce2345d7772b0674a318d5','127.0.0.1','2017-11-18 11:19:48',1,'right','5','5'),
(10,'6','1679091c5a880faf6fb5e6087eb1b2dc','0.0.0.0','2017-11-17 21:49:16',0,'right','6','6'),
(11,'7','8f14e45fceea167a5a36dedd4bea2543','0.0.0.0','2017-11-17 21:50:13',0,'right','7','7'),
(12,'8','c9f0f895fb98ab9159f51fd0297e236d','0.0.0.0','2017-11-17 21:53:55',0,'right','8','8'),
(13,'9','45c48cce2e2d7fbdea1afc51c7c6ad26','0.0.0.0','2017-11-17 21:54:24',0,'right','9','9');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
