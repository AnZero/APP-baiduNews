-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:8889
-- Generation Time: Dec 21, 2017 at 06:28 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(100) NOT NULL,
  `newsTitle` tinytext NOT NULL,
  `pictureLink` varchar(200) NOT NULL,
  `newsSource` tinytext NOT NULL,
  `newsDate` date NOT NULL,
  `newsType` tinytext NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL,
  `dataType` tinytext NOT NULL,
  `lunboType1` tinytext NOT NULL,
  `lunboType2` tinytext NOT NULL,
  `lunboType3` tinytext NOT NULL,
  `loginName` tinytext NOT NULL,
  `loginPassword` tinytext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `newsTitle`, `pictureLink`, `newsSource`, `newsDate`, `newsType`, `img1`, `img2`, `img3`, `dataType`, `lunboType1`, `lunboType2`, `lunboType3`, `loginName`, `loginPassword`) VALUES
(0, '', '', '', '2017-12-11', '时尚', '/images/shishang1.jpg', '/images/shishang2.jpg', '/images/shishang3.jpg', '轮播图', '', '', '', '', ''),
(4, '老城故事1', 'http://img.hb.aicdn.com/3cfd450837f037260f2013d4e39e599e376b570634214-NVrLtr_fw658', '百度', '2017-11-30', '推荐', '', '', '', '数据', '', '', '', '', ''),
(14, '和风——和服', 'http://img.hb.aicdn.com/57b01587788943337a2ec8c9dd68b27913472c4b174260-hlSEvs_fw658', '墨迹网', '2017-12-01', '本地', '', '', '', '数据', '', '', '', '', ''),
(15, 'biaoti', 'http://img.hb.aicdn.com/ab576c062fb1b35d3fa803006535eee2c720f1e2a0279-lb9ToV_fw658', '锡叶藤', '2017-11-10', '百家', '', '', '', '数据', '', '', '', '', ''),
(16, 'Magic: The Gathering - Master Collection, Titus Lunter : An updating version of all my Magic: The Gathering work.', 'http://img.hb.aicdn.com/bd14269d4b6cc06dd0006125cf3702b220924dae62621-HlWYDS_fw658', 'Magic', '2017-12-05', '娱乐', '', '', '', '数据', '', '', '', '', ''),
(17, '', '', '', '2017-12-11', '推荐', '/images/tuijian1.jpg', '/images/tuijian2.jpg', '/images/tuijian3.jpg', '轮播图', '南城高铁车厢变T台', '采莲人在冰冷水中操作', 'C罗夺冠！', '', ''),
(18, '【z studio】 artp.cc', 'http://img.hb.aicdn.com/2ec9f3a9d556a882eb73b29952e0ec183512215d1a018-8JE5sQ_fw658', '腾讯新闻', '2017-12-05', '娱乐', '', '', '', '数据', '', '', '', '', ''),
(19, '地平线：黎明时分（Horizon：Zero <wbr>Dawn） <wbr>PS4独占 <wbr>Guerrilla_Games <wbr>索尼', 'http://img.hb.aicdn.com/7bbdf90007a7989bd8249369771afb84cb278d0710189-RKZGJj_fw658', '索尼', '2017-12-01', '社会', '', '', '', '数据', '', '', '', '', ''),
(20, 'The World Above, Toni Bratincevic : The world above ours where gods used to live but left a long time ago leaving us and our destiny in our own hands.', 'http://img.hb.aicdn.com/65035d1450eb2216f53ffe9a7b11e51ce0216206be591-niLsLn_fw658', '新湖网', '2017-12-05', '军事', '', '', '', '数据', '', '', '', '', ''),
(21, '插画｜Simon Weaner（加拿大）', 'http://img.hb.aicdn.com/d833be81d84a8ea7140d08b3e319167e0fc43201e80e0-1Qr18z_fw658', '高新', '2017-12-11', '女人', '', '', '', '数据', '', '', '', '', ''),
(22, 'Key Background for Netflix Castlevania', 'http://img.hb.aicdn.com/98b87c3cb2fe43daa896237ac51dc195d97ec4043956c-zkUmkj_fw658', '小岳岳', '2017-12-12', '搞笑', '', '', '', '数据', '', '', '', '', ''),
(23, '天界主城laoding', 'http://img.hb.aicdn.com/09f5c32effcf3c21ef56e76407528e0009f6c4b0372740-DfdnVi_fw658', '玉皇大帝', '2017-12-06', '互联网', '', '', '', '数据', '', '', '', '', ''),
(24, 'Guerrilla Games《地平线 零之曙光》的艺术宝库', 'http://img.hb.aicdn.com/a6837565ea4a230791c1b311db37d328080335e2c3ceb-ju9JHJ_fw658', '宫本武藏', '2017-12-14', '科技', '', '', '', '数据', '', '', '', '', ''),
(25, 'Port of Corinth, Alfven Ato', 'http://img.hb.aicdn.com/b643cf41ac0edf91934f02f006de90c302cfb1e0865e5-oUEJKW_fw658', '小乔', '2017-12-06', '生活', '', '', '', '数据', '', '', '', '', ''),
(26, '尸香魔芋', 'http://img.hb.aicdn.com/9be6d7e8d75cab870ae0bc4fe24cc39a6bbf52ca6f045-CfuILU_fw658', '鬼吹灯', '2017-12-13', '国际', '', '', '', '数据', '', '', '', '', ''),
(27, 'Environment Dailies, David Heidhoff : Environment Dailies by David Heidhoff on ArtStation.', 'http://img.hb.aicdn.com/e015e62494ff6bb2882997a680c23cc95b466a1e44055-DlXc9k_fw658', '天空之城', '2017-12-13', '国内', '', '', '', '数据', '', '', '', '', ''),
(28, 'arc noir : Concept artist studio', 'http://img.hb.aicdn.com/32583d902c5b61e9898aa7f32f208385923b24015a65e-PE8gOa_fw658', '鬼蜮', '2017-12-08', '体育', '', '', '', '数据', '', '', '', '', ''),
(29, 'Agreement | Normandy, Luciano Neves : A Viking agreement about Normandy', 'http://img.hb.aicdn.com/a3fba79a8529ae79704eedace4a6d9e70b7ac2ac9851f-eG8ZjZ_fw658', '阿珂', '2017-12-07', '汽车', '', '', '', '数据', '', '', '', '', ''),
(30, 'blood canyon, ATEC (Min Gyu Lee) : Personal work', 'http://img.hb.aicdn.com/d04bdc85b096a744aebf5a644f4d24e65997f2ab10689d-QdBu9X_fw658', '齐天大圣', '2017-12-09', '财经', '', '', '', '数据', '', '', '', '', ''),
(31, 'The Jam, Dylan Scher : Level concept for the game PWND Property of Skydance LLC 2017', 'http://img.hb.aicdn.com/17902d4adbeaa5e54113bac693ce3eae4105eab459d2e-djrAfW_fw658', '黄忠', '2017-12-10', '房产', '', '', '', '数据', '', '', '', '', ''),
(32, 'Kong: Skull Island, Daniel Romanovsky : Some early Concept Art for Kong: Skull Island, It was a real pleasure to work with Jordan Vogt-Roberts on this film', 'http://img.hb.aicdn.com/7a3822e7d03d0c2b3e3765b860179d196760f65d7eb93-2SP5bU_fw658', '女娲', '2017-12-05', '时尚', '', '', '', '数据', '', '', '', '', ''),
(33, 'building, pang p : building by pang p on ArtStation.', 'http://img.hb.aicdn.com/e8924ab31631f23e2dd4680dcfbe8e7603bc32c74399f-yA0gVo_fw658', '狄仁杰', '2017-12-04', '教育', '', '', '', '数据', '', '', '', '', ''),
(34, '《奇异岛》之-怪石大树-精灵森林', 'http://img.hb.aicdn.com/d7dd6dda46df6654406567a9843595de40fd09e175311-nnUo0Z_fw658', '妲己', '2017-12-08', '游戏', '', '', '', '数据', '', '', '', '', ''),
(35, 'Père Lachaise Cemetery, Sylvain Sarrailh : Backgrounds for the adventure video game City of Love ', 'http://img.hb.aicdn.com/8599a27eaf66de3a5df4519e3533921c9f21b4b65013e-0uwiAN_fw658', '甄姬', '2017-12-06', '旅游', '', '', '', '数据', '', '', '', '', ''),
(36, 'Some old work, Ray Jin : I did these work about 2 years ago ,it`s a packs for a online mmorpg game- Dragon Sword ,hope you like them.', 'http://img.hb.aicdn.com/ee25f66e1df9253a671aac1cef6ed5f8cc2ae1c194882-MM05EX_fw658', '李白', '2017-12-02', '人文', '', '', '', '数据', '', '', '', '', ''),
(37, '', '', '', '2017-12-11', '百家', '/images/baijia1.jpg', '/images/baijia2.jpg', '/images/baijia3.jpg', '轮播图', '1', '2', '3', '', ''),
(38, '', '', '', '2017-12-11', '本地', '/images/bendi1.jpg', '/images/bendi2.jpg', '/images/bendi3.jpg', '轮播图', '4', '5', '6', '', ''),
(39, '', '', '', '2017-12-11', '娱乐', '/images/yule1.jpg', '/images/yule2.jpg', '/images/yule3.jpg', '轮播图', '7', '8', '9', '', ''),
(40, '', '', '', '2017-12-11', '社会', '/images/shehui1.jpg', '/images/shehui2.jpg', '/images/shehui3.jpg', '轮播图', '10', '11', '12', '', ''),
(41, '', '', '', '2017-12-11', '军事', '/images/junshi1.jpg', '/images/junshi2.jpg', '/images/junshi3.jpg', '轮播图', '13', '14', '15', '', ''),
(42, '', '', '', '2017-12-11', '女人', '/images/nvren1.jpg', '/images/nvren2.jpg', '/images/nvren3.jpg', '轮播图', '16', '17', '18', '', ''),
(43, '', '', '', '2017-12-11', '搞笑', '/images/gaoxiao1.jpg', '/images/gaoxiao2.jpg', '/images/gaoxiao3.jpg', '轮播图', '19', '20', '21', '', ''),
(44, '', '', '', '2017-12-11', '互联网', '/images/hulianwang1.jpg', '/images/hulianwang2.jpg', '/images/hulianwang3.jpg', '轮播图', '22', '23', '24', '', ''),
(45, '', '', '', '2017-12-11', '科技', '/images/keji1.jpg', '/images/keji2.jpg', '/images/keji3.jpg', '轮播图', '25', '26', '27', '', ''),
(46, '', '', '', '2017-12-11', '生活', '/images/shenghuo1.jpg', '/images/shenghuo2.jpg', '/images/shenghuo3.jpg', '轮播图', '28', '29', '30', '', ''),
(47, '', '', '', '2017-12-11', '国际', '/images/guoji1.jpg', '/images/guoji2.jpg', '/images/guoji3.jpg', '轮播图', '31', '32', '33', '', ''),
(48, '', '', '', '2017-12-11', '国内', '/images/guonei1.jpg', '/images/guonei2.jpg', '/images/guonei3.jpg', '轮播图', '34', '35', '36', '', ''),
(49, '', '', '', '2017-12-11', '体育', '/images/tiyu1.jpg', '/images/tiyu2.jpg', '/images/tiyu3.jpg', '轮播图', '37', '38', '39', '', ''),
(50, '', '', '', '2017-12-11', '汽车', '/images/qiche1.jpg', '/images/qiche2.jpg', '/images/qiche3.jpg', '轮播图', '40', '41', '42', '', ''),
(51, '', '', '', '2017-12-11', '财经', '/images/caijing1.jpg', '/images/caijing2.jpg', '/images/caijing3.jpg', '轮播图', '43', '44', '45', '', ''),
(52, '', '', '', '2017-12-11', '房产', '/images/fangchan1.jpg', '/images/fangchan2.jpg', '/images/fangchan3.jpg', '轮播图', '46', '47', '48', '', ''),
(54, '', '', '', '2017-12-11', '教育', '/images/jiaoyu1.jpg', '/images/jiaoyu2.jpg', '/images/jiaoyu3.jpg', '轮播图', '49', '50', '51', '', ''),
(55, '', '', '', '2017-12-11', '游戏', '/images/youxi1.jpg', '/images/youxi2.jpg', '/images/youxi3.jpg', '轮播图', '52', '53', '54', '', ''),
(56, '', '', '', '2017-12-11', '旅游', '/images/lvyou1.jpg', '/images/lvyou2.jpg', '/images/lvyou3.jpg', '轮播图', '55', '56', '57', '', ''),
(57, '', '', '', '2017-12-11', '人文', '/images/renwen1.jpg', '/images/renwen2.jpg', '/images/renwen3.jpg', '轮播图', '58', '59', '60', '', ''),
(58, '《战意》壁纸', 'http://img.hb.aicdn.com/b9c06a26922b54c5d431971b87231bc5ee9ccbc760cec-tAIROx_fw658', '狄仁杰', '2017-12-11', '百家', '', '', '', '数据', '', '', '', '', ''),
(59, '权利的游戏', 'http://img.hb.aicdn.com/22898381c0d8dc63d389cb49f53603bc80f728e9e8b34-cGK2fN_fw658', '瑟曦', '2017-12-07', '本地', '', '', '', '数据', '', '', '', '', ''),
(60, '原画联盟-原画师互动平台', 'http://img.hb.aicdn.com/2d2b0a965dbbc1093359f1a9edf3bf21c29d281a4f982-sjtnQp_fw658', '蔡文姬', '2017-12-11', '推荐', '', '', '', '数据', '', '', '', '', ''),
(61, '仙界', 'http://img.hb.aicdn.com/5b0005b831f060d53f797b809c480f1142c6773547cb7-J289Sx_fw658', '扁鹊', '2017-11-30', '推荐', '', '', '', '数据', '', '', '', '', ''),
(62, 'HyperFoil Cruiser - TINKIET, Yohann Schepacz OXAN STUDIO', 'http://img.hb.aicdn.com/667b05474bed55116cc776c3399aeae26acd62811add5c-LT2lK8_fw658', 'Cruiser', '2017-12-06', '推荐', '', '', '', '数据', '', '', '', '', ''),
(63, 'Tao, Winb Hu : Tao by Winb Hu on ArtStation.', 'http://img.hb.aicdn.com/dccfa43348bcad99fcd49d2465bb65516df70921b21e2-6NauIq_fw658', 'Winb Hu', '2017-11-30', '推荐', '', '', '', '数据', '', '', '', '', ''),
(64, 'Creative_G', 'http://img.hb.aicdn.com/eed27ea980379747e3aa6b130ece2c14448f539895b51-duugFj_fw658', '百度', '2017-11-26', '推荐', '', '', '', '数据', '', '', '', '', ''),
(65, '【z studio】 artp.cc1', 'http://img.hb.aicdn.com/2ec9f3a9d556a882eb73b29952e0ec183512215d1a018-8JE5sQ_fw658', '腾讯新闻', '2017-12-04', '娱乐', '', '', '', '数据', '', '', '', '', ''),
(78, '', '', '', '0000-00-00', '', '', '', '', '登录', '', '', '', '123@qq.com', '123456'),
(79, '', '', '', '0000-00-00', '', '', '', '', '登录', '', '', '', '123@123.com', '123456'),
(80, '', '', '', '0000-00-00', '', '', '', '', '登录', '', '', '', '叔叔', '123'),
(81, '', '', '', '0000-00-00', '', '', '', '', '登录', '', '', '', '三号', '123'),
(83, '', '', '', '0000-00-00', '', '', '', '', '登录', '', '', '', '西米', '123456'),
(85, '', '', '', '0000-00-00', '', '', '', '', '登录', '', '', '', '少帅', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
