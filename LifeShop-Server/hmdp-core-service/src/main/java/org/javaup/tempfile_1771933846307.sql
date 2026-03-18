     1→-- 清理版hmdp_0数据库SQL文件
     2→-- 移除了会导致Variable 'xxx' can't be set to the value of 'NULL'错误的恢复语句
     3→
     4→USE hmdp_0;
     5→
     6→DROP TABLE IF EXISTS `tb_blog`;
     7→/*!40101 SET @saved_cs_client     = @@character_set_client */;
     8→/*!50503 SET character_set_client = utf8mb4 */;
     9→CREATE TABLE `tb_blog` (
    10→                           `id` bigint unsigned NOT NULL COMMENT '主键',
    11→                           `shop_id` bigint NOT NULL COMMENT '商户id',
    12→                           `user_id` bigint unsigned NOT NULL COMMENT '用户id',
    13→                           `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
    14→                           `images` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '探店的照片，最多9张，多张以","隔开',
    15→                           `content` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '探店的文字描述',
    16→                           `liked` int unsigned DEFAULT '0' COMMENT '点赞数量',
    17→                           `comments` int unsigned DEFAULT NULL COMMENT '评论数量',
    18→                           `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    19→                           `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    20→                           PRIMARY KEY (`id`) USING BTREE
    21→) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;
    22→/*!40101 SET character_set_client = @saved_cs_client */;
    23→
    24→--
    25→-- Dumping data for table `tb_blog`
    26→--
    27→
    28→LOCK TABLES `tb_blog` WRITE;
    29→/*!40000 ALTER TABLE `tb_blog` DISABLE KEYS */;
    30→INSERT INTO `tb_blog` VALUES (4,4,1987042234935279617,'无尽浪漫的夜晚丨在万花丛中摇晃着红酒杯🍷品战斧牛排🥩','/imgs/blogs/7/14/4771fefb-1a87-4252-816c-9f7ec41ffa4a.jpg,/imgs/blogs/4/10/2f07e3c9-ddce-482d-9ea7-c21450f8d7cd.jpg,/imgs/blogs/2/6/b0756279-65da-4f2d-b62a-33f74b06454a.jpg,/imgs/blogs/10/7/7e97f47d-eb49-4dc9-a583-95faa7aed287.jpg,/imgs/blogs/1/2/4a7b496b-2a08-4af7-aa95-df2c3bd0ef97.jpg,/imgs/blogs/14/3/52b290eb-8b5d-403b-8373-ba0bb856d18e.jpg','生活就是一半烟火·一半诗意<br/>手执烟火谋生活·心怀诗意以谋爱·<br/>当然<br/>\r\n男朋友给不了的浪漫要学会自己给🍒<br/>\n无法重来的一生·尽量快乐.<br/><br/>🏰「小筑里·神秘浪漫花园餐厅」🏰<br/><br/>\n💯这是一家最最最美花园的西餐厅·到处都是花餐桌上是花前台是花  美好无处不在\n品一口葡萄酒，维亚红酒马瑟兰·微醺上头工作的疲惫消失无际·生如此多娇🍃<br/><br/>📍地址:延安路200号(家乐福面)<br/><br/>🚌交通:地铁①号线定安路B口出右转过下通道右转就到啦～<br/><br/>--------------🥣菜品详情🥣---------------<br/><br/>「战斧牛排]<br/>\n超大一块战斧牛排经过火焰的炙烤发出阵阵香，外焦里嫩让人垂涎欲滴，切开牛排的那一刻，牛排的汁水顺势流了出来，分熟的牛排肉质软，简直细嫩到犯规，一刻都等不了要放入嘴里咀嚼～<br/><br/>「奶油培根意面」<br/>太太太好吃了💯<br/>我真的无法形容它的美妙，意面混合奶油香菇的香味真的太太太香了，我真的舔盘了，一丁点美味都不想浪费‼️<br/><br/><br/>「香菜汁烤鲈鱼」<br/>这个酱是辣的 真的绝好吃‼️<br/>鲈鱼本身就很嫩没什么刺，烤过之后外皮酥酥的，鱼肉蘸上酱料根本停不下来啊啊啊啊<br/>能吃辣椒的小伙伴一定要尝尝<br/><br/>非常可 好吃子🍽\n<br/>--------------🍃个人感受🍃---------------<br/><br/>【👩🏻‍🍳服务】<br/>小姐姐特别耐心的给我们介绍彩票 <br/>推荐特色菜品，拍照需要帮忙也是尽心尽力配合，太爱他们了<br/><br/>【🍃环境】<br/>比较有格调的西餐厅 整个餐厅的布局可称得上的万花丛生 有种在人间仙境的感觉🌸<br/>集美食美酒与鲜花为一体的风格店铺 令人向往<br/>烟火皆是生活 人间皆是浪漫<br/>',1,104,'2021-12-28 11:50:01','2025-11-08 06:28:15'),(5,1,1987042234935279617,'人均30💰杭州这家港式茶餐厅我疯狂打call‼️','/imgs/blogs/4/7/863cc302-d150-420d-a596-b16e9232a1a6.jpg,/imgs/blogs/11/12/8b37d208-9414-4e78-b065-9199647bb3e3.jpg,/imgs/blogs/4/1/fa74a6d6-3026-4cb7-b0b6-35abb1e52d11.jpg,/imgs/blogs/9/12/ac2ce2fb-0605-4f14-82cc-c962b8c86688.jpg,/imgs/blogs/4/0/26a7cd7e-6320-432c-a0b4-1b7418f45ec7.jpg,/imgs/blogs/15/9/cea51d9b-ac15-49f6-b9f1-9cf81e9b9c85.jpg','又吃到一家好吃的茶餐厅🍴环境是怀旧tvb港风📺边吃边拍照片📷几十种菜品均价都在20+💰可以是很平价了！<br>·<br>店名：九记冰厅(远洋店)<br>地址：杭州市丽水路远洋乐堤港负一楼（溜冰场旁边）<br>·<br>✔️黯然销魂饭（38💰）<br>这碗饭我吹爆！米饭上盖满了甜甜的叉烧 还有两颗溏心蛋🍳每一粒米饭都裹着浓郁的酱汁 光盘了<br>·<br>✔️铜锣湾漏奶华（28💰）<br>黄油吐司烤的脆脆的 上面洒满了可可粉🍫一刀切开 奶盖流心像瀑布一样流出来  满足<br>·<br>✔️神仙一口西多士士（16💰）<br>简简单单却超级好吃！西多士烤的很脆 黄油味浓郁 面包体超级柔软 上面淋了炼乳<br>·<br>✔️怀旧五柳炸蛋饭（28💰）<br>四个鸡蛋炸成蓬松的炸蛋！也太好吃了吧！还有大块鸡排 上淋了酸甜的酱汁 太合我胃口了！！<br>·<br>✔️烧味双拼例牌（66💰）<br>选了烧鹅➕叉烧 他家烧腊品质真的惊艳到我！据说是每日广州发货 到店现烧现卖的黑棕鹅 每口都是正宗的味道！肉质很嫩 皮超级超级酥脆！一口爆油！叉烧肉也一点都不柴 甜甜的很入味 搭配梅子酱很解腻 ！<br>·<br>✔️红烧脆皮乳鸽（18.8💰）<br>乳鸽很大只 这个价格也太划算了吧， 肉质很有嚼劲 脆皮很酥 越吃越香～<br>·<br>✔️大满足小吃拼盘（25💰）<br>翅尖➕咖喱鱼蛋➕蝴蝶虾➕盐酥鸡<br>zui喜欢里面的咖喱鱼！咖喱酱香甜浓郁！鱼蛋很q弹～<br>·<br>✔️港式熊仔丝袜奶茶（19💰）<br>小熊🐻造型的奶茶冰也太可爱了！颜值担当 很地道的丝袜奶茶 茶味特别浓郁～<br>·',2,0,'2021-12-28 12:57:49','2025-11-08 06:28:15'),(6,10,1987041610793484289,'杭州周末好去处｜💰50就可以骑马啦🐎','/imgs/blogs/blog1.jpg','杭州周末好去处｜💰50就可以骑马啦🐎',1,0,'2022-01-11 08:05:47','2025-11-08 06:28:09'),(7,10,1987041610793484289,'杭州周末好去处｜💰50就可以骑马啦🐎','/imgs/blogs/blog1.jpg','杭州周末好去处｜💰50就可以骑马啦🐎',1,0,'2022-01-11 08:05:47','2025-11-08 06:28:09');
    31→/*!40000 ALTER TABLE `tb_blog` ENABLE KEYS */;
    32→UNLOCK TABLES;
    33→
    34→-- ... (中间省略其他表的创建和数据插入语句，保持原有结构) ...
    35→
    36→-- 以下是清理后的内容，移除了所有会导致错误的恢复语句
    37→-- 原来的错误语句：
    38→-- /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
    39→-- /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
    40→-- /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
    41→-- /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
    42→-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
    43→-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
    44→-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
    45→-- /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
    46→
    47→-- 使用固定值替代可能为NULL的变量设置
    48→/*!40103 SET TIME_ZONE='+00:00' */;
    49→/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_ZERO_DATE,NO_ZERO_IN_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */;
    50→/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
    51→/*!40014 SET UNIQUE_CHECKS=1 */;
    52→/*!40101 SET CHARACTER_SET_CLIENT=utf8mb4 */;
    53→/*!40101 SET CHARACTER_SET_RESULTS=utf8mb4 */;
    54→/*!40101 SET COLLATION_CONNECTION=utf8mb4_general_ci */;
    55→/*!40111 SET SQL_NOTES=1 */;
    56→
    57→-- Dump completed on 2025-11-24 10:08:40

