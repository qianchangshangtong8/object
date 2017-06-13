/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : bbsdata

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-06-06 09:02:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_no` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `speaker` varchar(20) DEFAULT NULL,
  `sent_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reply_num` int(11) DEFAULT '0',
  `click_num` int(11) DEFAULT '0',
  `content` longtext,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`article_no`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '测试', 'xiexiexie', '2017-05-02 23:26:58', '25', '11', '我的测试', '学习');
INSERT INTO `article` VALUES ('2', '开通博客', 'admin', '2017-05-09 22:13:27', '0', '11', '我的博客开通了', '学习');
INSERT INTO `article` VALUES ('3', '心心心', 'admin', '2017-05-09 21:28:35', '0', '3', '性能嘻嘻你', '学习');
INSERT INTO `article` VALUES ('4', '生活', 'admin', '2017-05-09 15:39:54', '0', '1', '生活', '生活');
INSERT INTO `article` VALUES ('5', '生活', 'admin', '2017-05-09 15:40:33', '3', '41', '生活不易', '生活');
INSERT INTO `article` VALUES ('11', '很好预付', 'admin', '2017-05-09 20:02:39', '0', '10', '很好啊', '学习');
INSERT INTO `article` VALUES ('18', 'cxzv', 'admin', '2017-05-09 21:31:28', '0', '0', '随便写点吧', '生活');
INSERT INTO `article` VALUES ('21', 'fdgdfsg', 'admin', '2017-05-09 21:32:27', '0', '0', '那就随便写咯', '生活');
INSERT INTO `article` VALUES ('22', 'dfgvfdsv', 'admin', '2017-05-09 21:32:34', '0', '0', '论文2万字，慢慢写', '生活');
INSERT INTO `article` VALUES ('23', 'vxczvcxzv', 'admin', '2017-05-09 21:32:41', '0', '7', '变幻莫测的天气', '生活');
INSERT INTO `article` VALUES ('24', 'vxczvcxz', 'admin', '2017-05-09 21:32:50', '3', '15', '每天多一点点微笑', '生活');
INSERT INTO `article` VALUES ('25', 'sdf', 'admin', '2017-05-09 16:38:27', '0', '0', '车到山前必有路', '生活');
INSERT INTO `article` VALUES ('30', 'hs', 'admin', '2017-05-09 20:59:41', '4', '18', '船到桥头自然直', '生活');
INSERT INTO `article` VALUES ('32', '附近的萨克', '你好', '2017-05-09 21:19:22', '1', '3', '慢慢来，不要急', '生活');
INSERT INTO `article` VALUES ('34', '范德萨发大水', '你好', '2017-05-09 22:35:53', '0', '0', '时间一天一天逼近', '生活');
INSERT INTO `article` VALUES ('35', '各分店vfd', 'admin', '2017-05-09 19:15:30', '1', '5', '<p><img src=\'http://img.baidu.com/hi/jx2/j_0070.gif\'/>测试</p>', '生活');
INSERT INTO `article` VALUES ('36', '各分店', 'admin', '2017-05-09 19:21:30', '0', '0', '暴雨天大家都加外卖，等了好久才等到，下雨天还是提前点叫外卖！！！！！！！！！！', '生活');
INSERT INTO `article` VALUES ('38', '各分店十个奋斗', 'admin', '2017-05-09 20:22:58', '1', '3', '暴雨天大家都加外卖，等了好久才等到，下雨天还是提前点叫外卖！！！！！！！！！！', '生活');
INSERT INTO `article` VALUES ('52', 'fsdfds', 'xiexiexie', '2017-05-09 15:06:37', '0', '11', '4444444444444444444444444', '学习');
INSERT INTO `article` VALUES ('55', '测试', 'xiexiexie', '2017-05-09 21:27:05', '1', '5', '44444798797898987', '学习');
INSERT INTO `article` VALUES ('56', '暴雨天', 'xiexiexie', '2017-05-09 21:38:54', '3', '21', '暴雨天大家都加外卖，等了好久才等到，下雨天还是提前点叫外卖！！！！！！！！！！', '趣事');
INSERT INTO `article` VALUES ('57', '789', 'xiexiexie', '2017-05-09 22:05:14', '0', '1', '78978987987987', '学习');
INSERT INTO `article` VALUES ('58', '9789789', 'xiexiexie', '2017-05-09 22:05:27', '0', '1', '9789879//*/*/*/*/*/', '学习');
INSERT INTO `article` VALUES ('60', '987987', 'xiexiexie', '2017-05-09 22:06:05', '0', '1', '9燃额外热无范德萨 阿斯蒂芬', '学习');
INSERT INTO `article` VALUES ('61', '防撒旦法', 'xiexiexie', '2017-05-09 22:06:14', '0', '1', '地方阿斯蒂芬微任务佛挡杀佛的', '学习');
INSERT INTO `article` VALUES ('62', '78987', 'xiexiexie', '2017-05-09 22:12:46', '6', '28', '87987987987978', '学习');
INSERT INTO `article` VALUES ('63', '4564564', 'xiejiashan', '2017-05-10 20:31:53', '1', '6', '45654645广东佛山鬼地方个 安抚速度安抚 防守打法 阿萨德 安抚', '校园生活');
INSERT INTO `article` VALUES ('64', '第三方a', 'xiejiashan', '2017-05-10 21:53:06', '0', '1', '发阿法士大夫阿凡达撒旦法大发送到', '校园生活');
INSERT INTO `article` VALUES ('65', '鼎折覆餗大a', 'xiejiashan', '2017-05-10 21:53:17', '2', '4', ' 阿斯蒂芬sad防守打法第三方胜多负少大士大夫士大夫士大夫撒旦士大夫士大夫', '校园生活');
INSERT INTO `article` VALUES ('66', 'fdsaf ', 'xiejiashan', '2017-05-11 14:45:58', '2', '13', '阿斯顿发送到发送到发送到发电话费了雷锋精神的李开复就', '校园生活');
INSERT INTO `article` VALUES ('67', '啦啦啦', 'liuzhenfeng', '2017-05-11 16:17:01', '1', '2', '啦啦啦，我是卖报的小当家', '学校事迹');
INSERT INTO `article` VALUES ('68', '455', 'liuzhefen', '2017-05-11 16:21:59', '2', '6', 'dfasf aewrewr rewrfdfdsf', '学校事迹');
INSERT INTO `article` VALUES ('69', '魔力北极光', 'admin', '2017-05-11 16:30:34', '2', '6', '亚拉锁，那是遥远的天路啊', '学校事迹');
INSERT INTO `article` VALUES ('70', '4545654', 'admin', '2017-05-12 15:50:13', '0', '5', '645645发热污染是大发送到sad', '学校事迹');
INSERT INTO `article` VALUES ('71', ' Lightbox v2.0控件使用说明 ', 'admin', '2017-05-16 07:26:32', '1', '10', '<p><strong>如何使用:</strong></p><p>步骤 1 - 安装</p><p>1、Lightbox v2.0 使用 Prototype 框架和 Scriptaculous 效果库. 你将需要外调这三个 <a href=\'http://lib.csdn.net/base/javascript\' class=\'replace_word\' title=\'JavaScript知识库\' target=\'_blank\' style=\'color:#df3434; font-weight:bold;\'>JavaScript</a> 文件在你的 header.&nbsp;<br/><span class=\'code\'>&lt;script type=&quot;text/javascript&quot; src=&quot;js/prototype.js&quot;&gt;&lt;/script&gt;<br/>&lt;script type=&quot;text/javascript&quot; src=&quot;js/scriptaculous.js?load=effects&quot;&gt;&lt;/script&gt;<br/>&lt;script type=&quot;text/javascript&quot; src=&quot;js/lightbox.js&quot;&gt;&lt;/script&gt;</span> </p><p>2、外调 Lightbox CSS 文件 (或添加 Lightbox 样式到你现行的样式表中).&nbsp;<br/><span class=\'code\'>&lt;link rel=&quot;stylesheet&quot; href=&quot;css/lightbox.css&quot; type=&quot;text/css&quot; media=&quot;screen&quot; /&gt;</span> </p><p>3、检查 CSS 并确定调用的 prev.gif 和 next.gif 文件在正确的位置. 同样要确定调用的 loading.gif 和 close.gif 文件及 lightbox.js 文件在正确的位置.</p><p>步骤 2 - 激活</p><p>1、添加 rel=&quot;lightbox&quot; 属性到任何一个链接标签去激活lightbox. 例如: <br/><span class=\'code\'>&lt;a href=&quot;images/image-1.jpg&quot; rel=&quot;lightbox&quot; title=&quot;my caption&quot;&gt;image #1&lt;/a&gt;</span><em><br/>可选择项</em>: 使用 title 属性加上说明.</p><p>2、如果你有一套你想分组的相关图片, 接着上一部并且又在 rel 属性中添加一个带方括号的组名. 例如: <br/><span class=\'code\'>&lt;a href=&quot;images/image-1.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;image #1&lt;/a&gt;<br/>&lt;a href=&quot;images/image-2.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;image #2&lt;/a&gt;<br/>&lt;a href=&quot;images/image-3.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;image #3&lt;/a&gt;</span></p><p>3、没有限定每个页面的图片组数量和每个图片组图片的数量. 疯了！</p><p><br/></p>', '使用说明');
INSERT INTO `article` VALUES ('72', '如何让你的Lightbox支持滚轮缩放及Base64图片', 'admin', '2017-05-16 07:36:04', '5', '32', '<h1><span style=\'text-decoration: underline; font-size: 24px;\'><em></em></span></h1><p>在做文章类型的web页时，经常会遇到要点开看大图的需求，LightBox2则是在众多产品中比较优秀的一款Jquery插件。配置就不细说了，今天我主要要分享的是：如何在点开大图后，可以通过鼠标滚轮来缩放图片，<br/></p><p><strong>1、修改Lightbox源码使支持滚轮缩放<br/></strong></p><p>&nbsp;&nbsp;&nbsp; \r\n支持鼠标滚轮主要就是把弹出后的框整个绑定上mousewheel事件，打开lightbox.js，找到Lightbox.prototype.build\r\n = function() {...}这一段，可以在这里（lightbox初始化的时候）把想要的滚轮事件绑定上去，比如在函数的末尾添加如下代码：</p><p>&nbsp;&nbsp;&nbsp; \r\n代码比较好理解，就是给后面背景和前面图片都添加鼠标滚轮监听，然后高、宽成比例地缩放（向上滚放大、向下滚缩小），我是设定每次高度变化为20个像素，然后宽度是成比例变化。需要注意的地方，应该是在图片的最小缩小大小，和图片放大不能超过屏幕范围的限制。同时，为了更好的体验，一定要加上e.stopPropagation()，且返回false，让浏览器不要滚动。<br/></p><p><strong>2、修改Lightbox源码使支持Base64图片</strong><br/></p><p>&nbsp;&nbsp;&nbsp; 这里说起来可能比较麻烦，先来看一下在使用原生Lightbox时的html代码格式要求：</p><h1><span style=\'font-size: 16px;\'>这是一个最简单的弹出图，当点击Image #1时，就会弹出一个lightbox显示img/image.jpg的内容（弹出一个元素&lt;img src=&quot;img/image.jpg&quot; /&gt;）。<br/>&nbsp;&nbsp;&nbsp; 现在我们来考虑这种情况，如果图片是以Base64编码在服务器是存放在数据库中的？应该就是这样：</span></h1><h1><span style=\'font-size: 16px;\'>&nbsp;&nbsp; 其中，“lightbox-container”是文章所在容器的class。initLightbox函数应放置在页面加载ready时，它会把文章中的所有img标签都封装成为lightbox的格式。</span><span style=\'text-decoration: underline;\'><em><strong><span style=\'text-decoration: underline; font-size: 24px;\'></span></strong></em></span><br/></h1>', '学习');
INSERT INTO `article` VALUES ('74', '推荐几本javascript与jquery的好书 ', 'admin', '2017-05-16 15:54:37', '2', '16', '<p><span style=\'color:#3366ff\'><strong>javascript高级程序设计（二）</strong></span></p><p>　　<strong>评价</strong>：本书第一版内容（不针对思想）已经过时，建议直接看第二版。雅虎内部人员的手册书，可想而知它的含金量。中间关于dom以及CSS的，建议对照javascript dom高级程序设计的第三章与第五章的内容一起看，个人觉得这两章结构组织的没有后者好。<strong>这本书的前面几章以及后面那节高阶应用，<span style=\'color:#000000\'>绝对是亮点</span></strong>，是参阅进阶书籍的基础。</p><p>　　<strong>错误以及翻译</strong>：个人非常喜欢的一个译者，低调务实谦虚，维护了一个算比较好的blog，里面有关于这本书的勘误，我最喜欢了几本书里面就有三本是他的出品。这边书的中文版没有上架之前，我曾经忍不住内心的躁动看了300页的原书，有些地方愣是没看懂。所以我跟网上某些人动不动就因为书中有细微的错误就建议读者去看原版的行为感到不齿，自认为自己英语还行，平时由于实验室课题基本也是跟英语文献打交道。</p><p>　　<strong>入手</strong>：强烈建议购买，价格小贵。</p><p>&nbsp;</p><p><strong><span style=\'color:#3366ff\'>javascript dom高级程序设计</span></strong></p><p>　　<strong>评价</strong>：这本书犀利到无语，完全打通了我的奇经八脉，好在学校识货的不多，让我长期霸占了这本书长达两个月.....现已入手</p><p>　　<strong>错误以及翻译</strong>：这本原书错误很多（即使作者作了很多的修改，中文版还是有很多错误，是同一个译者），但是瑕不掩瑜，翻译得非常通顺，但是译者的勘误表里只有一些无关紧要的标点小问题，这个做法我不是很认同，书中代码都还是有一些严重的错误\r\n 。这里其实也可以看到译者的水平也是在不停上升的，这本书译者有画龙点睛的译者注，同时也产生了很多画蛇添足的译者注。</p><p>　　<strong>入手</strong>：强烈建议购买，但是现在很难买到了，可能销量不高停印了。</p><p>&nbsp;</p><p><strong><span style=\'color:#3366ff\'>javascript设计模式</span></strong></p><p>　<strong>　评价</strong>：原本以为在javascript中通过模仿强加进设计模式是一个噱头，看了这本书（才看一半，书虽小但是营养极高），才发现自己的想法有多么的愚昧，原书作者为YUI团队的核心开发人员，这里使用到的设计模式很多都是利用到了YUI库中的开发中去了。</p><p>　　<strong>错误以及翻译</strong>：由于原书的质量就很高，基本没什么错误，译者很踏实提到自己因为翻译质量多次延期，但是翻译差强人意，画蛇添足的译者注屡见不鲜。</p><p>　　<strong>入手</strong>：强烈建议购买，而且这种书基本是不会过时的，相信我没错的。</p><p>&nbsp;</p><p><strong><span style=\'color:#3366ff\'>javasript语言精粹</span></strong></p><p>　　<strong>评价</strong>：最喜欢的一个章节，就是它对很多内置函数用javascript来做了实现 , 可以看出作者的功力。这是一本很好的书籍，对javascript好的部分与不好的部分都做了描述，但是个人觉得很多所谓的不好的部分恰恰是体现一个<a href=\'http://lib.csdn.net/base/javascript\' class=\'replace_word\' title=\'JavaScript知识库\' target=\'_blank\' style=\'color:#df3434; font-weight:bold;\'>前端开发</a>者个人功力的部分，谈不上摒弃，维护代码并且保证浏览器实现一致本就是开发者分内的事情，就如同你不能选择你的出身一样，既然你走了前端这条路就认了吧。</p><p>　　<strong>错误以及翻译</strong>：真的不喜欢博文的书的排版，翻译的很顺畅，错误我没发现，当然我也没有通篇认真阅读。</p><p>　　<strong>入手：好书</strong>，建议通读一遍写点笔记之后，下一本电子书（好吧，我偏袒图灵了）。<span style=\'color:#3366ff\'><strong>&nbsp;</strong></span></p><p><span style=\'color:#3366ff\'><strong><br/></strong></span></p><p><span style=\'color:#3366ff\'><strong>javascript权威指南 &nbsp; &nbsp; &nbsp; </strong></span><br/>　　<strong>评价</strong>：这本书我从来都没有借到过，基本在出借状态就有一大排的预定记录了，不过我在阅览室粗粗的浏览过，大概有一半的纸张是javascript的文档说明，价格较贵。</p><p>　　<strong>错误以及翻译</strong>：都说是权威了，作者个个都是有来头的大牛...&nbsp; 翻译一般，网上骂的人很多，但是个人感觉不影响理解 。&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>　　<strong>入手</strong>：习惯翻书查询的朋友，手有余钱的建议入手一本，抱在怀中应该比较敦实有感觉（我想基本你在码代码的时候都在电脑前吧，有电脑应该就有网，这不就得了 小透露一下平时我都在这里查：<a href=\'http://stephen830.javaeye.com/category/57459\'>http://stephen830.javaeye.com/category/57459）</a></p><p>&nbsp;</p><p><span style=\'color:#3366ff\'><strong>javascript dom 编程艺术</strong></span></p><p>　　<strong>评价</strong>：当之无愧可以成为最佳第一本书，可惜我遇到它的时候已经走了很多弯路，我看它只花了一个下午，笔记只有薄薄一页（笔记虽少，还是有营养的），可见它的作用也仅限于入门。同时推荐该作者的一本ajax入门书：<strong><span style=\'color:#3366ff\'>Bulletproof Ajax中文版</span></strong>也是可以一下午看完，然后产生薄薄一页但是极度精炼的笔记，这本书让我真正意义上明白了什么是可退化的ajax设计。</p><p>　　<strong>错误以及翻译</strong>：不评价了，很简单一书，即使你看原版书籍也不会觉得晦涩</p><p>　　<strong>入手</strong>：不建议入手，看一遍基本就过去了，但是必须记点东西。</p><p><strong><span style=\'color:#3366ff\'><br/></span></strong></p><p><strong><span style=\'color:#3366ff\'>javascript捷径教程，精通javascript</span></strong></p><p>　　<strong>评价</strong>：都是好书，都很薄，可以睡觉前来几眼，营养比较好，精通javascript后半部分....想法是好的，但是真的只是适合写在博客就行，而且此类的内容很多书都已经提到了，有点虎头蛇尾的感觉，所以技术牛人不一定是写书的牛人，虽然别人是<a href=\'http://lib.csdn.net/base/jquery\' class=\'replace_word\' title=\'jQuery知识库\' target=\'_blank\' style=\'color:#df3434; font-weight:bold;\'>jQuery</a>之父，但是如果写jQuery书籍势必应该没有jQuery基础教程来的好</p><p>　　<strong>错误以及翻译： </strong>捷径教程写得很精炼，有不大不小的错误，当然这种错误的影响可大可小，可能你一辈子都不觉得这个是个错误。<strong><br/></strong></p><p>　　<strong>入手</strong>：为什么放在一块，因为两本书真的差不多，建议下电子书吧...................或者借书看，要知道书非借不能看也。</p><p>&nbsp;</p><p><strong><span style=\'color:#3366ff\'>PPK谈javascript</span></strong></p><p>　　<strong>评价</strong>：简单的在阅览室过了一半内容吧，看过的感觉是，内容有点过时了，当然作者是非常强悍一人，英文原书应该是05年左右的。</p><p>　　<strong>错误以及翻译</strong>：没发现什么错误，翻译中规中矩相比一些比较犀利的译者而言。</p><p>　　<strong>入手</strong>：真想买，就建议买本旧书吧。</p><p>&nbsp;</p><p>以上所有书，我至少都在读或者浏览过，文章结构都很清楚，接下来我做个很主观的建议阅读路线</p><p><strong>建议阅读顺序</strong>：</p><p><strong><span style=\'color:#008080\'>权威指南,javascript \r\ndom编程艺术(====&gt;javascript捷径教程，精通javascript)=======&gt;javascript高级程序设计与javascript\r\n dom高级程序设计======&gt;javascript设计模式。</span></strong></p><p>还有一本<strong><span style=\'color:#008080\'>高性能javascript</span></strong>由于作者很喜欢，我认为这边应该不会差，听名字应该是贴近实际项目会遇到的问题。</p><p>接下来还有一本觉得开篇不错的英文书可以放在 这所有书之后 阅读（本人还没有读） <strong><span style=\'color:#008080\'>javascript patterns</span></strong>.</p><p>&nbsp;</p><p><strong><em>当然，好的javascript开发者必须要有娴熟CSS知识，比如盒模型，以及浮动机制等等。学习CSS选择器，也是学习jQuery选择器的基础,关于CSS的书籍就不列举了。</em></strong></p><p><br/></p>', '学习');
INSERT INTO `article` VALUES ('75', ' 如何让tomcat输入http://localhost直接进入我指定项目的文件夹 ', 'admin', '2017-05-17 20:29:08', '3', '18', '<p>&lt;Context path=&quot;&quot; docBase=&quot;E:/Tomcat 5.0/webapps/webroot&quot; debug=&quot;0&quot; <br/>privileged=&quot;true&quot;/ &gt;</p><p>&lt;Context path=&quot;&quot; docBase=&quot;ROOT&quot; debug=&quot;0&quot;/&gt; <br/>&lt;Context path=&quot;/test&quot; docBase=&quot;c:/jsp&quot; debug=&quot;0&quot; <br/>reloadable=&quot;true&quot;/&gt;&nbsp;&nbsp;</p><p>可能是你的conf/server.xml中添加了这样一句 <br/>&lt;Context path=&quot;/&quot; docBase=&quot;你说的那个项目路径&quot; /&gt; <br/>解决办法是把path=&quot;/&quot;改成path=&quot;/aaa&quot;， <br/>重启tomcat，<a href=\'http://localhost:8080/aaa\' target=\'_blank\'>http://localhost:8080/aaa</a>就可以打开你那个项目<br/><a href=\'http://localhost:8080/\' target=\'_blank\'>http://localhost:8080</a>就可以打开默认的主页</p><p>以下我在是百度知道的提问和问题补充，希望对大家有用：</p><p>如何让tomcat输入<a href=\'http://localhost/\' target=\'_blank\'>http://localhost</a>直接进入我指定项目的文件夹里面？而不在进入到tomcat欢迎界面那里。注：端口我已经改为80了。就是要把我webapps下面的项目test成为输入本机ip地址就可以访问到的（要绑定公司域名）。</p><p><strong>问题补充：</strong>这个tomcat下面还有其它项目，我改了两个端口80和9000，现在都可以正常显示 <br/>我希望对外网绑定公司域名的用80端口，而内部的用9000端口。 <br/>也就是希望输入<a href=\'http://localhost/\' target=\'_blank\'>http://localhost</a>直接到对外的test目录下<br/>输入<a href=\'http://localhost:9000/\' target=\'_blank\'>http://localhost:9000</a>可以到root下面，即显示tomcat的欢迎界面，<br/>输入<a href=\'http://localhost:9000/othertest\' target=\'_blank\'>http://localhost:9000/othertest</a>进入其它项目<br/>配置server.xml的我修改了很多次都不行，希望能给出具体的配置 <br/>终于找到办法了，原来是我context的路径弄错了路径间隔要用/不能用/的！ <br/>以下是修改的地方，给其它有同样问题的人参考吧 <br/>&lt;Context path=&quot;&quot; debug=&quot;0&quot; docBase=&quot;E:/Tomcat 5.5/webapps/newplantest&quot; reloadable=&quot;true&quot; privileged=&quot;true&quot;&gt;<br/>&lt;/Context&gt; <br/>&lt;Context path=&quot;/root&quot; debug=&quot;0&quot; docBase=&quot;E:/Tomcat 5.5/webapps/ROOT&quot; reloadable=&quot;true&quot; privileged=&quot;true&quot;&gt;<br/>&lt;/Context&gt; <br/>&lt;/Host&gt;</p><p>注：其实这里实现的还不是我最初想的输入<a href=\'http://localhost:9000/\' target=\'_blank\'>http://localhost:9000</a>可以到root下面，但这样已经达到我的目的就ok了，另外，如果不设置/root的话是进不了ROOT下面的，其它放在webapps下面的项目不用配置，直接加项目名就可以了。</p><p>注：这样配置还有一个问题是第二天才发现的－－tomcat管理首页那里很多连接都进不去了，一看下面的路径都多加了个root，把前面的root去掉就可以了，马上想到修改ROOT下面的index.jsp的链接，根据经验，访问上级目录要在在链接前面加个../\r\n \r\n加完以后（共有6处）保存刷新，郁闷的是没有任何反应，重启tomcat再次打开新页面访问，一样没有任何变化，难道是缓存的原因？马上清除ie文件和历史记录，再次刷新还是一样，换个ip（这时已经映射到外网的ip了）也还是一样，这下有点明白是没有编译导致的了，到work目录下查找.class文件没有找到，于是呼有搜索了一阵，忙呼了一阵。说是删除class文件就会自动重新编译，但就是没有找到class文件，后来看到\r\n \r\n/webapps/ROOT/WEB-INF/lib下面竟然只有一个jar包（catalina-root.jar）解压一看，里面确实有一个index_jsp.class\r\n 可以确定是没有重新编译的问题了。但要自己重新编译，压缩成jar包也太麻烦了吧，而且删除了那个jar包 \r\n直接报500的错误信息，根本不会自动生成。后来直接打开里面的class文件一看基本上跟页面一样，有些乱码，修改了下保存，再用WinRAR解开到那个目录下把修改后的拖过来覆盖，重启tomcat刷新，报了一堆的错。这下更加明白了class文件是不能直接编辑的。那么总要生成一个新的来吧，如何生成？在root下生成不了了，稍微一想放到网站的目录下不就可以了吗？于是把root下的index.jsp文件copy到自己目录下，访问自己目录后面加上index.jsp成功显示了修改过后的页面。到对应的目录下没有找到编译后的class，再次搜索，仍然无果。最后带着尝试的心理在work下面一个很深的目录下找到了</p><p>Tomcat 5.5/work/Catalina/localhost/_/org/apache/jsp \r\n这个应该是临时编译的了。打开class文件一看链接内容正是修改过后的，于是copy这个文件用上面的方法直接覆盖原来的。刷新页面，点击链接，oye，终于成功了！</p><p>另外改两个端口的配置是</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;Connector<br/>port=&quot;80&quot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; maxHttpHeaderSize=&quot;8192&quot;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; maxThreads=&quot;150&quot; minSpareThreads=&quot;25&quot; maxSpareThreads=&quot;75&quot;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enableLookups=&quot;false&quot; redirectPort=&quot;8443&quot; acceptCount=&quot;100&quot;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; connectionTimeout=&quot;20000&quot; disableUploadTimeout=&quot;true&quot; /&gt;<br/>&nbsp;&nbsp;&nbsp; &lt;Connector<br/>port=&quot;9000&quot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; maxHttpHeaderSize=&quot;8192&quot;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; maxThreads=&quot;150&quot; minSpareThreads=&quot;25&quot; maxSpareThreads=&quot;75&quot;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enableLookups=&quot;false&quot; redirectPort=&quot;8443&quot; acceptCount=&quot;100&quot;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; connectionTimeout=&quot;20000&quot; disableUploadTimeout=&quot;true&quot; /&gt;</p><p>&nbsp;</p><p>&nbsp;</p><p>我的项目下有很多的WEB文件（html，jsp，），在地址栏中输入他的项目路径时，怎么样才可以让他不进入任何页面，并且可以显示，项目下的所有文件</p><p>&nbsp;</p><p>这里改一下配置文件就行了<br/>找到你tomcat的安装目录下的<br/>cong/web.xml文件 <br/>找到&nbsp;&nbsp;&nbsp; &lt;servlet&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;servlet-name&gt;default&lt;/servlet-name&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;servlet-class&gt;org.apache.catalina.servlets.DefaultServlet&lt;/servlet-class&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;init-param&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;param-name&gt;debug&lt;/param-name&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;param-value&gt;0&lt;/param-value&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/init-param&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;init-param&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;param-name&gt;listings&lt;/param-name&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;param-value&gt;false&lt;/param-value&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/init-param&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;load-on-startup&gt;1&lt;/load-on-startup&gt;<br/>&nbsp;&nbsp;&nbsp; &lt;/servlet&gt;<br/>这个代码<br/>然后把listings的值改成true 重新启动tomcat就可以了</p><p><br/></p>', 'TOMCAT');
INSERT INTO `article` VALUES ('76', '测试', 'adminn', '2017-05-19 23:13:50', '0', '1', '<p><img src=\'http://img.baidu.com/hi/jx2/j_0003.gif\'/></p><p>JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称为JavaScript引擎，为浏览器的一部分，广泛用于客户端的脚本语言，最早是在<a target=\'_blank\' href=\'http://baike.baidu.com/item/HTML\'>HTML</a>（标准通用标记语言下的一个应用）网页上使用，用来给HTML网页增加动态功能。</p><p>在1995年时，由<a target=\'_blank\' href=\'http://baike.baidu.com/item/Netscape\'>Netscape</a>公司的<a target=\'_blank\' href=\'http://baike.baidu.com/item/Brendan%20Eich\'>Brendan Eich</a>，在<a target=\'_blank\' href=\'http://baike.baidu.com/item/%E7%BD%91%E6%99%AF%E5%AF%BC%E8%88%AA%E8%80%85\'>网景导航者</a>浏览器上首次设计实现而成。因为<a target=\'_blank\' href=\'http://baike.baidu.com/item/Netscape\'>Netscape</a>与<a target=\'_blank\' href=\'http://baike.baidu.com/item/Sun/69463\'>Sun</a>合作，<a target=\'_blank\' href=\'http://baike.baidu.com/item/Netscape\'>Netscape</a>管理层希望它外观看起来像<a target=\'_blank\' href=\'http://baike.baidu.com/item/Java/85979\'>Java</a>，因此取名为JavaScript。但实际上它的语法风格与<a target=\'_blank\' href=\'http://baike.baidu.com/item/Self/4959923\'>Self</a>及<a target=\'_blank\' href=\'http://baike.baidu.com/item/Scheme\'>Scheme</a>较为接近。<sup>[1]</sup><a class=\'sup-anchor\'>&nbsp;</a></p><p>为了取得技术优势，<a target=\'_blank\' href=\'http://baike.baidu.com/item/%E5%BE%AE%E8%BD%AF\'>微软</a>推出了<a target=\'_blank\' href=\'http://baike.baidu.com/item/JScript\'>JScript</a>，CEnvi推出ScriptEase，与JavaScript同样可在浏览器上运行。为了统一规格，因为JavaScript兼容于ECMA标准，因此也称为<a target=\'_blank\' href=\'http://baike.baidu.com/item/ECMAScript\'>ECMAScript</a>。</p><p>JavaScript是一种属于网络的脚本语言,已经被广泛用于Web应用开发,常用来为网页添加各式各样的动态功能,为用户提供更流畅美观的浏览效果。通常JavaScript脚本是通过嵌入在HTML中来实现自身的功能的。<sup>[3]</sup><a class=\'sup-anchor\'>&nbsp;</a><a></a></p><ol class=\'custom_num  para-list list-paddingleft-1\'><li class=\'list-num-1-1 list-num-paddingleft-1\'><p>是一种解释性脚本语言（代码不进行<a target=\'_blank\' href=\'http://baike.baidu.com/item/%E9%A2%84%E7%BC%96%E8%AF%91\'>预编译</a>）。<sup>[4]</sup><a class=\'sup-anchor\'>&nbsp;</a></p></li><li class=\'list-num-1-2 list-num-paddingleft-1\'><p>主要用来向<a target=\'_blank\' href=\'http://baike.baidu.com/item/HTML\'>HTML</a>（<a target=\'_blank\' href=\'http://baike.baidu.com/item/%E6%A0%87%E5%87%86%E9%80%9A%E7%94%A8%E6%A0%87%E8%AE%B0%E8%AF%AD%E8%A8%80\'>标准通用标记语言</a>下的一个应用）页面添加交互行为。<sup>[4]</sup><a class=\'sup-anchor\'>&nbsp;</a></p></li><li class=\'list-num-1-3 list-num-paddingleft-1\'><p>可以直接嵌入HTML页面，但写成单独的<a target=\'_blank\' href=\'http://baike.baidu.com/item/js/10687961\'>js</a>文件有利于结构和行为的<a target=\'_blank\' href=\'http://baike.baidu.com/item/%E5%88%86%E7%A6%BB\'>分离</a>。<sup>[4]</sup><a class=\'sup-anchor\'>&nbsp;</a></p></li><li class=\'list-num-1-4 list-num-paddingleft-1\'><p>跨平台特性，在绝大多数浏览器的支持下，可以在多种平台下运行（如<a target=\'_blank\' href=\'http://baike.baidu.com/item/Windows\'>Windows</a>、<a target=\'_blank\' href=\'http://baike.baidu.com/item/Linux\'>Linux</a>、Mac、Android、iOS等）。</p></li></ol><p>Javascript脚本语言同其他语言一样，有它自身的基本数据类型，表达式和算术运算符及程序的基本程序框架。Javascript提供了四种基本的数据类型和两种特殊数据类型用来处理数据和文字。而变量提供存放信息的地方，表达式则可以完成较复杂的信息处理。<sup>[5]</sup><a class=\'sup-anchor\'>&nbsp;</a></p><p><br/></p>', '学校事迹');
INSERT INTO `article` VALUES ('77', '如何把SQLServer数据库从高版本降级到低版本？ ', 'admin', '2017-05-21 22:31:16', '3', '24', '<p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'>由于目前还广泛使用着SQLServer2000，很多公司又想使用新的SQLServer，从而直接【分离/附加】或者【备份/还原】<a href=\'http://lib.csdn.net/base/mysql\' class=\'replace_word\' title=\'MySQL知识库\' target=\'_blank\' style=\'color: rgb(223, 52, 52); text-decoration-line: none; font-weight: bold;\'>数据库</a>，在不同版本之间存放。往往就会遇到版本不兼容的问题。前几天遇到了从我本机2008R2上备份的一个数据库还原到2008上面时报错：</p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'>从运行版本10.50.2500（2008R2是10.50）和10.00.1600（2008是10.00）中可以看出这个版本不兼容问题，大部分情况下，从低版本升级到高版本，只要不是跨度太大，如2000升级到2012，都不会怎么报错。除非使用了一些新版本不兼容的特性如*=来实现left join的语句。但是就像上图那样，从高版本还原到低版本的时候，问题就出现了，而且几乎一定会报错。</p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'><span style=\'white-space: pre;\'></span>下面给出几个小建议，例子是从2008 降级到2005：</p><h2 style=\'margin: 0px; padding: 0px; font-family: Arial; white-space: normal; background-color: rgb(255, 255, 255);\'><a target=\'_blank\' style=\'color: rgb(202, 0, 0);\'></a>方法一：使用图形化操作（GUI），打开SSMS(SQL Server Management Studio)</h2><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'><span style=\'white-space: pre;\'></span></p><h3 style=\'margin: 0px; padding: 0px; font-family: Arial; white-space: normal; background-color: rgb(255, 255, 255);\'><a target=\'_blank\' style=\'color: rgb(202, 0, 0);\'></a>步骤1：右键你要降级的数据库，按下图选择：</h3><p><img src=\'/blog//ueditor/jsp/upload/image/20170602/1496366667366020472.jpg\' title=\'1496366667366020472.jpg\' alt=\'1346933871_7152.jpg\'/></p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'><span style=\'white-space: pre;\'></span></p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'><span style=\'font-size: 16px; white-space: pre;\'>步骤</span><span style=\'font-size: 16px;\'>2：在对话框中选择：</span></p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'><span style=\'font-size: 16px;\'><br/><img src=\'/blog//ueditor/jsp/upload/image/20170602/1496366702318063196.png\' title=\'1496366702318063196.png\' alt=\'1346934915_6365.png\' width=\'885\' height=\'358\'/></span></p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'><span style=\'font-size: 16px;\'>&nbsp;&nbsp;</span><span style=\'font-size: 16px; white-space: pre;\'> </span><span style=\'font-size: 16px;\'>步骤3：在【高级】中选择下图：</span></p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'><span style=\'white-space: pre;\'></span></p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'><span style=\'font-size: 16px; white-space: pre;\'>步骤</span><span style=\'font-size: 16px;\'>4：把脚本保存起来，然后在SQLServer2005中运行脚本。</span></p><p>详细步骤可以看：<a target=\'_blank\' href=\'http://bbs.csdn.net/topics/390438560?page=1#post-394316973\' style=\'color: rgb(202, 0, 0); text-decoration-line: none;\'>http://bbs.csdn.net/topics/390438560?page=1#post-394316973</a>&nbsp;中的13楼的回复，有截图</p><h3 style=\'margin: 0px; padding: 0px; font-family: Arial; white-space: normal; background-color: rgb(255, 255, 255);\'><a target=\'_blank\' style=\'color: rgb(202, 0, 0);\'></a>步骤5：通过【任务】→【导入数据】，把数据从2008导入到使用脚本创建的库上如下图，就完成了：</h3><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'><span style=\'white-space: pre;\'></span></p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'><span style=\'font-family: sans-serif; font-size: 16px;\'>关于备份，可以看我的另外一篇文章：</span><a target=\'_blank\' href=\'http://blog.csdn.net/dba_huangzj/article/details/22683687\' style=\'font-family: sans-serif; font-size: 16px; color: rgb(202, 0, 0); text-decoration-line: none;\'>第一篇——第一文 SQL Server 备份基础</a></p><p><br/></p>', 'SQL数据库');
INSERT INTO `article` VALUES ('78', '浏览器问题', 'admin', '2017-05-25 15:28:02', '0', '6', '<p>这是浏览器使用了代理服务器吗？然而谷歌浏览器还可以啊，我好像对欧朋浏览器没做什么啊。。。。</p><p>咋搞啊<img src=\'http://img.baidu.com/hi/jx2/j_0009.gif\'/></p>', '学习');
INSERT INTO `article` VALUES ('79', '学校新增三个专业', 'admin', '2017-05-25 18:56:19', '0', '4', '<p><img src=\'/blog//ueditor/jsp/upload/image/20170602/1496368493663062527.jpg\' title=\'1496368493663062527.jpg\' alt=\'校徽4.jpg\' width=\'472\' height=\'119\'/>又新增了三个专业<img src=\'http://img.baidu.com/hi/jx2/j_0003.gif\'/></p>', '学习');
INSERT INTO `article` VALUES ('88', '程序员的焦虑', 'admin', '2017-05-25 19:41:46', '0', '4', '<h2 style=\'margin: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'>得失之间</h2><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'>这是一个最好的时代，也是一个最坏的时代。每个人如你我，都不过是这个时代里面的一粒尘埃，多少年以后，我们在历史上不会有任何的记忆。但是这样的时代，在中国5000年的文明史上，不知道经历了多少个轮回，放在这个广阔的背景上面来讲，我们今天焦虑的事情都算不得什么。很多事情要长远地思维，当年很多资本家焦虑自己不是三代贫农，现在很多贫农焦虑自己不是资本家；当年很多人焦虑自己没有商品粮，现在很多拿了城市户口的大学生焦虑自己再也成不了农民。很多时候，我们喜欢放大我们得不到的东西对我们造成的影响，而忽略我们得到的东西的正面价值。所以，很多事情，今天看也许是一个巨大的焦虑，但是数十年后，你可能因为你得到的东西而焦虑。育良书记如果没有进官场，成为副部级干部，他会不会每天晚上焦虑地要在院子里面刨坑挖地？得与失都是双刃剑，得了暂时不焦虑，也可能埋藏祸根；失了暂时焦虑，也可能赢来新的转机。上帝为你关闭了一扇门，就一定会为你打开一扇窗。</p><h2 style=\'margin: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'><a target=\'_blank\' style=\'color: rgb(202, 0, 0);\'></a>焦虑的源头</h2><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'>废话说了这么多。程序员确实够焦虑的，每一个都能压死咱们：</p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'>工资不上不下，房子好像买得起又好像买不起（如果干脆工资低到买不起，压根就不考虑这个问题了）。</p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'>新技术每天都在迎面扑来，各种概念层出不穷；老板每天让我加班，做的事情好像也学不到东西。</p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'>隔壁家的阿狗没什么文凭，就靠炒房子也身家千万了。后悔当初哥怎么没买那个房子？</p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'>老是高级工程师职位，老子干活这么卖命，工作年数也这么多了，就不能给老子升个士大夫工程师？</p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'>小孩子看着看着大了，该读书了，京沪等地读书怎么办？竞争的人太多了，上地张江的牛逼父母太多了，玩不过他们。</p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'>这些焦虑并举的情况下，给我们程序员的研发事业造成了极大的伤害，就是我们没有办法静下来钻研技术了。既然读书可能无用，那么代码写地再牛逼可能也不是很有用，毕竟早一年买一个五六百万万的房子，一年后double，够很多工程师coding一辈子了。那么我们天天拼命地coding，并且ignore了买房子，还有什么希望？</p><p style=\'margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-indent: 28px; box-sizing: border-box !important; word-wrap: break-word !important;\'>我们坦诚地承认这些焦虑都是客观存在的，有一些可能短时间之内都无法修复。那么我们在客观已经存在这些焦虑的情况下，探讨一些缓解之道。</p><p><br/></p>', '学习');
INSERT INTO `article` VALUES ('89', '广石化皇家 学府', 'zxp', '2017-06-02 09:03:18', '0', '1', '<p><img src=\'/blog//ueditor/jsp/upload/image/20170602/1496365337172003362.jpg\' title=\'1496365337172003362.jpg\' alt=\'校徽.jpg\' width=\'340\' height=\'215\'/>我们的校徽！皇家学府，你值得拥有！<img src=\'http://img.baidu.com/hi/jx2/j_0003.gif\'/></p>', '校园生活');
INSERT INTO `article` VALUES ('90', '三线表怎么做？如何绘制三线表？', 'admin', '2017-06-02 11:13:15', '2', '12', '<p><span style=\'color: rgb(51, 51, 51); font-family: &quot;times new roman&quot;; font-size: 14px; text-indent: 24px;\'>先讲解下什么叫</span><strong style=\'color: rgb(51, 51, 51); font-family: &quot;times new roman&quot;; font-size: 14px; text-indent: 24px; white-space: normal;\'>三线表</strong><span style=\'color: rgb(51, 51, 51); font-family: &quot;times new roman&quot;; font-size: 14px; text-indent: 24px;\'>：三线表以其形式简洁、功能分明、阅读方便而在科技论文中被推荐使用。三线表通常只有3条线，即顶线、底线和栏目线(见图，注意：没有竖线)。其中顶线和底线为粗线，栏目线为细线。当然，三线表并不一定只有3条线，必要时可加辅助线，但无论加多少条辅助线，仍称做三线表。三线表的组成要素包括：表序、表题、项目栏、表体、表注</span>。</p><p><img src=\'/blog//ueditor/jsp/upload/image/20170602/1496373104550093639.jpg\' title=\'1496373104550093639.jpg\' alt=\'1.jpg\'/></p><p style=\'padding: 0px; margin-bottom: 10px; font-family: &quot;times new roman&quot;; text-indent: 24px; color: rgb(51, 51, 51); font-size: 14px; white-space: normal;\'>因为三线表与大家常见的绘制表格后的效果不一样，很多人都不知道<strong>三线表怎么做</strong>。其实<strong>绘制三线表</strong>的方法很简单，下面本文就以在Word 2010中操作为例，跟大家讲解下Word文档中<a href=\'http://www.officezhushou.com/word2010/sanxianbiao.html\' target=\'_blank\' style=\'color: rgb(22, 56, 124); text-decoration-line: none;\'>绘制三线表的方法</a>。</p><p style=\'padding: 0px; margin-bottom: 10px; font-family: &quot;times new roman&quot;; text-indent: 24px; color: rgb(51, 51, 51); font-size: 14px; white-space: normal;\'>1、首先绘制一个普通表格(四周全部都有线)。</p><p><img src=\'/blog//ueditor/jsp/upload/image/20170602/1496373147290088198.jpg\' title=\'1496373147290088198.jpg\' alt=\'2.jpg\'/></p><p><span style=\'color: rgb(51, 51, 51); font-family: &quot;times new roman&quot;; font-size: 14px; text-indent: 24px;\'>2、选中这个表格，鼠标右键，点击“表格属性”，进入表格属性对话框。在“表格”选项卡中，点击“边框和底纹(B)…”按钮。</span></p><p><span style=\'color: rgb(51, 51, 51); font-family: &quot;times new roman&quot;; font-size: 14px; text-indent: 24px;\'><img src=\'/blog//ueditor/jsp/upload/image/20170602/1496373191964067616.jpg\' title=\'1496373191964067616.jpg\' alt=\'3.jpg\'/></span></p>', '疑难解答');
INSERT INTO `article` VALUES ('91', 'XMLHttpRequest', 'admin', '2017-06-02 21:11:04', '0', '1', '<p><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>0 － （未初始化）还没有调用send()方法</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>1 － （载入）已调用send()方法，正在发送请求</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>2 － （载入完成）send()方法执行完成，已经接收到全部响应内容</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>3 － （交互）正在解析响应内容</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>4 － （完成）响应内容解析完成，可以在客户端调用了</span><br/><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>对 于readyState的这五种状态，其他书中大都语焉不详。像《Foundations of&nbsp;</span><a target=\'_blank\' title=\'\' href=\'http://www.blogjava.net/hulizhong/articles/112412.html\' style=\'text-decoration-line: none; color: navy; white-space: normal; background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>AJAX中文问题</a><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>》中，只在书中的表2-2简单地列举了状态的“名称”－－The state of the request. The five possible values are 0 = uninitialized, 1 = loading, 2 = loaded, 3 = interactive, and 4 = complete。而《Ajax in Action》中好像根本就没有提到这5种状态的细节。《Professional&nbsp;</span><a target=\'_blank\' title=\'\' href=\'http://www.blogjava.net/hulizhong/articles/112412.html\' style=\'text-decoration-line: none; color: navy; white-space: normal; background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>AJAX中文问题</a><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>》中虽不尽人意，但还是有可取之处</span></p><p><br/></p><p><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>readyState有五种可能的值：</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>0 (未初始化)： (XMLHttpRequest)对象已经创建，但还没有调用open()方法。</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>1 (载入)：已经调用open() 方法，但尚未发送请求。</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>2 (载入完成)： 请求已经发送完成。</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>3 (交互)：可以接收到部分响应数据。</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>4 (完成)：已经接收到了全部数据，并且连接已经关闭</span></p><p><br/></p><p><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>readyState 状态</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>状态说明</span><br/><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>(0)未初始化</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>此阶段确认XMLHttpRequest对象是否创建，并为调用open()方法进行未初始化作好准备。值为0表示对象已经存在，否则浏览器会报错－－对象不存在。</span><br/><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>(1)载入</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>此阶段对XMLHttpRequest对象进行初始化，即调用open()方法，根据参数(method,url,true)完成对象状态的设置。并调用send()方法开始向服务端发送请求。值为1表示正在向服务端发送请求。</span><br/><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>(2)载入完成</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>此阶段接收服务器端的响应数据。但获得的还只是服务端响应的原始数据，并不能直接在客户端使用。值为2表示已经接收完全部响应数据。并为下一阶段对数据解析作好准备。</span><br/><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>(3)交互</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>此阶段解析接收到的服务器端响应数据。即根据服务器端响应头部返回的MIME类型把数据转换成能通过responseBody、responseText或responseXML属性存取的格式，为在客户端调用作好准备。状态3表示正在解析数据。</span><br/><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>(4)完成</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>此阶段确认全部数据都已经解析为客户端可用的格式，解析已经完成。值为4表示数据解析完毕，可以通过XMLHttpRequest对象的相应属性取得数据。</span><br/><br/><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>概而括之，整个XMLHttpRequest对象的生命周期应该包含如下阶段：</span><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>创建－初始化请求－发送请求－接收数据－解析数据－完成</span><br/><br/><span style=\'color: rgb(85, 85, 85); background-color: rgb(255, 255, 255); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 16.9px;\'>在 具体应用中，明确了readyState的五个状态（XMLHttpRequest对象的生命周期各个阶段）的含义，就可以消除对Ajax核心的神秘感 （语焉不详的背后要么是故弄玄虚，制造神秘感；要么就是“以其昏昏，使人昭昭”），迅速把握其实质，对减少学习中的挫折感和增强自信心都极其有益。</span></p>', 'HTTP');
INSERT INTO `article` VALUES ('92', '表关联', 'admin', '2017-06-02 21:44:27', '1', '5', '<pre class=\'best-text mb-10\' style=\'margin-top: 10px; margin-bottom: 10px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; white-space: pre-wrap; word-wrap: break-word; line-height: 29px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); min-height: 55px;\'><span style=\'font-size: 20px;\'>sql中表关联的建立方法：<br/>1、最常用的一种:&nbsp;减少重复数据.表A中拥有外键,表B的数据基本是不允许删除的.这时选择对&nbsp;INSERT&nbsp;和&nbsp;UPDATE&nbsp;强制关系即可.<br/>2、其次,是增加一个从属表.&nbsp;如果表A删除一条记录时，表B中也随着删除一条相关联的记录，那么外键关系中，表A的主键是表B的外键。这种关系，实际上表B是表A的从属表（即表A是父表），选择对&nbsp;INSERT&nbsp;和&nbsp;UPDATE&nbsp;强制关系时，如果向表B中插入数据，表A中必须已经存在对应的记录。选择级联删除相关的字段时，删除表A中的一条记录，就会删除对应的表B中的一条记录</span><br/></pre><p><br/></p>', '表关联');

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `friend_name` varchar(20) DEFAULT NULL,
  `friends_type` varchar(20) DEFAULT '默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES ('25', 'xiejiashan', 'xiexiexie', '默认');
INSERT INTO `friends` VALUES ('29', 'liuzhefen', 'xiexiexie', '默认');
INSERT INTO `friends` VALUES ('32', 'xiexiexie', 'admin', '默认');
INSERT INTO `friends` VALUES ('35', 'admin', 'xiexiexie', '默认');
INSERT INTO `friends` VALUES ('38', 'xie', 'admin', '默认');
INSERT INTO `friends` VALUES ('42', 'admin', 'xiejiashan', '默认');
INSERT INTO `friends` VALUES ('43', 'liuzhefen', 'admin', '默认');
INSERT INTO `friends` VALUES ('44', 'admin', 'liuzhefen', '默认');
INSERT INTO `friends` VALUES ('46', 'admin', 'adminn', '默认');
INSERT INTO `friends` VALUES ('47', 'admin', 'xiejue', '默认');
INSERT INTO `friends` VALUES ('48', 'zxp', 'xie', '默认');
INSERT INTO `friends` VALUES ('49', 'zxp', 'admin', '默认');
INSERT INTO `friends` VALUES ('50', 'zxp', 'adminn', '默认');
INSERT INTO `friends` VALUES ('51', 'zxp', 'xiejiashan', '默认');
INSERT INTO `friends` VALUES ('52', 'xiejiashan', 'admin', '默认');
INSERT INTO `friends` VALUES ('53', 'xiejiashan', 'adminn', '默认');
INSERT INTO `friends` VALUES ('54', 'xiexiexie', 'xiejiashan', '默认');
INSERT INTO `friends` VALUES ('55', 'xiexiexie', 'xie', '默认');
INSERT INTO `friends` VALUES ('56', 'xiexiexie', 'lzf', '默认');
INSERT INTO `friends` VALUES ('57', 'xiexiexie', 'lym', '默认');
INSERT INTO `friends` VALUES ('58', 'xiexiexie', 'zxp', '默认');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `image_path` varchar(80) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `image_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('66', 'admin', 'uploadimages/1496367154093.jpg', 'qqq', '校园生活');
INSERT INTO `images` VALUES ('67', 'admin', 'uploadimages/1496367162417.jpg', '222', '校园生活');
INSERT INTO `images` VALUES ('68', 'admin', 'uploadimages/1496367190082.jpg', '夜游湛江大桥', '校园生活');
INSERT INTO `images` VALUES ('69', 'admin', 'uploadimages/1496367251802.jpg', '服服服', '团日活动');
INSERT INTO `images` VALUES ('70', 'admin', 'uploadimages/jpg', '漂流', '团日活动');
INSERT INTO `images` VALUES ('71', 'xiexiexie', 'uploadimages/jpg', '1254654', '校园生活');
INSERT INTO `images` VALUES ('74', 'xiexiexie', 'uploadimages/1496368740683.jpg', '78987', '校园生活');
INSERT INTO `images` VALUES ('75', 'xiexiexie', 'uploadimages/1496368769631.jpg', 'ertgtretre', '班级活动');
INSERT INTO `images` VALUES ('76', 'xiejiashan', 'uploadimages/1496369193673.jpg', '555', '校园生活');
INSERT INTO `images` VALUES ('77', 'xiejiashan', 'uploadimages/1496369201359.jpg', '7897', '校园生活');
INSERT INTO `images` VALUES ('78', 'xiejiashan', 'uploadimages/1496369208467.jpg', '7978987', '校园生活');
INSERT INTO `images` VALUES ('80', 'xiejiashan', 'uploadimages/1496369812410.jpg', '789咕咕咕咕', '漂流');
INSERT INTO `images` VALUES ('81', 'zxp', 'uploadimages/1496370021558.jpg', 'ggg', '校园生活');
INSERT INTO `images` VALUES ('82', 'zxp', 'uploadimages/1496370027996.jpg', 'ggg', '校园生活');
INSERT INTO `images` VALUES ('83', 'zxp', 'uploadimages/1496370050784.jpg', '哈哈哈哈', '呵呵呵');

-- ----------------------------
-- Table structure for liuyan
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liuyan
-- ----------------------------
INSERT INTO `liuyan` VALUES ('3', '匿名', '合法的闪光灯佛塑股份噶分', '2017-05-09 22:09:13');
INSERT INTO `liuyan` VALUES ('5', '匿名', '飞洒地方撒旦', '2017-05-09 22:12:38');
INSERT INTO `liuyan` VALUES ('8', '匿名', '发生的飞', '2017-05-09 22:12:49');
INSERT INTO `liuyan` VALUES ('9', '匿名', 'hfdsg gfdsg', '2017-05-09 14:45:29');
INSERT INTO `liuyan` VALUES ('10', '匿名', 'gfdsgfdsgvfdsvxs', '2017-05-09 14:45:48');
INSERT INTO `liuyan` VALUES ('11', '匿名', 'fewf afds', '2017-05-09 17:26:14');
INSERT INTO `liuyan` VALUES ('12', '匿名', 'gfdgdsfd', '2017-05-09 17:33:09');
INSERT INTO `liuyan` VALUES ('14', '浅尝殇痛', '法撒旦飞洒防撒旦法奥术法术发斯蒂芬安抚安抚啊啊 安抚啊', '2017-05-09 11:06:19');
INSERT INTO `liuyan` VALUES ('15', 'xiexiexie', '因为，不想分离', '2017-05-11 14:52:04');
INSERT INTO `liuyan` VALUES ('18', '匿名', '<p style=\"text-align: right;\"><img src=\"http://img.baidu.com/hi/bobo/B_0005.gif\"/><strong>啦啦啦啦</strong></p>', '2017-05-16 08:16:34');
INSERT INTO `liuyan` VALUES ('19', '匿名', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p>', '2017-05-19 15:35:47');
INSERT INTO `liuyan` VALUES ('21', '匿名', '<p class=\"text\" style=\"TEXT-INDENT:2em\">就在刚才，我国国土资源部中国地质调查局在南海宣布，我们国家成功在南海完成了的一种超级能源的试验开采<a target=\"_blank\" href=\"http://time.qq.com/baike/deskclean/20170207.htm?pgv_ref=guanjianews_tips&from=guanjia\" class=\"nameStar gj-nameStar gj-keyword\">工作</a>，并直接成为了全世界第一个实现了可以在海域中【稳定】开采这种超级能源的国家！</p><p><br/></p>', '2017-05-19 15:39:05');
INSERT INTO `liuyan` VALUES ('22', '匿名', '<p class=\"text\" style=\"TEXT-INDENT:2em\">这次我们敢拍着胸脯说<a target=\"_blank\" href=\"https://guanjia.qq.com/news/n2/201702/16_377.html?ADTAG=cop.innercop.news.pingce\" class=\"nameStar gj-nameStar gj-keyword\">世界第一</a>！党中央国务院发来贺电！<img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/></p><p class=\"text\" style=\"TEXT-INDENT:2em\">就在刚才，我国国土资源部中国地质调查局在南海宣布，我们国家成功在南海完成了的一种超级能源的试验开采<a target=\"_blank\" href=\"http://time.qq.com/baike/deskclean/20170207.htm?pgv_ref=guanjianews_tips&from=guanjia\" class=\"nameStar gj-nameStar gj-keyword\">工作</a>，并直接成为了全世界第一个实现了可以在海域中【稳定】开采这种超级能源的国家！</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/></p>', '2017-05-19 15:41:56');
INSERT INTO `liuyan` VALUES ('29', 'admin', '<p>haha<br/></p>', '2017-05-19 20:02:07');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` longtext,
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', 'admin', '今天下雨', '今天天气预报说有暴雨及4级狂风，请大家注意安全，保护自身安全', '2017-05-09 16:27:05');
INSERT INTO `message` VALUES ('2', 'admin', '天气晴朗，出去走走', '天气不错，宿舍几个组队去森林公园浪一浪', '2017-05-09 16:30:35');
INSERT INTO `message` VALUES ('8', 'admin', '二饭今天不开门', '由于饭堂更换煤气，请各位同学移步一饭就餐', '2017-05-09 18:59:41');
INSERT INTO `message` VALUES ('9', 'admin', '二饭开了', '今天去二饭，居然开了', '2017-05-09 19:06:15');
INSERT INTO `message` VALUES ('10', 'admin', '又到了交水电费的时候了', '又到了交水电费的时候了，这些天舍友大都不在宿舍，所以水电费没超支', '2017-05-09 19:06:35');
INSERT INTO `message` VALUES ('11', 'admin', '电脑崩溃', '电脑崩溃，重装系统，好烦啊', '2017-05-09 19:07:05');
INSERT INTO `message` VALUES ('14', 'xiejiashan', '烦烦烦', '今天帮同学配置开发环境，电脑内存2g,什么概念，慢如蜗牛', '2017-05-09 21:24:27');
INSERT INTO `message` VALUES ('15', 'xiejiashan', '疑难杂症机真多', '帮了好几个同学配置环境，每台都有不一样的疑难杂症，累累累', '2017-05-10 18:54:04');
INSERT INTO `message` VALUES ('16', 'admin', '持续开发中', '系统持续开发中', '2017-05-10 18:56:32');
INSERT INTO `message` VALUES ('18', 'xiexiexie', '暴雨天注意事项5566', '<p>今天又下暴雨了，茂名这天气真鬼啊，还打算今天晒被子什么的，哎，只能等天晴了，很好啊<img src=\'http://img.baidu.com/hi/jx2/j_0015.gif\'/></p>', '2017-05-13 15:34:49');
INSERT INTO `message` VALUES ('19', 'admin', '44', '8689689', '2017-05-15 22:22:23');
INSERT INTO `message` VALUES ('20', 'admin', '每天都那么累', '<p style=\'text-align: center;\'><img src=\'http://img.baidu.com/hi/jx2/j_0010.gif\'/><em><strong>kunkunk累死了<img src=\'http://img.baidu.com/hi/jx2/j_0084.gif\'/></strong></em></p>', '2017-05-16 08:11:28');
INSERT INTO `message` VALUES ('21', 'admin', '论文检查', '<p>今晚机房二楼进行论文检查，全部人必须到齐。<img src=\'http://img.baidu.com/hi/jx2/j_0026.gif\'/></p>', '2017-05-23 15:44:02');

-- ----------------------------
-- Table structure for re_article
-- ----------------------------
DROP TABLE IF EXISTS `re_article`;
CREATE TABLE `re_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_no` int(11) DEFAULT NULL,
  `re_name` varchar(20) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of re_article
-- ----------------------------
INSERT INTO `re_article` VALUES ('2', '1', '游者', '可以了', '2017-05-09 14:10:41');
INSERT INTO `re_article` VALUES ('3', '2', 'admin', 'ok', '2017-05-09 14:14:12');
INSERT INTO `re_article` VALUES ('4', '2', 'admin', '一切都好', '2017-05-09 14:17:11');
INSERT INTO `re_article` VALUES ('5', '2', '游者', '真的', '2017-05-09 14:18:52');
INSERT INTO `re_article` VALUES ('6', '2', '游者', '课程设计', '2017-05-09 14:20:50');
INSERT INTO `re_article` VALUES ('7', '2', '游者', '怎么了？', '2017-05-09 14:23:39');
INSERT INTO `re_article` VALUES ('8', '2', '游者', '是不是很好呀？', '2017-05-10 14:24:26');
INSERT INTO `re_article` VALUES ('9', '6', 'admin', '这个主题很好我喜欢', '2017-05-10 09:51:51');
INSERT INTO `re_article` VALUES ('16', '5', 'admin', '很好呀', '2017-05-10 19:35:09');
INSERT INTO `re_article` VALUES ('17', '5', 'admin', '各分店历史记录接口 ', '2017-05-09 19:41:22');
INSERT INTO `re_article` VALUES ('18', '5', 'admin', '范德萨记分卡', '2017-05-09 19:42:37');
INSERT INTO `re_article` VALUES ('19', '14', 'admin', '打开萨拉  进风口老师打积分  间发生令大家飞', '2017-05-09 20:54:10');
INSERT INTO `re_article` VALUES ('27', '1', 'xiexiexie', '测试一下', '2017-05-09 17:00:05');
INSERT INTO `re_article` VALUES ('28', '39', 'xiexiexie', '那好吧，我随便评论一下', '2017-05-09 19:52:46');
INSERT INTO `re_article` VALUES ('29', '1', 'xiexiexie', '这是什么情况啊，bug，bug,bug真烦人啊', '2017-05-09 19:56:08');
INSERT INTO `re_article` VALUES ('30', '1', '游客', '我是游客，就来你这看看', '2017-05-03 19:56:42');
INSERT INTO `re_article` VALUES ('31', '41', 'xie', '回复一下', '2017-05-03 20:56:49');
INSERT INTO `re_article` VALUES ('32', '48', 'xiexiexie', 'fdgdgdgsdgsrtrwettert', '2017-05-09 14:03:59');
INSERT INTO `re_article` VALUES ('33', '51', '匿名', 'tyutuytgjhg', '2017-05-09 14:42:13');
INSERT INTO `re_article` VALUES ('34', '55', 'xiexiexie', '987987', '2017-05-09 21:27:15');
INSERT INTO `re_article` VALUES ('35', '56', 'xiexiexie', '外卖小哥很辛苦的，体谅一下啦', '2017-05-09 21:58:09');
INSERT INTO `re_article` VALUES ('36', '56', '浅尝殇痛', '一如既往，饭堂走起，风雨不改，二饭等你', '2017-05-09 22:04:02');
INSERT INTO `re_article` VALUES ('37', '62', 'xiexiexie', '很少分恢复规划烦得很发和发给', '2017-05-09 23:13:39');
INSERT INTO `re_article` VALUES ('38', '63', 'xiejiashan', '写得好啊', '2017-05-10 21:50:45');
INSERT INTO `re_article` VALUES ('39', '65', '匿名', '9856+56+56+56+564+', '2017-05-11 14:43:17');
INSERT INTO `re_article` VALUES ('40', '65', 'xiexiexie', '+546+56+56+56+564+5665', '2017-05-11 14:43:32');
INSERT INTO `re_article` VALUES ('41', '67', 'xiexiexie', '明天有多远啊', '2017-05-11 16:17:29');
INSERT INTO `re_article` VALUES ('43', '69', 'xiexiexie', '呦呦呦企鹅肯', '2017-05-11 16:40:43');
INSERT INTO `re_article` VALUES ('44', '62', '匿名', '丰富的第三方啊', '2017-05-12 15:22:41');
INSERT INTO `re_article` VALUES ('45', '71', 'admin', '456ffas', '2017-05-16 07:30:49');
INSERT INTO `re_article` VALUES ('46', '72', 'admin', '<p>666666666666fdsaf a法师打发斯蒂芬阿斯蒂芬谁发的</p><p>公司垫付都是是<img src=\"http://img.baidu.com/hi/jx2/j_0004.gif\"/></p>', '2017-05-16 07:44:41');
INSERT INTO `re_article` VALUES ('47', '72', 'admin', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0008.gif\"/></p>', '2017-05-16 07:46:54');
INSERT INTO `re_article` VALUES ('48', '72', 'xiejiashan', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0057.gif\"/>hahahhah<img src=\"http://img.baidu.com/hi/jx2/j_0017.gif\"/></p>', '2017-05-16 07:53:03');
INSERT INTO `re_article` VALUES ('54', '68', 'admin', '<p><img src=\"http://img.baidu.com/hi/youa/y_0017.gif\"/><img src=\"http://img.baidu.com/hi/youa/y_0005.gif\"/></p>', '2017-05-16 15:25:18');
INSERT INTO `re_article` VALUES ('55', '68', 'admin', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p><p style=\"text-align:center\"><img src=\"http://img.baidu.com/hi/jx2/j_0009.gif\"/></p><p><br/></p>', '2017-05-16 15:25:38');
INSERT INTO `re_article` VALUES ('56', '35', 'admin', '<p style=\"text-align: center;\"><span style=\"text-decoration: underline;\"><em><strong>发广告对对对 是 是发达发到付飞得更高到付</strong></em></span><br/></p>', '2017-05-16 15:38:53');
INSERT INTO `re_article` VALUES ('57', '62', 'admin', '<p><img src=\"http://img.baidu.com/hi/ldw/w_0002.gif\"/></p>', '2017-05-16 15:40:13');
INSERT INTO `re_article` VALUES ('58', '74', 'admin', '<p>初稿，设计。。。。。<br/></p>', '2017-05-17 08:21:45');
INSERT INTO `re_article` VALUES ('59', '74', 'admin', '<p><span style=\"border: 1px solid rgb(0, 0, 0);\">87585875875875</span><br/></p>', '2017-05-17 08:32:18');
INSERT INTO `re_article` VALUES ('61', '66', 'admin', '<p>哎哎哎<br/></p>', '2017-05-17 15:12:24');
INSERT INTO `re_article` VALUES ('62', '75', 'admin', '<p>好累啊<br/></p>', '2017-05-18 09:12:51');
INSERT INTO `re_article` VALUES ('64', '62', 'admin', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0004.gif\"/></p>', '2017-05-18 23:46:05');
INSERT INTO `re_article` VALUES ('65', '75', 'admin', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0008.gif\"/></p>', '2017-05-19 09:27:18');
INSERT INTO `re_article` VALUES ('66', '75', 'admin', '<p style=\"text-align:center\">&nbsp;<img src=\"http://img.baidu.com/hi/jx2/j_0009.gif\"/></p><p><br/></p>', '2017-05-19 09:27:38');
INSERT INTO `re_article` VALUES ('67', '56', 'admin', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0004.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0004.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0004.gif\"/>外卖吃多了伤身体啊！</p>', '2017-05-19 19:09:48');
INSERT INTO `re_article` VALUES ('68', '77', 'admin', '<p>谢谢博主<br/></p>', '2017-05-21 22:31:36');
INSERT INTO `re_article` VALUES ('69', '66', 'admin', '<p>难受的理由，你想拖拖拖拖到什么时候<img src=\"http://img.baidu.com/hi/jx2/j_0007.gif\"/></p>', '2017-05-23 15:25:35');
INSERT INTO `re_article` VALUES ('70', '77', 'xiejiashan', '<p>谢谢<img src=\"http://img.baidu.com/hi/jx2/j_0006.gif\"/></p>', '2017-05-23 15:33:59');
INSERT INTO `re_article` VALUES ('71', '77', 'xiejiashan', '<p>嘻嘻嘻想</p>', '2017-05-23 17:48:09');
INSERT INTO `re_article` VALUES ('72', '90', 'admin', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0006.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0006.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0006.gif\"/>感谢楼主！</p>', '2017-06-02 11:24:25');
INSERT INTO `re_article` VALUES ('73', '90', 'xiejiashan', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/>hahah</p>', '2017-06-02 11:25:02');
INSERT INTO `re_article` VALUES ('74', '92', 'admin', '<p>444444<img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/></p>', '2017-06-02 22:33:03');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(18) NOT NULL,
  `QQ` varchar(15) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `www` varchar(50) DEFAULT NULL,
  `power` varchar(10) DEFAULT '000',
  `registertime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sent_article` int(11) DEFAULT '0',
  `reply_num` int(11) DEFAULT '0',
  `face` varchar(80) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `signname` varchar(250) DEFAULT '',
  `click_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xiexiexie', '88888888', '1033480963', '1033480963@qq.com', 'http://github.io', '1111', '2017-05-02 23:18:06', '23', '0', 'images/face/Image1.gif', '男孩', '879987978978987', '128');
INSERT INTO `user` VALUES ('27', 'xie', 'xiejiashan', '1033480963', '1033480123@qq.com', 'http://github.io', '111', '2017-05-09 19:58:16', '2', '0', 'images/face/Image7.gif', '男孩', '这就是我的个人宣言', '3');
INSERT INTO `user` VALUES ('29', 'xxjjss', 'xxjjss', '1033480966', '1033480966@qq.com', 'http://www.baidu.com', '000', '2017-05-06 21:27:45', '0', '0', 'images/face/Image2.gif', '女孩', '我就说不一样的烟火', '8');
INSERT INTO `user` VALUES ('30', 'xiejue', 'xiejue', '203023408', '2309443@qq.com', 'http://qianchang.githut.io', '111', '2017-05-08 09:16:35', '0', '0', 'images/face/Image10.gif', '男孩', '充实度过每一天', '49');
INSERT INTO `user` VALUES ('31', 'xiejiashan', 'xiejiashan', '1033480965', '1033480965@qq.com', 'qianchang.io', '1111', '2017-05-10 20:31:22', '4', '0', 'images/face/Image7.gif', '男孩', '逗比', '20');
INSERT INTO `user` VALUES ('32', 'liuzhefen', '88888888', '1033480965', '1033480965@qq.com', 'github.io', '000', '2017-05-11 16:16:20', '2', '0', 'images/face/Image9.gif', '女孩', '每张照片都是纪念aaaaa', '16');
INSERT INTO `user` VALUES ('33', 'admin', 'admin', '12546332', '2345687@qq.com', 'github.io', '1111', '2017-05-11 16:28:37', '22', '0', 'images/face/Image9.gif', '女孩', 'lalalalaala', '151');
INSERT INTO `user` VALUES ('34', 'adminn', 'adminn', '1013213213', '1013213213@qq.com', 'github.io', '000', '2017-05-19 23:01:24', '1', '0', 'images/face/Image1.gif', '男孩', '测试用例', '2');
INSERT INTO `user` VALUES ('35', 'zxp', '88888888', '4654654656', '4654654656@qq.com', 'github.io', '000', '2017-06-02 09:01:50', '1', '0', 'images/face/Image4.gif', '男孩', '不一样的自我', '5');
INSERT INTO `user` VALUES ('36', 'lzf', '88888888', '4654654656', '4654654656@qq.com', 'github.io', '000', '2017-06-02 09:05:52', '0', '0', 'images/face/Image9.gif', '男孩', '对永远说不', '1');
INSERT INTO `user` VALUES ('37', 'lym', '88888888', '4654654656', '4654654656@qq.com', 'github.io', '000', '2017-06-02 09:06:49', '0', '0', 'images/face/Image3.gif', '男孩', '放飞自我', '1');
