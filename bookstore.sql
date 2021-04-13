/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 5.5.40 : Database - bookstore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bookstore`;

/*Table structure for table `book_category` */

DROP TABLE IF EXISTS `book_category`;

CREATE TABLE `book_category` (
  `cate_id` int(16) NOT NULL AUTO_INCREMENT,
  `parent_id` int(16) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `sort_order` int(4) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`cate_id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `book_category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `book_category` (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `book_category` */

insert  into `book_category`(`cate_id`,`parent_id`,`name`,`status`,`sort_order`,`is_parent`,`created`,`updated`) values 
(2,NULL,'科技',1,1,0,'2018-11-01 09:43:46','2018-11-01 09:43:49'),
(3,NULL,'文学经典',1,1,0,'2018-11-01 09:46:08','2018-11-01 09:46:11'),
(4,NULL,'人文社科',1,1,0,'2018-11-01 09:46:33','2018-11-01 09:46:35'),
(5,NULL,'生活',1,1,0,'2018-11-01 09:47:09','2018-11-01 09:47:12'),
(6,NULL,'童书',1,1,0,'2018-11-01 09:47:44','2018-11-01 09:47:48'),
(7,NULL,'小说',1,1,0,'2018-11-01 15:50:56','2018-11-01 15:50:58');

/*Table structure for table `book_desc` */

DROP TABLE IF EXISTS `book_desc`;

CREATE TABLE `book_desc` (
  `book_id` int(11) NOT NULL,
  `book_desc` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book_desc` */

insert  into `book_desc`(`book_id`,`book_desc`,`created`,`updated`) values 
(1,'<p><br/><a href=\"http://store.dangdang.com/gys_04099_dytg\" style=\"color: rgb(26, 102, 179); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/ueditor/jsp/upload/image/20181124/1543065820217043526.jpg\"/></a></p>','2018-11-24 21:23:43','2018-11-24 21:23:43'),
(185,'<ul class=\"key clearfix list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>开 本：16开</p></li><li><p>纸 张：胶版纸</p></li><li><p>包 装：平装-胶订</p></li><li><p>是否套装：否</p></li><li><p>国际标准书号ISBN：9787111573319</p></li><li><p>所属分类：<span class=\"lie\" style=\"display: block; padding: 0px; font-family: sinsun; clear: both;\"><a target=\"_bland\" href=\"http://category.dangdang.com/cp01.00.00.00.00.00.html\" class=\"green\" style=\"text-decoration-line: none; color: rgb(26, 102, 179);\">图书</a>&gt;<a target=\"_bland\" href=\"http://category.dangdang.com/cp01.54.00.00.00.00.html\" class=\"green\" style=\"text-decoration-line: none; color: rgb(26, 102, 179);\">计算机/网络</a>&gt;<a target=\"_bland\" href=\"http://category.dangdang.com/cp01.54.06.00.00.00.html\" class=\"green\" style=\"text-decoration-line: none; color: rgb(26, 102, 179);\">程序设计</a>&gt;<a target=\"_bland\" href=\"http://category.dangdang.com/cp01.54.06.06.00.00.html\" class=\"green\" style=\"text-decoration-line: none; color: rgb(26, 102, 179);\">Java</a></span></p></li></ul><p><a class=\"browser browser_op\" style=\"height: 0px; font-size: 0px; line-height: 0; overflow: hidden; color: rgb(100, 100, 100); position: absolute; right: -90px; top: -58px; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"></a></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>快速直达</p></li><li><p><a><span class=\"icon\" style=\"position: absolute; left: 0px; top: 15px; display: block; width: 8px; height: 8px; overflow: hidden; background: url(&quot;../images/product_sprites.png&quot;) 0px -500px no-repeat;\"></span>内容简介</a></p></li><li><p><a style=\"color: rgb(255, 40, 50);\"><span class=\"icon\" style=\"position: absolute; left: -12px; top: 15px; display: block; width: 7px; height: 7px; overflow: hidden; background-image: url(&quot;../images/product_sprites.png&quot;); background-position: -15px -500px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span>目　　录</a></p></li><li><p><a><span class=\"icon\" style=\"position: absolute; left: 0px; top: 15px; display: block; width: 8px; height: 8px; overflow: hidden; background: url(&quot;../images/product_sprites.png&quot;) 0px -500px no-repeat;\"></span>前　　言</a></p></li></ul><p><a style=\"color: rgb(100, 100, 100);\"><span style=\"display: block; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: &quot;Microsoft Yahei&quot;; margin: 0px auto; text-align: center;\">下载免费当当读书</span></a></p><p><a href=\"http://book.dangdang.com/20181106_1hu0\" target=\"_blank\" style=\"text-decoration-line: none; color: rgb(26, 102, 179);\"><img src=\"/ueditor/jsp/upload/image/20181111/1541927607930084356.jpg\" alt=\"\"/></a></p><p><span style=\"float: left; border-left: 2px solid rgb(255, 40, 50); padding: 0px 30px 2px 6px; background: url(&quot;../images/product_sprites.png&quot;) right -525px no-repeat rgb(229, 229, 229); height: 22px; margin-bottom: -2px; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(50, 50, 50);\">内容简介</span></p><p>本书是Java领域有影响力和价值的著作之一，由拥有20多年教学与研究经验的Java技术专家撰写（获Jolt大奖），与《Java编程思想》齐名，10余年全球畅销不衰，广受好评。第10版根据JavaSE8全面更新，同时修正了第9版中的不足，系统全面讲解了Java语言的核心概念、语法、重要特性和开发方法，包含大量案例，实践性强。</p><p><span style=\"float: left; border-left: 2px solid rgb(255, 40, 50); padding: 0px 30px 2px 6px; background: url(&quot;../images/product_sprites.png&quot;) right -525px no-repeat rgb(229, 229, 229); height: 22px; margin-bottom: -2px; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(50, 50, 50);\">目　　录</span></p><p>目　　录<br/>译者序<br/>前言<br/>第1章　Java SE 8的流库 1<br/>1.1　从迭代到流的操作 1<br/>1.2　流的创建 3<br/>1.3　f?ilter、map和f?latMap方法 6<br/>1.4　抽取子流和连接流 8<br/>1.5　其他的流转换 8<br/>1.6　简单约简 9<br/>1.7　Optional类型 11<br/>1.7.1　如何使用Optional值 11<br/>1.7.2　不适合使用Optional值的方式 12<br/>1.7.3　创建Optional值 13</p><p><a class=\"section_show_more\" style=\"color: rgb(80, 80, 80); padding: 0px 15px; height: 22px; overflow: hidden; line-height: 22px; background: url(&quot;../images/product_sprites.png&quot;) 0px -95px repeat-x; border: 1px solid rgb(230, 230, 230); float: right; border-radius: 3px; margin-left: 10px; font-size: 12px;\">显示全部信息</a></p><p><span style=\"float: left; border-left: 2px solid rgb(255, 40, 50); padding: 0px 30px 2px 6px; background: url(&quot;../images/product_sprites.png&quot;) right -525px no-repeat rgb(229, 229, 229); height: 22px; margin-bottom: -2px; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(50, 50, 50);\">前　　言</span></p><p><span style=\"display: inline;\">前　　言致读者本书是按照Java SE 8完全更新后的《Java核心技术　卷Ⅱ　高级特性（原书第10版）》。卷Ⅰ主要介绍了Java语言的一些关键特性；而本卷主要介绍编程人员进行专业软件开发时需要了解的高级主题。因此，与本书卷Ⅰ和之前的版本一样，我们仍将本书定位于用Java技术进行实际项目开发的编程人员。<br/>编写任何一本书籍都难免会有一些错误或不准确的地方。我们非常乐意听到读者的意见。当然，我们更希望对本书问题的报告只听到一次。为此，我们创建了一个FAQ、bug修正以及应急方案的网站http:// horstmann.com/corejava。你可以在bug报告网页（该网页的目的是鼓励读者阅读以前的报告）的末尾处添加bug报告，以此来发布bug和问题并给出建议，以便我们改进本书将来版本的质量。<br/>内容提要本书中的章节大部分是相互独立的。你可以研究自己最感兴趣的主题，并可以按照任意顺序阅读这些章节。<br/>在第1章中，你将学习Java 8的流库，它带来了现代风格的数据处理机制，即只需指定想要的结果，而无须详细描述应该如何获得该结果。这使得流库可以专注于优化的计算策略，对于优化并发计算来说，这显得特别有利。</span></p><p><a class=\"section_show_more\" style=\"color: rgb(80, 80, 80); padding: 0px 15px; height: 22px; overflow: hidden; line-height: 22px; background: url(&quot;../images/product_sprites.png&quot;) 0px -95px repeat-x; border: 1px solid rgb(230, 230, 230); float: right; border-radius: 3px; margin-left: 10px; font-size: 12px;\">显示全部信息</a></p><p><br/></p>','2018-11-11 17:13:52','2018-11-11 17:13:52'),
(186,'<ul class=\"key clearfix list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>开 本：16开</p></li><li><p>纸 张：胶版纸</p></li><li><p>包 装：平装-胶订</p></li><li><p>是否套装：否</p></li><li><p>国际标准书号ISBN：9787115488435</p></li><li><p>丛书名：国外著名高等院校信息科学与技术优秀教材</p></li><li><p>所属分类：<span class=\"lie\" style=\"display: block; padding: 0px; font-family: sinsun; clear: both;\"><a target=\"_bland\" href=\"http://category.dangdang.com/cp01.00.00.00.00.00.html\" class=\"green\" style=\"text-decoration-line: none; color: rgb(26, 102, 179);\">图书</a>&gt;<a target=\"_bland\" href=\"http://category.dangdang.com/cp01.54.00.00.00.00.html\" class=\"green\" style=\"text-decoration-line: none; color: rgb(26, 102, 179);\">计算机/网络</a>&gt;<a target=\"_bland\" href=\"http://category.dangdang.com/cp01.54.92.00.00.00.html\" class=\"green\" style=\"text-decoration-line: none; color: rgb(26, 102, 179);\">人工智能</a>&gt;<a target=\"_bland\" href=\"http://category.dangdang.com/cp01.54.92.02.00.00.html\" class=\"green\" style=\"text-decoration-line: none; color: rgb(26, 102, 179);\">机器学习</a></span></p></li></ul><p><a class=\"browser browser_op\" style=\"height: 0px; font-size: 0px; line-height: 0; overflow: hidden; color: rgb(100, 100, 100); position: absolute; right: -90px; top: -58px; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"></a></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>快速直达</p></li><li><p><a><span class=\"icon\" style=\"position: absolute; left: 0px; top: 15px; display: block; width: 8px; height: 8px; overflow: hidden; background: url(&quot;../images/product_sprites.png&quot;) 0px -500px no-repeat;\"></span>编辑推荐</a></p></li><li><p><a><span class=\"icon\" style=\"position: absolute; left: 0px; top: 15px; display: block; width: 8px; height: 8px; overflow: hidden; background: url(&quot;../images/product_sprites.png&quot;) 0px -500px no-repeat;\"></span>内容简介</a></p></li><li><p><a><span class=\"icon\" style=\"position: absolute; left: 0px; top: 15px; display: block; width: 8px; height: 8px; overflow: hidden; background: url(&quot;../images/product_sprites.png&quot;) 0px -500px no-repeat;\"></span>作者简介</a></p></li><li><p><a style=\"color: rgb(255, 40, 50);\"><span class=\"icon\" style=\"position: absolute; left: -12px; top: 15px; display: block; width: 7px; height: 7px; overflow: hidden; background-image: url(&quot;../images/product_sprites.png&quot;); background-position: -15px -500px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span>目　　录</a></p></li></ul><p><a style=\"color: rgb(100, 100, 100);\"><span style=\"display: block; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: &quot;Microsoft Yahei&quot;; margin: 0px auto; text-align: center;\">免费下载读书APP</span></a></p><p><a href=\"http://book.dangdang.com/20181106_1hu0\" target=\"_blank\" style=\"text-decoration-line: none; color: rgb(26, 102, 179);\"><img src=\"/ueditor/jsp/upload/image/20181111/1541928563897070848.jpg\" alt=\"\"/></a></p><p><span style=\"float: left; border-left: 2px solid rgb(255, 40, 50); padding: 0px 30px 2px 6px; background: url(&quot;../images/product_sprites.png&quot;) right -525px no-repeat rgb(229, 229, 229); height: 22px; margin-bottom: -2px; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(50, 50, 50);\">编辑推荐</span></p><p>图文详细、示例丰富，同时配备诸多附加资源，非常适合作为自学和教学指南。 美国经典教材，在Amazon上，被评价为自Russell &amp; Norvig的《人工智能：一种现代方法》之后更好的教材，更加适合本科生使用。 当前，人工智能的发展进入了新的历史阶段，成为科研、教学和创业等领域关注的热点。我国正在大力培养人工智能领域的专业人才，一些高校成立了人工智能学院，还有许多高校开设了人工智能相关专业。 本书是作者结合多年教学经验、精心撰写的一本人工智能教科书，堪称“人工智能的百科全书”。全书涵盖了人工智能简史、搜索方法、知情搜索、博弈中的搜索、人工智能中的逻辑、知识表示、产生式系统、专家系统、机器学习和神经网络、遗传算法、自然语言处理、自动规划、机器人技术、高级计算机博弈、人工智能的历史和未来等主题。 本书提供了丰富的教学配套资源，适合作为高等院校人工智能相关专业的教材，也适合对人工智能相关领域感兴趣的读者阅读和参考。 ● 基于人工智能的理论基础，展示全面、新颖、丰富多彩且易于理解的人工智能知识体系。 ● 加入关于机器人和机器学习的新章节，并在自然语言处理在自然语言处理部分包括了关于语音理解和隐喻的小节。 ● 给出诸多的示例、应用程序、全彩图片和人物轶事，以激发读者的学习兴趣。 ● 通过实际应用引入重 要的人工智能概念，例如机器人技术、人工智能在视频游戏中的应用、神经网络、机器学习等。 ● 包含300多幅图，详细描述了人工智能方法在实际工作中的问题，并给出了部分习题的解答。 ● 提供本书所涉及的资源、仿真和书中的图。 ● 为采用本书作为教材的教师提供丰富的教学支持资源，包括习题解答、教学PPT等。 配套资源 ● 本书附录D“应用程序和数据”提到的应用程序示例、用于神经网络训练的练习数据和若干高级计算问题概览。 ● 本书附录E“部分练习的答案”的英文版PDF和图解。 ● 本书中的全部彩图文件。 ● 本书的Prolog示例源代码。 ● 供教师使用的教学PPT。 以上资源请到异步社区（www.epubit.com）下载。 为使用本书作为教材的教师提供的教学资源： ● 教学PPT。 ● 教师指导手册（电子版，包括本书配套习题的完整解答）。 请通过contact@epubit.com.cn联系申请。&nbsp;</p><p><span style=\"float: left; border-left: 2px solid rgb(255, 40, 50); padding: 0px 30px 2px 6px; background: url(&quot;../images/product_sprites.png&quot;) right -525px no-repeat rgb(229, 229, 229); height: 22px; margin-bottom: -2px; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(50, 50, 50);\">内容简介</span></p><p>作为计算机科学的一个分支，人工智能主要研究、开发用于模拟、延伸和扩展人类智能的理论、方法、技术及应用系统，涉及机器人、语音识别、图像识别、自然语言处理和专家系统等方向。 本书包括引言、基础知识、基于知识的系统、高级专题以及现在和未来五部分内容。*部分从人工智能的定义讲起，就人工智能的早期历史、思维和智能的内涵、图灵测试、启发法、新千年人工智能的发展进行了简要论述。第二部分详细讲述了人工智能中的盲目搜索、知情搜索、博弈中的搜索、人工智能中的逻辑、知识表示和产生式系统等基础知识。第三部分介绍并探究了人工智能领域的成功案例，如DENDRAL、MYCIN、EMYCIN等经典的专家系统，振动故障诊断、自动牙科识别等新的专家系统，以及受到自然启发的搜索等。第四部分介绍了自然语言处理和自动规划等高级专题。第五部分对人工智能的历史和现状进行了梳理，回顾了几十年来人工智能所取得的诸多成就，并对其未来进行了展望。 本书系统、全面地涵盖了人工智能的相关知识，既简明扼要地介绍了这一学科的基础知识，也对自然语言处理、自动规划、神经网络等内容进行了拓展，更辅以实例，可以帮助读者扎扎实实打好基础。本书特色鲜明、内容易读易学，适合人工智能相关领域和对该领域感兴趣的读者阅读，也适合高校计算机专业的教师和学生参考。</p><p><span style=\"float: left; border-left: 2px solid rgb(255, 40, 50); padding: 0px 30px 2px 6px; background: url(&quot;../images/product_sprites.png&quot;) right -525px no-repeat rgb(229, 229, 229); height: 22px; margin-bottom: -2px; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(50, 50, 50);\">作者简介</span></p><p>作者简介 史蒂芬·卢奇（Stephen Lucci） 拥有纽约市立大学的博士学位，目前在纽约市立大学教授计算机科学课程。他曾在高性能计算领域发表了多篇论文，并且是NASA 发起的MU-SPIN 项目的学术带头人。MU-SPIN 项目旨在为NASA 培养下一代*尖的科学家和工程师。 丹尼·科佩克（Danny Kopec） 拥有爱丁堡大学博士学位，目前在纽约市立大学布鲁克林学院和纽约市立大学研究生中心任教。他发表过多篇论文，并出版过几本书，还是一位国际象棋大师。 译者简介 林赐 软件设计师、网络工程师，毕业于渥太华大学系统科学硕士专业，已翻译出版《Python神经网络编程》等多本技术图书。</p><p><span style=\"float: left; border-left: 2px solid rgb(255, 40, 50); padding: 0px 30px 2px 6px; background: url(&quot;../images/product_sprites.png&quot;) right -525px no-repeat rgb(229, 229, 229); height: 22px; margin-bottom: -2px; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(50, 50, 50);\">目　　录</span></p><p>第 一部分 引 言&nbsp;<br/><br/>第　1章 人工智能概述　2<br/><br/>1.0　引言　2<br/><br/>1.0.1　人工智能的定义　3<br/><br/>1.0.2　思维是什么？智能是什么？　3<br/><br/>1.1　图灵测试　5<br/><br/>1.1.1　图灵测试的定义　6<br/></p><p><a class=\"section_show_more\" style=\"color: rgb(80, 80, 80); padding: 0px 15px; height: 22px; overflow: hidden; line-height: 22px; background: url(&quot;../images/product_sprites.png&quot;) 0px -95px repeat-x; border: 1px solid rgb(230, 230, 230); float: right; border-radius: 3px; margin-left: 10px; font-size: 12px;\">显示全部信息</a></p><p><br/></p>','2018-11-11 17:29:51','2018-11-11 17:29:51'),
(188,'<p>在这里填写书籍详情</p>','2018-11-26 22:06:08','2018-11-26 22:06:08'),
(189,'<p><span style=\"color: rgb(101, 101, 101); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">1、“万经之王”的典藏版本：中国的智慧书和哲学书，权威的注释，精简的译文，透露人生的智慧和命运的哲理，尤其为现代人解读当下的困惑，参透究极人生意义。</span><br/><span style=\"color: rgb(101, 101, 101); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">　　2、无障碍阅读的经典版本：本书中的注释、翻译都人性化地考量到读者的阅读基础，让人在轻松自在的状态下修习中华至高经典！文字如师如友，让听者如沐春风。</span><br/><span style=\"color: rgb(101, 101, 101); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">　　3、解析高深哲学的导读版本：通过*简单的文字开始修习关于宇宙万物或世界本源的重要理论之一——“道”，对大到人生、命运、思想等或者小到为人、做事、管理等命题都有启发。本书形成一个框架和引导，让人们对很高深的问题都有简单的入门阅读和思考。</span><br/><span style=\"color: rgb(101, 101, 101); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">　　商业与治国之大道：</span><br/><span style=\"color: rgb(101, 101, 101); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">　　马云和各界奇人异士交往，俨然打通了道家、佛教、西方管理、共产党思维，以一本《道德经》建立了一个商业王国。——凤凰网</span><br/><span style=\"color: rgb(101, 101, 101); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">　　《道德经》是我国传统文化经典，其中蕴含着许多治国理政辩证法。“治大国如烹小鲜”这句话，就被*总书记在多个场合强调过。宣传工作，许多宣传理念和方法，也能从《道德经》中找到思想痕迹。——中新网&nbsp;</span></p><p><span style=\"color: rgb(101, 101, 101); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(101, 101, 101); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">《道德经》是中华文化的经典著作，历代学者都将研读《道德经》作为必修功课。《道德经》共八十一章，多为韵文，分为“道经”与“德经”两大部分。《道德经》五千言，篇幅不长而论述精辟，其中含义深远，思想广博。其内容从多方面论述宇宙的本体、万物之源、自然规律等等，并将其意义融入到现实自然、社会、国家、民生等众多方面。大致分为：论道、治国、修身、砭时、养生、议兵六大方向。</span><br/><span style=\"color: rgb(101, 101, 101); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">　　本书《道德经》原文遵照中华书局发行的通行版本，每一章以原文开头，之后有“注释”和“译文”两个板块，对字词的注释简明扼要，对原文的翻译精妙准确，同时融入通俗易懂的解读思想。另外，本书除了常有的字词注释和译文之外，还加入了“河上公”对道德经的注解，希望这位黄老学派的集大成者的见解，能为读者们抛砖引玉，以其为伴为镜，协助自我来更好地阅读并理解《道德经》的主旨思想。</span></span></p>','2018-11-30 12:56:09','2018-11-30 13:39:39');

/*Table structure for table `book_info` */

DROP TABLE IF EXISTS `book_info`;

CREATE TABLE `book_info` (
  `book_id` int(16) NOT NULL AUTO_INCREMENT,
  `book_category_id` int(16) DEFAULT NULL,
  `store_id` int(16) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `outline` varchar(255) DEFAULT NULL COMMENT '简介',
  `detail` varchar(500) DEFAULT NULL COMMENT '商品详情',
  `press` varchar(20) DEFAULT NULL COMMENT '出版社',
  `publish_date` datetime DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL COMMENT '翻译者',
  `isbn` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pages` int(10) DEFAULT NULL COMMENT '总页数',
  `catalog` varchar(255) DEFAULT NULL COMMENT '目录',
  `market_price` decimal(10,2) DEFAULT NULL COMMENT '市场价\\定价',
  `member_price` decimal(10,2) DEFAULT NULL COMMENT '会员价格',
  `deal_mount` int(10) DEFAULT NULL COMMENT '成交量',
  `look_mount` int(10) DEFAULT NULL COMMENT '浏览量',
  `discount` decimal(5,2) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL COMMENT '版面图片',
  `store_mount` int(10) DEFAULT NULL COMMENT '库存数量',
  `store_time` datetime DEFAULT NULL COMMENT '入库时间',
  `pack_style` varchar(50) DEFAULT NULL COMMENT '封装方式',
  `is_shelf` int(2) DEFAULT NULL COMMENT '是否上架',
  PRIMARY KEY (`book_id`),
  KEY `book_category_id` (`book_category_id`),
  KEY `store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

/*Data for the table `book_info` */

insert  into `book_info`(`book_id`,`book_category_id`,`store_id`,`name`,`outline`,`detail`,`press`,`publish_date`,`size`,`version`,`author`,`translator`,`isbn`,`price`,`pages`,`catalog`,`market_price`,`member_price`,`deal_mount`,`look_mount`,`discount`,`image_url`,`store_mount`,`store_time`,`pack_style`,`is_shelf`) values 
(1,2,1,'Python编程 从入门到实践','Python编程 从入门到实践【图灵程序设计丛书】Python3.5编程入门图书 机器学习 数据处理 网络爬虫热门编程语言 从基本概念到完整项目开发 帮助零基础读者迅速掌握Python编程 附赠源代码文件','上到有编程基础的程序员，下到10岁少年，想入门Python并达到可以开发实际项目的水平，本书是读者*！ 本书是一本全面的从入门到实践的Python编程教程，带领读者快速掌握编程基础知识、编写出能解决实际问题的代码并开发复杂项目。 书中内容分为基础篇和实战篇两部分。基础篇介绍基本的编程概念，如列表、字典、类和循环，并指导读者编写整洁且易于理解的代码。另外还介绍了如何让程序能够与用户交互，以及如何在代码运行前进行测试。实战篇介绍如何利用新学到的知识开发功能丰富的项目：2D游戏《外星人入侵》，数据可视化实战，Web应用程序。','人民邮电出版社','2016-07-01 00:00:00','128开',NULL,'[美]埃里克・马瑟斯（Eric Matthes）',NULL,'9787115428028','61.50',NULL,'','89.00',NULL,200,208,'6.90','http://img3m0.ddimg.cn/67/4/24003310-1_b_5.jpg',199,'2018-11-01 14:58:43','平装-胶订',1),
(2,2,1,'深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）','深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）超级畅销书全新升级，第1版两年内印刷近10次，Java图书领域公认的经典著作，繁体版台湾发行','本书第1版两年内印刷近10次，4家网上书店的评论近4?000条，98%以上的评论全部为5星级的好评，是整个Java图书领域公认的经典著作和超级畅销书，繁体版在台湾也十分受欢迎。第2版在第1版的基础上做了很大的改进：根据*的JDK 1.7对全书内容进行了全面的升级和补充；增加了大量处理各种常见JVM问题的技巧和*实践；增加了若干与生产环境相结合的实战案例；对第1版中的错误和不足之处的修正；等等。第2版不仅技术更新、内容更丰富，而且实战性更强。','机械工业出版社','2013-06-01 00:00:00','16开',NULL,'周志明',NULL,'9787111421900','72.90',NULL,'','79.00',NULL,300,303,'9.20','http://img3m1.ddimg.cn/77/14/23259731-1_b_0.jpg',200,'2018-11-01 14:58:44','平装-胶订',1),
(3,2,1,'C Primer Plus 第6版 中文版 C语言入门经典教程','C Primer Plus 第6版 中文版 C语言入门经典教程畅销30余年的C语言编程入门教程 近百万程序员的C语言编程启蒙教程 技术大牛案头常备的工具书 针对C11标准库更新 蔡学镛 孟岩 高博倾力推荐','经久不衰的C语言畅销经典教程针对C11标准进行全面更新《C Primer Plus（第6版）中文版》是一本经过仔细测试、精心设计的完整C语言教程，它涵盖了C语言编程中的核心内容。《C Primer Plus（第6版）中文版》作为计算机科学的经典著作，讲解了包含结构化代码和自顶向下设计在内的程序设计原则。与以前的版本一样，作者的目标仍旧是为读者提供一本入门型、条理清晰、见解深刻的C语言教程。作者把基础的编程概念与C语言的细节很好地融合在一起，并通过大量短小精悍的示例同时演示一两个概念，通过学以致用的方式鼓励读者掌握新的主题。每章末尾的复习题和编程练习题进一步强化了重要的信息，有助于读者理解和消化那些难以理解的概念。本书采用了友好、易于使用的编排方式，不仅适合打算认真学习C语言编程的学生阅读，也适合那些精通其他编程语言，但希望','人民邮电出版社','2016-04-01 00:00:00','16开',NULL,'[美]史蒂芬・普拉达（Stephen Prata）',NULL,'9787115390592','79.20',NULL,'','89.00',NULL,100,100,'8.90','http://img3m2.ddimg.cn/43/13/23958142-1_b_12.jpg',200,'2018-11-01 14:58:44','平装-胶订',1),
(4,2,1,'C++ Primer Plus(第6版)中文版(畅销30年C++必读经典教程全新升级，蔡学镛、孟岩、高博倾力推荐)','C++ Primer Plus(第6版)中文版(畅销30年C++必读经典教程全新升级，蔡学镛、孟岩、高博倾力推荐)畅销20余年的C++编程入门教程 近百万程序员的C++编程启蒙教程 技术大牛案头常备的工具书 针对C++11标准库更新 蔡学镛 孟岩 高博倾力推荐','一本经久不衰的C 畅销经典教程；首本支持C 11新标准的程序设计图书。 它被誉为 开发人员学习C 的必备教程，没有之一 ！ Amazon网站 Language 类销售排名第三的超级畅销书，之前版本在美国销售超10万！ 《C Primer Plus(第6版)中文版》可以说是一本面向从未学习过C语言甚至是从未学习过编程的人的入门书籍，它的首章从基础内容讲起，先介绍了传统编程的规则，后面才着重讲解有关面向对象 C 的精髓之一 的有关内容。整个书的结构安排较为合理，难度爬升较慢。 如果你是一个从未学过C语言（或者压根没学会C）的读者，那么，我相信这本书更适合你。','人民邮电出版社','2012-07-01 00:00:00','16开',NULL,'[美]Stephen Prata 著',NULL,'9787115279460','88.10',NULL,'','99.00',NULL,100,100,'8.90','http://img3m4.ddimg.cn/40/14/22783504-1_b_4.jpg',200,'2018-11-01 14:58:44','平装-胶订',1),
(5,2,1,'Java从入门到精通（第4版）（附光盘）','Java从入门到精通（第4版）（附光盘）畅销书全新改版 累计63次重印 30万读者选择的 java入门经典书 持续八年畅销 全行业优秀畅销书 长期位居java 销售排行榜前列 好学、好用 32小时视频 732个经典实例 369项,','随书附赠小白手册（电子版） 下载链接 http://pan.baidu.com/s/1mhLe8GS 软件开发视频大讲堂 丛书系清华社 视频大讲堂 重点大系之一。该大系包括多个子系列，每个子系列的图书在其同品种的图书中销售名列前茅，其中： 4个品种荣获 全行业优秀畅销品种 1个品种荣获2012年清华大学出版社 专业畅销书 一等奖 绝大多数品种在 全国计算机零售图书排行榜 同品种排行中名列前茅 截至目前该大系累计销售超过130万册 该大系已成为近年来清华社计算机专业基础类零售图书*畅销的品牌之一 软件开发视频大讲堂 系列作为清华社 视频大讲堂 大系的子系列之一，继承和创新了清华社 视频大讲堂 大系的编写模式、写作风格和优良品质。本书突出了以下内容： 总长总时长32小时同步视频演示讲解，可反复观摩，让学习更为快捷','清华大学出版社','2016-09-21 00:00:00','16开',NULL,'明日科技',NULL,'9787302444541','61.20',NULL,'','69.60',NULL,100,101,'8.80','http://img3m0.ddimg.cn/60/17/24042210-1_b_5.jpg',200,'2018-11-01 14:58:45','平装-胶订',1),
(6,2,1,'Python从菜鸟到高手','Python从菜鸟到高手JetBrains官方推荐图书！JetBrains官大中华区市场部经理赵磊作序！送2400分钟同步视频课程！500个案例，400道Python练习题，电子书，10万行源代码，6个实战项目！','JetBrains官方推荐图书！JetBrains官大中华区市场部经理赵磊作序！送2400分钟同步视频课程！500个案例，400道Python练习题，电子书，10万行源代码，6个实战项目！ 李宁 私房菜谱 ： ? Python语法基础 ? Python高级编程 ? Python Web开发 ? Python科学计算与数据分析 ? Python Web爬虫技术 ? Python项目实战 李宁 实战项目 ： ? Web项目实战：基于Flask的美团网 ? Web项目实战：基于Django的58同城 ? 爬虫项目实战：天气预报服务API ? 爬虫项目实战：胸罩销售数据分析 ? GUI项目实战：动态修改域名指向的IP ? 游戏项目实战：俄罗斯方块','清华大学出版社','2018-09-01 00:00:00','16开',NULL,'李宁',NULL,'9787302507161','112.60',NULL,'','128.00',NULL,100,100,'8.80','http://img3m4.ddimg.cn/6/6/25333314-1_b_2.jpg',200,'2018-11-01 14:58:45','平装-胶订',1),
(7,2,1,'码农翻身（好玩有趣的编程知识）','码农翻身（好玩有趣的编程知识）用故事给技术加点料，全网阅读量近1000万次的技术故事，讲解Python、Java编程思想、JavaScript、架构、代码管理等，帮你理解技术起源和本质。《Java开发手册》作者孤尽等专家推荐。','把计算机元素和行为用拟人手法编成一个个精彩纷呈的故事，绘声绘色且深入浅出地演绎晦涩枯燥的编程知识。 编程初学者可以津津有味地学习，老手也能饶有兴致地查漏补缺。 从前端到后端，从原理到编程，脉络清晰，体系完整。','电子工业出版社','2018-05-01 00:00:00','16开',NULL,'刘欣（@码农翻身）',NULL,'9787121341175','66.20',NULL,'','69.00',NULL,100,100,'9.60','http://img3m4.ddimg.cn/31/12/25276414-1_b_13.jpg',200,'2018-11-01 14:58:45','平装-胶订',1),
(8,2,1,'重构 改善既有代码的设计','重构 改善既有代码的设计世界知名软件开发大师Martin Fowler的不朽经典 生动阐述重构原理和具体做法 普通程序员进阶到编程高手的修炼秘笈','软件开发的不朽经典 生动阐述重构原理和具体做法 普通程序员进阶到编程高手必须修炼的秘笈 重构，一言以蔽之，就是在不改变外部行为的前提下，有条不紊地改善代码。多年前，正是本书原版的出版，使重构终于从编程高手们的小圈子走出，成为众多普通程序员日常开发工作中不可或缺的一部分。本书也因此成为与《设计模式》齐名的经典著作，被译为中、德、俄、日等众多语言，在世界范围内畅销不衰。 本书凝聚了软件开发社区专家多年摸索而获得的宝贵经验，拥有不因时光流逝而磨灭的价值。今天，无论是重构本身，业界对重构的理解，还是开发工具对重构的支持力度，都与本书*初出版时不可同日而语，但书中所蕴涵的意味和精华，依然值得反复咀嚼，而且往往能够常读常新。','人民邮电出版社','2015-08-01 00:00:00','16开',NULL,'[美]Martin Fowler 著，熊节 译',NULL,'9787115369093','61.40',NULL,'','69.00',NULL,100,100,'8.90','http://img3m6.ddimg.cn/79/24/23734636-1_b_1.jpg',200,'2018-11-01 14:58:47','平装-胶订',1),
(9,2,1,'Python核心编程 第3版','Python核心编程 第3版畅销经典的Python基础教程学习手册进阶图书 兼顾Python2和Python3 机器学习 数据处理 网络爬虫热门编程语言 Python开发人员的案头常备','全面涵盖当今应用开发中的众多领域为中级Python开发人员提供杰出实践方法涵盖大量实用的代码案例每章末尾的习题有助于巩固所学知识 想进一步提升Python编程水平？请深入分析真实应用程序中使用的大量相关主题涵盖了正则表达式、Internet/网络编程、GUI、SQL/数据库/ORM、多线程、Web开发了解当前的开发区域，比如Google 、Twitter、MongoDB、OAuth、Python 3迁移、Java/Jython囊括有关Django、Google App Engine、CSV/JSON/XML和Microsoft Office的全新内容。包含Python 2和Python 3代码，以便立即可以使用提供了代码片段、互动案例和实用练习，旨在巩固Python技能 Python是一种灵活、可靠且具有表现力的编程语言，它将编译语言的强大与脚本语言的简洁性、快速开发特性整合起来。在《 Python核心编程 第3版 》中，杰出Python开发人员兼企业培训师Wesley Chun会帮助您将Python技能提升到更高的水平。《 P','人民邮电出版社','2016-05-01 00:00:00','16开',NULL,'[美]卫斯理 春（Wesley Chun）',NULL,'9787115414779','88.10',NULL,'','99.00',NULL,100,100,'8.90','http://img3m8.ddimg.cn/85/30/23961748-1_b_10.jpg',200,'2018-11-01 14:58:47','平装-胶订',1),
(10,2,1,'Java核心技术 卷I：基础知识（原书第10版）','Java核心技术 卷I：基础知识（原书第10版）全新第10版！Java领域极具影响力和价值的著作之一，与《Java编程思想》齐名，10余年全球畅销不衰，广受好评','Java领域*有影响力和价值的著作之一，与《Java编程思想》齐名，10余年全球畅销不衰，广受好评 根据Java SE 8全面更新，系统全面讲解Java语言的核心概念、语法、重要特性和开发方法，包含大量案例，实践性强 ?? 一直以来，《Java核心技术》都被认为是面向高级程序员的经典教程和参考书，它内容翔实、客观准确，不拖泥带水，是想为实际应用编写健壮 Java代码的程序员的*选。如今，本版进行了全面更新， 以反映近年来人们翘首以待、变革*大的Java版本（Java SE 8）的内容。这一版经过重写，并重新组织，全面阐释了新的Java SE 8特性、惯用法和*佳实践，其中包含数百个示例程序，所有这些代码都经过精心设计，不仅易于理解，也很容易实际应用。 本书为专业程序员解决实际问题而写，可以帮助你深入了解Java语言和库。在卷I中，Horstmann主要强调','机械工业出版社','2016-09-19 00:00:00','16开',NULL,'（美）凯 S.霍斯特曼（Cay S. Horstmann）',NULL,'9787111547426','109.80',NULL,'','119.00',NULL,800,402,'9.23','http://img3m6.ddimg.cn/86/32/24035306-1_b_6.jpg',200,'2018-11-01 14:58:48','平装-胶订',1),
(11,2,1,'Python编程（第四版）','Python编程（第四版）Python高手进阶宝典，包含大量实用Python编程技巧，涵盖Python编程的方方面面，涵盖Python 3.X，是Python领域经典的开发指南。','重磅推荐： Python袖珍指南（第五版） 本书是 Python 应用的手册指南，它涵盖了 Python 编程的方方面面，从系统管理到图形界面编程，从文本处理到网络编程，从数据库到语言扩展 这些主题的探讨中，作者提供了大量的实际代码，通过对这些代码的研读，对读者的 Python 编程水平以及实际业务问题的解决都将不无裨益。','中国电力出版社','2014-12-01 00:00:00','大16开',NULL,'Mark Lutz',NULL,'9787512355309','136.60',NULL,'','198.00',NULL,100,100,'6.90','http://img3m4.ddimg.cn/42/36/23617284-1_b_2.jpg',200,'2018-11-01 14:58:49','平装',1),
(12,2,1,'Python基础教程（第3版）','Python基础教程（第3版）【图灵程序设计丛书】Python3.5编程从入门到实践 Python入门佳作 机器学习 人工智能 数据处理 网络爬虫热门编程语言 累计销售20万册','本书是经典的Python入门教程，层次鲜明、结构严谨、内容翔实，特别是后面几章，作者将前面讲述的内容应用到10个引人入胜的项目中，并以模板的形式介绍了项目的开发过程，手把手教授Python编程实践，让读者从项目中领略Python的真正魅力。 本书既适合初学者夯实基础，又能帮助Python程序员提升技能，即使是中高-级Python程序员，也能从书里找到耳目一新的内容。','人民邮电出版社','2018-02-01 00:00:00','16开',NULL,'[挪]芒努斯・利・海特兰德（Magnus Lie Hetland）',NULL,'9787115474889','68.30',NULL,'','99.00',NULL,100,100,'6.90','http://img3m5.ddimg.cn/62/19/25218035-1_b_2.jpg',200,'2018-11-01 14:58:50','平装-胶订',1),
(13,2,1,'Python编程快速上手 让繁琐工作自动化（Python3编程从入门到实践 新手学习必备用书）','Python编程快速上手 让繁琐工作自动化（Python3编程从入门到实践 新手学习必备用书）Python3编程从入门到实践美亚畅销Python编程入门图书 Python3实战指南 带你快速实现Python高效编程','亚马逊畅销Python编程图书，帮助你通过编程快速实现工作自动化在本书中，你将学习利用Python 编程，在几分钟内完成手工需要几小时的工作，而事先却无需具备编程经验。一旦掌握了编程的基础知识，你就可以毫不费力地创建Python 程序，完成高效的自动化工作，包括：● 在一个文件或多个文件中搜索文本；● 创建、更新、移动和重命名文件和文件夹；● 搜索网页和下载的在线内容；● 在任意大小的Excel电子表格中更新和格式化数据；● 拆分、合并PDF文件，以及如何加水印和加密；● 发送提醒邮件和文本通知；● 填写在线表格。本书的作者Al Sweigart是一位杰出Python程序员,他还是《Python 密码学编程》、《Python 游戏编程快速上手》和《Python 和Pygame 游戏开发指南》的作者。','人民邮电出版社','2016-06-01 00:00:00','16开',NULL,'[美] Al Sweigart 斯维加特',NULL,'9787115422699','61.40',NULL,'','69.00',NULL,100,100,'8.90','http://img3m2.ddimg.cn/1/5/23997502-1_b_6.jpg',200,'2018-11-01 14:58:50','平装-胶订',1),
(14,2,1,'算法（第4版）【Sedgewick之巨著，与高德纳TAOCP一脉相承】','算法（第4版）【Sedgewick之巨著，与高德纳TAOCP一脉相承】【图灵程序设计丛书】算法领域的经典参考书 众多图例实现图解算法和算法导论 基于Java语言实现算法和数据结构 熟练掌握算法设计与分析','Sedgewick之巨著，与高德纳TAOCP一脉相承 几十年多次修订，经久不衰的畅销书 涵盖所有程序员必须掌握的50种算法','人民邮电出版社','2012-10-01 00:00:00','16开',NULL,'[美]Robert Sedgewick Kevin Wayne 著',NULL,'9787115293800','66.40',NULL,'','99.00',NULL,100,100,'6.71','http://img3m1.ddimg.cn/90/34/22880871-1_b_3.jpg',200,'2018-11-01 14:58:51','平装-胶订',1),
(15,2,1,'笨办法学Python 3','笨办法学Python 3经典畅销Python入门教程升级版 Python3编程从入门到实践教程 手机扫码看5个小时配套视频 跟着数百万人的Python导师学Python编程入门基础教程 代码基于Python3.6','知乎、CSDN等各大论坛技术大牛推荐的Python自学入门畅销书《笨办法学Python》重磅升级，所有案例均基于Python3.6编写。 免费提供长达5个小时的配套教学视频，用手机扫码在线观看视频，更方便。 Zed A. Shaw创建了一套非常有效的Python 3学习体系，只要跟着学，你就会像Zed教过的数百万初学者一样获得成功！只要你能自律、投入和坚持！ 在本书中，你将通过完成52个精心设计的习题来学会Python语言。阅读这些习题，照着录入代码（不要复制和粘贴！），修正自己的错误，观察程序的运行。在这个过程中，你将学会计算机的工作原理，知道怎样的程序才算是好程序，以及如何读、写和思考代码。作者还提供了5个多小时的视频，教你如何破坏、修正和调试代码，整个过程就像一边做题一边直播一样。一开始会很难，但很快你就会上手，并且会感觉很棒！ 本书适合以下人群阅','人民邮电出版社','2018-06-01 00:00:00','16开',NULL,'[美]泽德 A. 肖（Zed A. Shaw）',NULL,'9787115478818','56.60',NULL,'','59.00',NULL,100,100,'9.60','http://img3m2.ddimg.cn/29/31/25286312-1_b_3.jpg',200,'2018-11-01 14:58:51','平装-胶订',1),
(16,2,1,'编程珠玑（第2版・修订版）','编程珠玑（第2版・修订版）20余年畅销不衰计算机科学的不朽经典 伟大的计算机科学著作之一 程序员推选的心爱计算机图书 讲解如何正确选择和高效地实现算法 基于C和C++语言编写','历*伟大的计算机科学著作之一 融深邃思想、实战技术与趣味轶事于一炉的奇书 带你真正领略计算机科学之美 多年以来，当程序员们推选出*心爱的计算机图书时，《编程珠玑》总是位于前列。正如自然界里珍珠出自细沙对牡蛎的磨砺，计算机科学大师Jon Bentley以其独有的洞察力和创造力，从磨砺程序员的实际问题中凝结出一篇篇不朽的编程 珠玑 ，成为世界计算机界名刊《ACM通讯》历*受欢迎的专栏，*终结集为两部不朽的计算机科学经典名著，影响和激励着一代又一代程序员和计算机科学工作者。本书为*卷，主要讨论计算机科学中*本质的问题：如何正确选择和高效地实现算法。 在书中，作者选取许多具有典型意义的复杂编程和算法问题，生动描绘了历史上众大师们在探索解决方案中发生的轶事、走过的弯路和不断精益求精的历程，引导读者像真正的程序员和软','人民邮电出版社','2015-01-01 00:00:00','16开',NULL,'[美]乔恩・本特利（Jon Bentley） 著',NULL,'9787115357618','34.70',NULL,'','39.00',NULL,100,100,'8.90','http://img3m2.ddimg.cn/43/16/23640352-1_b_1.jpg',200,'2018-11-01 14:58:52','平装-胶订',1),
(17,2,1,'机器学习实战【python基础教程指南，python核心编程实例指导，对wxpython数据库充分的讲解，不可错过的编','机器学习实战【python基础教程指南，python核心编程实例指导，对wxpython数据库充分的讲解，不可错过的编【图灵程序设计丛书】人工智能开发图书 深度学习实践应用 利用Python阐述机器学习算法 配合日常用例 强劲实战导向 程序员人手常备','介绍并实现机器学习的主流算法 面向日常任务的高效实战内容 《机器学习实战》没有从理论角度来揭示机器学习算法背后的数学原理，而是通过 原理简述 问题实例 实际代码 运行效果 来介绍每一个算法。学习计算机的人都知道，计算机是一门实践学科，没有真正实现运行，很难真正理解算法的精髓。这本书的好处就是边学边用，非常适合于急需迈进机器学习领域的人员学习。实际上，即使对于那些对机器学习有所了解的人来说，通过代码实现也能进一步加深对机器学习算法的理解。 《机器学习实战》的代码采用Python语言编写。Python代码简单优雅、易于上手，科学计算软件包众多，已经成为不少大学和研究机构进行计算机教学和科学计算的语言。相信Python编写的机器学习代码也能让读者尽快领略到这门学科的精妙之处。','人民邮电出版社','2013-06-01 00:00:00','16开',NULL,'[美]哈林顿',NULL,'9787115317957','47.60',NULL,'','69.00',NULL,100,100,'6.90','http://img3m7.ddimg.cn/43/25/23254747-1_b_3.jpg',200,'2018-11-01 14:58:52','平装-胶订',1),
(18,2,1,'Effective Java中文版(第2版)','Effective Java中文版(第2版)','相关阅读 Effective Python：编写高质量Python代码的59个有效方法 Effective Ruby：改善Ruby程序的48条建议 我很希望10年前就拥有这本书。可能有人认为我不需要任何Java方面的书籍，但是我需要这本书。 Java之父James Gosling 编码平添乐趣，程序更加完美，高效成为习惯，工作如此轻松。 你是否正在寻找一本能够更加深入地了解Java编程语言的书，以便编写出更清晰、更正确、更健壮且更易于重用的代码。不用找了！本书为我们带来了共78条程序员必备的经验法则，针对你每天都会遇到的编程问题提出了*有效、*实用的解决方案。 这本经典Jolt获奖作品实属众望所归。作者对新版进行了彻底的更新。涵盖了自第l版之后所引入的Java E5和Java SE 6的特性，同时开发了新的设计模式和语言习惯用法，介绍了如何充分利用从泛型到枚举、从注解到自','机械工业出版社','2010-09-01 00:00:00','16开',NULL,'(美)布洛克|译者:杨春花//俞黎敏',NULL,'9787111255833','48.00',NULL,'','52.00',NULL,100,100,'9.24','http://img3m1.ddimg.cn/48/15/20459091-1_b_0.jpg',200,'2018-11-01 14:58:53','平装',1),
(19,2,1,'Spring实战（第4版）','Spring实战（第4版）Spring经典图书 针对spring4进行更新 Java web开发从入门到精通 了解Java Spring技术内幕 进行spring源码深度解析 实践Java编程思想','全球有超过100 000的开发者使用本书来学习Spring中文版累计销售超10万册，畅销经典Spring 技术图书，针对Spring 4 全新升级作者Craig Walls，SpringSource的软件开发人员，也是一位畅销书作者。第3版译者继续翻译新版，品质保障！','人民邮电出版社','2016-04-01 00:00:00','16开',NULL,'[美] Craig Walls 沃尔斯',NULL,'9787115417305','79.20',NULL,'','89.00',NULL,100,800,'8.90','http://img3m8.ddimg.cn/49/3/23931418-1_b_26.jpg',200,'2018-11-01 14:58:53','平装-胶订',1),
(20,2,1,'Python 3网络爬虫开发实战','Python 3网络爬虫开发实战【图灵原创】博客文章访问量过百万的博主倾力打造，教你学会如何用Python 3开发爬虫','案例丰富，注重实战 博客文章过百万的静觅大神力作 全面介绍了数据采集、数据存储、动态网站爬取、App爬取、验证码破解、模拟登录、代理使用、爬虫框架、分布式爬取等知识 涉及的库或工具：urllib、requests、Beautiful Soup、XPath、pyquery、redis-py、PyMongo、PyMySQL、Selenium、Splash、Charles、mitmproxy、mitmdump、Appium、pyspider、Scrapy、Scrapy-Redis、Scrapy-Splash、Docker、Bloom Filter、Gerapy等','人民邮电出版社','2018-04-01 00:00:00','16开',NULL,'崔庆才',NULL,'9787115480347','68.40',NULL,'','99.00',NULL,100,100,'6.91','http://img3m2.ddimg.cn/48/25/25249602-1_b_3.jpg',200,'2018-11-01 14:58:54','平装-胶订',1),
(21,2,1,'Java并发编程的艺术','Java并发编程的艺术','','机械工业出版社','2015-07-01 00:00:00','16开',NULL,'方腾飞，魏鹏，程晓明 著',NULL,'9787111508243','56.10',NULL,'','59.00',NULL,600,104,'9.51','http://img3m1.ddimg.cn/25/7/23745571-1_b_1.jpg',200,'2018-11-01 14:58:54','平装-胶订',1),
(22,2,1,'利用Python进行数据分析','利用Python进行数据分析大量实践案例教会你如何利用Python库高效解决各式各样的数据分析问题','','机械工业出版社','2014-01-01 00:00:00','16开',NULL,'（美）麦金尼 著，唐学韬 等译',NULL,'9787111436737','82.20',NULL,'','89.00',NULL,100,101,'9.24','http://img3m9.ddimg.cn/30/36/23368089-1_b_2.jpg',200,'2018-11-01 14:58:54','平装-胶订',1),
(23,2,1,'数据结构与算法分析：Java语言描述（原书第3版）','数据结构与算法分析：Java语言描述（原书第3版）国际著名计算机教育专家Weiss数据结构与算法Java描述经典教材新版，把算法分析与高效率的Java程序的开发有机地结合起来，深入分析每种算法。','','机械工业出版社','2016-03-07 00:00:00','16开',NULL,'[美]马克・艾伦・维斯',NULL,'9787111528395','63.70',NULL,'','69.00',NULL,100,100,'9.24','http://img3m1.ddimg.cn/44/17/23918741-1_b_2.jpg',200,'2018-11-01 14:58:55','平装-胶订',1),
(24,2,1,'JavaScript权威指南（第6版）（淘宝前端团队倾情翻译！经典权威的JavaScript犀牛书！第6版特别涵盖了H','JavaScript权威指南（第6版）（淘宝前端团队倾情翻译！经典权威的JavaScript犀牛书！第6版特别涵盖了H经典的JavaScript犀牛书！第6版特别涵盖了HTML5和ECMAScript5！','经典权威的JavaScript工具书 本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。 第6版涵盖HTML5和ECMAScript5 相关阅读 编写高质量代码：改善C程序代码的125个建议 JavaScript编程精解（原书第2版） Effective Python：编写高质量Python代码的59个有效方法 Effective Ruby：改善Ruby程序的48条建议','机械工业出版社','2012-04-01 00:00:00','16开',NULL,'(美)弗兰纳根',NULL,'9787111376613','128.30',NULL,'','139.00',NULL,100,101,'9.24','http://img3m0.ddimg.cn/13/17/22722790-1_b_6.jpg',200,'2018-11-01 14:58:56','平装-胶订',1),
(25,2,1,'剑指Offer：名企面试官精讲典型编程题（第2版）','剑指Offer：名企面试官精讲典型编程题（第2版）继英文版登陆全球市场后又迎来重大升级 加大题量+更新题目+优化解法+融合中外 第二版重磅升级','以面试官视角拆解考题 结合作者在多家名企的经验，从面试官视角剖析考题构思、现场心理、题解优劣与面试心得。 80余道精选编程面试题 从谷歌、微软等知名IT企业的海量面试题中精心筛选出80余道精华题目，提供多角度解题辅导。由于本书流传甚广，这些题已被大量企业真实采用，参考价值颇高。 高标准的系统解题方法 系统总结如何在面试时写出高质量代码，如何优化代码效率，以及分析、解决难题的常用思路和方法。 真实现场体验与生涯感悟 Autodesk 微软中国 思科 美国微软总部，作者一路跳槽一路 面 ，既亲历备考和被考，更做过数次考官，又常年从事一线编程工作，大量面试与实践经验，是本书品质后盾。','电子工业出版社','2017-03-01 00:00:00','16开',NULL,'何海涛 著',NULL,'9787121310928','56.30',NULL,'','65.00',NULL,100,100,'8.67','http://img3m4.ddimg.cn/0/28/24242724-1_b_6.jpg',200,'2018-11-01 14:58:56','平装-胶订',1),
(26,2,1,'码出高效：Java开发手册','码出高效：Java开发手册','重磅新作，阿里人再现精品力作！ 在《阿里巴巴Java开发手册》之后，孤尽、鸣莎不负众望地再次给大家带来了一本能刷新日常、提升意识的Java编程专业书籍，真正来自阿里集团的智慧与经验，是用血淋淋的故障换来的。为了出版本书，作者全年无休，夜以继日。在*后冲刺阶段，作者闭关数月，满背胶布，脑力激荡，字字斟酌，每幅画亲笔绘制，体现出来的毅力和意志，不得不让人钦佩！ 夯实基础，让每一位程序员都有一个正确规范的起跑！ 正如孤尽所言， 对程序员来说，关键是骨子里要意识到：规范也是生产力，让个性化尽量表现在代码可维护性和算法效率的提升上。 本书讲解由浅入深，囊括了一名开发工程师应具备的全部基本素质，如果每一位程序员在职业生涯的开始读懂这本书并切实地将其中理念与规范应用到实际编程工作当中，便让团队如同本','电子工业出版社','2018-09-01 00:00:00','16开',NULL,'杨冠宝',NULL,'9787121349096','95.00',NULL,'','99.00',NULL,100,100,'9.60','http://img3m8.ddimg.cn/76/35/25346848-1_b_6.jpg',200,'2018-11-01 14:58:56','平装-胶订',1),
(27,2,1,'JavaScript高级程序设计(第3版)(JavaScript技术名著，html+css+javascript教程精','JavaScript高级程序设计(第3版)(JavaScript技术名著，html+css+javascript教程精【图灵程序设计丛书】前端开发经典图书 JavaScript技术名著 web前端开发国内js一书 掌握JavaScript编程艺术','1995年，Brendan Eich创造了JavaScript。 2005年，席卷全球的 Ajax热 激发了全世界Web开发人员学习JavaScript的热情。与此同时，本书第1版诞生。这一版的中文版狂销4万册，被誉为 *深度的JavaScript经典 ，奠定了其不可替代的权威地位。 2005年到2009年，前端开发社区在实践中充分检验了这门语言的各种实现和扩展，JavaScript从被戏谑的 玩具语言 一跃成为软件业举足轻重的通用编程语言。2009年1月本书第2版应运而生，凝聚作者和社区专家多年宝贵经验的这一技术名著再次得到读者认可和褒扬，中文版销量达到2万册。 2009年到2011年，ECMAScript5和HTML5在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也为这门语言增添了很多适应未来发展的新特性。2012年初本书第3版面世，中文版也紧随其后。第3版除增加5章全新内容外，其他章节也有较大幅度的增补和修','人民邮电出版社','2012-03-01 00:00:00','16开',NULL,'[美]Nicholas C. Zakas 著',NULL,'9787115275790','68.30',NULL,'','99.00',NULL,100,100,'6.90','http://img3m3.ddimg.cn/2/21/22628333-1_b_2.jpg',200,'2018-11-01 14:58:58','平装-胶订',1),
(28,2,1,'教孩子学编程 Python语言版','教孩子学编程 Python语言版少儿编程入门书 高中新课标必修编程入门书 中小学编程自学教程 基于Python3编写的程序设计入门书 学习计算机思维方式 构建编程思维 寓教于乐全彩印刷','本书属于No Starch的经典系列之一，英文版在美国受到读者欢迎。本书全彩印刷，寓教于乐，易于学习；读者可以轻松与快递地掌握解决问题方法和程序设计思维的。 编程从孩子抓起 得到越来越多的人的认同和重视。本书是父母教孩子学习Python程序设计的亲子读物。','人民邮电出版社','2016-03-01 00:00:00','16开',NULL,'[美] Bryson Payne',NULL,'9787115416346','53.10',NULL,'','59.00',NULL,100,100,'9.00','http://img3m3.ddimg.cn/98/31/23928893-1_b_11.jpg',200,'2018-11-01 14:58:59','平装-胶订',1),
(29,2,1,'精通Python爬虫框架Scrapy','精通Python爬虫框架Scrapypython3 scrapy教程 全面剖析网络爬虫技术的实现原理 通过爬取示例演示Scrapy的应用 涵盖从桌面端爬取到移动端爬取 实时爬取在内的所有内容','Scrapy是一个开源的Python爬虫框架，可以用来轻松提取从页面数据。Scrapy带有丰富的特性，可通过简单的编码或配置来访问，从而可以节省开发人员数周的开发时间，并高效地提取所需数据。Scrapy有一个高度活跃且迅速增长的社区，而且已经成为黑客、创业者和Web爬取专家的首 选框架。 本书讲解了Scrapy的基础知识，讨论了如何从任意源提取数据，如何清理数据，以及如何使用Python和第三方API进行处理，以满足自身需求。本书还讲解了如何将爬取的数据高效地馈入数据库、搜索引擎和流数据处理系统（比如Apache Spark）。在学习完本书后，你将对数据爬取胸有成竹，并将数据应用在自己的应用程序中。 本书内容： 使用HTML和Xpath提取所需的数据； 使用Python编写Scrapy爬虫，并在网络上进行爬取操作； 将数据推送到任意数据库、搜搜引擎或分析系统的方法； 配置爬虫，使其','人民邮电出版社','2018-02-01 00:00:00','16开',NULL,'[美]迪米特里奥斯 考奇斯-劳卡斯（Dimitrios Kouzis-Loukas）',NULL,'9787115474209','53.10',NULL,'','59.00',NULL,100,100,'9.00','http://img3m2.ddimg.cn/40/15/25227022-1_b_1.jpg',200,'2018-11-01 14:58:59','平装-胶订',1),
(30,2,1,'Head First Java（中文版）（JAVA经典畅销书 生动有趣 轻松学好JAVA）','Head First Java（中文版）（JAVA经典畅销书 生动有趣 轻松学好JAVA）10年畅销经典，累计印刷30多次，畅销10万余册，计算机图书十大好书之一。','★第14届Jolt大奖的参赛图书。 ★《HeadFirstJava》使纸质图书成为了你所见过的*接近GUI的事物，使学习Java成为一种风尚。 ★Java技术无所不在 如果你是一个软件开发者且没有学习过Java，那么本书是您不二的选择。 Head First系列其他新书','中国电力出版社','2007-02-01 00:00:00','16开',NULL,'（美）塞若（Sierra，K.），（美）贝茨（Bates，B.） 著，O’Reilly Taiwan公司 译，张然 等改编',NULL,'9787508344980','48.30',NULL,'','79.00',NULL,100,100,'6.12','http://img3m9.ddimg.cn/56/36/9265169-1_b_5.jpg',200,'2018-11-01 14:59:00','平装-胶订',1),
(31,4,1,'诗经（上下册精装）（中华经典名著全本全注全译）','诗经（上下册精装）（中华经典名著全本全注全译）中华书局出版。传统经典，伴你一生','1. 中华经典名著全本全注全译 丛书为全本。所收书目是经史子集中的 经典著作，以权威版本为核校底本，约请业内专家进行注释和翻译。注释准确简明，译文明白晓畅。 2. 采用纸面精装。全套书的装帧设计雅正，精致大方。 3. 定价适合，方便广大读者购买收藏。','中华书局','2015-09-01 00:00:00','32开',NULL,'王秀梅 译注',NULL,'9787101111460','37.20',NULL,'','62.00',NULL,100,101,'6.00','http://img3m7.ddimg.cn/15/36/23724177-1_b_1.jpg',200,'2018-11-01 15:03:55','精装',1),
(32,4,1,'诗经（中华国学经典精粹・诗词文论必读本）','诗经（中华国学经典精粹・诗词文论必读本）','中国向有 诗的国度 的美称，而《诗经》便是这诗国之诗的伟大源头。 孔子曾说： 不学诗，无以言。 一部文学作品而能由《诗》入 经 ，并曾长期位居儒家五经之首，成为古国精神文明的重要代表，这种现象在世界文化史上也是极为独特的。 《诗经》曾被译为多国文字，日本、朝鲜、越南、法国、德国、英国、俄国都有译本，流传非常广泛。作为创造民族新文化的基石，我们一定要很好地继承这一光辉灿烂的文化遗产。','北京联合出版公司','2015-07-01 00:00:00','32开',NULL,'李青,译',NULL,'9787550225909','9.00',NULL,'','12.00',NULL,100,100,'7.50','http://img3m7.ddimg.cn/15/36/23724177-1_b_1.jpg',200,'2018-11-01 15:03:56','平装-胶订',0),
(33,4,1,'论语（中华国学经典精粹・儒家经典必读本）','论语（中华国学经典精粹・儒家经典必读本）','作为中国古代儒家的一部重要经典，《论语》是了解孔子哲学、政治、教育、文化等学 说的很重要的资料。 半部《论语》治天下 ，从古至今，《论语》都是一部不能 忽视的经典。作为中华文化的源典，《论语》的主张思想已浸透到到中国两千多年的政 教体制、社会习俗、心理习惯和行为方式里去。','北京联合出版公司','2015-07-01 00:00:00','32开',NULL,'王超,译',NULL,'9787550243507','9.00',NULL,'','12.00',NULL,100,100,'7.50','http://img3m6.ddimg.cn/4/25/23724166-1_b_1.jpg',200,'2018-11-01 15:03:57','平装-胶订',1),
(34,4,1,'周易(精)--中华经典名著全本全注全译丛书','周易(精)--中华经典名著全本全注全译丛书中华书局“中华经典名著全本全注全译丛书”系列，点击进入专题》','','中华书局','2011-03-01 00:00:00','大32开',NULL,'杨天才，张善文 译注',NULL,'9787101077377','32.70',NULL,'','49.00',NULL,1000,1004,'6.68','http://img3m6.ddimg.cn/78/18/23484066-1_b_0.jpg',200,'2018-11-01 15:03:57','精装',1),
(35,4,1,'论语・大学・中庸（中华经典名著全本全注全译）','论语・大学・中庸（中华经典名著全本全注全译）中华书局“中华经典名著全本全注全译丛书”系列，点击进入专题》','','中华书局','2015-02-01 00:00:00','大32开',NULL,'陈晓芬，徐儒宗 译注',NULL,'9787101107241','17.30',NULL,'','26.00',NULL,102,105,'6.66','http://img3m7.ddimg.cn/38/14/23688857-1_b_2.jpg',198,'2018-11-01 15:03:58','平装-胶订',1),
(36,4,1,'诗经（中华经典藏书・升级版）','诗经（中华经典藏书・升级版）“中华经典藏书（升级版）”系列，点击进入专题》','四书五经 、诸子百家，经典的价值和魅力在流光岁影里永不褪色，先贤圣哲的智慧光芒照耀着我们的现代生活。为在古代经典与现代社会间架起一座沟通的桥梁，中华书局推出 中华经典藏书 丛书。自2006年推出*辑开始，累计销售上千万册，销售码洋突破1.6亿元，成为广大读者阅读学习国学经典名著的主要版本。 为适应时代、市场及广大读者的需求，经过认真调研，中华书局决定推出升级版，从原来的50种调整为60种，其中增补的新书都是堪称经典的名著，其中既有深受读者喜爱的经典名著，也有适合广大师生教学阅读的重要作品。相信书店、读者会更加喜欢升级版的 中华经典藏书 。','中华书局','2016-01-01 00:00:00','32开',NULL,'王秀梅 译注',NULL,'9787101114638','14.70',NULL,'','22.00',NULL,100,100,'6.69','http://img3m7.ddimg.cn/95/34/23912357-1_b_5.jpg',200,'2018-11-01 15:03:58','平装-胶订',1),
(37,4,1,'论语（中华经典藏书・升级版）','论语（中华经典藏书・升级版）“中华经典藏书（升级版）”系列，点击进入专题》','','中华书局','2016-01-01 00:00:00','32开',NULL,'陈晓芬 译注',NULL,'9787101113648','12.00',NULL,'','18.00',NULL,100,100,'6.67','http://img3m9.ddimg.cn/11/5/23880989-1_b_2.jpg',200,'2018-11-01 15:03:59','平装-胶订',1),
(38,4,1,'大学・中庸（中华经典藏书・升级版）','大学・中庸（中华经典藏书・升级版）“中华经典藏书（升级版）”系列，点击进入专题》','《大学》和《中庸》本是《礼记》中的两篇，经宋儒二程和朱熹等人推崇，与《论语》《孟子》合称为 四书 ，虽然篇幅不大却是儒家文化核心经典。 《大学》以人的修养为核心，指出了 自天子以至于庶人，壹是皆以修身为本 提出了从格物致知，诚意正心到修身齐家，治国平天下的完整修养路径，包括了穷究万物事理获得知识，培养道德品性，完善自我人格等方面。 《中庸》同《周易》一样，是儒家的哲学理论渊薮，不过《周易》涵盖面广，《中庸》则集中强调与人的自我认识和社会生活相关的道德哲学，自宋代以后《中庸》成为儒者研读的重点，理学的很多概念命题都出自《中庸》， 中庸 的思维方式成为很多学者的生活信条，对宋代以后中华文明特色的形成具有重要作用。','中华书局','2016-01-01 00:00:00','32开',NULL,'王国轩 译注',NULL,'9787101113501','8.00',NULL,'','12.00',NULL,100,100,'6.67','http://img3m0.ddimg.cn/13/7/23855350-1_b_2.jpg',200,'2018-11-01 15:03:59','平装-胶订',1),
(39,4,1,'诗经译注','诗经译注上海古籍出版','','上海古籍出版社','2012-08-01 00:00:00','16开',NULL,'程俊英 撰',NULL,'9787532564002','28.60',NULL,'','32.00',NULL,100,100,'8.94','http://img3m2.ddimg.cn/25/23/22845562-1_b_4.jpg',200,'2018-11-01 15:04:00','平装-胶订',1),
(40,4,1,'诗经―中华经典藏书','诗经―中华经典藏书(无障碍阅读，经典全译本，国内唯美精装插图本，不可不读的国学精髓)（在忠实原诗的基础上，以准确、优美的图文进行诠释，为读者消除阅读障碍，以便能让读者自由徜徉于经典美好的诗歌之中，获得美的愉悦和享受！）','★《诗经》对后代诗歌发展具有深远的影响，是我国古典文学现实主义传统的源头。 ★精心译注，精美插图，精装珍藏，雅俗共赏，无障碍阅读，经典全译。中华诗歌之源头，华夏文章之根基。 ★绕梁不绝的先人歌咏，袅袅萦绕的古朴颂唱，流淌在血脉中的炎黄之歌！欣赏千古诗行之旋律，体会遥远先民之生活！ ★中国古典诗歌的源头，传统文化的经典读本；翻阅古典文学，就翻阅了人类精神优美而隽永的一面。古典文学，中华文化中的精华。 《中华经典藏书系列》从立项到出版，历时三年，花费大量精力财力，倾力打造。所收书目是传统国学中很经典的著作，以经典版本为核校底本，进行注释和翻译，认真研究，精雕细琢。 【足本定本精心译注】 本书为精装珍藏版，参照国内的原版古籍书，能做足本的绝不删除','吉林美术出版社','2015-10-01 00:00:00','16开',NULL,'（春秋）孔子 编订 ; 黎波 译注',NULL,'9787557502119','28.70',NULL,'','39.80',NULL,100,100,'7.22','http://img3m1.ddimg.cn/94/15/23786131-1_b_4.jpg',200,'2018-11-01 15:04:00','平装-胶订',1),
(41,4,1,'论语译注――中国古典名著译注丛书','论语译注――中国古典名著译注丛书','《中国古典名著译注丛书：论语译注》系名家力作，杨伯峻先生在精研《论语》的基础上，对《论语》二十篇进行了精确细致的注释和翻译。每章分为原文、注释、译文三部分，注释精准，译文流畅明白，不但给专业研究者提供了若干研究线索，更便于普通读者正确理解《论文》，实为雅俗共赏之佳作。','中华书局','2009-10-01 00:00:00','大32开',NULL,'杨伯峻 译注',NULL,'9787101070248','18.80',NULL,'','26.00',NULL,100,100,'7.24','http://img3m9.ddimg.cn/92/10/23371319-1_b_2.jpg',200,'2018-11-01 15:04:00','平装',1),
(42,4,1,'诗经注析（中华国学文库）','诗经注析（中华国学文库）优美深入的赏析，精到博雅的注释，古老的《诗经》回归文学的本质，撷取历代《诗经》注释菁华的总结性著作。中华书局出版。','1.每首诗首列【题解】一项，不仅对诗歌的文学艺术、修辞意境作优美的揭示，更结合《诗经》时代的历史、制度、社会生活作深入的分析，使知人论世，对全诗有准确把握和感性的认识。 2.本书注释站在前贤奠定的基础上，借鉴毛传、郑笺、朱熹《诗集传》、陈奂《诗毛氏传疏》、王先谦《诗三家义集疏》、解放后甲骨金石出土文物等研究成果，择善而从。 3.本书注释着重揭示《诗经》中字词的本字本义、引申义、假借义等关系，使对古代汉语词义的演变有深入认识。 4.诗歌每章之后列 韵读 一栏，揭示诗经的押韵情况，并标注直音，使本书特别方便讽诵。','中华书局','2017-08-01 00:00:00','32开',NULL,'程俊英，蒋见元',NULL,'9787101126914','41.90',NULL,'','58.00',NULL,100,100,'7.23','http://img3m4.ddimg.cn/82/33/25168654-1_b_1.jpg',200,'2018-11-01 15:04:01','精装',1),
(43,4,1,'十三经注疏（清嘉庆刊本）全五册','十三经注疏（清嘉庆刊本）全五册','','中华书局','2009-10-01 00:00:00','大16开',NULL,'（清）阮元 校刻',NULL,'9787101068443','774.20',NULL,'','980.00',NULL,100,100,'7.90','http://img3m1.ddimg.cn/92/19/20747621-1_b_0.jpg',200,'2018-11-01 15:04:01','精装',1),
(44,4,1,'王阳明全集（全五册）','王阳明全集（全五册）曾国藩、梁启超、蒋介石终生精神导师，当年明月一生推荐，千古完人王阳明传世经典！全新足本，简体横排，好评如潮！','- - - - - ◎王阳明是中国历史上罕见的立德、立言、立功三不朽的伟人，也是有明一代*为杰出的政治家、军事家和哲学家。他的一生跌宕起伏，充满了传奇色彩；他的心学思想融合了儒释道三家之精髓，是 酱缸文化 的*后一剂解药。哈佛大学教授杜维明先生预言，21 世纪将是王阳明的世纪。 ◎ 迄今收录*全的王阳明著作全集。 ◎ 简体横排首次出版，更适合现代人阅读。 ◎王阳明一生文治武功俱称于世，对傅承与发展儒学之贡献尤为卓著。其学上承孟子，中继陆象山，而形成为风靡明代中后期并与程朱理学分庭抗礼的阳明心学。其学说，不仅影响及于我国明清两代以至近现代，而且远播日本','线装书局','2012-05-01 00:00:00','大32开',NULL,'(明)王阳明',NULL,'9787512005259','126.80',NULL,'','198.00',NULL,100,100,'6.41','http://img3m9.ddimg.cn/44/1/22631939-1_b_5.jpg',200,'2018-11-01 15:04:01','平装-胶订',1),
(45,4,1,'四书五经译注（套装全九册）','四书五经译注（套装全九册）','','上海古籍出版社','2010-09-01 00:00:00','大32开',NULL,'程俊英 等撰',NULL,'9787532555888','241.30',NULL,'','298.00',NULL,100,100,'8.10','http://img3m4.ddimg.cn/6/24/20899104-1_b_2.jpg',200,'2018-11-01 15:04:02','平装',1),
(46,4,1,'礼记（全2册・中华经典名著全本全注全译）','礼记（全2册・中华经典名著全本全注全译）“三礼”（《周礼》《仪礼》《礼记》）之一；儒家十三经之一。中华书局出版。','1. 中华经典名著全本全注全译 丛书为全本。所收书目是经史子集中极为经典的著作，以精良版本为核校底本，约请业内专家进行注释和翻译。注释准确简明，译文明白晓畅。 2. 采用纸面精装。全套书的装帧设计雅正，精致大方。 3. 定价适合，方便广大读者购买收藏。','中华书局','2017-11-01 00:00:00','32开',NULL,'胡平生，张萌 译注',NULL,'9787101128567','63.60',NULL,'','88.00',NULL,100,100,'7.23','http://img3m0.ddimg.cn/87/30/25199250-1_b_3.jpg',200,'2018-11-01 15:04:03','精装',1),
(47,4,1,'诗经选--余冠英作品集','诗经选--余冠英作品集','虽然关于古典文学的注释本有很多，但是余冠英所做的《诗经选》、《三曹诗选》、《乐府诗选》和《汉魏六朝诗选》至今仍被专家公认为选注本中的**之作。余冠英先生善于在纵向的文学发展的历史长河中评价每位作家、每首诗的地位，并在与同时代作家、作品的横向比较中分析其特色，从而客观地评估其历史价值。在每种选本的 前言 部分，余冠英先生都对所选篇目和作家进行了深入的阐发和评析。这几种选注本集中体现了余冠英先生博洽精深、自成一家的学术追求，其翔实的资料、严谨的观点中折射出令人叹服的学术功力和公允、平易的学风。其中的《诗经选》《乐府诗选》被全国高等学校中文学科教学指导委员会指定为大学生必读书目。 此次出版 余冠英作品集 ，以余冠英先生生前*后的修订本为底本重新排版设计，版面更加疏朗大方。对原书除修订部分注','中华书局','2012-09-01 00:00:00','大32开',NULL,'余冠英',NULL,'9787101087543','14.40',NULL,'','20.00',NULL,100,101,'7.20','http://img3m0.ddimg.cn/83/9/22890170-1_b_1.jpg',200,'2018-11-01 15:04:03','平装',1),
(48,4,1,'四书章句集注――新编诸子集成','四书章句集注――新编诸子集成','','中华书局','2003-06-01 00:00:00','大32开',NULL,'(宋)朱熹撰',NULL,'9787101081695','30.80',NULL,'','39.00',NULL,100,100,'7.90','http://img3m6.ddimg.cn/86/11/22633466-1_b_1.jpg',200,'2018-11-01 15:04:04','平装',1),
(49,4,1,'王阳明传习录（全译全注，明隆庆六年初刻版）','王阳明传习录（全译全注，明隆庆六年初刻版）尘封400余年原貌重现的初始定本！阳明心学正宗读本！纠正现存版本21处文字与体例错误！附录并译注王阳明亲自编定的《朱子晚年定论》。读客熊猫君出品','◆原汁原味的阳明心学读本！ ◆逐字逐句校对尘封400余年的善刻本，纠正现存版本21处文字与体例错误！ ◆被已故哲学家陈荣捷先生称为 完备而可靠 的《传习录》版本。 ◆首次附录并译注王阳明亲自编定的《朱子晚年定论》。 ◆注释中浓缩汇集陈荣捷先生、邓艾民先生等著名哲学家近几十年来的《传习录》研究成果。 ◆全译全注、简体横排，用通俗易懂的方式展现原汁原味的阳明心学。 ◆张居正、曾国藩、梁启超、孙中山、蒋介石、伊藤博文、稻盛和夫等人的力量源泉。 ◆已故国学大师钱穆将《传习录》列为 中国人所人人必读的书 之一。 推荐您购买读客其他畅销书：','江苏文艺出版社','2015-07-01 00:00:00','16开',NULL,'王阳明 著；张靖杰 译，读客图书 出品',NULL,'9787539983240','23.20',NULL,'','36.00',NULL,100,100,'6.45','http://img3m7.ddimg.cn/33/22/23722017-1_b_13.jpg',200,'2018-11-01 15:04:04','平装-胶订',1),
(50,4,1,'说文解字注','说文解字注','','上海古籍出版社','2008-11-01 00:00:00','16开',NULL,'[汉]许慎 撰，[清]段玉裁 注',NULL,'9787532504879','114.20',NULL,'','128.00',NULL,100,103,'8.93','http://img3m3.ddimg.cn/89/1/20303603-1_b_3.jpg',200,'2018-11-01 15:04:04','精装',1),
(51,4,1,'四书五经（精注精译 图文珍藏版）','四书五经（精注精译 图文珍藏版）','','线装书局','2014-08-01 00:00:00','16开',NULL,'',NULL,'9787512014596','82.20',NULL,'','299.00',NULL,100,100,'2.75','http://img3m6.ddimg.cn/60/32/23596116-1_b_5.jpg',200,'2018-11-01 15:04:05','平装-胶订',1),
(52,4,1,'论语译注(精)--国民阅读经典','论语译注(精)--国民阅读经典','','中华书局','2012-05-01 00:00:00','大32开',NULL,'杨伯峻 译',NULL,'9787101085594','20.90',NULL,'','29.00',NULL,100,101,'7.21','http://img3m2.ddimg.cn/51/16/22780842-1_b_0.jpg',200,'2018-11-01 15:04:05','精装',1),
(53,4,1,'古诗源（中华国学文库）','古诗源（中华国学文库）古诗是唐诗的源头活水，《古诗源》是解锁唐诗之所以鼎盛的快捷键，《唐诗别裁集》的姊妹篇。中华书局出版。','1.《古诗源》是唐以前诗歌的精华荟萃，体量适中，是近代以来非常流行的古诗选本。 2.编选者沈德潜是清代格调诗派的领袖，寿高九十七，所选古诗之后大多有扼要点评，片言只语，便将精髓点出，对提高诗歌的鉴赏力，裨益甚大。 3.编者选诗崇尚雅正，尤其注重作品的风骨，提倡自然，反对雕琢。 4.唐诗之所以极盛，是因为在唐以前有着丰沛的源头活水，《古诗源》即着眼于探寻唐诗的发源，使对唐诗乃至全部古典诗歌，有一个顺流而下的全局把握。','中华书局','2017-08-01 00:00:00','32开',NULL,'【清】沈德潜 选、闻旭初 标点',NULL,'9787101126532','22.10',NULL,'','28.00',NULL,100,103,'7.90','http://img3m7.ddimg.cn/85/36/25168657-1_b_3.jpg',200,'2018-11-01 15:04:06','精装',1),
(54,4,1,'孟子（中华经典藏书・升级版）','孟子（中华经典藏书・升级版）“中华经典藏书（升级版）”系列，点击进入专题》','','中华书局','2016-01-01 00:00:00','32开',NULL,'万丽华，蓝旭 译注',NULL,'9787101113655','15.30',NULL,'','23.00',NULL,100,100,'6.66','http://img3m7.ddimg.cn/20/14/23855357-1_b_2.jpg',200,'2018-11-01 15:04:06','平装-胶订',1),
(55,4,1,'十三经译注（全十五册）','十三经译注（全十五册）上海古籍出版社积十年之功，国内权威专家联袂注释和今译','中国传统文化中， 十三经 地位之尊崇，影响之深广，是其他任何典籍所无法比拟的。但 十三经 大多文辞深奥，为帮助读者读通和理解原著，上海古籍出版社邀请程俊英、黄寿祺等名家分别对各经进行注释、讲解和今译，历经十数年精心打造，汇为这套《十三经译注》，自上市以来，屡获嘉评。现推出**版《十三经译注》优惠套装，回馈广大读者的厚爱。 十三经的历史：十三经是由汉朝的五经逐渐发展而来的，*终形成于南宋。 汉朝：五经。汉朝时，以《易》、《诗》、《书》、《礼》、《春秋》为 五经 ，立于学官。唐朝：九经。唐朝时，《春秋》分为 三传 ，即《左传》、《公羊传》、《谷梁传》；《礼经》分为 三礼 ，即《周礼》、《仪礼》、《礼记》。这六部书再加上《易》、《书》、《诗》，并称为 九经 ，也立于学官，用于开科取士。 晚唐：十二经。唐','上海古籍出版社','2009-07-01 00:00:00','32开',NULL,'程俊英、黄寿祺 等译注',NULL,'9787532538171','420.30',NULL,'','519.00',NULL,100,100,'8.10','http://img3m3.ddimg.cn/95/0/20598233-1_b_2.jpg',200,'2018-11-01 15:04:06','盒装',1),
(56,4,1,'宋本礼记（套装全四册）','宋本礼记（套装全四册）国学基本典籍丛刊','','国家图书馆出版社','2017-10-31 00:00:00','大32开',NULL,'（汉）郑玄 注，（唐）陆德明 释文',NULL,'9787501361588','63.20',NULL,'','80.00',NULL,100,100,'7.90','http://img3m4.ddimg.cn/21/6/25182354-1_b_1.jpg',200,'2018-11-01 15:04:09','平装-锁线胶订',1),
(57,4,1,'三字经・百家姓・千字文・弟子规诵读本--“中华诵・经典诵读行动”读本系列','三字经・百家姓・千字文・弟子规诵读本--“中华诵・经典诵读行动”读本系列','','中华书局','2013-04-01 00:00:00','16开',NULL,'中华诵经典诵读行动读本编委会 编',NULL,'9787101090031','13.30',NULL,'','20.00',NULL,100,100,'6.65','http://img3m8.ddimg.cn/3/16/23256588-1_b_1.jpg',200,'2018-11-01 15:04:09','平装',1),
(58,4,1,'四书五经（大儒注本）（简体横排点校本，精装全四册）','四书五经（大儒注本）（简体横排点校本，精装全四册）权威整理，函套精装。全套图书内含：（宋）朱熹注《四书集注》《周易本义》《诗集传》《书集传》；（元）陈�蛔�《礼记集说》；（晋）杜预集解《春秋左传集解》','《四书五经（大儒注本1）〈四书集注〉〈周易本义〉》，【宋】朱熹 注，王华宝、王玉德 整理； 《四书五经（大儒注本2）〈诗集传〉、〈书集传〉》，【宋】朱熹 注，王华宝、钱宗武、钱忠弼 整理； 《四书五经（大儒注本3）〈礼记集说〉》，【元】陈�� 注，万久富 整理； 《四书五经（大儒注本4）〈春秋左传集解〉》，【春秋】左丘明 撰，【晋】杜预集解，李梦生 整理。','凤凰出版社','2015-06-01 00:00:00','32开',NULL,'【宋】朱熹、【元】陈�� 等注，王华宝、钱宗武、钱忠弼、王玉德、万久富、李梦生等 整理',NULL,'9787550621688','328.80',NULL,'','380.00',NULL,100,100,'8.66','http://img3m9.ddimg.cn/49/16/23752129-1_b_0.jpg',200,'2018-11-01 15:04:10','平装-胶订',1),
(59,4,1,'四书章句集注（精装・新编诸子集成）','四书章句集注（精装・新编诸子集成）','','中华书局','2016-04-01 00:00:00','大32开',NULL,'（宋）朱熹 撰',NULL,'9787101116779','37.60',NULL,'','52.00',NULL,100,100,'7.24','http://img3m6.ddimg.cn/36/16/24023376-1_b_2.jpg',200,'2018-11-01 15:04:10','平装',1),
(60,4,1,'诗品译注','诗品译注','','中华书局','1998-02-01 00:00:00','大32开',NULL,'(梁)钟嵘 著，周振甫 译注',NULL,'9787101015898','9.40',NULL,'','12.00',NULL,100,100,'7.84','http://img3m9.ddimg.cn/71/23/20967479-1_b_2.jpg',200,'2018-11-01 15:04:10','平装',1),
(61,7,1,'三体：全三册 刘慈欣代表作，亚洲首部“雨果奖”获奖作品！','三体：全三册 刘慈欣代表作，亚洲首部“雨果奖”获奖作品！','相关推荐：三体中的物理学 《三体》的幻想源于经典物理中的三体问题，即三个体积质量相当的天体，在远离其它星系以致其它星系的引力影响可忽略不计的情况下，三个天体在互相引力的作用下互相围绕运行，其运行轨迹将产生不可预测的混沌。很多年来，数学家们一直希望能建立三体乃至多体问题的数学模型，可遗憾的是，得到的结果仅仅是三体问题在非限制条件下的不可解。刘慈欣正是基于这样的科学事实，用大胆的想象和严谨的推断，在三体星系的行星中构建了一个外星文明形态，并描绘了该文明在如同不可捉摸的命运一般的 恒纪元 与 乱纪元 [ 注 1] 的轮替中，数百次的毁灭和重生。三体的故事有着广袤的时间与空间纬度，其以明暗两条线索发展，一条描述了科学家叶文洁在目睹了文革的疯狂与愚昧之后，痛苦的思索着后工业时代对人本','重庆出版社','2010-11-01 00:00:00','32开',NULL,'刘慈欣',NULL,'23579654','85.80',NULL,'','93.00',NULL,100,101,'9.23','http://img3m9.ddimg.cn/71/23/20967479-1_b_2.jpg',200,'2018-11-01 16:18:39','平装-胶订',1),
(62,7,1,'活着（2017年新版）','活着（2017年新版）余华是我国当代著名作家，也是享誉世界的小说家，曾荣获众多国内外奖项。《活着》是其代表作，在全球广泛传播，销量逾千万册，获得了普遍好评，已成为中国乃至世界当代文学的经典。','余华是我国当代著名作家，也是蜚声国际的小说家，他的作品享誉世界，曾获众多国内外奖项。其中长篇小说《活着》用独特的表述方式，揭示了在困境中求生的理念，展现了生命的顽强与乐观。该小说现已有近50个版本在全球近40个国家和地区出版，并有数种少数民族文字版，以及盲文版在我国出版。自2008年在作家出版社出版以来，数次再版，加印100多次，迄今发行量逾700万册。','作家出版社','2012-08-01 00:00:00','16开',NULL,'余华',NULL,'9787506365437','26.00',NULL,'','28.00',NULL,100,101,'9.29','http://img3m0.ddimg.cn/7/27/25137790-1_b_2.jpg',200,'2018-11-01 16:18:39','平装-胶订',1),
(63,7,1,'月亮和六便士（全新导读无删节详注版！ 半年创当当110000名读者五星好评奇迹）看“一本好书”，在当当享阅读之趣','月亮和六便士（全新导读无删节详注版！ 半年创当当110000名读者五星好评奇迹）看“一本好书”，在当当享阅读之趣口碑爆棚的现象级畅销书！毛姆研究专家苏福忠译作，当当书香节一天狂销10000+！历史销量名列同名书榜首！村上春树连读两遍，张爱玲感动推荐。知乎网友惊叹“可惜我不是在十几岁读的这本书” 。','一本写给每个人的梦想之书，无关国界，无关年龄。 漫漫人生路，多少人只是怯懦地望一眼月亮，却继续紧握兜里叮当作响的六便士。 其实，追逐理想并非是为自己赢得一场噩运， 在满地都是六便士的街上，他抬头看到了月亮 查尔斯 一个绝望的梦想守护者、一个潦倒落魄的艺术天才， 他的故事发生在世界每个角落，在每个人的身上上演 读时你会羞愧，会心疼，会敬佩，会斗志满满。 他能唤醒麻木，令你重燃理想世界的灯火， 他告诉每个人，你怎样，你的世界便怎样。 纵使你眼中的 珍宝 ，是我手中的 尘埃 ，who care？ ◎ 史上 zui会讲故事的小说家 毛姆经典代表作，一字未删的足本，同名书籍豆瓣评分9.2。 ◎ 村上春树、余华、张爱玲、王安忆、白岩松、杨澜、高晓松、范冰冰、蔡崇达、咪蒙都爱读的佳作。 ◎ 自问世以','时代文艺出版社','2017-09-01 00:00:00','32开',NULL,'〔英〕毛姆 著 苏福忠 译',NULL,'9787538754858','18.60',NULL,'','27.00',NULL,100,100,'6.89','http://img3m8.ddimg.cn/27/20/25126128-1_b_2.jpg',200,'2018-11-01 16:18:40','平装-胶订',1),
(64,7,1,'平凡的世界：全三册（八年级下册自主阅读推荐）','平凡的世界：全三册（八年级下册自主阅读推荐）新晋男神朱一龙推荐阅读。茅盾文学奖皇冠上的明珠，激励亿万读者的不朽经典。深受老师和学生喜爱的新课标必读书','茅盾文学奖皇冠上的明珠 激励亿万读者的不朽经典 深受老师和学生喜爱的新课标必读书 路遥获得了这个世界里数以亿计的普通人的尊敬和崇拜，他沟通了这个世界的人们和地球人类的情感。 陈忠实 他是一个优秀的作家，他是一个出色的政治家，他是一个气势磅礴的人。但他是夸父，倒在干渴的路上。他的文学就像火一样燃出炙人的灿烂的光焰。 贾平凹 对我影响*的人是路遥。是路遥的作品改变了我，让我意识到不放弃总有机会，否则我现在还在蹬三轮车呢。 马 云 作家路遥用毕生心血写就的《平凡的世界》，展示了一幅宏大的普通人在时代大变革中所走过的既平凡又壮美的人生画卷。人生的奋斗，理想的追求，在不同的时代都是相似的。','北京十月文艺出版社','2017-06-01 00:00:00','32开',NULL,'路遥 著，新经典 出品',NULL,'9787530216781','101.80',NULL,'','108.00',NULL,100,180,'9.43','http://img3m2.ddimg.cn/41/25/25090502-1_b_5.jpg',200,'2018-11-01 16:18:41','平装-胶订',1),
(65,7,1,'译文经典精装系列・月亮和六便士(看“一本好书”，在当当享阅读之趣)','译文经典精装系列・月亮和六便士(看“一本好书”，在当当享阅读之趣)又译作月亮与六便士，毛姆代表作翻译大家傅惟慈先生译作','《月亮和六便士》是毛姆的三大长篇力作之一，完成于1919年。毛姆，一个出生于法国的英国人，他是以戏剧成名的小说家，也是一个拥有博士学位的骑士，他在20世纪初，风靡了整个世纪和世界。他的这部小说问世后，以情节入胜、文字深刻在文坛轰动一时，人们争相传看。在这部小说里，毛姆用**人称的叙述手法，借 我 之口，叙述了整个故事，有人认为这篇小说的原型是法国印象派画家高更，这更增加了它的传奇色彩，受到了全世界读者的关注。 书中讲述了主人公原是位证券经纪人，人届中年后突然响应内心的呼唤，合弃一切到南太平洋的塔希提岛与土著人一起生活，获得灵感，创作出许多艺术杰作。毛姆在小说中深入探讨了生活和艺术两者的矛盾和相互作用。','上海译文出版社','2015-03-01 00:00:00','32开',NULL,'（英）毛姆 著，傅惟慈 译',NULL,'9787532749003','28.00',NULL,'','36.00',NULL,100,100,'7.78','http://img3m5.ddimg.cn/16/28/23684875-1_b_17.jpg',200,'2018-11-01 16:18:41','精装',1),
(66,7,1,'云边有个小卖部','云边有个小卖部纪念版和正常版交替发货期间，请以实际收货为准。写给陪伴我们的人，写给每个人心中的山和海。如果你有时间打开，那请给我一个机会，陪伴你度过安静的阅读时光。随书附赠云边镇四季明信片和张嘉佳作词单曲彩蛋。','1. 张嘉佳全新作品。畅销千万现象级作品《从你的全世界路过》后，暌违五年， 写给离开我们的人，写给陪伴我们的人，写给每个人心中的山和海。 2. 精美手绘插画。陪你度过云边镇的日与夜。 3. 惊喜彩蛋。张嘉佳作词单曲《刘十三》，带你来到书中现场。 4. 希望和悲伤，都是一缕光。总有一天，我们会再相遇。','湖南文艺出版社','2018-07-01 00:00:00','32开',NULL,'张嘉佳 著,博集天卷 出品',NULL,'9787540487645','33.00',NULL,'','42.00',NULL,100,100,'7.86','http://img3m9.ddimg.cn/77/23/25295369-1_b_9.jpg',200,'2018-11-01 16:18:42','平装-胶订',1),
(67,7,1,'金庸作品集(朗声旧版)（全集共36册）（预售商品，不确定到货时间，介意者慎拍）','金庸作品集(朗声旧版)（全集共36册）（预售商品，不确定到货时间，介意者慎拍）预售套装商品到货时间或有延迟，介意的书友慎拍，当当小编力保渠道*早到货。金庸作品集原版本，流通久，销量大，也是金迷熟悉的版本，封面设计采用姜云行、王司马二人传统的插画作为素材，特色精印，古今合璧。','1、 文字内容与新修版推出前国内流传之三联、旧广州版内容完全一样，为金庸作品集原版本。此版本流通久，销量大，也是金迷熟悉的版本。 2、 封面设计采用姜云行、王司马二人传统的金庸作品集内文插画作为素材，特色精印，融合古典与现代，兼具经典与时尚。 3、 在文字校对上，以明河社版为底本，参校报纸连载版、修订连载版、远景、远流、三联等诸多版本，修正以往版本中的讹误、脱漏。精益求精、力求完美。 4、金庸作品集(朗声旧版) 收录了12套作品共36册，另附录了金庸先生的几部短篇及历史人物评传： 《鸳鸯刀》《白马啸西风》 《越女剑》《卅三剑客图》 《袁崇焕评传》。','广州出版社','2011-11-01 00:00:00','32开',NULL,'金庸 著',NULL,'9787546221977','650.00',NULL,'','968.00',NULL,100,100,'6.72','http://img3m9.ddimg.cn/80/17/23278049-1_b_7.jpg',200,'2018-11-01 16:18:42','平装-胶订',1),
(68,7,1,'月亮与六便士（新版！未删节插图珍藏版，荣获波比小说奖诗人译本，夺得2017豆瓣阅读图书桂冠！）大星文化出品','月亮与六便士（新版！未删节插图珍藏版，荣获波比小说奖诗人译本，夺得2017豆瓣阅读图书桂冠！）大星文化出品2017豆瓣阅读桂冠图书！首创靠口碑一年狂卖100万册畅销纪录！译者获波比小说大奖！当当239028名读者全5星好评奇迹！认准诗人徐淳刚译本，拒绝山寨书、跟风劣质书！限时特惠，今日必抢！','◆ 2017豆瓣阅读Top100，作家榜版徐淳刚译《月亮与六便士》荣获第1名，刘慈欣《三体》第2名，余华《活着》第3名。 ◆ 《月亮与六便士》：毛姆经典代表作，村上春树读了两遍，强烈推荐！讲透梦想与现实的现象级畅销书！ ◆ 出版90多年来，本书以62种文字风靡美国、英国、德国、意大利、法国、加拿大等110个国家，总销量突破6000万册！ ◆ 2017全新未删减中译本，由水沫诗歌奖、波比文化小说奖得主徐淳刚，译自英国Vintage Books出版社1999定版，特有7000字精彩导读，为您解析毛姆传奇人生。此版本靠口碑一年狂卖100万册！开创当当24万名读者全5星好评推荐奇迹！ 一本好书 赵立新演绎推荐。 ◆ 流畅、好读、精准的诗意译文，美轮美奂的全彩插图，完美呈现出毛姆刻薄犀利却又情意绵绵的文学特色，读者好评如潮！ ◆ 人世漫长得转','浙江文艺出版社','2017-01-10 00:00:00','32开',NULL,'毛姆 著，徐淳刚 译，大星文化 出品，作家榜经典文库，高更 绘',NULL,'9787533936020','31.80',NULL,'','39.80',NULL,100,100,'7.99','http://img3m1.ddimg.cn/66/15/24175371-1_b_70.jpg',200,'2018-11-01 16:18:43','平装-胶订',1),
(69,7,1,'人间失格（日本小说家太宰治的自传体小说）','人间失格（日本小说家太宰治的自传体小说）超燃！“丧文化”流行，《人间失格》成了现象级畅销书，创当当3天销售50000+册的奇迹！收录作者绝笔之作《Good bye》。一个“丧失为人资格”少年的心灵独白，一个对村上春树影响至深的绝望凄美故事。','★ 太宰治灵魂深处无助的生命绝唱，同时也是村上春树绝望凄美的灵感源泉。 ★ 完整收录未完成遗作《Goodbye》， 无赖派 文学大师太宰治代表作集结。 ★ 即使时移世易，深深的绝望依旧源自内心的迷茫，而这种迷茫和彷徨几乎贯穿了太宰治以及我们每个人的青春。因此，《人间失格》是一部残酷而永恒的青春文学。 ★ 世界文学名著系列，名家翻译，全译本，唯美设计，印刷精美。 更多精彩链接特惠套装：人间失格 罗生门 简 奥斯汀爱情小说（全3册：《傲慢与偏见》 《理智与情感》 《爱玛》） 乔治.奥威尔经典套装（一九八四 动物农场） 泰戈尔诺贝尔文学奖经典套装：全3册全彩珍藏版 汪曾祺典藏文集（全四册：人间知味 人间世相 大淖记事 鸡鸭名家） 《努力，是为了可以选','作家出版社','2015-08-01 00:00:00','32开',NULL,'（日）太宰治 著，杨伟 译',NULL,'9787506380263','17.30',NULL,'','25.00',NULL,100,100,'6.92','http://img3m5.ddimg.cn/56/4/23761145-1_b_2.jpg',200,'2018-11-01 16:18:44','平装-胶订',1),
(70,7,1,'东野圭吾：白夜行（2017版，易烊千玺、韩雪推荐，东野圭吾无冕之王）','东野圭吾：白夜行（2017版，易烊千玺、韩雪推荐，东野圭吾无冕之王）万千东野迷心中的无冕之王，周刊文春推理榜年度榜首作品，我一直走在白夜里，从来就没有太阳，所以不怕失去','1999年，东野圭吾41岁正值盛年，写作出道已14年，在笔力、技巧、体力和雄心上都炉火纯青，于是洋洋洒洒写出了这部鸿篇巨制《白夜行》。这种规模宏大的长篇作品在职业作家一生的创作中极为罕见，完成后基本都被视为生涯代表作。 《白夜行》一经推出即成为东野圭吾的长篇小说代表作，被万千书迷视为东野圭吾作品中的无冕之王，畅销至今。 《白夜行》中文版销量突破450万册，和《嫌疑人X的献身》《恶意》《解忧杂货店》并称为东野圭吾四大杰作。 《白夜行》草蛇灰线伏脉千里，情节线索纵横交错又丝丝入扣，全书登场人物超过50个，用一桩离奇命案牵出案件相关人19年惊心动魄的故事、悲凉的爱情、吊诡的命运、令人发指的犯罪、白描又生动的社会图景、复杂人性的对决与救赎，读来令人叹为观止。 《白夜行》淋漓尽致地展现了东野圭吾的写','南海出版公司','2017-08-09 00:00:00','32开',NULL,'[日]东野圭吾 著，新经典 出品',NULL,'9787544291163','56.20',NULL,'','59.60',NULL,100,100,'9.43','http://img3m2.ddimg.cn/62/32/25119332-1_b_9.jpg',200,'2018-11-01 16:18:45','平装-胶订',1),
(71,7,1,'东野圭吾：解忧杂货店（王俊凯、迪丽热巴主演，这家店帮你找回内心流失的东西）','东野圭吾：解忧杂货店（王俊凯、迪丽热巴主演，这家店帮你找回内心流失的东西）人与人真诚相对时产生的小小奇迹，不是推理小说，却更扣人心弦，中国影响力图书年度读者推荐大奖，800万中国读者挚爱选择','★《白夜行》后，东野圭吾zui受欢迎作品 ★不是推理小说，却更扣人心弦 ★荣获中央公论文艺奖 ★荣登纪伊国屋、诚品、博客来、金石堂各大排行榜第1名 ★东野圭吾这次选择的，是生活中*平凡的片段：在事业和爱情间艰难抉择的运动员、离家打拼却屡遭挫折的音乐人、想要挣钱报答亲人的女招待 他们真诚又忐忑地写下信件，想要为自己的未来找到新的可能。互不相识的人因一家可以咨询烦恼的杂货店而走到一起，虽未谋面，心与心却真诚相对，这正是东野圭吾想要展现的力量：现代人内心流失的东西，这家杂货店能帮你找回。 ★僻静的街道上有一家店，不仅销售杂货，还提供烦恼咨询。无论你挣扎犹豫，还是绝望痛苦，欢迎来信！ ★《解忧杂货店》充分展现了东野圭吾的创作才华。通过书信这种已渐渐淡出人们生活的交谈方式，人物依次登场','南海出版公司','2014-05-01 00:00:00','32开',NULL,'(日)东野圭吾 著，新经典 出品',NULL,'9787544270878','37.30',NULL,'','39.50',NULL,100,100,'9.45','http://img3m8.ddimg.cn/92/3/23464478-1_b_7.jpg',200,'2018-11-01 16:18:45','精装',1),
(72,7,1,'马尔克斯：百年孤独（50周年纪念版）','马尔克斯：百年孤独（50周年纪念版）50周年纪念版！全新典藏内封，限量赠50周年精美魔幻明信片1套。马尔克斯代表作，全球惟一正式授权中文版，未作任何删节！6年发行量超600万册！','【50周年纪念版！全新典藏内封；限量赠50周年精美魔幻明信片1套】 【全球惟一正式授权中文版，6年发行量超600万册！】 ★缔造文坛传奇与文学奇迹的小说巨著 ★影响世界小说走向的文学巨匠 加西亚 马尔克斯代表作！ ★代表 魔幻现实主义 文学主峰 ★征服全球读者、作家、出版社、版权经纪人、书店、媒体的鸿篇巨制 ★被誉为 《堂吉诃德》之后伟大的西班牙语作品 ★中国读者等待了近半个世纪的殿堂级作品 ★根据马尔克斯指定版本翻译，未做任何增删 ★主要凭借《百年孤独》的巨大影响，加西亚 马尔克斯赢得诺贝尔文学奖，奠定了世界文学大师的地位 ★作品中将现实主义场面和虚构情境巧妙融合，展现出一个光怪陆离的想象世界，映射了一个大陆的风云变幻和百年沧桑 ★《百年孤独》融神话故事、《圣经》典故、民间传说于一体，','南海出版公司','2017-08-01 00:00:00','32开',NULL,'加西亚・马尔克斯 著，新经典 出品',NULL,'9787544291170','51.90',NULL,'','55.00',NULL,100,100,'9.44','http://img3m6.ddimg.cn/83/20/25138856-1_b_2.jpg',200,'2018-11-01 16:18:46','精装',1),
(73,7,1,'摆渡人（如果命运是一条孤独的河流，谁会是你灵魂的摆渡人？）','摆渡人（如果命运是一条孤独的河流，谁会是你灵魂的摆渡人？）畅销欧美33个国家，荣获多项图书大奖。如果命运是一条孤独的河流，谁会是你灵魂的摆渡人？如果我真的存在，也是因为你需要我。白马时光','★《摆渡人》畅销欧美33个国家的心灵治愈小说，令千万读者灵魂震颤的人性救赎之作。一个史诗般动人的温情故事，回归人性，引人深思。 ★《摆渡人》荣获苏格兰图书大奖、布兰福博斯奖、格兰扁图书奖、考文垂灵感图书奖候补提名，入围英国文学社图书大奖，英国《卫报》等多家重量级报刊媒体震撼推荐。 ★如果命运是一条孤独的河流，谁会是你灵魂的摆渡人？ ★如果我真的存在，也是因为你需要我。 作者从少年人的角度洞悉人性的温情，通过男女主人公的所见所感，细腻道出所有人对亲情、友情和爱情终极幸福的向往。巧妙、惊人的情节交错，让这部小说别具一格，值得瞩目。 重磅推荐： 《萤火虫小巷》：《纽约时报》销售排行榜首，感动全球3000000人。人生是一段孤独旅程，但我遇见了你。你不是我，','百花洲文艺出版社','2015-06-01 00:00:00','32开',NULL,'[英]克莱儿・麦克福尔，白马时光 出品',NULL,'9787550013247','25.92',NULL,'','36.00',NULL,100,100,'7.20','http://img3m7.ddimg.cn/86/32/23694647-1_b_8.jpg',200,'2018-11-01 16:18:46','平装-胶订',1),
(74,7,1,'追风筝的人（2018年新版）','追风筝的人（2018年新版）（为你，千千万万遍！快乐大本营高圆圆感动推荐，朗读者张一山深情诵读，窦靖童创作灵感的来源，奥巴马送给女儿的新年礼物。）','这本小说太令人震撼，很长一段时日，让我所读的一切都相形失色。文学与生活中的所有重要主题，都交织在这部惊世之作里：爱、恐惧、愧疚、赎罪 伊莎贝尔 阿连德 ★ 快乐大本营高圆圆感动推荐，朗读者张一山深情诵读，窦靖童创作灵感的来源，奥巴马送给女儿的新年礼物。 ★ 全球现象级畅销书，感动3200万读者的经典之作。','上海人民出版社','2006-05-01 00:00:00','32开',NULL,'[美]卡勒德・胡赛尼（Khaled Hosseini） 著，李继宏 译',NULL,'9787208061644','31.80',NULL,'','36.00',NULL,100,100,'8.84','http://img3m5.ddimg.cn/26/14/25238195-1_b_3.jpg',200,'2018-11-01 16:18:47','平装-胶订',1),
(75,7,1,'你坏（大冰2018作品！预售10分钟8.6万册+，30分钟突破11.8万册，再创当当历史新纪录）','你坏（大冰2018作品！预售10分钟8.6万册+，30分钟突破11.8万册，再创当当历史新纪录）独家漫画寄语版！当当店庆再送好礼（见长图）。如果你和世界不一样，那就不一样吧！百万级畅销书作者大冰2018作品，淬火重生的大女儿。用《你坏》向你说声：你好。随书奉送40余首有钱也买不到的原创民谣。','作家很多，野生作家只有一个。 写书的人很多，大冰只有一个。 这条山东大汉是个独一无二的异类，zui不羁，也ZUI接地气。 他的文字是有根的，有血有肉的。 他的书，都是奇书，只讲故事，不说大道理。 懂的人自会掩卷沉思，含笑流泪。 他写的书和他的人一样，野性十足，笑骂由人，苦口明心。 仿如一瓢酒，可以慰风尘。 或许，若干年后人们才会明白，他嬉笑怒骂的背后，所传递的东西，有多么金贵。 这条山东汉子重信，一诺千金的像个古人 读者让他去南极写书，他酒后应允，酒醒二话不说就去了； 他说要带读者去北极，他做到了，带着一个轮椅上的读者去看北极光，全部费用他掏。 这条山东汉子不羁，从不肯苟同那些乱七八糟的东西 有人搬出高层压他，让他写推荐序，被他一句 去你奶奶的 骂了回去； 有人提着百万现','湖南文艺出版社','2018-06-11 00:00:00','16开',NULL,'大冰 著,博集天卷 出品',NULL,'9787540487669','31.10',NULL,'','39.60',NULL,100,100,'7.86','http://img3m1.ddimg.cn/93/17/25288851-1_b_25.jpg',200,'2018-11-01 16:18:47','平装-胶订',1),
(76,7,1,'外婆的道歉信（马思纯领读书目，人民日报、央视推荐。年度口碑爆棚的温情小说，上市6个月销量突破50万。随书附赠一封神秘道','外婆的道歉信（马思纯领读书目，人民日报、央视推荐。年度口碑爆棚的温情小说，上市6个月销量突破50万。随书附赠一封神秘道外婆说，要大笑要做梦要与众不同。人生是一场伟大的冒险。作者巴克曼位列美国亚马逊文学榜首，当选瑞典年度作家。他让我们爱上这个活泼过头的外婆，重新爱上生活。新书《清单人生》已上市，推荐同时阅读。果麦出品','这本书里有个 活泼过头 的外婆：她带着七岁的外孙女爱莎夜闯动物园看猴子；用屎球打警察；开车时一边抽烟一边吃烤肉，用膝盖控制方向盘；给雪人穿衣服，让邻居误以为有人从阳台上跌下去；敞开睡衣站阳台上，用彩弹枪射击推销员；从宜家偷黄色购物袋；甚至在男护士身上揩油。关于外婆的每件事都让人既好气又好笑。 推荐您购买果麦其他畅销书：','天津人民出版社','2017-05-01 00:00:00','32开',NULL,'[瑞典]弗雷德里克・巴克曼，译者 孟汇一，果麦文化 出品',NULL,'9787201116693','37.00',NULL,'','42.00',NULL,100,102,'8.81','http://img3m1.ddimg.cn/77/0/25072421-1_b_11.jpg',200,'2018-11-01 16:18:47','平装-胶订',1),
(77,7,1,'霍乱时期的爱情（2015版）','霍乱时期的爱情（2015版）（马尔克斯“爱情百科全书”，首次完整翻译！）','★ 原著首印量是《百年孤独》的150倍，中文版已售100万册！ ★ 这部光芒闪耀、令人心碎的作品是人类有史以来*伟大的爱情小说。 《纽约时报》 ★ 《霍乱时期的爱情》是我*好的作品，是我发自内心的创作。 加西亚 马尔克斯 ★ 马尔克斯正式授权，首次完整翻译','南海出版公司','2015-06-01 00:00:00','大32开',NULL,'（哥伦）马尔克斯 著，杨玲 译，新经典 出品',NULL,'9787544277617','46.70',NULL,'','49.50',NULL,100,100,'9.44','http://img3m8.ddimg.cn/61/20/23716798-1_b_1.jpg',200,'2018-11-01 16:18:48','精装',1),
(78,7,1,'那不勒斯的萤火（被誉为欧美文坛近十年来的“灯塔”巨作，跟《追风筝的人》《阿甘正传》一样震撼灵魂、给人力量。）','那不勒斯的萤火（被誉为欧美文坛近十年来的“灯塔”巨作，跟《追风筝的人》《阿甘正传》一样震撼灵魂、给人力量。）（每个人的孤独背后，都印着另一个人的名字。随书附赠精美书签。白马时光）','','百花洲文艺出版社','2018-05-01 00:00:00','32开',NULL,'马西米利亚诺・ 威尔吉利奥，白马时光 出品',NULL,'9787550027510','30.24',NULL,'','42.00',NULL,100,100,'7.20','http://img3m9.ddimg.cn/92/8/25268159-1_b_6.jpg',200,'2018-11-01 16:18:48','平装-胶订',1),
(79,7,1,'小王子（畅销300万册，作者基金会官方认证简体中文版）【果麦经典】','小王子（畅销300万册，作者基金会官方认证简体中文版）【果麦经典】法国“圣埃克苏佩里基金会”官方认证，正版图片库支持，知名翻译家李继宏良心翻译，张静初、张亮优选版本，每个孩子和长大了的孩子都应该有一本《小王子》，万字深度导读带你真正读懂小王子。','由知名翻译家李继宏先生倾心翻译的这本《小王子》，因出色的译文质量和装帧设计，获得法国 圣埃克苏佩里基金会 的支持和推荐，成为官方认可的简体中文译本，并获授权使用全套官方正版插图。众多读者口碑推荐。 曾经翻译了《追风筝的人》《与神对话》《灿烂千阳》等超级畅销经典的李继宏先生，发现很多外国文学不好读并不是原著的 错 ，而是中文译本出了问题。出于一个专业译者的责任心，他决定重新翻译《小王子》《老人与海》《了不起的盖茨比》《动物农场》《瓦尔登湖》等一系列世界文学名著。用当今的语言、规范的文字、严谨的查证，让译文做到极尽精确；通过深入的文本研究，还原原著或干练或纯真的文字风格，让这些优秀文学作品不再被 误读 。在翻译《小王子》的过程中，李继宏不仅对译文逐字推敲，尽量使用孩子能阅读','天津人民出版社','2013-01-01 00:00:00','大32开',NULL,'(法)安托万・德・圣埃克苏佩里 著，李继宏 译，果麦文化 出品',NULL,'9787201077642','28.30',NULL,'','32.00',NULL,100,101,'8.85','http://img3m3.ddimg.cn/81/7/23055003-1_b_22.jpg',200,'2018-11-01 16:18:48','精装',1),
(80,7,1,'围城','围城','凡是真正出色的文学作品，都具有一种抗理论分析力，任何自认为深透、精彩的理论都会在它们面前显得干瘪而又捉襟见肘。尽管钱锺书所著的《围城》本身并不朦胧，但我们读后的感觉仍是感觉大于思想，大于语言。读了本书，你会觉得自己周围的一切，包括自身，包括自己原来颇为热衷的一些东西，都增加了不小的喜剧色彩。 超值推荐：蔡东藩历朝通俗演义（全21册，共11部）读《二十四史》，不如读蔡东藩，一代史家，千秋神笔！陪伴*一生的枕边书。 超值推荐：唐浩明晚清三部曲（全九册）：曾国藩、杨度、张之洞，文白对照全新修订、典藏烫金版，获姚雪垠长篇历史小说奖。','人民文学出版社','1991-02-01 00:00:00','16开',NULL,'钱钟书 著',NULL,'9787020090006','23.80',NULL,'','39.00',NULL,100,103,'6.11','http://img3m4.ddimg.cn/32/28/22819334-1_b_3.jpg',200,'2018-11-01 16:18:49','精装',1),
(81,7,1,'东野圭吾：恶意（2016版，东野圭吾四大杰作之一）','东野圭吾：恶意（2016版，东野圭吾四大杰作之一）与《白夜行》《嫌疑人X的献身》《解忧杂货店》并称东野圭吾四大杰作。无边的恶意深不见底，有如万丈深渊。读完《恶意》，才算真正认识东野圭吾！','★《恶意》与《白夜行》《嫌疑人X的献身》《解忧杂货店》并称东野圭吾四大杰作，读完《恶意》，才算真正认识东野圭吾！ ★从未遇到《恶意》这样的案子：杀人不是目的，而是手段；死亡不是结束，而是开始。 ★潜藏在人心底的无边恶意深不见底，有如万丈深渊，让人不寒而栗。 ★东野圭吾在《恶意》中巧妙地设置了一个又一个反转，从阴谋实施到真相大白间的精巧设计，令读者赞叹不已。 《出版家周刊》（美国） ★《恶意》作为一部推理小说，极尽曲折复杂周密；同时又深刻揭示了人性，达到很多纯文学作品未能达到的深度。《恶意》可与同一作者的《红手指》对照着读。在《恶意》中，恶是没有底线的；在《红手指》中，善残存于恶的底线之下。 止庵 ★你心里藏着对他的恶意，这仇恨深不见底，深得连你自己都无法解释。正是它导','南海出版公司','2016-11-01 00:00:00','32开',NULL,'东野圭吾 著，娄美莲 译，新经典 出品',NULL,'9787544285148','37.30',NULL,'','39.50',NULL,100,100,'9.45','http://img3m4.ddimg.cn/49/29/24041704-1_b_6.jpg',200,'2018-11-01 16:18:50','精装',1),
(82,7,1,'红楼梦原著版（上、下册）（全两册）（1-9年级必读书单）','红楼梦原著版（上、下册）（全两册）（1-9年级必读书单）权威版本！收藏经典！','本书为中国古典文学读本丛书。 如果你还在为了阅读或收藏价格昂贵的中国古典名著而在书架前徘徊，那么现在你不用愁了，该版的《红楼梦》，不仅价格便宜、印刷美观、装帧古朴，收藏、送人都让你特有面子！实为古典小说的**普及本！ 本书初版于一九八二年三月，距今瞬已十二年。本书初版以来，受到广大读者和专家们的欢迎，也得到了不少指正。这十二年的岁月，使我们进一步认识到，我闪当时确定的几个原则是正确的：一是我们所选择的底本 庚辰本，确是一个学术价值很高、接近曹雪芹原稿的珍贵本子，我们以此为底本，就使这相校本有了很好的基础；二是我们确定的校勘原则（详见《校注凡例》）也是正确的，这样就使我们的校勘工作做到了审慎和准确，不至于随意改动底本文字，从而较好地保持了原本的历史面貌；三是我们确定的注释原','人民文学出版社','2013-01-01 00:00:00','32开',NULL,'曹雪芹',NULL,'9787020002207','59.70',NULL,'','59.70',NULL,100,101,'0.00','http://img3m1.ddimg.cn/9/22/102771-1_b_2.jpg',200,'2018-11-01 16:18:50','平装-胶订',1),
(83,7,1,'杀死一只知更鸟（纪念版）','杀死一只知更鸟（纪念版）父母必读，影响全球5000万家庭的儿童教养经典，家庭教育的完美范本，美国中小学必读书目','★影响全球5000万家庭的 教养宝典 ，出版界销售奇迹，世界上译本☆多的书之一 ★关于勇气与正义的成长教科书，奥巴马、贝克汉姆、奥普拉鼎力推荐 ★全世界爸爸的楷模，家庭教育的典范 ★良知启蒙，关于如何养成一个好人的品质：正义，宽容，谦逊，风度，勇敢，隐忍以及如何在不公正与充满丑陋的世界上体面地生活 ★美国中小学必读书目，普利策小说奖、奥斯卡金像奖获奖作品 ★入选《时代》周刊1923 2005百佳小说 ★88部 塑造美国的图书 ★美国图书馆借阅率☆高的书，英国青少年☆喜爱的小说之一 ★由小说改编的电影获第25届奥斯卡三项大奖。 ★美国电影协会评选的 100名银幕英雄与恶人 中，派克主演的芬奇律师名列英雄榜首。','译林出版社','2018-03-01 00:00:00','大32开',NULL,'哈珀.李 著,',NULL,'9787544772976','36.00',NULL,'','39.80',NULL,100,100,'9.05','http://img3m5.ddimg.cn/6/23/25279755-1_b_2.jpg',200,'2018-11-01 16:18:51','精装',1),
(84,7,1,'牧羊少年奇幻之旅（央视《朗读者》、湖南卫视《天天向上》、黄轩、TFBOYS、高圆圆推荐，能改变一个人一生的书）','牧羊少年奇幻之旅（央视《朗读者》、湖南卫视《天天向上》、黄轩、TFBOYS、高圆圆推荐，能改变一个人一生的书）一部能改变一个人一生的书，语种超过《圣经》，畅销170个国家，销量6500万册。当你想要某种东西时，整个宇宙会合力助你实现愿望','★这本百年一遇的书，能改变一个人的一生 ★语种超过《圣经》，畅销170个国家，销量6500万册 ★被译成70种语言，位居《纽约时报》畅销榜长达427周 ★生活永远是，也仅仅是我们现在经历的这一刻。当你想要某种东西时，整个宇宙会合力助你实现愿望 ★金庸、曹文轩、大江健三郎、茱莉亚 罗伯茨、威尔 史密斯、麦当娜推荐 ★TFBOYS王源、黄轩、《朗读者》、湖南卫视《天天向上》近期热力领读 ★全新改版，全新设计，封面采用烫金工艺，典藏佳选','北京十月文艺出版社','2018-01-01 00:00:00','32开',NULL,'（巴西）保罗・柯艾略 著，新经典 出品',NULL,'9787530217054','33.00',NULL,'','35.00',NULL,100,100,'9.43','http://img3m8.ddimg.cn/50/28/25172978-1_b_5.jpg',200,'2018-11-01 16:18:52','精装',1),
(85,7,1,'东野圭吾：嫌疑人X的献身（王凯、张鲁一推荐，至为纯粹的爱情，绝好的诡计）','东野圭吾：嫌疑人X的献身（王凯、张鲁一推荐，至为纯粹的爱情，绝好的诡计）与《白夜行》《解忧杂货店》《恶意》并称为东野圭吾四大杰作，日本三大推理榜年度榜首作品，美国图书馆协会年度推理小说','★2016年，苏有朋执导同名电影拍摄中，2017年上映 ★《嫌疑人X的献身》是我所能想到至为纯粹的爱情，绝好的诡计。 东野圭吾 ★《嫌疑人X的献身》包揽日本三大推理小说榜年度总冠军：这本推理小说了不起！第1、本格推理小说榜第1、周刊文春推理小说榜第1 ★获第134届直木奖 ★获第6届本格推理小说大奖 ★究竟爱一个人，可以爱到什么地步？究竟什么样的邂逅，可以舍命不悔？波澜不惊的外表下，究竟隐藏着怎样的深情？ ★逻辑的尽头，不是理性与秩序的理想国，而是用生命奉献的爱情 ★为了在紧要关头义无反顾，他事先断了自己的退路，做出了普通人根本无法想象的壮烈牺牲 其他推荐：','南海出版公司','2014-06-01 00:00:00','32开',NULL,'东野圭吾 著，刘子倩 译，新经典 出品',NULL,'9787544267618','33.00',NULL,'','35.00',NULL,100,100,'9.43','http://img3m6.ddimg.cn/25/12/23490646-1_b_0.jpg',200,'2018-11-01 16:18:52','精装',1),
(86,7,1,'一个陌生女人的来信（茨威格中短篇小说选，豆瓣9.4高评分译作，德文直译无删节）','一个陌生女人的来信（茨威格中短篇小说选，豆瓣9.4高评分译作，德文直译无删节）17800名读者五星好评推荐，全新编校修订+北大权威翻译家高中甫译作。孟京辉说：“陌生女人带着强烈宿命意味的勇气，让人不忍看却又不能不看……这是一种奢侈的美感，是一种幸福。”','你的一生中有没有那么几秒、几分钟、几小时，为了做一件事情而奋不顾身？ 她，仅仅一瞬间，为了爱情，耗尽一生，颠覆了整个世界。 这是一个女人的 悲剧 ，却成就了全人类的 爱情童话 。 一段深情要埋藏多久，一封长信要迟来几天？弥留之际，我用斑斑字迹，向你诉说：我的一生。 我毫无阅历，毫无准备，我一头栽进我的命运之中，就像跌进一个万丈深渊。从那一秒钟起，我的心里就只有一个人 就是你！ 然而，委身三次，痴恋一生，他却从未记起她：我们在哪里见过吗？ 也许对于一个男人来说，一个少女、一个女人的脸想必是变化多端的东西 可我不埋怨你，我爱你，爱的就是这个你：感情炽烈，生性健忘，一见倾心，爱不忠诚。 ◎茨威格的小说，如同一把手术刀，将一切不可思议之事剖析得理所当然；他让纯爱之花','时代文艺出版社','2017-09-01 00:00:00','32开',NULL,'〔奥〕斯蒂芬・茨威格 著 高中甫 韩耀成 译',NULL,'9787538754872','16.50',NULL,'','22.00',NULL,100,100,'7.50','http://img3m1.ddimg.cn/30/23/25126131-1_b_6.jpg',200,'2018-11-01 16:18:53','平装-胶订',1),
(87,7,1,'活着（精装版，余华代表作，易烊千玺推荐阅读版本）','活着（精装版，余华代表作，易烊千玺推荐阅读版本）身处荒诞的世界，每个人都该读读余华。25周年精装典藏纪念版，全新水墨封面，全新审校修订，带你重新读懂“活着”的力量','定本 25周年特别修订 《活着》讲述了人如何去承受巨大的苦难；讲述了眼泪的宽广和丰富；讲述了绝望的不存在；讲述了人是为了活着本身而活着的，而不是为了活着之外的任何事物而活着。本书获得：意大利格林扎纳 卡佛文学奖台湾 中国时报 十大好书奖《亚洲周刊》二十世纪中文小说一百强同名电影获戛纳国际电影节评审团大奖','北京十月文艺出版社','2017-06-01 00:00:00','32开',NULL,'余华 著，新经典 出品',NULL,'9787530215593','33.00',NULL,'','35.00',NULL,100,100,'9.43','http://img3m9.ddimg.cn/93/8/25092039-1_b_3.jpg',200,'2018-11-01 16:18:54','精装',1),
(88,7,1,'挪威的森林（2018年新版，村上春树的残酷青春物语，现象级的超级畅销书，三十周年纪念版）','挪威的森林（2018年新版，村上春树的残酷青春物语，现象级的超级畅销书，三十周年纪念版）村上春树的残酷青春物语，现象级的超级畅销书，纪念《挪威的森林》问世30周年','2018年上海译文新版《挪威的森林》，村上春树著名小说，不朽的青春文学名作。 村上春树影响几代读者的畅销名作。离乡背井的大学生在两个少女间的徘徊。彻头彻尾的现实笔法，特有的感伤和孤独气氛，回顾逝去的风景。','上海译文出版社','2018-03-01 00:00:00','32开',NULL,'【日】村上春树 林少华 译',NULL,'9787532776771','35.80',NULL,'','38.00',NULL,100,100,'9.43','http://img3m9.ddimg.cn/73/16/25239529-1_b_4.jpg',200,'2018-11-01 16:18:54','平装-胶订',1),
(89,7,1,'小王子（精装）（企鹅经典丛书，“法国一级文化教育勋章”获得者郑克鲁译制）','小王子（精装）（企鹅经典丛书，“法国一级文化教育勋章”获得者郑克鲁译制）风靡全球的经典童话名著','《小王子》是法国乃至世界著名的童话小说，主人公是来自外星球的小王子。书中以一位飞行员作为故事叙述者，讲述了小王子从自己星球出发前往地球的过程中，所经历的各种历险。作者以小王子的孩子式的眼光，透视出成人的空虚、盲目和愚妄，用浅显天真的语言写出了人类的孤独寂寞、没有根基随风流浪的命运。体现了作者对人类及人类文明深邃的思索。 《小王子》因其永久的魅力和澄净而为人喜爱，它的吸引力超越时代和国别，这使它成了法国被翻译*多的文学作品。 关于企鹅经典 企鹅兰登书屋是世界首个真正全球化的大众图书出版集团，旗下包括近250家在编辑和创意上保持独立的子品牌和出版社，遍布世界各地的员工超过1万人。每年出版新书15000多种，至今出版了70多位诺贝尔文学奖得主的作品，以及数百位畅销书作家的作品。','上海文艺出版社','2014-06-01 00:00:00','32开',NULL,'[法]圣埃克絮佩里 著， 郑克鲁 译',NULL,'9787532152445','20.00',NULL,'','25.00',NULL,100,100,'8.00','http://img3m3.ddimg.cn/25/26/23505793-1_b_6.jpg',200,'2018-11-01 16:18:55','精装',1),
(90,7,1,'圣殿春秋（套装全3册）(通宵小说大师肯・福莱特中世纪三部曲，欧美读者平均3个通宵读完！）','圣殿春秋（套装全3册）(通宵小说大师肯・福莱特中世纪三部曲，欧美读者平均3个通宵读完！）欧美读者平均3个通宵读完！《巨人的陨落》作者肯・福莱特里程碑式代表作，平均每年销量100万册，世界各国持续畅销26年！这部小说让每个人知道，我们有能力越过世俗，触及永恒。读客熊猫君出品','◆欧美读者平均3个通宵读完！ ◆平均每年销量100万册，世界各国持续畅销26年！ ◆《巨人的陨落》作者、爱伦坡终身大师奖得主肯 福莱特里程碑式代表作！ ◆美国、英国、加拿大、保加利亚、巴西、丹麦、荷兰、意大利、法国、德国、匈牙利、挪威、波兰、葡萄、西班牙、瑞典 30 种语言畅销各国！ ◆BBC 读者评选年度小说、脱口秀女王奥普拉读书俱乐部推荐，口碑横扫世界各国。 ◆ 同名改编英剧由奥斯卡奖获得者埃迪 雷德梅恩主演。 ◆ 《圣殿春秋》证明，肯 福莱特是真正的大师！ 《华盛顿邮报》 ◆肯 福莱特曾表示： 在我的所有作品中，没有哪本比《圣殿春秋》更受欢迎的了。它无可替代，并让我深深骄傲。 ◆这部小说让每个人知道，我们有能力越过世俗，触及永恒。 推荐您购买读客其他畅销书：','江苏凤凰文艺出版社','2018-07-01 00:00:00','32开',NULL,'（英）肯・福莱特 (Ken Follett) 著；胡允桓 译；读客文化 出品',NULL,'9787559420602','141.00',NULL,'','188.00',NULL,100,100,'7.50','http://img3m8.ddimg.cn/13/26/25307878-1_b_2.jpg',200,'2018-11-01 16:18:56','平装-胶订',1),
(91,3,1,'你是人间四月天（民国女神林徽因诗歌、散文、小说代表作完整收录。）','你是人间四月天（民国女神林徽因诗歌、散文、小说代表作完整收录。）林徽因诗歌、散文、小说代表作完整收录。用灵魂书写爱与希望，见证绚丽的生命传奇。','★畅销的文学经典。 ★林徽因，著名诗人、作家、建筑学家。游历过世界，经历过战乱，丰富的人生经历，使她的诗文，篇篇透彻洞明，句句清新开朗，自然天成，带给人对人生无限的感悟和启迪。 ★《你是人间四月天》全面收录林徽因的诗歌、散文、小说。内容含量大且丰富，让人们能够全面而真实地了解林徽因，了解她的所思所感。','北京联合出版公司','2014-12-01 00:00:00','32开',NULL,'林徽因 著',NULL,'9787550238770','10.00',NULL,'','28.00',NULL,100,108,'3.58','http://img3m0.ddimg.cn/51/16/23608680-1_b_12.jpg',200,'2018-11-04 11:04:08','平装-胶订',1),
(92,3,1,'我们相爱一生，一生还是太短（央视《朗读者》董卿推荐，沈从文诞辰115周年全新修订）','我们相爱一生，一生还是太短（央视《朗读者》董卿推荐，沈从文诞辰115周年全新修订）感动千万女性的爱情经典，精选沈从文*代表性的情感小说14篇，彰显生命中不可言状的真情与温爱，送给每一个在爱中感动、成长和珍惜的年轻人。独家赠送精美主题书签。','★1933年出版以来，专为年轻人量身定做的青春版沈从文。 ★沈从文诞辰115周年全新修订，精装典藏版。 ★独家收录14篇沈从文都市情感小说代表作，彰显生命中不可言状的真情与温爱。 ★央视《朗读者》董卿*喜爱的情诗，读了沈从文，才知道爱情原来这么凄美。 ★沈从文研究专家历时两年全新修订，沈从文家人审定出版。 ★唯美极致的装帧设计，专为年轻人量身定做。精装双封，便于携带，内文采用环保护眼纸，好看不累。完美呈现出沈从文作品的浪漫与精髓。 ★央视《朗读者》《读书》、《见字如面》栏目，董卿、安妮宝贝、著名作家贾平凹诚意推荐。','北京联合出版公司','2017-01-01 00:00:00','32开',NULL,'沈从文',NULL,'9787550284593','34.50',NULL,'','48.00',NULL,100,101,'7.19','http://img3m9.ddimg.cn/89/3/24164999-1_b_8.jpg',200,'2018-11-04 11:04:08','精装',1),
(93,3,1,'鲁迅全集（全20卷，纪念鲁迅先生逝世80周年！）','鲁迅全集（全20卷，纪念鲁迅先生逝世80周年！）1938年“鲁迅先生纪念委员会”编印版，无删改重版，简体横排，权威定本！','◆民国时权威的《鲁迅全集》！ 1936年鲁迅逝世后，许广平与鲁迅先生纪念委员会积极推动《鲁迅全集》出版。1937年，在蔡元培、胡适等文化界泰斗的帮助下，与商务印书馆达成出版协议。但终因北新书局拒绝让出版权，出版计划未能实施。1938年许广平与鲁迅先生纪念委员会决定由上海复社以民间的方式运作出版全集。纪念委员会负责编辑工作，复社负责出版和发行。近百位学者文人及工作人员积极投入到全集工作中，**版《鲁迅全集》于1938年6月正式出版发行。 ◆蔡元培任鲁迅先生纪念委员会主席，并亲自作序！ 初版《鲁迅全集》由鲁迅先生纪念委员会与许广平发起并主持出版，蔡元培担任纪念委员会主席，宋庆龄担任副主席。编辑委员有蔡元培、胡适、茅盾、周作人、马裕藻、沈兼士。参与编辑的主要人员有许广平、郑振铎、','北京日报出版社（原同心出版社）','2014-05-01 00:00:00','16开',NULL,'鲁迅 著',NULL,'9787547711101','281.50',NULL,'','598.00',NULL,700,101,'4.71','http://img3m7.ddimg.cn/93/10/23473587-1_b_0.jpg',200,'2018-11-04 11:04:09','盒装',1),
(94,3,1,'湘行散记（七年级上册自主阅读推荐）','湘行散记（七年级上册自主阅读推荐）修订版！20世纪中国文学的无冕之王沈从文具有代表性的散文作品集！重寻湘西世界的自由朴野之美！','1.沈从文是中国20世纪文学世界的无冕之王，汪曾祺、夏志清等高度评价。 2.《湘行散记》是沈从文**代表性的散文作品集，也是他**一次对唯美的湘西世界的反思。 3.重寻湘西世界的自由朴野之美，勾勒出一幅美妙的湘西写意画。 4.澄澈纯净的沅水之间，一片明朗朴野的湘西风光，闪耀着桃源般耀眼的余晖。 更多优质好书请点击：','江苏人民出版社','2015-07-01 00:00:00','16开',NULL,'沈从文 著 凤凰含章 出品',NULL,'9787214153388','12.50',NULL,'','25.00',NULL,100,100,'5.00','http://img3m3.ddimg.cn/73/33/23724433-1_b_1.jpg',200,'2018-11-04 11:04:09','平装-胶订',1),
(95,3,1,'朝花夕拾（七年级上册必读，语文新课标必读丛书，央视朗读者节目推荐）','朝花夕拾（七年级上册必读，语文新课标必读丛书，央视朗读者节目推荐）中国鲁迅研究会常务副会长、鲁迅博物馆原馆长孙郁倾力推荐。精选48篇散文，口碑典藏版。 果麦出品','《朝花夕拾》相关推荐： 18篇*好*美的小说 曾经在陈丹青先生《鲁迅是谁？》的演讲中听到一个别致的观点，他说 鲁迅的被扭曲，是现代中国一桩超级公案 ，对鲁迅以 政治上的正确 给予他的作品褒扬、抬高，不可怀疑、不可反对，致使鲁迅作品的层次和人格魅力被过度简化，他本身丰富优美的用字，以及风趣幽默的行文，后人常常视而不见，也许我们真的不小心错过了一个可爱的鲁迅。的确，鲁迅是爱憎分明的，但不等于说鲁迅没有情感，没有他温和、慈爱、狡黠的那一面，他也对人、对动物、对乡土、对自然有着特别的情怀。若是仅仅从某一些方面去解读鲁迅作品内涵的全部，这对他是非常不公平的。 这版《朝花夕拾》做了去政治化的尝试，真诚感受鲁迅作品的丰满原貌，精选《鲁迅全集》中亲切好读、文字优美的散文 48 篇，呈现鲁迅先生*真实的','天津人民出版社','2015-01-01 00:00:00','32开',NULL,'鲁迅，果麦文化 出品',NULL,'9787201089140','12.50',NULL,'','25.00',NULL,100,100,'5.00','http://img3m4.ddimg.cn/39/33/23620944-1_b_1.jpg',200,'2018-11-04 11:04:09','平装-胶订',1),
(96,3,1,'余秋雨 文化苦旅（1-9年级必读书单）','余秋雨 文化苦旅（1-9年级必读书单）当当网专享精美背诵口袋本！文化导师余秋雨开山之作，TFBOYS王源枕边读物。新版出版近1年重掀文化热，深思中国历史之力作《文化之痛》全新收录！影响三代华人的文化价值观，值得全家人一读再读的经典之作。','1、二十年持续畅销千万册，正版脱销近5年，盗版猖獗销售2亿册。余秋雨先生逐字修订，亲编导读。向全世界宣告：唯 一真品，荣耀回归！ 正如余秋雨在新版序言中说， 其实在公共场合出现的它（《文化苦旅》），大多不是真身。因为已有统计，此书盗版数量至少是正版的18倍 ，《文化苦旅》是当代中国被盗版次数多、数量惊人的书。 自1992版东方出版中心到期之后，尽管全国各大出版社疯狂争夺该书版权，但多年来余秋雨始终坚持不再授权。对于该作品，他感慨万千： 《文化苦旅》就是外出的浪子，它 出门旅世 时间太长，带给我的麻烦难以计数 。 3年来，经过时代华语的不懈努力，余秋雨终于同意再出新版，但唯 一要求是： 书稿我必须从头到尾重新修改、整理，并且必须等待所有旧版销售干净，才让新版问世！ 于是，漫长的等待之后，终于有了','长江文艺出版社','2014-03-01 00:00:00','16开',NULL,'余秋雨 著 时代华语 出品',NULL,'9787535447340','23.50',NULL,'','38.00',NULL,100,100,'6.19','http://img3m9.ddimg.cn/44/23/23415029-1_b_3.jpg',200,'2018-11-04 11:04:09','平装-胶订',1),
(97,3,1,'鲁迅经典全集（精装畅销珍藏版！极具收藏价值的鲁迅文集！陈丹青、易中天、郑渊洁口碑力荐！万千读者好评如潮！阅读收藏馈赠必','鲁迅经典全集（精装畅销珍藏版！极具收藏价值的鲁迅文集！陈丹青、易中天、郑渊洁口碑力荐！万千读者好评如潮！阅读收藏馈赠必鲁迅作品连续3年销冠！荣获当当10005名读者全五星好评典藏版！囊括朝花夕拾、呐喊、阿Q正传、故事新编、野草等鲁迅代表作！今日特惠，限时疯抢！','◆ 有史以来全国销量领先的鲁迅经典全集！此版本荣获当当终身五星级畅销好书！稳居同类书销量第1名！ ◆ 易中天、贾平凹、陈丹青、郑渊洁、吴思、刘震云、阎连科、何三坡，八大文化名家首次联袂推荐！ ◆ 本版本三大特色：中国作家榜编委会历时一年，开创性通过互联网深入调研十万读者，浓缩汇集二十年来鲁迅研究成果，纠正现存其他各种版本已知讹误；精选鲁迅代表性的经典作品384篇，确保每一篇文章都有趣好读，每一篇都是不朽文学经典，无论读者年龄大小均可无障碍阅读；独家新增100多幅精美插图，图文并茂，让人耳目一新，爱不释手。 ◆ 本书一经问世，就受到爱书人的广泛好评，更得到媒体的热烈报道和各界名人口碑推荐，持续热销，被誉为 爱书人必备必藏的传世经典 ！ ◆ 本书上市短短10个月，凭借读者口碑相传，总印量','湖南人民出版社','2015-09-25 00:00:00','32开',NULL,'鲁迅 著，作家榜 编',NULL,'23770134','118.00',NULL,'','236.00',NULL,100,100,'5.00','http://img3m4.ddimg.cn/36/2/23770134-1_b_303.jpg',200,'2018-11-04 11:04:10','精装',1),
(98,3,1,'毕淑敏精选集','毕淑敏精选集精装【纺布纸锁线精装版】含有【毕淑敏亲笔签名版】，毕淑敏亲选25年的散文集，70篇，目前版本里内容全，很权威的收藏版本，燕山版世纪文学60家经典著作','1．毕淑敏亲选创作25年以来的经典的散文（ 70篇 ）， 均为读者评价很高和作本人很喜欢的文章， 是目前很权威性的收藏版本 。 毕老师亲自选的散文集，经过几次筛选，给大家的是很有代表性的作品。 2. 32开 精装文学小巧开本（195*135cm），小巧 方便携带 ，精装进行保护，是目前为止，性价比颇高的一部小说集。 定价28元，收录70篇散文，折后价格更优惠，本子全，价格低，前所未有，还是精装品。 3．北京燕山出版社现当代文学名家作品集之一。统一开本、统一风格设计，是收藏之佳品。 燕山出版社建社以来的现当代文学经典书系列，重新收录的新作者，畅销20年的经典品牌。 4. 王蒙作序，倾情推荐。 王蒙推荐，看看王蒙眼里的毕淑敏是什么样子，大家之间是如何擦出火花的。 此版本的清','北京燕山出版社','2014-07-01 00:00:00','32开',NULL,'毕淑敏',NULL,'9787540234140','19.30',NULL,'','28.00',NULL,100,100,'6.90','http://img3m1.ddimg.cn/33/28/23408781-1_b_7.jpg',200,'2018-11-04 11:04:10','平装-胶订',1),
(99,3,1,'三毛典藏全集','三毛典藏全集集结十四部传世经典 三十年写作成果全新呈现。','她以一支笔坚持看守个人文字上的简单和朴素；从遥远的撒哈拉到美洲大陆，再到敦煌戈壁，她不随波逐流，也不诠释人生，只做生活的见证者。她是我们心中浪漫、洒脱、真性情的永远的三毛，永恒的传奇。《三毛典藏全集》集结三毛十四部作品，全面呈现其三十年写作成果。','北京十月文艺出版社','2017-04-01 00:00:00','32开',NULL,'三毛 著，新经典 出品',NULL,'9787530216545','240.00',NULL,'','480.00',NULL,100,100,'5.00','http://img3m4.ddimg.cn/11/5/25071464-1_b_3.jpg',200,'2018-11-04 11:04:10','平装-胶订',1),
(100,3,1,'纳兰词 水墨山水彩图 附纳兰性德传记','纳兰词 水墨山水彩图 附纳兰性德传记一个人，一剪月光，几多孤影 一阕词，一种风流，半盏流年 身处繁华，淡然世间荣辱浮沉 三十一载，刹那风华却波澜一个世界','1.精选纳兰130余首词，突显经典的力量。 词作涉及爱情、亲情、友情、咏物等多个方面，充分展现其词清丽婉约，哀感顽艳，格高韵远的特色。 2.附纳兰小传，深入解读其思想与命运。 无论是纳兰的思想与命运 ，他的人生与际遇都具有一定的代表意义，每个人都能从他的小传中收获属于自己的感悟，获得正面而积极的影响。 3.文字优美，引人回味。 流畅细腻的文笔，深刻动人的颖悟，在字字句句间迸溅出明慧的思想之光，给读者留下深刻的印象。','四川人民出版社','2018-07-01 00:00:00','16开',NULL,'刘增妍',NULL,'9787220107283','9.90',NULL,'','45.00',NULL,100,100,'2.20','http://img3m0.ddimg.cn/52/7/25301680-1_b_3.jpg',200,'2018-11-04 11:04:10','平装-胶订',1),
(101,3,1,'城南旧事：一部触动千万读者灵魂的童年离骚','城南旧事：一部触动千万读者灵魂的童年离骚20世纪中文小说百强之一，全新修订珍藏版！精选台湾文学“祖母级人物”林海音的成名作《城南旧事》和小说代表作《春风》《婚姻的故事》。大时代中的小故事，引领你重重温心底那段柔软的时光。','更多优质好书请点击：','江苏人民出版社','2015-07-01 00:00:00','16开',NULL,'林海音 凤凰含章 出品',NULL,'9787214165961','14.00',NULL,'','28.00',NULL,100,100,'5.00','http://img3m6.ddimg.cn/73/7/23808286-1_b_1.jpg',200,'2018-11-04 11:04:11','平装-胶订',1),
(102,3,1,'花间集（全注释彩图版，读词赏画，一部花间集，词中《诗经》。本版收录唐至近现代42位伟大画家共120余幅花鸟、仕女珍贵藏','花间集（全注释彩图版，读词赏画，一部花间集，词中《诗经》。本版收录唐至近现代42位伟大画家共120余幅花鸟、仕女珍贵藏朱光潜、叶嘉莹、蒋勋推荐阅读。读词赏画，一部花间集，一部中国花鸟绘画艺术史。果麦出品','温庭筠、韦庄的词，配上宋徽宗、唐伯虎的画 一部《花间集》，一部\"中国花鸟绘画艺术史\" 全注释，全彩插图，无障碍朗读版. 中国词史上的里程碑。 《花间集》收录唐至五代兼具文学价值与美学价值的词作品500首，','三秦出版社','2018-06-01 00:00:00','32开',NULL,'温庭筠 韦庄等，编纂 赵崇祚，插图 赵佶、唐寅等，果麦文化 出品',NULL,'9787551818384','67.60',NULL,'','98.00',NULL,100,100,'6.90','http://img3m4.ddimg.cn/84/0/25308444-1_b_6.jpg',200,'2018-11-04 11:04:12','精装',1),
(103,3,1,'写在人生边上・人生边上的边上・石语','写在人生边上・人生边上的边上・石语','钱锺书，（1910－1998）是当代中国著名的学者、作家。他的著述，如广为传播的《谈艺录》、《管锥编》、《围城》等，均已成为二十世纪重要的学术和文学经典。《写在人生边上 人生边上的边上 石语（钱钟书集）》是钱钟书散文集，比较全面地呈现了钱锺书先生的学术思想和文学成就。','生活・读书・新知三联书店','2002-10-01 00:00:00','大32开',NULL,'钱钟书 著',NULL,'9787108017260','28.50',NULL,'','38.00',NULL,100,100,'7.50','http://img3m5.ddimg.cn/31/20/23685385-1_b_1.jpg',200,'2018-11-04 11:04:12','平装',1),
(104,3,1,'心有猛虎 细嗅蔷薇（余光中散文精选）','心有猛虎 细嗅蔷薇（余光中散文精选）余光中生前审定的zui后一本书，历时2年精心编辑。华语文学大师创作五十年散文精选集，代表作品完整收录。梁实秋、龙应台、莫言、韩少功盛赞。写尽了一代人的乡愁记忆和生命的挚爱深情。纪念余光中逝世一周年。','1、华语文学大师余光中创作50年散文精选集，生前亲自审定篇目，经典作品全收录，诠释一个更立体、更完整的余光中。 2、余光中的文字，有着他独特的美学意识。不仅有着汉字双声叠韵的美质，也有着将简洁浑成的文言、井然有序的西语和亲切自然的现代口语三者交织的艺术韵律。或跌宕起伏，或婉转缠绵，亦诗亦曲，如诉如画。 3、关于人生的哲思美句，有领悟、有珍惜、有释然，给每一位阅读的你： 乡愁是什么呢 所谓乡愁，如果是地理上的，只要一张机票或车票，带你到熟悉的门口，就可以解决了。如果是时间上的呢，那所有的路都是单行，所有的门都闭上了，没有一扇能让你回去。 做个又高级又有趣的人吧 高级的人使人尊敬，有趣的人使人欢喜，又高级又有趣的人，使人敬而不畏，亲而不狎，交结愈久，芬芳愈醇。 保','江苏凤凰文艺出版社','2018-10-01 00:00:00','32开',NULL,'余光中 著 时代华语 出品',NULL,'9787559426017','35.80',NULL,'','49.80',NULL,100,100,'7.19','http://img3m2.ddimg.cn/18/11/25349562-1_b_2.jpg',200,'2018-11-04 11:04:14','平装-胶订',1),
(105,3,1,'在路上','在路上','世俗叛逆与抗争者历久弥新的圣经 垮掉的一代 灵魂人物心灵自传 一部六十年代起就轰动美国风靡世界各地的常青型激进青年精神指引读物 一部和《麦田里的守望者》并驾齐驱持续激发世代新锐少男少女热情的书 相关推荐： 2014年诺贝尔文学奖得主，王小波推崇备至的作家帕特里克 莫迪亚诺作品《缓刑》 2014年诺贝尔文学奖得主，王小波推崇备至的作家帕特里克 莫迪亚诺作品《地平线》','上海译文出版社','2018-04-02 00:00:00','32开',NULL,'【美】杰克?凯鲁亚克 著',NULL,'9787532740260','30.80',NULL,'','39.00',NULL,100,100,'7.90','http://img3m6.ddimg.cn/87/14/25253106-1_b_2.jpg',200,'2018-11-04 11:04:14','平装-胶订',1),
(106,3,1,'丰子恺愿你一生清澈明朗','丰子恺愿你一生清澈明朗在复杂的世界里,做一个简单的人。人生真正的美好在于：你有一颗澄明的心。只有让自己内心富有充盈，才能从容抵御世间所有的不安与喧嚣，成就自己美好的人生！林清玄，朱自清，郁达夫，巴金、叶圣陶倾情推荐！','▲全彩四色、 高端艺术纸 精美 印刷、 丰子恺后人亲自监制全新校订， 原汁原味地再现散文 漫画作品的 精髓。 ▲收录丰子恺50 余篇*为经典的散文代表作，以及数十张漫画幽默可爱的漫画作品， 一本书阅尽丰子恺散文精华。 ▲ 以平常心写平常事，体悟弘一法师弟子的有情世界。 ▲ 丰子恺的散文 诗中有画，画中有诗 。 将 景致写得入木三分，又很清新雅致，淡雅却又醇厚，让人感到音乐的魅力，水墨写意画一般的情趣，美在不言中。','现代出版社','2017-03-29 00:00:00','32开',NULL,'丰子恺',NULL,'9787514357806','27.40',NULL,'','39.80',NULL,100,100,'6.89','http://img3m6.ddimg.cn/87/8/24240336-1_b_3.jpg',200,'2018-11-04 11:04:15','平装-胶订',1),
(107,3,1,'汪曾祺纪念文集水墨珍藏版套装全六册：万物有时，山河故人，戏梦人间，一食一味，此间风雅，有情众生','汪曾祺纪念文集水墨珍藏版套装全六册：万物有时，山河故人，戏梦人间，一食一味，此间风雅，有情众生从民国文青到文坛大师，念念不忘，必有回响…山河故人、红尘男女、四方食事、花鸟鱼虫、粉墨春秋…由汪氏后人慎重编选，收录其代表性的小说、散文和戏剧等百余篇佳作，汪文精华尽收眼底，附赠汪曾祺手绘精美书签。','1. 汪曾祺文集水墨珍藏系列，*知识分子风格的汪曾祺作品，雅致诗意，淡远蕴藉； 2. 由汪氏后人慎重编选，收录汪曾祺*代表性的小说、散文、文论和戏剧等百余篇佳作，一套在手，汪文精华尽收眼底； 3 沈从文、黄永玉、张兆和、黄裳、王安忆、蒋勋、梁文道、阿城、王安忆、贾平凹等文化名流倾情推荐；随书附赠 汪曾祺手绘精美书签。 4 汪曾祺的文字让人重温古典主义名士风散文的魅力，让真与美、日常生活、恬淡与雍容回归日常。 5 一段段充满人情味儿的时光记忆，致敬*美好的人性！ 汪曾祺的文字，是属于每个中国人的精神故园 推荐您购买文通天下其他畅销书：','天津人民出版社','2018-04-01 00:00:00','32开',NULL,'汪曾祺 著，文通天下 出品',NULL,'25265687','149.40',NULL,'','298.80',NULL,100,100,'5.00','http://img3m7.ddimg.cn/95/15/25265687-1_b_5.jpg',200,'2018-11-04 11:04:15','精装',1),
(108,3,1,'朝花夕拾：全彩珍藏版（1-9年级必读书单）','朝花夕拾：全彩珍藏版（1-9年级必读书单）名著导读书目，全彩珍藏版。鲁迅weiyi一部回忆性散文集《朝花夕拾》+《故事新编》+中国现代散文诗开山之作《野草》等，民国版本，原汁原味，请勿以为是错别字','1.精美插图、全彩珍藏版。 2.《朝花夕拾》是一代文豪颇负盛名的传世佳作，一部发人自省、催人奋进的教科书，一部认识中国人、剖析中国人的经典范本，一部开创中国现实主义文学先河的伟大史诗。 3. 《野草》被文学界公认为鲁迅创作中很美的作品，中国现代散文诗开山之作，中国现代象征主义散文诗中难以超越的高峰。鲁迅曾对人说，他的哲学全在《野草》里，这是相当贴近鲁迅内心的一部作品。 4.一代文学巨匠真实的生命历程和心灵风景，一幅具有特定时代氛围的生活画卷。','台海出版社','2017-06-01 00:00:00','32开',NULL,'鲁迅',NULL,'9787516813546','19.40',NULL,'','49.80',NULL,100,101,'3.90','http://img3m9.ddimg.cn/83/7/25091039-1_b_2.jpg',200,'2018-11-04 11:04:16','平装-胶订',1),
(109,3,1,'鲁迅文集精选（全六册）','鲁迅文集精选（全六册）陈丹青长文深情推荐，每个少年都应该“呐喊”，每个少年都逃不开“彷徨”。鲁迅说：“我一生的哲学都在《野草》里了。”果麦出品','陈丹青先生自少年时代起，就非常喜欢《呐喊》。他说，这是 令我沉迷惚恍的小说 。五十年后，他重读《呐喊》，会是怎样的感受呢？陈丹青先生深情长文推荐，每个少年都应该读的一本书。 青年画家慕容引刀，为本书倾情创作十三副版画插图，精美绝伦，值得收藏！ 陈丹青说， 他庆幸儿时的阅读。 文革 初年，一切文学解读暂告休止，中小学停课，没有课本。没人摁着我的脑袋，告诫我：孔乙己与阿Ｑ 代表 了什么，我甚至不知道，这就是文学。＂少年陈丹青，就这样读了《彷徨》，纯粹地喜欢，觉得别的小说都不如《彷徨》让他沉迷惚恍。单看书名就有魔力： 彷徨 ，我也每天在弄堂里百无聊赖地乱走。 五十年后，他重读果麦新版《彷徨》，会是怎样的感受呢？３０５８字的后记，陈丹青诚意推荐。 青年画家慕容引刀，为本书倾情创作十','天津人民出版社','2016-01-01 00:00:00','32开',NULL,'鲁迅，果麦文化 出品',NULL,'25337791','131.30',NULL,'','175.00',NULL,100,100,'7.51','http://img3m1.ddimg.cn/28/6/25337791-1_b_3.jpg',200,'2018-11-04 11:04:16','平装-胶订',1),
(110,3,1,'文化苦旅 新版','文化苦旅 新版文化导师余秋雨开山之作，新版出版近1年重掀文化热，深思中国历史之力作《文化之痛》全新收录！影响三代华人的文化价值观，值得全家人一读再读的经典之作。','全国中学教师推荐次数更多的课外读物之一/三十年来影响力很强一本文学书/中国家长邮寄给子女更多的一本书 影响全球三代华人的文化价值观/值得全家人一读再读的经典之作 多篇文章入选中学课本： 《信客》《都江堰》入选人民教育出版社版初中课本 《道士塔》《莫高窟》入选北京市高中语文课本 出版近1年后，再掀文化热，全新收录新作《文化之痛》等6篇文章！ 20年持续畅销千万册，版权到期后合法渠道脱销近5年，盗版猖獗销售2亿册。 正如余秋雨在新版序言中说， 其实在公共场合出现的它（《文化苦旅》），大多不是真身。因为已有统计，此书盗版数量至少是正版的18倍 ，《文化苦旅》是当代中国被盗版次数多、数量惊人的书。 自1992版东方出版中心到期之后，尽管全国各大出版社疯狂争夺该书版权，但多','长江文艺出版社','2014-04-01 00:00:00','16开',NULL,'余秋雨 著 时代华语 出品',NULL,'9787535447340','23.20',NULL,'','39.80',NULL,100,100,'5.83','http://img3m2.ddimg.cn/81/29/23629302-1_b_1.jpg',200,'2018-11-04 11:04:17','平装-胶订',1),
(111,3,1,'小王子（译文40系列）','小王子（译文40系列）著名翻译家周克希倾情翻译，经典译本，温暖人心的哲理童话','1）《小王子》的总发行量仅次于《圣经》，译成160种语言的 梦之书 。 2）超级治愈的暖心故事，献给孩子和成人的美妙童话。','上海译文出版社','2018-06-01 00:00:00','32开',NULL,'[法] 圣埃克絮佩里 著 周克希 译',NULL,'9787532778232','10.00',NULL,'','20.00',NULL,100,100,'5.00','http://img3m9.ddimg.cn/75/25/25289229-1_b_3.jpg',200,'2018-11-04 11:04:17','平装-胶订',1),
(112,3,1,'我的遥远的清平湾（精装）插图版','我的遥远的清平湾（精装）插图版中国*有人格力量的作家史铁生?*经典小说集在河的源头，在遥远的不为人知的地方，种子埋进冻土，为了无尽无休的以往继续下去，成为无尽无休的未来。*美深邃的心灵札记，*睿智透彻的生命哲思*精美洁净的诗性文','《我的遥远的清平湾》（插图典藏版） 史铁生灵性阅读系列 之二：史铁生留给世界无价的礼物，命运、信念与爱的小说经典。史铁生夫人亲自审定，内附吴冠中10帧灵动画境，精装美图，典藏之选。 ▲精装美图，典藏之选：内文附录吴冠中10帧灵动画境，精美四色印刷，用纸考究。 ▲史铁生夫人陈希米亲自审定，精细校订。 ▲史铁生是当代中国zui令人敬佩的作家之一，他的写作与他的生命完全同构在了一起，用残缺的身体，说出了zui为健全而丰满的思想。他体验到的是生命的苦难，表达出的却是存在的明朗和欢乐，他睿智的言辞，照亮的反而是我们日益幽暗的心。 首届华语文学传媒大奖年度杰出成就奖得主史铁生授奖词 ▲当代文学大家史铁生的小说思想深刻，视角独特，结构精妙，以诗性的语言讲述各色人物的生命故事，探讨人生、','湖南文艺出版社','2016-12-01 00:00:00','16开',NULL,'史铁生',NULL,'9787540478094','31.00',NULL,'','45.00',NULL,100,101,'6.89','http://img3m5.ddimg.cn/35/34/24135245-1_b_6.jpg',200,'2018-11-04 11:04:17','平装-胶订',1),
(113,3,1,'且听风吟(新版)(村上春树文集）','且听风吟(新版)(村上春树文集）','','上海译文出版社','2017-01-01 00:00:00','32开',NULL,'村上春树 著',NULL,'9787532742936','15.00',NULL,'','19.00',NULL,100,100,'7.90','http://img3m2.ddimg.cn/30/29/24186522-1_b_1.jpg',200,'2018-11-04 11:04:18','平装-胶订',1),
(114,3,1,'我只知道人是什么（余华2018最新杂文集，亲自选编！）','我只知道人是什么（余华2018最新杂文集，亲自选编！）《兄弟》《活着》创作背后的故事，余华对三十余年写作经历的回首和思考','★ 余华亲自编选，*杂文集 ★ 生命经验的凝结，创作历程的分享，探索人性，照亮内心 ★ 平实生动、娓娓道来的现场感，以说故事的方式抵达深刻 ★ 一部文学作品的自我生长：余华的成名作《十八岁出门远行》自收入中学语文教材后，多年来学生们对这部作品的创造性阅读令人惊喜， 而同一个文本在教学阅读和文学阅读间的交错兴味也令他深有感触。结合语文教案、名家评论、*初创作构想与如今回看的感受，余华从作家视角阐述了语文和文学之间的联结，以及如何打开两者的秘密通道。','译林出版社','2018-07-01 00:00:00','32开',NULL,'余华',NULL,'9787544773126','37.90',NULL,'','48.00',NULL,100,100,'7.90','http://img3m4.ddimg.cn/86/6/25309634-1_b_3.jpg',200,'2018-11-04 11:04:18','精装',1),
(115,3,1,'淡品人生 梁实秋经典文集 丰子恺彩色漫画插图','淡品人生 梁实秋经典文集 丰子恺彩色漫画插图雅舍小品、雅舍谈吃、雅舍随笔中的散文精华。收录雅舍、骂人的艺术、不亦快哉等名篇。','●冰心说：一个人应当像一朵花，不论男人或女人。花有色、香、味，人有才、情、趣，三者缺一，便不能做人家的一个好朋友。我的朋友之中，男人中只有实秋*像一朵花。 ●徐志摩说：你是一个到处发难的人，只要你一开口，下文的热闹是不成问题的。 ●闻一多说：得与诗人梁实秋缔交，真喜出望外。 ●余光中说：他的谈吐，风趣中不失仁蔼，谐谑中自有分寸，十足中国文人的儒雅加上西方作家的机智，近于他散文的风格。他的前额显得十分宽坦，整个面相不愧天庭饱满，地阁方圆，加以长面隆准，看来很是雍容。这一切，加上他白皙无瑕的肤色，给我的印象颇为特殊。后来我在反省之余，才断定那是祥瑞之相，令人想起一头白象。','四川人民出版社','2018-07-01 00:00:00','16开',NULL,'梁实秋 著，丰子恺 绘',NULL,'9787220107078','24.50',NULL,'','49.00',NULL,100,100,'5.00','http://img3m7.ddimg.cn/49/4/25301677-1_b_9.jpg',200,'2018-11-04 11:04:18','平装-胶订',1),
(116,3,1,'城南旧事：全彩珍藏版','城南旧事：全彩珍藏版大师彩画人生，全彩珍藏版，20世纪中文小说百强之一， 直抵千万读者灵魂的童年离骚。','1.全彩珍藏版。 2.林海音独步文坛的经典自传体小说，入选二十世纪中文小说一百强。 3.纯美清新的文字风格，温暖感动的童年故事，融入字里行间，感动着一代又一代的读者。 4.用儿童的口吻写大人的世界，从愚昧的童心写那些记忆深刻的人物和故事，所以写得那么生动，那么深入人心。 5.国家教育部推荐读物。','台海出版社','2017-06-01 00:00:00','32开',NULL,'林海音',NULL,'9787516813553','22.90',NULL,'','49.80',NULL,100,100,'4.60','http://img3m2.ddimg.cn/86/10/25091042-1_b_2.jpg',200,'2018-11-04 11:04:19','平装-胶订',1),
(117,3,1,'三毛全集11：流星雨','三毛全集11：流星雨三毛演讲录，展示了作家“三毛”之外的别样人生。','她以一支笔坚持看守个人文字上的简单和朴素；从遥远的撒哈拉到敦煌戈壁，她不随波逐流，也不诠释人生，只做生活的见证者；她是我们心中浪漫、洒脱、真性情的永远的三毛，永恒的传奇。《流星雨》是三毛的演讲精选集，亦收录她的两篇说书和三段采访，展现了读者所熟悉的 三毛 之外不一样的人生。','北京十月文艺出版社','2017-04-01 00:00:00','32开',NULL,'三毛',NULL,'9787530214817','25.20',NULL,'','32.00',NULL,100,100,'7.88','http://img3m6.ddimg.cn/77/8/24243296-1_b_3.jpg',200,'2018-11-04 11:04:19','平装-胶订',1),
(118,3,1,'博尔赫斯全集II：博尔赫斯全集第二辑（套装12册）','博尔赫斯全集II：博尔赫斯全集第二辑（套装12册）拉丁美洲文学大师博尔赫斯诗歌作品合辑，打破格律形式限制的诗意时空，形象、梦幻与哲思创造的迷宫世界','我应该赞美和感谢时光的每一个瞬息。 我的食粮就是世间的万物。 我承受着宇宙、屈辱、欢乐的全部重负。 我应该为损害我的一切辩解。 我的幸与不幸无关紧要。 我是诗人。 博尔赫斯 1. 博尔赫斯引领了二十世纪六十年代拉丁美洲文学潮，是西班牙语、拉丁美洲文学脉络中里程碑式的人物，其影响力更超出拉丁美洲、欧洲，成为二十世纪享有世界声誉的文学大师。博尔赫斯被中国写作者视为 作家中的作家 ，其迷宫般的叙述手法对中国先锋写作有直接影响。无论在文学写作者、欣赏者中还是在更广泛的艺术界，博尔赫斯的作品都拥有长久的口碑力量，可作为经典收藏和文艺借鉴。 2. 本次版本为弥补市场近十年空白的独家授权版本，权威翻译，经修订完善；并且消除成套全集的沉重感，首次以作家原作独立版本的单行本形式推出。*辑16种推出后受到专家','上海译文出版社','2016-08-01 00:00:00','32开',NULL,'（阿根廷）豪尔赫・路易斯・博尔赫斯 著，王永年、林之木 译',NULL,'9787532772520','174.00',NULL,'','348.00',NULL,100,100,'5.00','http://img3m8.ddimg.cn/60/4/24012708-1_b_6.jpg',200,'2018-11-04 11:04:19','盒装',1),
(119,3,1,'林徽因作品畅销套装（你是人间四月天+夜莺与玫瑰，两书合计近10万条好评）','林徽因作品畅销套装（你是人间四月天+夜莺与玫瑰，两书合计近10万条好评）“你的气质里，藏着你读过的书和走过的路。”灵魂有香气，腹有诗书气自华，做女当如林徽因。','◎ 民国才女林徽因 你的气质里，藏着你读过的书和走过的路 她的名取自《诗 大雅》： 大姒嗣徽音（后改因） 。她娴静优雅，才貌倾城，是我国著名诗人及建筑学家。她常喜欢在夜晚点上一柱清香，在微风吹拂中琢磨美丽的诗句。 她是胡适心中的一代才女，沈从文眼中绝顶聪明的小姐，更是令梁思成、徐志摩、金岳霖痴恋一生的奇女子。她似一抹明亮的色彩，点缀着文坛的星空。 ◎ 诗作与译作的畅销套装 两本书，走进真实的林徽因 1. 《你是人间四月天》 60 多年来，zui畅销的文学经典 收录林徽因几乎所有的诗歌、散文、小说。你能看到林徽因的落落大方、诗情画意以及为后人津津乐道的倾城之恋、潇洒泰然。它适合初读，更适合重温与收藏。 这是一本能让你一口气读完的经典。 2. 《夜莺与玫瑰》 林徽因译 世上zui感人','北京联合出版公司','2014-12-01 00:00:00','32开',NULL,'林徽因 著',NULL,'25073600','19.60',NULL,'','56.00',NULL,100,100,'3.50','http://img3m0.ddimg.cn/68/32/25073600-1_b_1.jpg',200,'2018-11-04 11:04:20','平装-胶订',1),
(120,3,1,'欢喜在人间：汪曾祺自选小说集（汪曾祺本人权威选本，根据1988年台版《茱萸集》首次重新打造，精装典藏）','欢喜在人间：汪曾祺自选小说集（汪曾祺本人权威选本，根据1988年台版《茱萸集》首次重新打造，精装典藏）面对生活的复杂，存留心中的欢喜。君若亦欢喜，携归尽一樽。冯唐、贾平凹、沈从文推崇备至！汪曾祺本人选本，根据1988年台版《茱萸集》重新打造，精装典藏。一本在手，汪氏经典小说全囊括！','1、《欢喜在人间：汪曾祺自选小说集》原版书名为《茱萸集》，是汪曾祺先生曾在一九八八年应台湾联合文学出版社邀约，亲自编选的一部短篇小说集。台湾联合文学出版社称全书 依序编年，具有多样的情节结构及其散文之抒情笔调，允为汪曾祺先生小说创作之定本 。 为满足广大读者需要，鹭江出版社首次推出精装新版，简体横排，精心编校，向汪曾祺先生致敬。 2、《欢喜在人间：汪曾祺自选小说集》其中《受戒》被评为20世纪中文系小说100强，《大淖记事》1981年获全国优秀短篇小说奖。 3、《欢喜在人间：汪曾祺自选小说集》装帧精美，内封采用压凹工艺，让年轻一代的读者重新发现汪曾祺小说中的诗情画意与文采。','鹭江出版社','2018-05-01 00:00:00','32开',NULL,'汪曾祺',NULL,'9787545914634','21.00',NULL,'','42.00',NULL,100,100,'5.00','http://img3m1.ddimg.cn/13/4/25261051-1_b_2.jpg',200,'2018-11-04 11:04:20','精装',1),
(121,5,1,'答案之书(我的人生解答书)','答案之书(我的人生解答书)神奇解密书，解答你人生的任何疑惑！周冬雨、余文乐明星同款《我们相爱吧》为它代言，《快乐大本营》《天天向上》何炅、谢娜、李晨、汪涵、何猷君爱不释手新游戏。酷威文化','★风靡英、美、日、韩等20国现象级畅销书。 ★《我们相爱吧》周冬雨、余文乐现场测试，得到惊人精确的答案。 ★《快乐大本营》何炅、维嘉、谢娜、李晨、海涛等众人爱不释手的新游戏。 ★人这一生有太多问题把我们囚禁，由一个问号化作若干个问号，让我们陷入焦虑，阻断我们的思考。而这本书，就是向我们提供一把钥匙、一个缺口，像堵塞的死水中钻了一个孔，使其一泄如注，唤醒大脑，这是解决问题至关重要的一环。 重磅推荐：','百花洲文艺出版社','2016-06-01 00:00:00','40开',NULL,'保罗，酷威文化 出品',NULL,'9787550017719','19.00',NULL,'','38.00',NULL,100,104,'5.00','http://img3m7.ddimg.cn/2/0/23966417-1_b_12.jpg',200,'2018-11-04 11:12:01','精装',1),
(122,5,1,'宅经 : 居家风水一本通（巨中天大师开年新作；居家风水最权威本）','宅经 : 居家风水一本通（巨中天大师开年新作；居家风水最权威本）','《居家风水一本通:宅经》，巨中天大师开年新作，居家风水*权威本！ 相关推荐： 慧缘风水学： 一册在手，随查随习，改运助运，世界堪舆家协会主席中国著名风水学家 慧缘教你自己做大师','武汉出版社','2011-01-01 00:00:00','16开',NULL,'巨中天 著',NULL,'9787543055087','25.50',NULL,'','38.00',NULL,100,100,'6.72','http://img3m7.ddimg.cn/97/22/21021757-1_b_2.jpg',200,'2018-11-04 11:12:02','平装',1),
(123,5,1,'《答案之书》+《问题之书》礼盒套装[精选套装]','《答案之书》+《问题之书》礼盒套装[精选套装]火爆朋友圈、抖音推崇的现象级畅销书！汪涵、马东、何炅、何猷君等明星潮人极力推荐，朋友聚会、生日礼物热门礼盒装玩具书。酷威文化','◎《答案之书》 《问题之书》全新升级版礼盒装重磅推出！一个众星热推的神奇礼盒 你人生的所有问题，这里都有答案。 ◎《天天向上》何猷君爱不释手，汪涵、宋威龙强势围观；《饭局前传》马东大玩特玩。 ◎用问题磨练思维，用答案笑对人生。趣味与哲理并存的 玩具 书，聚会热场的小能手! ◎风靡英、美、日、韩等20国现象级畅销书。 ◎全球销量超千万册！纽约时报畅销书榜58周冠军！ ◎TED创始人理查德 沃尔曼，前雅虎营销总裁赛斯?高汀等多位名人重磅推荐！ ◎图书史上的*经典之作，问世后不断再版，被翻译成多种语言在一百多个国家流传！ 重磅推荐:','百花洲文艺出版社','2016-06-01 00:00:00','40开',NULL,'保罗/[美]乔治・斯托克，酷威文化 出品',NULL,'25272304','43.00',NULL,'','86.00',NULL,100,100,'5.00','http://img3m4.ddimg.cn/79/9/25272304-1_b_3.jpg',200,'2018-11-04 11:12:03','平装-胶订',1),
(124,5,1,'神奇的答案之书','神奇的答案之书(一切问题的答案尽在其中！充满惊奇的答案书！解除你的迷惑，终结你的纠结！愿一切无解都有解！这是一本治愈系心灵解惑书，它将带给你的不只是生活的指引，还有心灵的慰藉、简单的快乐。）','','吉林美术出版社','2016-07-01 00:00:00','24开',NULL,'梅森',NULL,'9787557514259','17.50',NULL,'','35.00',NULL,100,100,'5.00','http://img3m1.ddimg.cn/10/1/24019291-1_b_3.jpg',200,'2018-11-04 11:12:03','平装-胶订',1),
(125,5,1,'我的人生解答书','我的人生解答书继《秘密花园》之后，又一火爆全球的“玩具书”！ 中国人的《the book of answer》（答案之书）！一本能改变你命运的书，周冬雨、余文乐、金贤重、郑秀晶等明星都在玩！','一本能改变你命运的书。 你所有的疑问，它都能替你解答！ 图书功效：解答迷惑、叩问心灵、预测人生、抒解压力 继《秘密花园》之后，又一火爆全球的 玩具书 ！ 中国人的《the book of answer》（答案之书）！引爆全球的解谜占卜类图书！超级简单的 玩法，让你从此告别选择困难症，告别星座运程依赖，告别算命卜卦，告别疑问 这一本书，能给你所有问题的答案！！！ 周冬雨、余文乐、金贤重、郑秀晶等明星都在玩，风靡草根大V网红名媛圈，好玩得根本停不下来。朋友圈这本神书被传疯了，快和你的小伙伴们 一起玩起来吧！！','长江出版社','2016-04-01 00:00:00','32开',NULL,'漫娱文化',NULL,'9787549241866','25.00',NULL,'','35.00',NULL,100,100,'7.15','http://img3m4.ddimg.cn/85/7/23951254-1_b_4.jpg',200,'2018-11-04 11:12:03','平装-胶订',1),
(126,5,1,'美国著名星相学家琳达.古德曼超权威经典指南，引领我们善解别人改变自已--《12星座人》（全球销量超500万册）','美国著名星相学家琳达.古德曼超权威经典指南，引领我们善解别人改变自已--《12星座人》（全球销量超500万册）','本书是现代占星术研究的基础理论教材之一，也是世界范围内拥有*多读者的星相学畅销书之一，仅在美国发行就突破了300万册的销量，之后又再版30多次。','广东南方日报出版社','2010-04-01 00:00:00','16开',NULL,'(美) 琳达・古德曼著',NULL,'9787806529836','21.30',NULL,'','29.90',NULL,100,100,'7.13','http://img3m5.ddimg.cn/8/25/20832875-1_b_7.jpg',200,'2018-11-04 11:12:04','平装-胶订',1),
(127,5,1,'解答之书(答案之书，官方正式授权简体中文版，The Book of Answers)','解答之书(答案之书，官方正式授权简体中文版，The Book of Answers)彻底治愈你的选择困难症，余文乐、周冬雨《我们相爱吧》鼎力推荐，何炅、谢娜、李晨《快乐大本营》实力出镜','★ 《解答之书》又名《答案之书,The Book of Answers》风靡世界的现象级图书，简体中文版官方正式授权 ★1999年于美国面世，18年来已有22国不同版本 ★余文乐、周冬雨倾力推荐！ ★ 金贤重、郑秀晶、郑秀妍随身爱书，韩国明星惊叹：这到底是书还是玩具！ ★ 快乐大本营、我们相爱吧、赤脚的朋友们实力出镜！ ★全精装烫金锁线，80g特规定制轻型纸，25天印制周期呈现精美品质 ★每一桩无伤大雅的烦恼，全都能在这里找到答案，彻底治愈你的选择困难症，纠结的人生，再见！ ★一本重新定义读者 作者关系的书','外语教学与研究出版社','2016-06-14 00:00:00','128开',NULL,'卡罗尔・博尔特',NULL,'9787513575553','42.10',NULL,'','59.00',NULL,100,100,'7.14','http://img3m4.ddimg.cn/7/9/23996914-1_b_13.jpg',200,'2018-11-04 11:12:05','平装',1),
(128,5,1,'生命的轨迹：深度心理分析手册','生命的轨迹：深度心理分析手册','心理学的法则告诉我们说，若是无法察觉内在的情境，它们就会投射出来变成外在的命运，也就是说，一个人若是无法觉知到内在的冲突，那么外在世界就会逼不得已将那份冲突 演示 出来，而且会撕裂成两极对立的情况。 荣格（Carl Gustav Jung） 我早已直觉地知道，在传统占星学的象征符号与拟古式的语言背后，还埋藏着更博大的智慧、更深刻的生命法则，以及以能够让忠诚的占星学子在灵性层次上产生精纯理解的洞见。 我认为这个宇宙语言还有许多内在意义，足以促进灵性上的成长、提升人们的觉知。 史蒂芬 阿若优（Stephen Arroyo） 这些艰难无比的精微次元考验，让我亲身印证了深度占星学在生命周期循环以及自我转化上面的惊人发现。原为我所感','云南人民出版社','2007-11-01 00:00:00','16开',NULL,'（美）阿若优 著，胡因梦 译',NULL,'9787222052277','19.00',NULL,'','38.00',NULL,100,100,'5.00','http://img3m7.ddimg.cn/36/18/20100897-1_b_0.jpg',200,'2018-11-04 11:12:05','平装',1),
(129,5,1,'生命密码','生命密码比九型人格更精准的读心术 一分钟洞悉人心，三分钟知晓性格','数字解释世间万物 哪个数字是掌控命运的解码 一分钟洞悉人心，三分钟知晓性格 传播正能量，是学习、交友、成就事业的决胜法典 公元前500年古希腊流传至今的神秘命理学 令美国人惊叹的 神奇的女人 ！ 时尚生活家、数字魔法师！ 耗时11年，用比九型人格更精准的读心术，为9万余人成功把脉 教你用数字破解生命密码 1、2、3 不再是单纯的阿拉伯数字，它们为你揭示爱情、友情、个性、财富 的秘密！让你重新认识自己，发现*真实的自我！','吉林出版集团有限责任公司','2014-11-01 00:00:00','大32开',NULL,'时小小 著',NULL,'9787553456331','18.00',NULL,'','36.00',NULL,100,100,'5.00','http://img3m8.ddimg.cn/65/36/23588498-1_b_3.jpg',200,'2018-11-04 11:12:05','平装-胶订',1),
(130,5,1,'中国风水一本通','中国风水一本通精挑中国历史十二部风水扛鼎之作，择其精粹原汁原味地解读，并配以当下生活运用实例，助旺自己的运势。','作者在认真梳理中国风水发展历程和风水流派的基础上，经过对众多风水著作的比较和提炼，全书挑选出了十二部风水经典著作，择取其精粹部分进行了原汁原味地解读，并适当配以现代生活中的风水运用实例，达到深入浅出、古为今用的目的。通过这部书，你能够全面而深入地了解中国风水学，并将其运用至自己的生活中，助旺自己的运势。','江西人民出版社','2010-11-01 00:00:00','16开',NULL,'慧明居士 著',NULL,'9787210046028','26.90',NULL,'','39.80',NULL,100,100,'6.76','http://img3m8.ddimg.cn/97/26/20953348-1_b_2.jpg',200,'2018-11-04 11:12:06','平装',1),
(131,5,1,'非常旺宅 住宅风水详解','非常旺宅 住宅风水详解当代风水名家黄一真的独门风水经，调整家居风水不可不备的参考宝典，打造中国人理想的居住模式。','','湖南美术出版社','2011-09-01 00:00:00','16开',NULL,'黄一真 主编',NULL,'9787535646057','49.00',NULL,'','98.00',NULL,100,100,'5.00','http://img3m4.ddimg.cn/0/28/22484484-1_b_1.jpg',200,'2018-11-04 11:12:06','精装',1),
(132,5,1,'四库版足本三命通会（上中下）[精选套装]','四库版足本三命通会（上中下）[精选套装]','《三命通会》是中国传统命理学的集大成之作，是迄今为止*系统*全面*权威的命理学经典。万民英先生在多年的实践中发现无论十神、格局、神煞、纳音论命，都有其道理和应验性，关键是能否掌握各自的精髓和运用方法。《三命通会》一书是中国传统命理学之正脉。','华龄出版社','2016-08-01 00:00:00','16开',NULL,'万民英',NULL,'9787516906798','60.40',NULL,'','88.00',NULL,100,100,'6.87','http://img3m5.ddimg.cn/71/12/24044795-1_b_11.jpg',200,'2018-11-04 11:12:07','平装-胶订',1),
(133,5,1,'现代住宅风水详解:非常旺宅风水 改造你的居家布置:化煞风水 我最想要的居家布置(共三册)？','现代住宅风水详解:非常旺宅风水 改造你的居家布置:化煞风水 我最想要的居家布置(共三册)？当代风水名家黄一真的独门风水经，调整家居风水不可不备的参考宝典，打造中国人理想的居住模式。','《非常旺宅风水(现代住宅风水详解)(精)》阐述居家14大功能区域风水布局理论，层层破解大门风水、玄关风水、客厅风水、卧房风水、儿童房风水 《非常旺宅风水(现代住宅风水详解)(精)》(作者黄一真)奉送数千条大师亲身验证的风水改运秘招，每招都有实景拍摄图，真正让您对风水家居了然于心。展示1000张好风水图片供家装参考，所选案例均是黄一真大师今年完成的风水调整代表力作。以黄老师今时今日之地位，在业界所改楼盘宅屋均有天价收费，本书免费将黄先生毕生所学倾囊相授，让您真正学会自断房屋风水，自创开运格局的真本领。《改造你的居家布置：化煞风水》百万畅销作家、当代风水名家黄一真全新力作，详解18大类473种住宅煞气风水，提供*有效的化解与改运方法。煞气，是指在','湖南美术出版社','2016-04-01 00:00:00','16开',NULL,'黄一真',NULL,'23951024','117.00',NULL,'','234.00',NULL,100,100,'5.00','http://img3m4.ddimg.cn/53/36/23951024-1_b_6.jpg',200,'2018-11-04 11:12:07','精装',1),
(134,5,1,'我的人生解答书.迷你版','我的人生解答书.迷你版迷你版能随手装入口袋，随地解答你的各种疑问！继《秘密花园》之后，又一火爆全球的“玩具书”！ 中国人的《the book of answer》（答案之书）！周冬雨、余文乐、金贤重、郑秀晶等明星都在玩！','《我的人生解答书》之迷你版！ iphone6 plus大小，随手装入口袋，随地解答你的各种疑问！ 网络表情，网络语言的问答形式，助你成功一臂之力！ 图书功效：解答迷惑、叩问心灵、预测人生、抒解压力 继《秘密花园》之后，又一火爆全球的 玩具书 ！ 中国人的《the book of answer》（答案之书）！引爆全球的解谜占卜类图书！超级简单的 玩法，让你从此告别选择困难症，告别星座运程依赖，告别算命卜卦，告别疑问 这一本书，能给你所有问题的答案！！！ 周冬雨、余文乐、金贤重、郑秀晶等明星都在玩，风靡草根大V网红名媛圈，好玩得根本停不下来。朋友圈这本神书被传疯了，快和你的小伙伴们 一起玩起来吧！！','长江出版社','2016-04-01 00:00:00','32开',NULL,'漫娱文化',NULL,'9787549241934','11.80',NULL,'','15.00',NULL,100,103,'7.87','http://img3m3.ddimg.cn/90/24/23954823-1_b_6.jpg',200,'2018-11-04 11:12:08','平装-胶订',1),
(135,5,1,'我最想要的居家布置风水 小户型风水指南','我最想要的居家布置风水 小户型风水指南120平方米以下小户型风水布局与开运必备指南，为想购买和已经购买小户型的读者提供*为全面的指导。','','湖南美术出版社','2011-10-01 00:00:00','16开',NULL,'黄一真',NULL,'9787535647047','34.00',NULL,'','68.00',NULL,100,102,'5.00','http://img3m6.ddimg.cn/50/33/23969336-1_b_5.jpg',200,'2018-11-04 11:12:08','精装',1),
(136,5,1,'居家智慧生活风水','居家智慧生活风水名师独家揭秘生活风水智慧，为您直言献策，教您把运气、福气、财气、人气通通催旺。拿起本书，无论何时何地，黄一真大师的建议都能让您逢凶化吉！拥有本书，您便可做到时时刻刻心里有数，人生处处顺风顺水！','','湖南美术出版社','2011-09-01 00:00:00','16开',NULL,'黄一真',NULL,'9787535647207','34.00',NULL,'','68.00',NULL,100,101,'5.00','http://img3m1.ddimg.cn/22/4/22613701-1_b_0.jpg',200,'2018-11-04 11:12:09','精装',1),
(137,5,1,'风水越简单越实用（大师解密风水开运密码，全面催生家居、商铺、办公室里的五行要素、方位、设计要点、布局原则、朝向和禁忌。','风水越简单越实用（大师解密风水开运密码，全面催生家居、商铺、办公室里的五行要素、方位、设计要点、布局原则、朝向和禁忌。','一本改变生活的简单风水书，它用*易懂的理论、*有效的应用、*全面的建议、*权威的专家心得，来指引你在深入理解风水精髓的基础，快速掌握*实用、*有帮助的风水技巧。一书在手，洞悉风水玄机，把握精彩人生。','中国财富出版社','2010-11-01 00:00:00','16开',NULL,'李琴',NULL,'9787504735850','14.90',NULL,'','29.80',NULL,100,104,'5.00','http://img3m0.ddimg.cn/33/31/20977440-1_b_2.jpg',200,'2018-11-04 11:12:09','平装',1),
(138,5,1,'当代风水名家系列(共4册):超旺的庭院与植物+居家智慧 生活风水+居家宜忌速查手册+改造你的居家布置 化煞风水','当代风水名家系列(共4册):超旺的庭院与植物+居家智慧 生活风水+居家宜忌速查手册+改造你的居家布置 化煞风水','','湖南美术出版社','2012-12-01 00:00:00','16开',NULL,'黄一真',NULL,'23992064','136.00',NULL,'','272.00',NULL,100,101,'5.00','http://img3m4.ddimg.cn/8/6/23992064-1_b_6.jpg',200,'2018-11-04 11:12:10','精装',1),
(139,5,1,'经典塔罗入门（美国引进，超级畅销，万用塔罗全书，神秘奥义解析，在美单本销量已过10,0000册，\"星星\"级塔罗研究师专','经典塔罗入门（美国引进，超级畅销，万用塔罗全书，神秘奥义解析，在美单本销量已过10,0000册，\"星星\"级塔罗研究师专塔罗牌是一种古老神奇的卡牌，有着非同寻常的预测力与魅力。古往今来，对它着迷的占卜师不计其数，在欧美，使用塔罗牌已经成为一种流行。很多人甚至认为：你也许可以没有书读，但一定得有并能使用一副塔罗牌。','塔罗牌是一种古老神奇的卡牌，有着非同寻常的预测力与魅力。古往今来，对它着迷的占卜师不计其数，在欧美，使用塔罗牌已经成为一种流行。很多人甚至认为：你也许可以没有书读，但一定得有并能使用一副塔罗牌。 本书为美国著名塔罗研究专家（星级）P斯科特霍兰德的著作，内容涵盖面广，从塔罗的历史渊源讲起，严谨细致，在美国深受认可。**版单本销量上市不多久已超越10,0000册。 也许，作者的初衷虽旨在为塔罗入门级研究者以及塔罗初学者提供帮助，但全面的内容解读与严谨细致的卡牌解读，以及诸多经典牌阵的深层解析，已经让本书跨越了入门级的范畴。翻开本书你会发现，作者对每一类塔罗牌种甚至牌面标号都进行了分析与解读，适用于任何一类牌种。堪称 万用塔罗全书 。 为提高本书印刷质量，出版方特意选用优质纸张印刷','北方文艺出版社','2014-02-01 00:00:00','32开',NULL,'P.斯科特.霍兰德',NULL,'9787531732365','44.00',NULL,'','88.00',NULL,100,100,'5.00','http://img3m3.ddimg.cn/97/1/23436763-1_b_4.jpg',200,'2018-11-04 11:12:10','盒装',1),
(140,5,1,'周公解梦1000问','周公解梦1000问','','华文出版社','2010-08-01 00:00:00','10开',NULL,'春之霖，于小刀',NULL,'9787507531558','14.90',NULL,'','29.80',NULL,100,100,'5.00','http://img3m9.ddimg.cn/71/14/20895209-1_b_3.jpg',200,'2018-11-04 11:12:11','平装',1),
(141,5,1,'风水――中国易学博览','风水――中国易学博览','相关推荐： 慧缘风水学： 一册在手，随查随习，改运助运，世界堪舆家协会主席中国著名风水学家 慧缘教你自己做大师','内蒙古人民出版社','2007-07-01 00:00:00','',NULL,'秦伦诗 著',NULL,'9787204088850','28.40',NULL,'','36.00',NULL,100,100,'7.89','http://img3m5.ddimg.cn/30/10/20049015-1_b_0.jpg',200,'2018-11-04 11:12:11','平装',1),
(142,5,1,'慧缘大师教你学风水（全二册）：世界堪舆家协会主席，享誉风水界的慧缘大师教你读懂风水的奥秘，自己改运助运！','慧缘大师教你学风水（全二册）：世界堪舆家协会主席，享誉风水界的慧缘大师教你读懂风水的奥秘，自己改运助运！一册在手，随查随习，改运助运，教你自己做大师！','★ 我们在生活中遇到的各种风水问题，如布局的不合理、方位的不得运、各种煞气导致的各种问题 在慧缘大师的这本风水实战宝典中，都可以通过晓畅易懂的文字和浅显直观的配图而学习到解决方法。 ★实用的风水智慧，勘察方法及原则，详尽罗盘解读，化煞工具和方法，风水改造方法，阳宅风水实例，阴宅风水图谱 ★以居家住宅风水为重点，全面系统地对各种建筑、装饰、办公、商用等风水科学作了翔实的、创造性的解析。 ★一册在手，随查随习，改运助运，世界堪舆家协会主席中国著名风水学家教你自己做大师 ★*权威、*全面、*易懂','','2010-07-01 00:00:00','16开',NULL,'慧缘 著',NULL,'20946143','54.70',NULL,'','69.60',NULL,100,102,'7.86','http://img3m3.ddimg.cn/20/36/20946143-1_b_2.jpg',200,'2018-11-04 11:12:11','平装',1),
(143,5,1,'图解风水入门（批量购书更优惠，优惠价请联系客服，或致电010-56265389）','图解风水入门（批量购书更优惠，优惠价请联系客服，或致电010-56265389）最浅显的风水入门读本，即学即会的风水实战、布局、招财、旺运。19个风水核心概念，54个风水实战的秘诀','风水入门一本通 *浅显的风水入门读本，即学即会。 19个风水核心概念，54个风水实战的秘诀。 轻松通晓风水内涵，打造和谐健康的人居环境。 气、阴阳、四象、五行、八卦、龙脉、形势、水龙、水口、朝案、点穴 风水基本概念全揭秘。 阳宅四大布局、龙脉的流向、理想风水模式、山的五种形式，风水实战大全集。 家居风水核心要点：住宅的选址 楼盘的挑选 庭院的设计 搬迁的时日 室内的装潢设计。 商业风水核心要点：选址 楼层 朝向 大门 办公室 会议室 物品的摆放。 事业风水核心要点：居住环境的影响 办公环境的影响 饮食习惯的影响 座位安排的影响。 学业风水核心要点：书房的选择 书桌的摆放 学习用具的选择 饮食习惯的影响。 婚姻风水核心要点：结婚时间的选择 新婚房间的选择 新婚房间的','文化艺术','2014-06-01 00:00:00','16开',NULL,'李静',NULL,'9787503945717','14.00',NULL,'','36.00',NULL,100,100,'3.89','http://img3m9.ddimg.cn/61/17/1085267959-1_b_1.jpg',200,'2018-11-04 11:12:13','平装-胶订',1),
(144,5,1,'心灵塔罗：塔罗全书+塔罗天天灵（套装共2册）[精选套装]','心灵塔罗：塔罗全书+塔罗天天灵（套装共2册）[精选套装]','千年以来，塔罗牌始终是人类生命不可或缺的要素之一。每一个人都何自己的塔罗，它会守护着你的幸福。如果你在此之前疏火了这一点，那么你就可能会经常遇到迷茫与困惑：如果你找到了自己的塔罗，那么，幸福会时常围绕着你！ 《塔罗天天灵》是一本神秘的占卜书，由台湾塔罗界传奇 女巫 傅子绮亲撰，附送国际标准全副塔罗牌。受到台湾各界知名人士广泛好评，台湾两性作家女王、插画家大莓羊、漫画家水瓶鲸鱼、塔罗名人向日葵、怀旧卡通漫画家张哲生、时尚名媛杨秀蓉等一致推荐。 相信拥有本书，您将会随时随地掌握当日运势，365天，天天都拥有绝佳好人气！','哈尔滨出版社','2012-03-01 00:00:00','16开',NULL,'迪亚夫人 傅子绮',NULL,'25187517','63.00',NULL,'','126.00',NULL,100,100,'5.00','http://img3m7.ddimg.cn/36/26/25187517-1_b_2.jpg',200,'2018-11-04 11:12:13','平装-胶订',1),
(145,5,1,'塔罗天天灵（附赠全副国际标准塔罗牌，彩色印刷，精装盒装）','塔罗天天灵（附赠全副国际标准塔罗牌，彩色印刷，精装盒装）立竿见影的运势预测，神秘莫测的塔罗力量！ “塔罗女巫”全面解说牌义， 深度解析塔罗牌基本阵法。','《塔罗天天灵》是一本神秘的占卜书，由台湾塔罗界传奇 女巫 傅子绮亲撰，附送国际标准全副塔罗牌。受到台湾各界知名人士广泛好评，台湾两性作家女王、插画家大莓羊、漫画家水瓶鲸鱼、塔罗名人向日葵、怀旧卡通漫画家张哲生、时尚名媛杨秀蓉等一致推荐。 相信拥有本书，您将会随时随地掌握当日运势， 365 天，天天都拥有绝佳好人气！ 本书特点： ★ 全书由塔罗界传奇 女巫 傅子绮亲撰，附送国际标准全副塔罗牌，四色印刷，精美盒装。 ★ 内容包含了立竿见影的运势预测，充满了神秘莫测的塔罗力量！ ★ 使用方法简单、便利，图文结合，深入浅出，让塔罗初学者能快速了解每张塔罗牌的内涵，快速上手。','武汉出版社','2012-03-01 00:00:00','32开',NULL,'傅子绮',NULL,'9787543065789','34.00',NULL,'','68.00',NULL,100,100,'5.00','http://img3m5.ddimg.cn/37/18/23976055-1_b_12.jpg',200,'2018-11-04 11:12:14','平装-胶订',1),
(146,5,1,'非常店铺','非常店铺**本财运风水通解宝典，好财运让您走红运、赚大钱。当代风水名家黄一真为您全面揭示财富开运密码，教您*有效的聚财运的风水绝招，帮助您催旺生意，为您带来滚滚财源。','','湖南美术出版社','2011-08-01 00:00:00','16开',NULL,'黄一真',NULL,'9787535647016','49.00',NULL,'','98.00',NULL,100,100,'5.00','http://img3m2.ddimg.cn/66/20/22609092-1_b_0.jpg',200,'2018-11-04 11:12:14','精装',1),
(147,5,1,'传统文库当代风水名家系列（共三册）：非常旺宅 住宅风水 改造你的居家布置 化煞风水 居家宜忌速查手册 风水宜忌','传统文库当代风水名家系列（共三册）：非常旺宅 住宅风水 改造你的居家布置 化煞风水 居家宜忌速查手册 风水宜忌当代风水名家黄一真的独门风水经，调整家居风水不可不备的参考宝典，打造中国人理想的居住模式。','','湖南美术出版社','2011-12-01 00:00:00','16开',NULL,'黄一真',NULL,'23940771','117.00',NULL,'','234.00',NULL,100,100,'5.00','http://img3m1.ddimg.cn/96/32/23940771-1_b_5.jpg',200,'2018-11-04 11:12:14','精装',1),
(148,5,1,'改造你的居家布置 化煞风水','改造你的居家布置 化煞风水百万畅销作家、当代风水名家黄一真全新力作， 详解18大类473种住宅煞气风水，提供有效的化解与改运方法。','','湖南美术出版社','2011-12-01 00:00:00','16开',NULL,'黄一真',NULL,'9787535647191','34.00',NULL,'','68.00',NULL,100,100,'5.00','http://img3m8.ddimg.cn/63/4/22531968-1_b_1.jpg',200,'2018-11-04 11:12:15','精装',1),
(149,5,1,'麻衣神相 柳庄神相 两册套书 男女手相面相','麻衣神相 柳庄神相 两册套书 男女手相面相全新正版','','世界知识','2014-02-15 00:00:00','16开',NULL,'世界知识',NULL,'9787020099344','50.00',NULL,'','204.00',NULL,100,100,'2.46','http://img3m1.ddimg.cn/41/7/1315688261-1_b_4.jpg',200,'2018-11-04 11:12:15','平装-胶订',1),
(150,5,1,'奇门遁甲秘笈全书阳遁九局阴遁九局刘伯温原著陈明注释 奇门遁甲入门 河图洛书 l六爻 六十四卦 周易学入门书籍','奇门遁甲秘笈全书阳遁九局阴遁九局刘伯温原著陈明注释 奇门遁甲入门 河图洛书 l六爻 六十四卦 周易学入门书籍奇门遁甲秘笈真诠','亲们！如需要开具发票.请在发票信息处注明发票抬头.个人默认不开.不需要发票的亲们优先发货.由于系统审核.发票可能会漏发.谢谢理解！本店图书保证正版全新！请放心购买！','中医古籍出版社','2013-06-01 00:00:00','128开',NULL,'刘伯温原著，陈明注释',NULL,'9787550212329','118.00',NULL,'','118.00',NULL,100,101,'0.00','http://img3m9.ddimg.cn/51/1/1057368759-1_b_1.jpg',200,'2018-11-04 11:12:15','平装-胶订',1),
(151,6,1,'笑猫日记（套装共二十册）','笑猫日记（套装共二十册）杨红樱全新力作，礼品盒装，赠送杨红樱签名海报！这些从严冬写到金秋的故事，犹如温暖童年的“心灵鸡汤”，犹如陪伴你成长的“心情宝典”。儿童文学','适读人群 ：7-12岁 《笑猫日记》系列是中国当代著名童书作家杨红樱女士的代表作品。这是以中国孩子的现实生活为背景的系列童话故事，它以一只会笑的猫为故事的讲述者，用日记体的写作形式，创造了动物与孩子共同参与、幻想与现实相结合的多层次的文学世界。孩子们既可以享受儿童文学的天真和趣味，也可以领略蕴藏在字里行间中的人生智慧和生活哲学，从而培养其坚韧、宽容、感恩、自信等品质，始终怀着一份对社会、对未来的美好情感和信念健康快乐地成长。','明天出版社','2014-10-30 00:00:00','32开',NULL,'杨红樱',NULL,'9787533282431','177.00',NULL,'','300.00',NULL,100,100,'5.90','http://img3m1.ddimg.cn/19/18/23600431-1_b_1.jpg',200,'2018-11-04 11:16:34','平装-胶订',1),
(152,6,1,'小猪唏哩呼噜(注音版上、下)','小猪唏哩呼噜(注音版上、下)入选新闻出版总署向青少年推荐的百种优秀图书、入选中国小学生基础阅读书目、获国际安徒生文学奖提名奖的作家和画家的经典之作，系列图书畅销一千万册！','文字作者孙幼军先生是我国**位获国际安徒生文学奖提名奖的作家。 插图作者裘兆明女士是我国**位获国际安徒生插图奖提名奖的画家 。 《小猪唏哩呼噜》的荣誉 该作品曾荣获中国作家协会第四届全国优秀儿童文学奖；第五届宋庆龄儿童文学奖童话类提名奖； 优秀童书 Top10 年度评奖，本书是**入选的国内原创作品；国际儿童阅读联盟刊物《书鸟》推荐的三本原创书之一；荣获全国优秀畅销书奖。入选新闻出版署2007年底向青少年推荐的百种优秀图书。入选中国小学生基础阅读书目。 《小猪唏哩呼噜》大事记 1995年3月 首先问世于台湾民生报出版。 2000年5月 获中国作家协会第四届全国优秀儿童文学奖。 2000年 获第五届宋庆龄儿童文学奖童话类提名奖。 2005年 《父母必读》杂志与红泥巴读书俱乐部举办的**届童书前十评选中**一','春风文艺出版社','2014-07-01 00:00:00','24开',NULL,'孙幼军 著',NULL,'23504059','21.40',NULL,'','30.00',NULL,100,100,'7.14','http://img3m9.ddimg.cn/73/31/23504059-1_b_7.jpg',200,'2018-11-04 11:16:34','平装-胶订',1),
(153,6,1,'郑渊洁四大名传（全4册）','郑渊洁四大名传（全4册）内含皮皮鲁传、鲁西西传、舒克贝塔传、大灰狼罗克传。郑渊洁童话经典人物，故事影响了中国三代孩子，荣获“联合国全球十大图书”， 图文并茂版适合7-14岁阅读的儿童文学，皮皮鲁总动员出品','＊ 荣获 联合国全球十大图书 ＊ 本套书累计发行逾两千万册，影响了中国三代孩子 ＊ 精选郑渊洁笔下五个经典童话人物的精彩作品结集成册','浙江少年儿童出版社','2015-12-01 00:00:00','32开',NULL,'郑渊洁 著',NULL,'23812468','50.00',NULL,'','100.00',NULL,100,101,'5.00','http://img3m8.ddimg.cn/97/8/23812468-1_b_1.jpg',200,'2018-11-04 11:16:34','平装-胶订',1),
(154,6,1,'任溶溶系列：没头脑和不高兴(注音版）','任溶溶系列：没头脑和不高兴(注音版）','任溶溶老先生是中国儿童文学中的一员大将，功底深厚。 他是一个风趣幽默、童心永驻的老头儿。 他是一位不可多得的、天生的儿童文学作家。 他的作品影响了几代中国儿童的成长。 他是中国幽默儿童文学创作的领军人物。 他是我国具有国际影响的儿童文学大家。 中国幽默儿童文学创作 任溶溶系列 属国家十五规划重点图书。本系列汇聚了任溶溶迄今为止所创儿童文学作品的精华所在；并且根据学校、老师的要求，为了照顾低年龄段孩子的阅读需求，精心制作了 注音版 ，希望小书迷们能够喜欢。 收入本系列的作品，一部分为作者的新作，一部分为作者过去作品的全面修订或增补。从某种意义上说，本书系反映了任溶溶**的创作思想。','浙江少年儿童出版社','2018-04-01 00:00:00','大32开',NULL,'任溶溶 著',NULL,'9787559706522','12.80',NULL,'','18.00',NULL,100,101,'7.12','http://img3m0.ddimg.cn/77/3/25278440-1_b_7.jpg',200,'2018-11-04 11:16:35','平装-胶订',1),
(155,6,1,'红鞋子童话拼音版','红鞋子童话拼音版（注音版童书，小学老师审核，为小学生量身打造/入选清华大学附属小学校长阅读书目/中国好书得主湖南师大教授笨狼妈妈代表性作品/已有超过30000名读者给予好评','★ 世界那么大，红鞋子带你去看看；世界那么大，红鞋子带你感受微微的诗意，感受陪伴的快乐，感受怀念家、寻找家的乐趣 ★ 拼音版，为小学生量身打造 ★ 小学优秀教师审读拼音 ★ 入选清华大学附属小学校长阅读推荐书目 ★ 湖南师范大学教授笨狼妈妈汤素兰代表性作品 ★ 笨狼妈妈汤素兰多部作品入选新课标语文课本 ★ 品质保证：非拼音版《红鞋子》获当当网五星童书，5.5万余条好评，5.5万多个推荐，值得信赖 ★ 传递温暖和关爱，让孩子感受爱意和陪伴的温馨，让孩子学会爱别人，学会分享，学会合作，学会换位思考；更重要的是，为孩子的未来成功打下坚实的基础','天天出版社有限责任公司','2015-09-01 00:00:00','32开',NULL,'汤素兰 著',NULL,'9787501609741','9.00',NULL,'','18.00',NULL,100,101,'5.00','http://img3m9.ddimg.cn/8/21/23776739-1_b_1.jpg',200,'2018-11-04 11:16:35','平装-胶订',1),
(156,6,1,'“没头脑”和“不高兴”任溶溶幽默儿童文学创作（注音版）典藏本','“没头脑”和“不高兴”任溶溶幽默儿童文学创作（注音版）典藏本《没头脑和不高兴》（注音版）入选新阅读机构推荐中国小学生必读书目，一二年级学生必读的三十本图书之一','任溶溶老先生是中国儿童文学中的一员大将，功底深厚。 他是一个风趣幽默、童心永驻的老头儿。 他是一位不可多得的、天生的儿童文学作家。 他的作品影响了几代中国儿童的成长。 他是中国幽默儿童文学创作的领军人物。 他是我国具有国际影响的儿童文学大家。 中国幽默儿童文学创作 任溶溶系列 属国家十五规划重点图书。本系列汇聚了任溶溶迄今为止所创儿童文学作品的精华所在；并且根据学校、 老师的要求，为了照顾低年龄段孩子的阅读需求，精心制作了 注音版 ，希望小书迷们能够喜欢。','浙江少年儿童出版社','2018-04-01 00:00:00','32开',NULL,'任溶溶',NULL,'9787559706515','49.00',NULL,'','98.00',NULL,100,100,'5.00','http://img3m5.ddimg.cn/54/36/25265745-1_b_3.jpg',200,'2018-11-04 11:16:36','平装-胶订',1),
(157,6,1,'郑渊洁四大名传：皮皮鲁传','郑渊洁四大名传：皮皮鲁传郑渊洁四大名传包含：皮皮鲁传、鲁西西传、舒克贝塔传、大灰狼罗克传。郑渊洁童话经典人物，故事影响了中国三代孩子，荣获“联合国全球十大图书”， 图文并茂版适合7-14岁阅读的儿童文学，皮皮鲁总动员出品','','浙江少年儿童出版社','2015-12-01 00:00:00','32开',NULL,'郑渊洁 著',NULL,'9787534290770','12.50',NULL,'','25.00',NULL,100,100,'5.00','http://img3m1.ddimg.cn/1/11/23812471-1_b_1.jpg',200,'2018-11-04 11:16:36','平装',1),
(158,6,1,'郑渊洁十二生肖童话（全12册）（内含《父与子》这篇文章，央视“朗读者”第2期郑渊洁与父亲郑洪升深情共读）','郑渊洁十二生肖童话（全12册）（内含《父与子》这篇文章，央视“朗读者”第2期郑渊洁与父亲郑洪升深情共读）颠覆对十二生肖动物的传统认识，影响了中国三代孩子，时隔十年，第三版图文并茂全新上市，荣获“联合国全球十大图书”，适合7-14岁阅读的儿童文学作品。','＊ 十二生肖童话系列是精选了郑渊洁作品中关于十二生肖动物的故事集合，全套共 12 册，图文并茂，制作精良。 ＊ 传统的十二生肖动物，郑渊洁却给了大家完全不同的视角，颠覆传统认知的故事，带给小读者一场想象力的饕餮盛宴。 ＊ 天马行空的童话故事不仅给了小读者阅读的愉悦，更能让孩子领略故事中积极向上的 郑 能量。 ＊ 荣获 联合国全球十大图书 ，是中国儿童文学的代表，影响了中国三代孩子。','浙江少年儿童出版社','2015-12-01 00:00:00','32开',NULL,'郑渊洁',NULL,'23812473','84.00',NULL,'','168.00',NULL,100,100,'5.00','http://img3m3.ddimg.cn/3/13/23812473-1_b_4.jpg',200,'2018-11-04 11:16:37','平装-胶订',1),
(159,6,1,'阿凡提经典故事系列丛书（全4册）','阿凡提经典故事系列丛书（全4册）经典儿童文学','阿凡提故事历来广受读者欢迎，智慧故事蕴意隽永，有助于启发读者思维；幽默故事能培养读者的幽默感，帮助他们形成乐观豁达的人生态度。 本系列全四册图书精选了阿凡提经典智慧、幽默故事中适合少年儿童阅读的故事，摒弃传统阿凡提故事中那些略显荒唐、不可理喻以及随时代的发展在现代人眼里智慧和幽默含量大为削减的故事，精选了阿凡提故事中颇具生命力的经典片段。这些故事以生动幽默的形式集中展现阿凡提的过人智慧，令人在忍俊不禁的同时，思维得到启发。 在保证内容经典隽永的同时，该书在外在形式上也颇下功夫，手绘插图，水粉着色，国王、巴依、阿訇、维吾尔族服饰、坎土曼、烤羊肉串、拉条子 这些具有强烈地域民族特色的形象，在有着深厚漫画功底的新疆本土画家罗罗的笔下，表现得形神兼备、夸张有趣，令人过目难忘。','新疆青少年出版社','2011-04-01 00:00:00','16开',NULL,'艾克拜尔?吾拉木、赵世杰编著',NULL,'21054899','33.00',NULL,'','66.00',NULL,100,100,'5.00','http://img3m9.ddimg.cn/74/12/21054899-1_b_2.jpg',200,'2018-11-04 11:16:37','平装-胶订',1),
(160,6,1,'皮皮鲁和鲁西西银色宝典（包含驯兔记等共9册）','皮皮鲁和鲁西西银色宝典（包含驯兔记等共9册）郑渊洁经典童话图文并茂新版，获选联合国评选的全球十大图书。本辑收录了郑渊洁全新作品《魔鬼号列车》，经典作品《复活的恐龙》《大侦探乔麦皮》《教室里的隐身人》等。皮皮鲁总动员出品。7-10岁儿童文学','','浙江少年儿童出版社','2016-06-01 00:00:00','32开',NULL,'郑渊洁',NULL,'24008167','77.00',NULL,'','154.00',NULL,100,100,'5.00','http://img3m7.ddimg.cn/73/14/24008167-1_b_2.jpg',200,'2018-11-04 11:16:37','平装-胶订',1),
(161,6,1,'郑渊洁四大名传：鲁西西传','郑渊洁四大名传：鲁西西传郑渊洁四大名传包含：皮皮鲁传、鲁西西传、舒克贝塔传、大灰狼罗克传。郑渊洁童话经典人物，故事影响了中国三代孩子，荣获“联合国全球十大图书”， 图文并茂版适合7-14岁阅读的儿童文学，皮皮鲁总动员出品','＊荣获 联合国全球十大图书 ＊本书累计发行逾五百万册，影响了中国三代孩子 ＊郑渊洁童话中的女一号：鲁西西，她是皮皮鲁的双胞胎妹妹。 ＊鲁西西乖巧善良、聪明好学，和哥哥皮皮鲁性格截然不同。但是，身为女孩子的鲁西西也和哥哥一样充满了正义和勇气。 ＊本书精选了7篇鲁西西的故事独立成传，快来一起感受鲁西西的 郑 能量吧。','浙江少年儿童出版社','2015-12-01 00:00:00','大32开',NULL,'郑渊洁 著',NULL,'9787534290763','12.50',NULL,'','25.00',NULL,100,100,'5.00','http://img3m0.ddimg.cn/0/10/23812470-1_b_2.jpg',200,'2018-11-04 11:16:38','平装',1),
(162,6,1,'学会管自己（歪歪兔独立成长童话）','学会管自己（歪歪兔独立成长童话）中国儿童文学故事，为小学低年级儿童量身打造的童话故事，学会认真不马虎，学会勤快不拖拉，不找借口不搪塞，发现优点不自卑，学会坚持不放弃……从独立品格、学习能力、社会适应三方面应对小学环境。桥梁书','学会认真不马虎，学会勤快不拖拉，不找借口不搪塞，发现优点不自卑，学会坚持不放弃 独立品格、学习能力、社会适应三方面应对小学新环境的系统性文学启蒙主题童话.4-6亲子共读，7-10自主阅读 当孩子进入小学之后，他所面对的环境、规则都会发生质的变化。因此，需要家长帮助孩子在各个方面做出相应的调整和改变。孩子进入小学后会面对以下几个变化：规则和纪律的变化、集体生活环境的变化、学习方式和内容的变化、人际关系的变化。孩子如果不能适应这些新变化，往往容易产生注意力不集中、做事拖沓、粗心大意、自卑自弃等问题，严重的甚至会产生厌学情绪。 如何让孩子在应试体系下既能跟上学校教育的要求，又能保持自由天性？ 如何让孩子既能适应集体生活的基本要求，又能保持独特个性？ 如何让孩子养成良好','海豚出版社','2014-08-01 00:00:00','大32开',NULL,'陈梦敏著，张文绮图',NULL,'23521768','64.00',NULL,'','128.00',NULL,100,100,'5.00','http://img3m8.ddimg.cn/61/17/23521768-1_b_13.jpg',200,'2018-11-04 11:16:39','平装-胶订',1),
(163,6,1,'笑猫日记：那个黑色的下午','笑猫日记：那个黑色的下午','适读人群 ：7-12岁 马小跳的表妹杜真子有一只猫，他会笑，还记得吗？这些从严冬写到金秋的故事，犹如温暖童年的 心 灵鸡汤 ，犹如陪伴你成长的 心情宝典 。相信你将会在幽默好玩、美妙温暖的文字中，发现一条连通现实和幻想的秘密通道，相信你会感动，会流泪，会哈哈大笑，会开始生命中*初的思考 用梦想温暖童年，用智慧点亮童心。','明天出版社','2009-09-01 00:00:00','32开',NULL,'杨红樱',NULL,'9787533261986','8.80',NULL,'','15.00',NULL,100,100,'5.87','http://img3m4.ddimg.cn/53/32/20675114-1_b_5.jpg',200,'2018-11-04 11:16:40','平装-胶订',1),
(164,6,1,'汉声中国童话（全12册）（精美礼盒装，享誉世界的经典童话 代代相传的文化瑰宝）','汉声中国童话（全12册）（精美礼盒装，享誉世界的经典童话 代代相传的文化瑰宝）上百名匠人历经10年打造，全球华人“传家宝”级读物。37年来获得第八届文津图书奖、台湾地区“金鼎奖优良图书奖”、新加坡“*图书金牌奖”等几十项重要奖项与荣誉，被高洪波、李文儒、白先勇、李一慢、窦桂梅','上百名匠人历经10年，打造全球华人 传家宝 级读物。 37年来获得第八届文津图书奖、台湾地区 金鼎奖优良图书奖 、新加坡 *图书金牌奖 等几十项重要奖项与荣誉，被高洪波、李文儒、白先勇、李一慢、窦桂梅等各界专家、学者盛赞， 蕴含中华文化基因的好故事 。 一套书让孩子读一整年。 从大年三十开始，每日一则，每月一本，全年12本共362则*地道的中国故事。 中国特有的二十四节气、传统节日、十二生肖，风土人情，在书中得到淋漓尽致的体现。 将传承五千年的中国故事，讲给中国的孩子听。 362则代代相传的中国故事，让孩子潜移默化地懂得伦理亲情、忠孝节义，得到传统文化启蒙。 浅显晓畅、口语化的叙述方式，方便亲子共读，也增加了孩子自主阅读的趣味性。 原汁原味的 中国风 插图，展示中华传统文化之美。','天地出版社','2018-01-30 00:00:00','16开',NULL,'汉声杂志社',NULL,'9787545533163','468.00',NULL,'','936.00',NULL,100,100,'5.00','http://img3m7.ddimg.cn/20/14/25210667-1_b_3.jpg',200,'2018-11-04 11:16:40','盒装',1),
(165,6,1,'8册百篇张秋生小巴掌童话注音版一二年级课外书必读三年级课外阅读书籍少儿美绘本经典故事书儿童文学畅销童书小学生读物6-1','8册百篇张秋生小巴掌童话注音版一二年级课外书必读三年级课外阅读书籍少儿美绘本经典故事书儿童文学畅销童书小学生读物6-18册百篇张秋生小巴掌童话注音版一二年级课外书必读三年级课外阅读书籍少儿美绘本经典故事书儿童文学畅销童书小学生读物6-12周岁','','山东科学技术出版社','2018-04-18 00:00:00','32开',NULL,'张秋生',NULL,'9787533191498','55.20',NULL,'','110.40',NULL,100,100,'5.00','http://img3m8.ddimg.cn/29/35/25309478-1_b_2.jpg',200,'2018-11-04 11:16:40','平装-胶订',1),
(166,6,1,'字的童话（全7册）','字的童话（全7册）吸引孩子对认字产生兴趣的桥梁书。幽默的童话、一线老师设计的游戏，让孩子轻松跨过阅读门槛，喜欢上认字、造句、作文。儿童文学名家林世仁、哲也和十三位插画家共同创作。附赠亲子活动手册。（蒲公英童书馆出品）','轻松阅读零负担，大作家联袂演绎，帮孩子爱上独立阅读，《阅读123》，进来看看 这是**套从字的 字的形音义 字的化学变化 字的排队游戏 字的主题乐园 文字动物园 文字植物园 字的心情 等七个领域，用有趣又实用的方式，向广大小读者传递文字的意义与认字、理解字并应用好字的方法的趣味读物。 所有的专家都告诉我们，唯有 趣味 ，才能引起学习的兴趣。所以我们邀请两位得奖无数、兼具幽默感与文学修养的儿童文学作家林世仁和哲也一起，讨论创作的主题和方向。他们创作的童话，想象力充沛，不仅能够逗得孩子开怀大笑，更超越了 字 义之外，激发孩子更多元的思考。 孩子从纯粹的图画的阅读，开始转向文字的阅读，父母要帮助孩子找到适当的 桥梁书 ，不要让孩子在文字面前碰壁，自此关上阅读的大门。 字的童话 系列，特','贵州人民出版社','2013-04-01 00:00:00','32开',NULL,'林世仁 编文，章毓倩 绘',NULL,'9787221105714','49.00',NULL,'','98.00',NULL,100,100,'5.00','http://img3m6.ddimg.cn/6/9/23198676-1_b_6.jpg',200,'2018-11-04 11:16:41','平装-胶订',1),
(167,6,1,'皮皮鲁和鲁西西金色宝典（共8册）','皮皮鲁和鲁西西金色宝典（共8册）郑渊洁经典童话图文并茂新版，荣获“联合国全球十大图书”。看皮皮鲁和鲁西西形色奇遇，天马行空。皮皮鲁总动员出品。儿童文学','《皮皮鲁和鲁西西金色宝典》由《皮皮鲁和309暗室》《皮皮鲁和幻影号》《皮皮鲁和魔方大厦》《皮皮鲁压缩人生七天》《皮皮鲁分身记》《皮皮鲁和遥控老师》《皮皮鲁送你100条命》《皮皮鲁和66宗罪》共八本组成。 《皮皮鲁和309暗室》：皮皮鲁和鲁西西在家里壁橱发现了一个暗室，他们在这四扇神秘的大门后经历了四段奇遇，精彩刺激； 《皮皮鲁和幻影号》：皮皮鲁变身超级英雄，驾 幻影号 帮助警察，帮助同学，还拯救难民，平息战争，维护世界和平； 《皮皮鲁和魔方大厦》：皮皮鲁的好朋友来克偶然闯进了魔方大厦，在这26个国城里，来克的经历神奇不凡； 《皮皮鲁压缩人生七天》：皮皮鲁通过人生压缩仪观看了贾润成的一生。人生压缩器将贾润成的人生压缩为7 天展示出来，这短短的7天，对皮皮鲁来说，极具警示和启发； 《皮皮鲁分身记》：皮','浙江少年儿童出版社','2016-02-01 00:00:00','32开',NULL,'郑渊洁',NULL,'23908638','76.00',NULL,'','152.00',NULL,100,100,'5.00','http://img3m8.ddimg.cn/39/15/23908638-1_b_2.jpg',200,'2018-11-04 11:16:41','平装-胶订',1),
(168,6,1,'笨狼的故事注音版（全8本）','笨狼的故事注音版（全8本）读好玩的笨狼故事，学有趣的汉语拼音。笨狼妈妈汤素兰经典作品，20余年的沉淀与流传的经典童话，荣获诸多大奖。大字体拼音，美趣的插图，精美的装帧，全新的阅读乐趣！图书更附有独一无二的《笨狼汉语拼音表》','★大字体注音版，丰富的图画，精美的装帧，全新的阅读乐趣！ ★著名儿童文学作家汤素兰的经典作品 ★经历21 年时间检验的经典童话故事，家长和孩子共同的童年记忆 ★真正呼唤童真的故事，被称作中国版的小熊温尼 菩 ★自然流露的幽默情怀，独特的汤氏搞怪风格，让孩子忍俊不禁 ★笔调轻快、语言幽默、情节跳跃，给孩子独一无二的感受 幽默，天真，温情，奇趣，冒险，Welcom！欢迎来到笨狼的世界。 笨狼是一个憨直可爱的小小狼， 它在爸爸妈妈的呵护下茁壮成长， 它在好朋友聪明兔的帮助下和杂货店老板胖*斗智斗勇， 它在鹅太太、眼镜蛇小姐、牛博士的教育下快乐学习， 他憨直、可爱、简单，对世界永远充满了好奇心， 他善良、纯真、有行动力，帮失眠症原野上的朋友们治好了失眠症。 他的故事滋养了一代代小读者纯美的心灵。 爱上笨狼，爱上阅','湖南少年儿童出版社','2016-06-01 00:00:00','32开',NULL,'汤素兰',NULL,'23993424','80.00',NULL,'','160.00',NULL,100,100,'5.00','http://img3m4.ddimg.cn/81/34/23993424-1_b_6.jpg',200,'2018-11-04 11:16:42','平装-胶订',1),
(169,6,1,'中国成语故事','中国成语故事千万小读者好评 人手一册 精装大开本 中华传统文化故事 睡前 学前 启蒙 自主阅读入门 那些耳熟能详的故事 让宝宝也记住吧 因印刷批次不同，存在开本大小略有不同。内容一致，商品随机发放，请读者周知','从远古的回顾到今天的眺望，如果只选择停留在原点，便永远望不见地平线另一端的模样。成长，是一个过程，如果不能让脚步飞扬，那么就该让思想插上翅膀。童话与故事赐予我们想象，它们是基石，垫高我们迈向前方的脚。当我们把 为什么 变成惊叹号，当我们无畏地闯入大自然的怀抱，成长的轨迹便会向未来伸展成有力的形状。 用精美的图片张扬自然的力量，用传神的文字解读知识的彷徨。让我们放下沉甸甸的书包，以轻松的姿态来阅读这个世界。透过图书让视野扩容，在这里，或绘制或拍摄的图片异彩纷呈，或知识或故事的文字娓娓道来，就这样缩短时与空的距离，让昨天、今天与明天衔接成一条光滑的弧线 我们在成长。','吉林省吉出书刊发行有限责任公司','2008-11-01 00:00:00','大16开',NULL,'《彩书坊》编委会 编',NULL,'9787807627500','35.20',NULL,'','88.00',NULL,100,101,'4.00','http://img3m4.ddimg.cn/87/31/23254494-1_b_7.jpg',200,'2018-11-04 11:16:43','精装',1),
(170,6,1,'笨狼的故事 （全 10册，礼品盒装） 汤素兰 注音版','笨狼的故事 （全 10册，礼品盒装） 汤素兰 注音版优秀儿童文学奖、台湾信谊幼儿文学奖、宋庆龄儿童文学奖、张天翼童话寓言奖 20周年纪念版','《笨狼的故事》是儿童文学作家汤素兰以笨狼为主角创作的一系列童话故事。这只可爱的小狼看起来傻乎乎，却屡屡弄拙成巧、歪打正着，当然，也少不了它和它森林镇的朋友们笑料百出的故事。汤素兰老师笔耕不辍， 笨狼的故事 写到现在，堪称中国儿童文学有生命力的童话形象之一。并配有专为 笨狼 量身打造的《笨狼之歌》，旋律动人。听，涵义丰富，手机轻轻一扫二维码，歌曲立刻能回响在耳边！','广州出版社','2013-05-01 00:00:00','32开',NULL,'汤素兰 著',NULL,'9787546213309','75.00',NULL,'','150.00',NULL,100,100,'5.00','http://img3m2.ddimg.cn/60/16/23320302-1_b_3.jpg',200,'2018-11-04 11:16:44','平装-胶订',1),
(171,6,1,'全5册教育部指定 快乐读书吧丛书注音版儿童读物7-10岁二年级课外阅读必读上册 孤独的小螃蟹 小学生课外阅读小狗的小房','全5册教育部指定 快乐读书吧丛书注音版儿童读物7-10岁二年级课外阅读必读上册 孤独的小螃蟹 小学生课外阅读小狗的小房教育部统编语文推荐阅读丛书 老师推荐 彩图注音','','浙江少年儿童出版社','2018-08-01 00:00:00','32开',NULL,'冰波',NULL,'9787559709035','37.50',NULL,'','90.20',NULL,102,102,'4.16','http://img3m7.ddimg.cn/28/22/1045847017-1_b_6.jpg',198,'2018-11-04 11:16:44','平装-胶订',1),
(172,6,1,'郑渊洁四大名传：舒克贝塔传','郑渊洁四大名传：舒克贝塔传郑渊洁四大名传包含：皮皮鲁传、鲁西西传、舒克贝塔传、大灰狼罗克传。郑渊洁童话经典人物，故事影响了中国三代孩子，荣获“联合国全球十大图书”， 图文并茂版适合7-14岁阅读的儿童文学，皮皮鲁总动员出品','＊荣获 联合国全球十大图书 ＊本书累计发行逾五百万册，影响了中国三代孩子 ＊郑渊洁笔下的舒克和贝塔，大概是中国*著名的两只老鼠。他们从过街人人喊打的小老鼠到誉满全球的飞行员、坦克手，这中间的精彩故事真是三天三夜也说不完。快翻开这本书看看舒克和贝塔是怎么从不打不相识到合伙成立航空公司、大战海盗的精彩故事吧。','浙江少年儿童出版社','2015-12-01 00:00:00','大32开',NULL,'郑渊洁 著',NULL,'9787534290787','12.50',NULL,'','25.00',NULL,100,100,'5.00','http://img3m2.ddimg.cn/2/12/23812472-1_b_1.jpg',200,'2018-11-04 11:16:44','平装',1),
(173,6,1,'笑猫日记：会唱歌的猫','笑猫日记：会唱歌的猫','1. 笑猫日记 系列为杨红樱畅销品牌图书 2.曾获世界知识产权组织版权金奖、中国出版政府奖图书奖、第二界中华优秀出版物图书奖等重量级奖项，连续三次荣获全国年度*佳少儿文学读物奖 3.成功输出德文、英文、泰文版权 4.累计销量超过4800万册','明天出版社','2013-06-01 00:00:00','32开',NULL,'杨红缨',NULL,'9787533274337','8.80',NULL,'','15.00',NULL,100,100,'5.87','http://img3m6.ddimg.cn/66/1/23259126-1_b_4.jpg',200,'2018-11-04 11:16:45','平装-胶订',1),
(174,6,1,'亲爱的笨笨猪系列（6册套装）','亲爱的笨笨猪系列（6册套装）著名童书作家杨红樱童话注音品牌力作；久经市场考验、深受孩子欢迎的笨笨猪经典形象；鞠萍姐姐同步伴读；跟笨笨猪一起体验快乐、感受幽默，养成优秀的品格。','','安徽少年儿童出版社','2017-01-01 00:00:00','16开',NULL,'杨红樱',NULL,'9787539794747','54.00',NULL,'','108.00',NULL,100,100,'5.00','http://img3m0.ddimg.cn/97/30/24170650-1_b_5.jpg',200,'2018-11-04 11:16:45','平装-胶订',1),
(175,6,1,'笑猫日记：樱桃沟的春天','笑猫日记：樱桃沟的春天','适读人群 ：7-12岁 马小跳的表妹杜真子有一只猫，他会笑。还记得吗？清明刚过，我和虎皮猫就带着小猫们，离开了翠湖公园，来到了望龙山下那一望无垠的樱桃沟，来到了马小跳的爸爸奶奶家。能在山谷中飞翔的黑旋风、忙着为大勇猛安排相亲的阿黄、得了相思病的阿黑、滑板高手母鹅和有着一副金嗓子的鹩哥，陪伴我们走进了春风中，一个又一个温暖而好玩儿的故事里。然而，一丝隐隐的不安，却在夜色中，向我们悄悄袭来','明天出版社','2009-04-01 00:00:00','32开',NULL,'杨红樱',NULL,'9787533260958','8.80',NULL,'','15.00',NULL,100,100,'5.87','http://img3m2.ddimg.cn/74/6/20558612-1_b_5.jpg',200,'2018-11-04 11:16:45','平装-胶订',1),
(176,6,1,'小巴掌童话故事 全集套装10册 礼品盒装 彩图注音版 张秋生 给童年更多爱 快乐和智慧 小故事 大道理正能量儿童读物','小巴掌童话故事 全集套装10册 礼品盒装 彩图注音版 张秋生 给童年更多爱 快乐和智慧 小故事 大道理正能量儿童读物教育部幼儿基础阅读书目，精选经典小巴掌童话，每一个故事都朗朗上口。','从张秋生老师写第 1 个小巴掌童话开始到现在，已经三十多年了。 这些经典的小巴掌童话，小巧精致，孩子能一口气读完。在这些小巴掌里面，又有孩子成长需要的很多营养：想象力、知识和智慧。 如果你是家长，能跟孩子一起读完这些故事，你们还会有很多意外的收获。','甘肃少年儿童出版社','2017-05-01 00:00:00','32开',NULL,'张秋生',NULL,'25071550','84.00',NULL,'','168.00',NULL,100,100,'5.00','http://img3m0.ddimg.cn/97/17/25071550-1_b_6.jpg',200,'2018-11-04 11:16:46','平装-胶订',1),
(177,6,1,'笑猫日记：寻找黑骑士','笑猫日记：寻找黑骑士','适读人群 ：6~10岁 1. 笑猫日记 系列为杨红樱畅销品牌图书 2.曾获世界知识产权组织版权金奖、中国出版政府奖图书奖、第二界中华优秀出版物图书奖等重量级奖项，连续三次荣获全国年度*佳少儿文学读物奖 3.成功输出德文、英文、泰文版权 4.累计销量超过4800万册','明天出版社','2013-01-01 00:00:00','32开',NULL,'杨红樱',NULL,'9787533272272','8.80',NULL,'','15.00',NULL,100,100,'5.87','http://img3m9.ddimg.cn/15/31/23059689-1_b_4.jpg',200,'2018-11-04 11:16:46','平装-胶订',1),
(178,6,1,'小猪唏哩呼噜(彩色注音版上、下)','小猪唏哩呼噜(彩色注音版上、下)入选新闻出版总署向青少年推荐的百种优秀图书、入选中国小学生基础阅读书目、获国际安徒生文学奖提名奖的作家和画家的经典之作，系列图书畅销一千万册。','文字作者孙幼军先生是我国**位获国际安徒生文学奖提名奖的作家。 插图作者裘兆明女士是我国**位获国际安徒生插图奖提名奖的画家。 《小猪唏哩呼噜》的荣誉 该作品曾荣获中国作家协会第四届全国优秀儿童文学奖；第五届宋庆龄儿童文学奖童话类提名奖； 优秀童书Top10 年度评奖，本书是**入选的国内原创作品；国际儿童阅读联盟刊物《书鸟》推荐的三本原创书之一；荣获全国优秀畅销书奖。入选新闻出版署2007年底向青少年推荐的百种优秀图书。入选中国小学生基础阅读书目。 《小猪唏哩呼噜》大事记 1995年3月首先问世于台湾民生报出版。 2000年5月获中国作家协会第四届全国优秀儿童文学奖。 2000年获第五届宋庆龄儿童文学奖童话类提名奖。 2005年《父母必读》杂志与红泥巴读书俱乐部举办的**届童书前十评选中**','春风文艺出版社','2014-03-01 00:00:00','24开',NULL,'孙幼军 著',NULL,'23504060','35.70',NULL,'','50.00',NULL,100,100,'7.14','http://img3m0.ddimg.cn/74/32/23504060-1_b_2.jpg',200,'2018-11-04 11:16:46','平装-胶订',1),
(179,6,1,'安徒生童话（注音版）――世界儿童共享的经典丛书（新版）','安徒生童话（注音版）――世界儿童共享的经典丛书（新版）持续畅销10余年，累计销量突破1800000册！“冰心儿童图书奖”获奖图书！适合小学中低年级孩子阅读的彩绘注音读物，甄选世界经典名著，装帧典雅大气，插画柔和细腻， 助力孩子养成自主阅读的好习惯！（海豚','1 经典传世的佳作：代代相传的精品佳作，陪伴孩子度过快乐的童年。 2 大气精美的装帧：精致典雅的装帧设计，打造大气华贵的精品童书。 3 童趣盎然的插画：柔和细腻、充满童趣的插画，为孩子奉上无与伦比的视觉盛宴。 4 舒适护眼的版式：适度宽松、清新简约的版式设计，阅读舒适，保护儿童视力。 5 绝佳的礼品童书：畅销多年的精品童书，豪华礼品套装，是不可多得的馈赠佳品。 世界儿童共享的经典丛书系列其他图书： 格林童话（注音版） 世界儿童共享的经典丛书（新版） 365夜故事（注音版） 世界儿童共享的经典丛书（新版） 一千零一夜（注音版） 世界儿童共享的经典丛书（新版） 伊索寓言（注音版） 世界儿童共享的经典丛书（新版） 成语故事（注音版） 世界儿童共享的经典丛书（新版）','上海文化出版社','2017-12-01 00:00:00','16开',NULL,'安徒生 著;陈筱',NULL,'9787553509587','17.50',NULL,'','35.00',NULL,100,100,'5.00','http://img3m1.ddimg.cn/91/36/25203511-1_b_4.jpg',200,'2018-11-04 11:16:47','平装-胶订',1),
(180,6,1,'笑猫日记：保姆狗的阴谋','笑猫日记：保姆狗的阴谋','适读人群 ：7-12岁 这些从严冬写到金秋的故事，犹如温暖童年的 心灵鸡汤 ，犹如陪伴你成长的 心情宝典 。相信你将会在幽默好玩、美妙温暖的文字中，发现一条连通现实和幻想的秘密通道，相信你会感动，会流泪，会哈哈大笑，会开始生命中*初的思考','明天出版社','2006-05-01 00:00:00','32开',NULL,'杨红樱 著',NULL,'9787533251420','8.80',NULL,'','15.00',NULL,100,100,'5.87','http://img3m6.ddimg.cn/85/23/9194116-1_b_3.jpg',200,'2018-11-04 11:16:48','平装-胶订',1),
(186,2,1,'人工智能 第2版','人工智能百科全书 易于上手的人工智能自学指南 涵盖机器学习 深度学习 自然语言处理 神经网络 计算机博弈等各种知识 图文详细 讲解细致 配备丰富的教学资源和学习素材','人工智能百科全书 易于上手的人工智能自学指南 涵盖机器学习 深度学习 自然语言处理 神经网络 计算机博弈等各种知识 图文详细 讲解细致 配备丰富的教学资源和学习素材','人民邮电出版社','2018-11-11 17:29:51','16开','1.0','[美]史蒂芬·卢奇（Stephen Lucci），丹尼·科佩克（Danny Ko',NULL,'154192859103454','51.30',NULL,NULL,'108.00',NULL,100,100,'4.80','upload/images/e3308371d6d4489d.jpg',200,'2018-11-11 17:29:51','平装-胶订',1),
(188,2,6,'码农翻身（好玩有趣的编程知识）','码农翻身（好玩有趣的编程知识）',NULL,'电子工业出版社','2018-11-03 00:00:00','16开','1.0','刘欣（@码农翻身）',NULL,'154324116753696','66.20',NULL,NULL,'99.00',NULL,100,101,'6.70','upload/images/1035c83ef73b4543.jpg',200,'2018-11-26 22:06:08','平装-胶订',1),
(189,3,1,'道德经','一本充满智慧的书',NULL,'中国农业出版社','2016-01-28 00:00:00','16开','1.0','李振义',NULL,'154355376900594','45.00',NULL,NULL,'66.00',NULL,100,100,'6.80','upload/images/d7193503092340fe.jpg',200,'2018-11-30 12:56:09','平装-胶订',1);

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `comment_id` int(16) NOT NULL,
  `book_id` int(16) DEFAULT NULL,
  `user_id` int(16) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL COMMENT '审核标志',
  PRIMARY KEY (`comment_id`),
  KEY `book_id` (`book_id`),
  KEY `customer_id` (`user_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

/*Table structure for table `global_parameter` */

DROP TABLE IF EXISTS `global_parameter`;

CREATE TABLE `global_parameter` (
  `para_id` int(10) NOT NULL,
  `web_name` varchar(20) DEFAULT NULL,
  `reg_clause` varchar(100) DEFAULT NULL COMMENT '注册条款',
  `notice` varchar(100) DEFAULT NULL COMMENT '公告',
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `copyright` varchar(20) DEFAULT NULL,
  `weblogo` varchar(20) DEFAULT NULL,
  `afford_method` varchar(100) DEFAULT NULL,
  `shops_stream` varchar(100) DEFAULT NULL,
  `post_method` varchar(100) DEFAULT NULL COMMENT '送货方式',
  `post_price` decimal(10,2) DEFAULT NULL,
  `post_desc` varchar(100) DEFAULT NULL COMMENT '运输说明',
  `work_time` varchar(50) DEFAULT NULL,
  `after_service` varchar(100) DEFAULT NULL,
  `law` varchar(100) DEFAULT NULL,
  `commques` varchar(100) DEFAULT NULL COMMENT '常见问题',
  `deal_rule` varchar(100) DEFAULT NULL COMMENT '交易条款',
  PRIMARY KEY (`para_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `global_parameter` */

insert  into `global_parameter`(`para_id`,`web_name`,`reg_clause`,`notice`,`address`,`postcode`,`telephone`,`copyright`,`weblogo`,`afford_method`,`shops_stream`,`post_method`,`post_price`,`post_desc`,`work_time`,`after_service`,`law`,`commques`,`deal_rule`) values 
(1,'dd图书，买你所想，买你所爱，你值得拥有','你可以注册','请注意，这是公告','广州海珠区仲恺路500号','50000','15814516280','东东','img/dd.jpg',NULL,NULL,NULL,NULL,NULL,'7X24小时',NULL,NULL,'没问题','没问题');

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `order_detail_id` int(16) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(60) DEFAULT NULL COMMENT '订单号',
  `order_id` varchar(60) DEFAULT NULL,
  `book_id` int(16) DEFAULT NULL,
  `store_id` int(16) DEFAULT NULL,
  `mount` int(16) DEFAULT NULL COMMENT '卖出数量',
  `unit_price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `total_price` decimal(10,2) DEFAULT NULL,
  `post_status` varchar(10) DEFAULT NULL COMMENT '支付、发货状态',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `receive_status` varchar(10) DEFAULT NULL COMMENT '收货状态',
  `image_url` varchar(150) DEFAULT NULL,
  `book_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`),
  KEY `book_id` (`book_id`),
  KEY `store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `order_detail` */

insert  into `order_detail`(`order_detail_id`,`order_number`,`order_id`,`book_id`,`store_id`,`mount`,`unit_price`,`total_price`,`post_status`,`delivery_time`,`receive_status`,`image_url`,`book_name`) values 
(3,'1091780632524578','1091780632524578',188,6,2,'66.20','132.40','0',NULL,'0','upload/images/1035c83ef73b4543.jpg','码农翻身（好玩有趣的编程知识）'),
(4,'1430032417070016','1430032417070016',155,1,1,'9.00','9.00','0',NULL,'0','http://img3m9.ddimg.cn/8/21/23776739-1_b_1.jpg','红鞋子童话拼音版'),
(5,'1928708204770094','1928708204770094',112,1,2,'31.00','62.00','0',NULL,'0','http://img3m5.ddimg.cn/35/34/24135245-1_b_6.jpg','我的遥远的清平湾（精装）插图版'),
(6,'1928708204770094','1928708204770094',7,1,3,'66.20','198.60','0',NULL,'0','http://img3m4.ddimg.cn/31/12/25276414-1_b_13.jpg','码农翻身（好玩有趣的编程知识）'),
(7,'1928708204770094','1928708204770094',169,1,4,'35.20','140.80','0',NULL,'0','http://img3m4.ddimg.cn/87/31/23254494-1_b_7.jpg','中国成语故事'),
(8,'4241712992880064','4241712992880064',137,1,1,'14.90','14.90','0',NULL,'0','http://img3m0.ddimg.cn/33/31/20977440-1_b_2.jpg','风水越简单越实用（大师解密风水开运密码，全面催生家居、商铺、办公室里的五行要素、方位、设计要点、布局原则、朝向和禁忌。'),
(9,'4385231301930048','4385231301930048',137,1,1,'14.90','14.90','0',NULL,'0','http://img3m0.ddimg.cn/33/31/20977440-1_b_2.jpg','风水越简单越实用（大师解密风水开运密码，全面催生家居、商铺、办公室里的五行要素、方位、设计要点、布局原则、朝向和禁忌。'),
(12,'1274496940350038','1274496940350038',64,1,1,'101.80','101.80','0',NULL,'0','http://img3m2.ddimg.cn/41/25/25090502-1_b_5.jpg','平凡的世界：全三册（八年级下册自主阅读推荐）'),
(13,'1282420560900062','1282420560900062',53,1,1,'22.10','22.10','0',NULL,'0','http://img3m7.ddimg.cn/85/36/25168657-1_b_3.jpg','古诗源（中华国学文库）'),
(14,'2035978419490023','2035978419490023',47,1,1,'14.40','14.40','0',NULL,'0','http://img3m0.ddimg.cn/83/9/22890170-1_b_1.jpg','诗经选--余冠英作品集'),
(15,'4074275943780065','4074275943780065',155,1,1,'9.00','9.00','0',NULL,'0','http://img3m9.ddimg.cn/8/21/23776739-1_b_1.jpg','红鞋子童话拼音版'),
(16,'4080652688150022','4080652688150022',135,1,1,'34.00','34.00','0',NULL,'0','http://img3m6.ddimg.cn/50/33/23969336-1_b_5.jpg','我最想要的居家布置风水 小户型风水指南'),
(17,'4168903006450083','4168903006450083',35,1,1,'17.30','17.30','0',NULL,'0','http://img3m7.ddimg.cn/38/14/23688857-1_b_2.jpg','论语・大学・中庸（中华经典名著全本全注全译）'),
(18,'4208698814600005','4208698814600005',76,1,1,'37.00','37.00','0',NULL,'0','http://img3m1.ddimg.cn/77/0/25072421-1_b_11.jpg','外婆的道歉信（马思纯领读书目，人民日报、央视推荐。年度口碑爆棚的温情小说，上市6个月销量突破50万。随书附赠一封神秘道'),
(19,'4283786445090035','4283786445090035',64,1,1,'101.80','101.80','0',NULL,'0','http://img3m2.ddimg.cn/41/25/25090502-1_b_5.jpg','平凡的世界：全三册（八年级下册自主阅读推荐）'),
(20,'4285951690130027','4285951690130027',76,1,1,'37.00','37.00','0',NULL,'0','http://img3m1.ddimg.cn/77/0/25072421-1_b_11.jpg','外婆的道歉信（马思纯领读书目，人民日报、央视推荐。年度口碑爆棚的温情小说，上市6个月销量突破50万。随书附赠一封神秘道'),
(21,'4306362365600030','4306362365600030',80,1,1,'23.80','23.80','0',NULL,'0','http://img3m4.ddimg.cn/32/28/22819334-1_b_3.jpg','围城'),
(22,'4312258820520043','4312258820520043',62,1,1,'26.00','26.00','0',NULL,'0','http://img3m0.ddimg.cn/7/27/25137790-1_b_2.jpg','活着（2017年新版）'),
(23,'4349394787580000','4349394787580000',22,1,1,'82.20','82.20','0',NULL,'0','http://img3m9.ddimg.cn/30/36/23368089-1_b_2.jpg','利用Python进行数据分析'),
(24,'4459744649000017','4459744649000017',10,1,1,'109.80','109.80','0',NULL,'0','http://img3m6.ddimg.cn/86/32/24035306-1_b_6.jpg','Java核心技术 卷I：基础知识（原书第10版）'),
(25,'4510038093980092','4510038093980092',21,1,1,'56.10','56.10','0',NULL,'0','http://img3m1.ddimg.cn/25/7/23745571-1_b_1.jpg','Java并发编程的艺术'),
(26,'4517911461080069','4517911461080069',134,1,1,'11.80','11.80','0',NULL,'0','http://img3m3.ddimg.cn/90/24/23954823-1_b_6.jpg','我的人生解答书.迷你版'),
(27,'4532621244010081','4532621244010081',134,1,1,'11.80','11.80','0',NULL,'0','http://img3m3.ddimg.cn/90/24/23954823-1_b_6.jpg','我的人生解答书.迷你版'),
(28,'4534864369740047','4534864369740047',136,1,1,'34.00','34.00','0',NULL,'0','http://img3m1.ddimg.cn/22/4/22613701-1_b_0.jpg','居家智慧生活风水'),
(29,'4551857032970042','4551857032970042',136,1,1,'34.00','34.00','0',NULL,'0','http://img3m1.ddimg.cn/22/4/22613701-1_b_0.jpg','居家智慧生活风水'),
(30,'4570732553550006','4570732553550006',134,1,1,'11.80','11.80','0',NULL,'0','http://img3m3.ddimg.cn/90/24/23954823-1_b_6.jpg','我的人生解答书.迷你版'),
(31,'3246789162740017','3246789162740017',24,1,1,'128.30','128.30','0',NULL,'0','http://img3m0.ddimg.cn/13/17/22722790-1_b_6.jpg','JavaScript权威指南（第6版）（淘宝前端团队倾情翻译！经典权威的JavaScript犀牛书！第6版特别涵盖了H'),
(32,'3342789179799967','3342789179799967',34,1,1,'32.70','32.70','0',NULL,'0','http://img3m6.ddimg.cn/78/18/23484066-1_b_0.jpg','周易(精)--中华经典名著全本全注全译丛书'),
(33,'3371748252830008','3371748252830008',108,1,1,'19.40','19.40','0',NULL,'0','http://img3m9.ddimg.cn/83/7/25091039-1_b_2.jpg','朝花夕拾：全彩珍藏版（1-9年级必读书单）'),
(34,'3462544412870087','3462544412870087',121,1,1,'19.00','19.00','0',NULL,'0','http://img3m7.ddimg.cn/2/0/23966417-1_b_12.jpg','答案之书(我的人生解答书)'),
(35,'3490954134040020','3490954134040020',142,1,1,'54.70','54.70','0',NULL,'0','http://img3m3.ddimg.cn/20/36/20946143-1_b_2.jpg','慧缘大师教你学风水（全二册）：世界堪舆家协会主席，享誉风水界的慧缘大师教你读懂风水的奥秘，自己改运助运！'),
(36,'3506378514000081','3506378514000081',134,1,1,'11.80','11.80','0',NULL,'0','http://img3m3.ddimg.cn/90/24/23954823-1_b_6.jpg','我的人生解答书.迷你版'),
(37,'4223134356020033','4223134356020033',91,1,1,'10.00','10.00','0',NULL,'0','http://img3m0.ddimg.cn/51/16/23608680-1_b_12.jpg','你是人间四月天（民国女神林徽因诗歌、散文、小说代表作完整收录。）'),
(38,'4274379750100029','4274379750100029',93,1,1,'281.50','281.50','0',NULL,'0','http://img3m7.ddimg.cn/93/10/23473587-1_b_0.jpg','鲁迅全集（全20卷，纪念鲁迅先生逝世80周年！）'),
(39,'4293813933670063','4293813933670063',91,1,1,'10.00','10.00','0',NULL,'0','http://img3m0.ddimg.cn/51/16/23608680-1_b_12.jpg','你是人间四月天（民国女神林徽因诗歌、散文、小说代表作完整收录。）'),
(40,'4533099306060008','4533099306060008',137,1,1,'14.90','14.90','0',NULL,'0','http://img3m0.ddimg.cn/33/31/20977440-1_b_2.jpg','风水越简单越实用（大师解密风水开运密码，全面催生家居、商铺、办公室里的五行要素、方位、设计要点、布局原则、朝向和禁忌。'),
(41,'4839477009900083','4839477009900083',10,1,1,'109.80','109.80','0',NULL,'0','http://img3m6.ddimg.cn/86/32/24035306-1_b_6.jpg','Java核心技术 卷I：基础知识（原书第10版）');

/*Table structure for table `order_shipping` */

DROP TABLE IF EXISTS `order_shipping`;

CREATE TABLE `order_shipping` (
  `order_id` varchar(50) NOT NULL COMMENT '订单ID',
  `receiver_name` varchar(20) DEFAULT NULL COMMENT '收货人全名',
  `receiver_phone` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `receiver_mobile` varchar(30) DEFAULT NULL COMMENT '移动电话',
  `receiver_state` varchar(10) DEFAULT NULL COMMENT '省份',
  `receiver_city` varchar(10) DEFAULT NULL COMMENT '城市',
  `receiver_district` varchar(20) DEFAULT NULL COMMENT '区/县',
  `receiver_address` varchar(200) DEFAULT NULL COMMENT '收货地址，如：xx路xx号',
  `receiver_zip` varchar(6) DEFAULT NULL COMMENT '邮政编码,如：310001',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_shipping` */

insert  into `order_shipping`(`order_id`,`receiver_name`,`receiver_phone`,`receiver_mobile`,`receiver_state`,`receiver_city`,`receiver_district`,`receiver_address`,`receiver_zip`,`created`,`updated`) values 
('1091780632524578','hehe',NULL,'15814516280','广东','广州','海珠区','广州海珠区',NULL,'2018-11-26 22:09:44','2018-11-26 22:09:44'),
('1274496940350038','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 13:48:19','2020-06-03 13:48:19'),
('1282420560900062','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 13:49:38','2020-06-03 13:49:38'),
('1430032417070016','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-05-30 14:38:13','2020-05-30 14:38:13'),
('1928708204770094','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-05-30 16:01:19','2020-05-30 16:01:19'),
('2035978419490023','admin',NULL,'15814516280','骞夸笢','骞垮窞','娴风彔鍖�','广州仲恺路500号阿斯顿','55555','2020-06-03 15:55:14','2020-06-03 15:55:14'),
('23920885273465502','wdd',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号','55555','2018-11-24 16:33:56','2018-11-24 16:33:56'),
('3246789162740017','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 18:00:20','2020-06-06 18:00:20'),
('3342789179799967','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 18:16:20','2020-06-06 18:16:20'),
('3371748252830008','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 18:21:10','2020-06-06 18:21:10'),
('3462544412870087','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 18:36:18','2020-06-06 18:36:18'),
('3490954134040020','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 18:41:02','2020-06-06 18:41:02'),
('3506378514000081','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 18:43:36','2020-06-06 18:43:36'),
('4074275943780065','admin',NULL,'15814516280','骞夸笢','骞垮窞','娴风彔鍖�','广州仲恺路500号阿斯顿','55555','2020-06-03 21:34:57','2020-06-03 21:34:57'),
('4080652688150022','admin',NULL,'15814516280','骞夸笢','骞垮窞','娴风彔鍖�','广州仲恺路500号阿斯顿','55555','2020-06-03 21:36:01','2020-06-03 21:36:01'),
('4168903006450083','admin',NULL,'15814516280','骞夸笢','骞垮窞','娴风彔鍖�','广州仲恺路500号阿斯顿','55555','2020-06-03 21:50:43','2020-06-03 21:50:43'),
('4208698814600005','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 21:57:21','2020-06-03 21:57:21'),
('4223134356020033','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 20:43:04','2020-06-06 20:43:04'),
('4241712992880064','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-02 21:47:16','2020-06-02 21:47:16'),
('4274379750100029','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 20:51:36','2020-06-06 20:51:36'),
('4283786445090035','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:09:52','2020-06-03 22:09:52'),
('4285951690130027','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:10:14','2020-06-03 22:10:14'),
('4293813933670063','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 20:54:51','2020-06-06 20:54:51'),
('4306362365600030','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:13:38','2020-06-03 22:13:38'),
('4312258820520043','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:14:37','2020-06-03 22:14:37'),
('4349394787580000','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:20:48','2020-06-03 22:20:48'),
('4385231301930048','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-02 22:11:12','2020-06-02 22:11:12'),
('4459744649000017','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:39:12','2020-06-03 22:39:12'),
('4510038093980092','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:47:35','2020-06-03 22:47:35'),
('4517911461080069','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:48:53','2020-06-03 22:48:53'),
('4532621244010081','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:51:20','2020-06-03 22:51:20'),
('4533099306060008','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 21:34:44','2020-06-06 21:34:44'),
('4534864369740047','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:51:43','2020-06-03 22:51:43'),
('4551857032970042','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:54:33','2020-06-03 22:54:33'),
('4570732553550006','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-03 22:57:42','2020-06-03 22:57:42'),
('4839477009900083','admin',NULL,'15814516280','广东','广州','海珠区','广州仲恺路500号阿斯顿','55555','2020-06-06 22:25:47','2020-06-06 22:25:47');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `order_id` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '订单id',
  `user_id` int(20) DEFAULT NULL COMMENT '用户id',
  `payment` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '实付金额。精确到2位小数;单位:元。如:200.07，表示:200元7分',
  `payment_type` int(2) DEFAULT NULL COMMENT '支付类型，1、微信，2、支付宝',
  `status` int(5) NOT NULL COMMENT '状态：0、未付款，1、已付款，2、未发货，3、已发货，4、交易成功，5、交易关闭',
  `post_fee` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮费。精确到2位小数;单位:元。如:200.07，表示:200元7分',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '订单更新时间',
  `order_mount` int(10) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL COMMENT '付款时间',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `shipping_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流名称',
  `shipping_code` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流单号',
  `buyer_message` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '买家留言',
  `buyer_rate` int(2) DEFAULT NULL COMMENT '买家是否已经评价',
  PRIMARY KEY (`order_id`),
  KEY `create_time` (`create_time`),
  KEY `payment_type` (`payment_type`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `orders` */

insert  into `orders`(`order_id`,`user_id`,`payment`,`payment_type`,`status`,`post_fee`,`create_time`,`update_time`,`order_mount`,`payment_time`,`end_time`,`close_time`,`shipping_name`,`shipping_code`,`buyer_message`,`buyer_rate`) values 
('1091780632524578',15,'0.01',2,0,'0.00','2018-11-26 22:09:44','2018-11-26 22:09:44',1,NULL,NULL,NULL,'中通',NULL,NULL,0),
('1274496940350038',1,'101.80',1,0,'0.00','2020-06-03 13:48:19','2020-06-03 13:48:19',1,NULL,NULL,NULL,'顺丰',NULL,NULL,0),
('1282420560900062',1,'22.10',1,0,'0.00','2020-06-03 13:49:38','2020-06-03 13:49:38',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('1430032417070016',1,'9.00',2,0,'0.00','2020-05-30 14:38:12','2020-05-30 14:38:12',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('1928708204770094',1,'401.40',2,0,'0.00','2020-05-30 16:01:19','2020-05-30 16:01:19',3,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('2035978419490023',1,'14.40',1,0,'0.00','2020-06-03 15:55:14','2020-06-03 15:55:14',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('3246789162740017',1,'128.30',2,0,'0.00','2020-06-06 18:00:20','2020-06-06 18:00:20',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('3342789179799967',1,'32.70',2,0,'0.00','2020-06-06 18:16:20','2020-06-06 18:16:20',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('3371748252830008',1,'19.40',2,0,'0.00','2020-06-06 18:21:10','2020-06-06 18:21:10',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('3462544412870087',1,'19.00',2,0,'0.00','2020-06-06 18:36:18','2020-06-06 18:36:18',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('3490954134040020',1,'54.70',2,0,'0.00','2020-06-06 18:41:02','2020-06-06 18:41:02',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('3506378514000081',1,'11.80',1,0,'0.00','2020-06-06 18:43:36','2020-06-06 18:43:36',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4074275943780065',1,'9.00',1,0,'0.00','2020-06-03 21:34:57','2020-06-03 21:34:57',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4080652688150022',1,'34.00',1,0,'0.00','2020-06-03 21:36:01','2020-06-03 21:36:01',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4168903006450083',1,'17.30',1,0,'0.00','2020-06-03 21:50:43','2020-06-03 21:50:43',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4208698814600005',1,'37.00',1,0,'0.00','2020-06-03 21:57:21','2020-06-03 21:57:21',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4223134356020033',1,'10.00',1,0,'0.00','2020-06-06 20:43:04','2020-06-06 20:43:04',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4241712992880064',1,'14.90',2,0,'0.00','2020-06-02 21:47:16','2020-06-02 21:47:16',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4274379750100029',1,'281.50',1,0,'0.00','2020-06-06 20:51:36','2020-06-06 20:51:36',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4283786445090035',1,'101.80',1,0,'0.00','2020-06-03 22:09:52','2020-06-03 22:09:52',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4285951690130027',1,'37.00',1,0,'0.00','2020-06-03 22:10:14','2020-06-03 22:10:14',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4293813933670063',1,'0.01',1,0,'0.00','2020-06-06 20:54:51','2020-06-06 20:54:51',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4306362365600030',1,'23.80',1,0,'0.00','2020-06-03 22:13:38','2020-06-03 22:13:38',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4312258820520043',1,'26.00',1,0,'0.00','2020-06-03 22:14:37','2020-06-03 22:14:37',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4349394787580000',1,'82.20',1,0,'0.00','2020-06-03 22:20:48','2020-06-03 22:20:48',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4385231301930048',1,'14.90',2,0,'0.00','2020-06-02 22:11:11','2020-06-02 22:11:11',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4459744649000017',1,'109.80',2,0,'0.00','2020-06-03 22:39:12','2020-06-03 22:39:12',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4510038093980092',1,'56.10',1,0,'0.00','2020-06-03 22:47:35','2020-06-03 22:47:35',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4517911461080069',1,'11.80',2,0,'0.00','2020-06-03 22:48:53','2020-06-03 22:48:53',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4532621244010081',1,'11.80',2,0,'0.00','2020-06-03 22:51:20','2020-06-03 22:51:20',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4533099306060008',1,'14.90',1,0,'0.00','2020-06-06 21:34:44','2020-06-06 21:34:44',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4534864369740047',1,'34.00',2,0,'0.00','2020-06-03 22:51:43','2020-06-03 22:51:43',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4551857032970042',1,'34.00',2,0,'0.00','2020-06-03 22:54:33','2020-06-03 22:54:33',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4570732553550006',1,'11.80',2,0,'0.00','2020-06-03 22:57:42','2020-06-03 22:57:42',1,NULL,NULL,NULL,'圆通',NULL,NULL,0),
('4839477009900083',1,'109.80',2,0,'0.00','2020-06-06 22:25:47','2020-06-06 22:25:47',1,NULL,NULL,NULL,'圆通',NULL,NULL,0);

/*Table structure for table `privilege` */

DROP TABLE IF EXISTS `privilege`;

CREATE TABLE `privilege` (
  `priv_id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` int(16) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `is_parent` int(2) DEFAULT NULL,
  PRIMARY KEY (`priv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `privilege` */

insert  into `privilege`(`priv_id`,`name`,`code`,`url`,`parent_id`,`created`,`updated`,`is_parent`) values 
(1,'系统后台管理','system','',0,'2018-11-11 22:10:57','2018-11-11 22:11:00',1),
(2,'角色管理','role-manage','admin/role',1,'2018-11-11 22:12:16','2018-11-24 20:32:19',1),
(3,'店铺管理','store-manage','admin/store',1,'2018-11-11 22:17:23','2018-11-24 20:32:15',1),
(4,'用户管理','user-manage','admin/user',1,'2018-11-11 22:18:53','2018-11-24 20:32:10',1),
(5,'权限管理','privilege-manage','privilege',1,'2018-11-11 22:19:18','2018-11-19 20:54:53',1),
(6,'添加角色','role-add','admin/role/addition',2,'2018-11-11 22:19:45','2018-11-19 10:27:02',0),
(7,'角色列表','role-list','admin/role/list',2,'2018-11-11 22:20:14','2020-06-06 22:42:25',0),
(8,'角色修改','role-edit','admin/role/edit',2,'2018-11-11 22:20:36','2018-11-18 23:10:48',0),
(9,'角色删除','role-delete','admin/role/deletion',2,'2018-11-11 22:23:13','2018-11-18 23:10:57',0),
(10,'店铺列表','store-list','admin/store/list',3,'2018-11-11 22:23:50','2018-11-18 23:11:04',0),
(11,'店铺添加','store-add','admin/store/addition',3,'2018-11-11 22:24:47','2018-11-18 23:11:12',0),
(12,'店铺修改','store-edit','admin/store/edit',3,'2018-11-11 22:25:41','2018-11-18 23:11:18',0),
(13,'店铺删除','store-delete','admin/store/deletion',3,'2018-11-11 22:26:25','2018-11-18 23:11:25',0),
(14,'用户修改','user-edit','admin/user/edit',4,'2018-11-11 22:27:06','2018-11-18 23:11:33',0),
(15,'用户删除','user-delete','admin/user/deletion',4,'2018-11-11 22:28:21','2018-11-26 21:12:37',0),
(16,'用户列表','user-list','admin/user/list',4,'2018-11-11 22:28:41','2018-11-18 23:12:03',0),
(17,'用户添加','user-add','admin/user/addition',4,'2018-11-11 22:29:04','2018-11-18 23:12:10',0),
(18,'权限添加','privilege-add','admin/privilege/addition',5,'2018-11-11 22:30:05','2018-11-18 23:22:52',0),
(19,'权限列表','privilege-list','admin/privilege/list',5,'2018-11-11 22:40:35','2018-11-18 23:23:01',0),
(20,'权限修改','privilege-edit','admin/privilege/edit',5,'2018-11-11 22:41:02','2018-11-18 23:23:30',0),
(21,'权限删除','privilege-delete','admin/privilege/deletion',5,'2018-11-11 22:41:34','2018-11-18 23:23:19',0),
(32,'图书管理','book-manage','admin/book',1,'2018-11-19 20:53:08','2018-11-24 20:32:05',1),
(33,'图书添加上架','book-add','book/addition',32,'2018-11-19 20:53:12','2018-11-21 20:41:33',0),
(34,'图书编辑','book-edit','book/edit',32,'2018-11-19 20:56:48','2018-11-19 20:57:44',0),
(35,'图书下架','book-shelf','admin/book/shelf',32,'2018-11-19 20:57:49','2018-11-25 23:33:47',0),
(36,'图书查询','book-query','book/query',32,'2018-11-19 20:59:52','2018-11-19 21:01:48',0),
(39,'个人中心','personal-center','admin/personal',1,'2018-11-23 16:06:51','2018-11-24 20:32:26',1),
(40,'我的信息','person-info','/admin/user/edti',39,'2018-11-23 16:08:53','2018-11-23 16:13:45',0),
(42,'我的店铺','person-store','/admin/store/edit',39,'2018-11-23 16:10:01','2018-11-23 16:11:09',0),
(43,'我的图书','person-book-list','/admin/book/list',39,'2018-11-23 16:11:54','2018-11-23 16:13:38',0),
(44,'订单管理','order-manage','admin/order',1,'2018-11-24 20:31:14','2018-11-24 20:31:47',1),
(45,'订单列表','order-list','admin/order/list',44,'2018-11-24 20:31:16','2018-11-24 20:32:54',0),
(46,'订单修改','order-edit','admin/order/edit',44,'2018-11-24 20:32:58','2018-11-24 20:33:28',0),
(47,'订单删除','order-delete','admin/order/deletion',44,'2018-11-24 20:33:31','2018-11-24 20:34:02',0),
(49,'图书删除','book-delete','admin/book/deletion',32,'2018-11-25 23:32:31','2018-11-25 23:32:51',0);

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `reply_id` int(16) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `user_id` int(16) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `user_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reply` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`role_id`,`name`,`code`,`description`,`created`,`updated`) values 
(1,'超级管理员','admin','超级管理员，拥有所有权限','2018-11-04 22:14:09','2018-11-04 22:14:11'),
(2,'普通用户','customer','一般用户，买东西的','2018-11-04 22:16:03','2018-11-04 22:16:06'),
(3,'商家','business','个体商家、企业商家，卖家','2018-11-04 22:17:54','2018-11-04 22:17:57'),
(5,'老板','boss','最高领导人','2018-11-18 17:50:42','2018-11-18 17:50:44'),
(6,'用户管理员','user-manager','管理系统中的用户','2018-11-21 20:48:00','2018-11-21 20:48:04'),
(7,'店铺管理员','store-manager','管理在本站注册的店铺','2018-11-21 20:48:45','2018-11-21 20:48:47'),
(8,'VIP用户','vip-customer','VIP用户，买书有折扣','2018-11-21 21:09:17','2018-11-21 21:09:20'),
(9,'角色权限管理员','role-privilege-manager','管理角色权限信息','2018-11-23 23:13:51','2018-11-23 23:13:51');

/*Table structure for table `role_privilege` */

DROP TABLE IF EXISTS `role_privilege`;

CREATE TABLE `role_privilege` (
  `role_id` int(16) NOT NULL,
  `privilege_id` int(16) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`,`privilege_id`),
  KEY `privilege_id` (`privilege_id`),
  CONSTRAINT `role_privilege_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `role_privilege_ibfk_2` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`priv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_privilege` */

insert  into `role_privilege`(`role_id`,`privilege_id`,`created`,`updated`) values 
(1,1,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,2,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,3,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,4,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,5,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,6,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,7,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,8,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,9,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,10,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,11,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,12,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,13,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,14,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,15,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,16,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,17,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,18,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,19,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,20,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,21,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,32,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,33,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,34,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,35,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,36,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,39,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,40,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,42,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,43,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(1,44,'2018-11-25 23:35:43','2018-11-25 23:35:43'),
(1,45,'2018-11-25 23:35:43','2018-11-25 23:35:43'),
(1,46,'2018-11-25 23:35:43','2018-11-25 23:35:43'),
(1,47,'2018-11-25 23:35:43','2018-11-25 23:35:43'),
(1,49,'2018-11-25 23:35:42','2018-11-25 23:35:42'),
(3,1,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(3,3,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(3,4,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(3,12,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(3,14,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(3,32,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(3,33,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(3,34,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(3,35,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(3,36,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(3,39,'2018-11-25 23:35:35','2018-11-25 23:35:35'),
(3,40,'2018-11-25 23:35:35','2018-11-25 23:35:35'),
(3,42,'2018-11-25 23:35:35','2018-11-25 23:35:35'),
(3,43,'2018-11-25 23:35:35','2018-11-25 23:35:35'),
(3,44,'2018-11-25 23:35:35','2018-11-25 23:35:35'),
(3,45,'2018-11-25 23:35:35','2018-11-25 23:35:35'),
(3,46,'2018-11-25 23:35:35','2018-11-25 23:35:35'),
(3,47,'2018-11-25 23:35:35','2018-11-25 23:35:35'),
(3,49,'2018-11-25 23:35:34','2018-11-25 23:35:34'),
(5,1,'2018-11-25 23:35:48','2018-11-25 23:35:48'),
(5,2,'2018-11-25 23:35:48','2018-11-25 23:35:48'),
(5,3,'2018-11-25 23:35:48','2018-11-25 23:35:48'),
(5,4,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,5,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,6,'2018-11-25 23:35:48','2018-11-25 23:35:48'),
(5,7,'2018-11-25 23:35:48','2018-11-25 23:35:48'),
(5,8,'2018-11-25 23:35:48','2018-11-25 23:35:48'),
(5,9,'2018-11-25 23:35:48','2018-11-25 23:35:48'),
(5,10,'2018-11-25 23:35:48','2018-11-25 23:35:48'),
(5,11,'2018-11-25 23:35:48','2018-11-25 23:35:48'),
(5,12,'2018-11-25 23:35:48','2018-11-25 23:35:48'),
(5,13,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,14,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,15,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,16,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,17,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,18,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,19,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,20,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,21,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,32,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,33,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,34,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,35,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,36,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,39,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,40,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,42,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,43,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,44,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,45,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,46,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,47,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(5,49,'2018-11-25 23:35:49','2018-11-25 23:35:49'),
(6,1,'2018-11-23 23:50:58','2018-11-23 23:50:58'),
(6,4,'2018-11-23 23:50:58','2018-11-23 23:50:58'),
(6,14,'2018-11-23 23:50:58','2018-11-23 23:50:58'),
(6,15,'2018-11-23 23:50:58','2018-11-23 23:50:58'),
(6,16,'2018-11-23 23:50:58','2018-11-23 23:50:58'),
(6,17,'2018-11-23 23:50:58','2018-11-23 23:50:58'),
(6,39,'2018-11-23 23:50:58','2018-11-23 23:50:58'),
(6,40,'2018-11-23 23:50:58','2018-11-23 23:50:58'),
(6,42,'2018-11-23 23:50:58','2018-11-23 23:50:58'),
(6,43,'2018-11-23 23:50:58','2018-11-23 23:50:58'),
(7,1,'2018-11-23 23:56:20','2018-11-23 23:56:20'),
(7,3,'2018-11-23 23:56:20','2018-11-23 23:56:20'),
(7,10,'2018-11-23 23:56:20','2018-11-23 23:56:20'),
(7,11,'2018-11-23 23:56:20','2018-11-23 23:56:20'),
(7,12,'2018-11-23 23:56:20','2018-11-23 23:56:20'),
(7,13,'2018-11-23 23:56:20','2018-11-23 23:56:20'),
(7,39,'2018-11-23 23:56:20','2018-11-23 23:56:20'),
(7,40,'2018-11-23 23:56:20','2018-11-23 23:56:20'),
(7,42,'2018-11-23 23:56:20','2018-11-23 23:56:20'),
(7,43,'2018-11-23 23:56:20','2018-11-23 23:56:20'),
(9,1,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,2,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,5,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,6,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,7,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,8,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,9,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,18,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,19,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,20,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,21,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,39,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,40,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,42,'2018-11-23 23:14:15','2018-11-23 23:14:15'),
(9,43,'2018-11-23 23:14:15','2018-11-23 23:14:15');

/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `store_id` int(16) NOT NULL AUTO_INCREMENT,
  `store_manager_id` int(16) DEFAULT NULL,
  `store_phone_num` varchar(16) DEFAULT NULL,
  `store_telephone` varchar(16) DEFAULT NULL,
  `store_name` varchar(64) DEFAULT NULL,
  `store_position` varchar(128) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`store_id`),
  KEY `store_manager_id` (`store_manager_id`),
  CONSTRAINT `store_ibfk_1` FOREIGN KEY (`store_manager_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `store` */

insert  into `store`(`store_id`,`store_manager_id`,`store_phone_num`,`store_telephone`,`store_name`,`store_position`,`created`,`updated`) values 
(1,2,'15814516280','06685337781','dd书城','广州海珠区','2018-11-23 17:32:12','2018-11-23 17:32:12'),
(2,11,'15814516280','10086','zdd书城','深圳','2018-11-23 23:57:51','2018-11-23 23:57:51'),
(3,1,'15814516280','10086','管理员商店','广州','2018-11-24 20:35:43','2018-11-24 20:35:46'),
(6,24,NULL,NULL,'新店铺','广州','2018-11-26 22:05:24','2018-11-26 22:05:24'),
(7,24,'13455556666','13455556666','store1','广州','2020-06-06 22:40:46','2020-06-06 22:40:46');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮政编码',
  `location` varchar(32) DEFAULT NULL,
  `detail_address` varchar(64) DEFAULT NULL,
  `identity` varchar(32) DEFAULT NULL COMMENT '身份',
  `active` char(1) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '用户激活码',
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`username`,`nickname`,`password`,`gender`,`email`,`phone`,`zip_code`,`location`,`detail_address`,`identity`,`active`,`code`,`updated`,`created`) values 
(1,'admin','超级管理员','202cb962ac59075b964b07152d234b70','1','414882567@qq.com','15814516280','55555','广州','广州仲恺路500号阿斯顿','管理员','1',NULL,'2018-11-11 20:14:23','2018-10-30 17:45:32'),
(2,'zdd','商家1','202cb962ac59075b964b07152d234b70','1','414882567@qq.com','15814516280','55555','广州','广州仲恺路500号1','自由职业','1',NULL,'2018-11-24 20:30:17','2018-10-30 22:25:01'),
(11,'wdd','商家2','202cb962ac59075b964b07152d234b70','0','1292728797@qq.com','15814516280','55555','广州','广州仲恺路500号','自由职业','1',NULL,'2018-11-06 16:24:01','2018-11-06 16:24:01'),
(12,'user-manager','用户管理员','202cb962ac59075b964b07152d234b70','0','1292728797@qq.com','15814516280',NULL,'北京','北京市海淀区','管理员','1',NULL,'2018-11-24 22:47:34','2018-11-24 22:47:40'),
(13,'store-manager','商店管理员','202cb962ac59075b964b07152d234b70','1','414882567@qq.com','15814516280',NULL,'上海','上海','管理员','1',NULL,'2018-11-24 22:47:37','2018-11-24 22:47:42'),
(14,'xiaoxiao','买家1','202cb962ac59075b964b07152d234b70','1','414882567@qq.com','15814623567',NULL,'深圳','深圳','上班族','1',NULL,'2018-11-24 22:47:47','2018-11-24 22:47:45'),
(15,'hehe','呵呵','202cb962ac59075b964b07152d234b70','1','1292728797@qq.com','15814516280',NULL,'广州','广州海珠区','自由职业','1','333468e3-c383-49d2-83fd-d57c349c9ba4','2018-11-26 20:45:13','2018-11-26 20:45:13'),
(16,'xixi','嘻嘻','202cb962ac59075b964b07152d234b70','0','1292728797@qq.com','15814516280',NULL,'广州','广州海珠区','自由职业','1',NULL,'2018-11-26 21:02:47','2018-11-26 21:02:47'),
(24,'www',NULL,'202cb962ac59075b964b07152d234b70',NULL,'1292728797@qq.com',NULL,NULL,'广州','广州海珠区','business','1',NULL,'2018-11-26 22:04:48','2018-11-26 22:04:48'),
(25,'zdd123',NULL,'202cb962ac59075b964b07152d234b70',NULL,'1292728797@qq.com',NULL,NULL,'广州','广州海珠区','ordinary','1',NULL,'2018-11-27 17:26:15','2018-11-27 17:26:15'),
(26,'test2',NULL,'202cb962ac59075b964b07152d234b70',NULL,'62@qq.com',NULL,NULL,'广州','广州海珠区','ordinary','1','d536f28f-c235-424b-9922-abb305fd1e56','2020-05-30 14:26:04','2020-05-30 14:26:03'),
(27,'test3',NULL,'202cb962ac59075b964b07152d234b70',NULL,'5463@qq.com',NULL,NULL,'广州','广州海珠区','business','1','e543a63e-9771-4a59-809a-b02e595fdf69','2020-06-06 20:36:08','2020-06-06 20:36:07');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` int(16) NOT NULL,
  `role_id` int(16) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`,`created`,`updated`) values 
(1,1,'2018-11-24 22:35:40','2018-11-24 22:35:40'),
(2,3,'2018-11-23 23:38:32','2018-11-23 23:38:32'),
(11,3,'2018-11-23 23:59:43','2018-11-23 23:59:43'),
(12,6,'2018-11-23 23:23:51','2018-11-23 23:23:51'),
(13,7,'2018-11-23 23:55:37','2018-11-23 23:55:37'),
(14,2,'2018-11-24 00:01:11','2018-11-24 00:01:11'),
(15,2,'2018-11-26 22:02:52','2018-11-26 22:02:52'),
(16,2,'2018-11-26 22:03:36','2018-11-26 22:03:36'),
(24,3,'2018-11-26 22:05:24','2018-11-26 22:05:24'),
(25,2,'2018-11-27 17:27:22','2018-11-27 17:27:22');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
