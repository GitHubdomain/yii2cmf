--
-- Dumping data for table {{%user}}
--

LOCK TABLES {{%user}} WRITE;
/*!40000 ALTER TABLE {{%user}} DISABLE KEYS */;
INSERT INTO {{%user}} VALUES (1,'hehe','1lQl4TG6sYlyWRqXZEWL0ZhQkPATVnMs','$2y$13$lYlhIcBcs6jBr7yTd6YrWueckcs.Cvx70juIHs6wEfjtUwnA318VW',NULL,'hehe@qq.com',10,1,1441766741,1441766741,1458640427);
/*!40000 ALTER TABLE {{%user}} ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES {{%profile}} WRITE;
INSERT INTO {{%profile}} (id,locale) VALUES(1, 'zh-CN');
UNLOCK TABLES;


--
-- Dumping data for table {{%auth_item}}
--

LOCK TABLES {{%auth_item}} WRITE;
/*!40000 ALTER TABLE {{%auth_item}} DISABLE KEYS */;
INSERT INTO {{%auth_item}} VALUES ('superAdmin',1,'超级管理员',NULL,NULL,1443080982,1443408507),('/*',2,NULL,NULL,NULL,1458640575,1458640575);
/*!40000 ALTER TABLE {{%auth_item}} ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table {{%auth_assignment}}
--

LOCK TABLES {{%auth_assignment}} WRITE;
/*!40000 ALTER TABLE {{%auth_assignment}} DISABLE KEYS */;
INSERT INTO {{%auth_assignment}} VALUES ('superAdmin','1',1443080982);
/*!40000 ALTER TABLE {{%auth_assignment}} ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table {{%auth_item_child}}
--

LOCK TABLES {{%auth_item_child}} WRITE;
/*!40000 ALTER TABLE {{%auth_item_child}} DISABLE KEYS */;
INSERT INTO {{%auth_item_child}} VALUES ('superAdmin','/*');
/*!40000 ALTER TABLE {{%auth_item_child}} ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table {{%config}}
--

LOCK TABLES {{%config}} WRITE;
/*!40000 ALTER TABLE {{%config}} DISABLE KEYS */;
INSERT INTO {{%config}} VALUES (1,'CONFIG_TYPE_LIST','text=>字符\r\narray=>数组\r\npassword=>密码\r\nimage=>图片\r\ntextarea=>多行字符\r\nselect=>下拉框\r\nradio=>单选框\r\ncheckbox=>多选框\r\neditor=>富文本编辑器','','配置类型列表','array',0,1461937892,'system'),
(2,'CONFIG_GROUP','site=>网站\r\nsystem=>系统\r\nwechat=>微信\r\nemail=>邮箱','','配置分组','array',1468405444,1468421137,'system'),
(3,'SITE_NAME','yii2cmf','','网站名称','text',0,1461937892,'site'),
(4,'SITE_ICP','','','域名备案号','text',0,1461937892,'site'),
(5,'SITE_LOGO','','','网站LOGO','image',0,1461937892,'site'),
(6,'SEO_SITE_DESCRIPTION','yiicmf2','','meta description','text',0,1468403120,'site'),
(7,'SEO_SITE_KEYWORDS','yiicmf','','meta keywords','text',0,1461937892,'site'),
(8,'FOOTER','','','底部','textarea',0,1461937892,'site'),
(9,'THEME_NAME','basic','','主题名','text',0,1467882452,'site'),
(10,'BACKEND_SKIN','skin-blue','skin-black=>skin-black\r\nskin-blue=>skin-blue\r\nskin-green=>skin-green\r\nskin-purple=>skin-purple\r\nskin-red=>skin-red\r\nskin-yellow=>skin-yellow','后台皮肤','select',1461931367,1461937892,'system'),
(11,'ADMIN_EMAIL','','','管理员邮箱','text',0,1468406411,'email');
/*!40000 ALTER TABLE {{%config}} ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table {{%menu}}
--

LOCK TABLES {{%menu}} WRITE;
/*!40000 ALTER TABLE {{%menu}} DISABLE KEYS */;
INSERT INTO `pop_menu` (`id`, `name`, `parent`, `route`, `order`, `data`, `icon`)
VALUES
	(24, '系统管理', NULL, NULL, 2, NULL, 'cog'),
	(30, '数据库备份', NULL, NULL, 5, NULL, 'book'),
	(33, '权限管理', NULL, NULL, 1, NULL, 'users'),
	(39, '内容管理', NULL, NULL, 3, NULL, 'edit'),
	(44, '插件管理', NULL, NULL, 4, NULL, 'plug'),
	(46, '外观', NULL, NULL, 6, NULL, 'tv'),
	(25, '网站设置', 24, '/system/config', 1, NULL, ''),
	(26, '配置管理', 24, '/config/index', 2, NULL, ''),
	(37, '操作记录', 24, '/admin-log/index', NULL, NULL, ''),
	(31, '备份', 30, '/backup/export/index', NULL, NULL, ''),
	(32, '还原', 30, '/backup/import/index', NULL, NULL, ''),
	(15, '用户管理', 33, '/user/index', NULL, NULL, ''),
	(16, '路由管理', 33, '/admin/route/index', NULL, NULL, ''),
	(17, '角色管理', 33, '/admin/role/index', NULL, NULL, ''),
	(34, '菜单管理', 33, '/admin/menu/index', NULL, NULL, ''),
	(22, '文章列表', 39, '/article/index', 1, NULL, ''),
	(27, '单页管理', 39, '/page/index', 40, NULL, ''),
	(29, '分类管理', 39, '/category/index', 4, NULL, ''),
	(40, '发布文章', 39, '/article/create', 2, NULL, ''),
	(41, '回收站', 39, '/article/trash', 3, NULL, ''),
	(42, '评论管理', 39, '/comment/index', 6, NULL, ''),
	(43, '留言板', 39, '/suggest/index', 7, NULL, ''),
	(45, '插件', 44, '/plugins/index', NULL, NULL, ''),
	(47, '主题', 46, '/theme/index', 4, NULL, ''),
	(48, '幻灯片', 46, '/carousel/index', 3, NULL, ''),
	(49, '导航', 46, '/nav/index', 5, NULL, ''),
	(50, '区域', 46, '/area/index', 1, NULL, ''),
	(51, '区块', 46, '/block/index', 2, NULL, '');
/*!40000 ALTER TABLE {{%menu}} ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES {{%page}} WRITE;
/*!40000 ALTER TABLE {{%page}} DISABLE KEYS */;
INSERT INTO {{%page}} VALUES (1,1,'关于我们','关于我们','aboutus',1441766741,1441766741);
/*!40000 ALTER TABLE {{%page}} ENABLE KEYS */;
UNLOCK TABLES;

