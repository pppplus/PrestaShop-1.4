SET NAMES 'utf8';

INSERT INTO `PREFIX_configuration` (`name`, `value`, `date_add`, `date_upd`) VALUES
	('PAYPAL_BUSINESS', 'paypal@prestashop.com', NOW(), NOW()),
	('PAYPAL_SANDBOX', 0, NOW(), NOW()),
	('PAYPAL_CURRENCY', 'customer', NOW(), NOW()),
	('BANK_WIRE_CURRENCIES', '2,1', NOW(), NOW()),
	('CHEQUE_CURRENCIES', '2,1', NOW(), NOW()),
	('PRODUCTS_VIEWED_NBR', '2', NOW(), NOW()),
	('BLOCK_CATEG_DHTML', '1', NOW(), NOW()),
	('BLOCK_CATEG_MAX_DEPTH', '3', NOW(), NOW()),
	('MANUFACTURER_DISPLAY_FORM', '1', NOW(), NOW()),
	('MANUFACTURER_DISPLAY_TEXT', '1', NOW(), NOW()),
	('MANUFACTURER_DISPLAY_TEXT_NB', '5', NOW(), NOW()),
	('NEW_PRODUCTS_NBR', '5', NOW(), NOW()),
	('STATSHOME_YEAR_FROM', DATE_FORMAT(NOW(), '%Y'), NOW(), NOW()),
	('STATSHOME_MONTH_FROM', DATE_FORMAT(NOW(), '%m'), NOW(), NOW()),
	('STATSHOME_DAY_FROM', DATE_FORMAT(NOW(), '%d'), NOW(), NOW()),
	('STATSHOME_YEAR_TO', DATE_FORMAT(NOW(), '%Y'), NOW(), NOW()),
	('STATSHOME_MONTH_TO', DATE_FORMAT(NOW(), '%m'), NOW(), NOW()),
	('STATSHOME_DAY_TO', DATE_FORMAT(NOW(), '%d'), NOW(), NOW()),
	('PS_TOKEN_ENABLE', '1', NOW(), NOW()),
	('PS_STATS_RENDER', 'graphxmlswfcharts', NOW(), NOW()),
	('PS_STATS_OLD_CONNECT_AUTO_CLEAN', 'never', NOW(), NOW()),
	('PS_STATS_GRID_RENDER', 'gridextjs', NOW(), NOW()),
	('BLOCKTAGS_NBR', '10', NOW(), NOW());

INSERT INTO `PREFIX_module` (`id_module`, `name`, `active`) VALUES (1, 'homefeatured', 1),(2, 'gsitemap', 1),(3, 'cheque', 1),(4, 'paypal', 1),(5, 'editorial', 1),
(6, 'bankwire', 1),(7, 'blockadvertising', 1),(8, 'blockbestsellers', 1),(9, 'blockcart', 1),(10, 'blockcategories', 1),(11, 'blockcurrencies', 1),(12, 'blockinfos', 1),
(13, 'blocklanguages', 1),(14, 'blockmanufacturer', 1),(15, 'blockmyaccount', 1),(16, 'blocknewproducts', 1),(17, 'blockpaymentlogo', 1),(18, 'blockpermanentlinks', 1),
(19, 'blocksearch', 1),(20, 'blockspecials', 1),(21, 'blocktags', 1),(22, 'blockuserinfo', 1),(23, 'blockvariouslinks', 1),(24, 'blockviewed', 1),(25, 'statsdata', 1),
(26, 'statsvisits', 1),(27, 'statssales', 1),(28, 'statsregistrations', 1),(30, 'statspersonalinfos', 1),(31, 'statslive', 1),(32, 'statsequipment', 1),(33, 'statscatalog', 1),
(34, 'graphvisifire', 1),(35, 'graphxmlswfcharts', 1),(36, 'graphgooglechart', 1),(37, 'graphartichow', 1),(38, 'statshome', 1),(39, 'gridextjs', 1),(40, 'statsbestcustomers', 1),
(41, 'statsorigin', 1),(42, 'pagesnotfound', 1),(43, 'sekeywords', 1),(44, 'statsproduct', 1),(45, 'statsbestproducts', 1),(46, 'statsbestcategories', 1),
(47, 'statsbestvouchers', 1),(48, 'statsbestsuppliers', 1),(49, 'statscarrier', 1),(50, 'statsnewsletter', 1),(51, 'statssearch', 1);

INSERT INTO `PREFIX_hook` (`name`, `title`, `description`, `position`) VALUES
	('myAccountBlock', 'My account block', 'Display extra informations inside the "my account" block', 1);

INSERT INTO `PREFIX_hook_module` (`id_module`, `id_hook`, `position`) VALUES (3, 1, 1),(6, 1, 2),(4, 1, 3),(8, 2, 1),(3, 4, 1),(6, 4, 2),(9, 6, 1),(16, 6, 2),(8, 6, 3),
(20, 6, 4),(15, 7, 1),(21, 7, 2),(10, 7, 3),(24, 7, 4),(14, 7, 5),(12, 7, 6),(7, 7, 7),(17, 7, 8),(5, 8, 1),(1, 8, 2),(19, 9, 1),(11, 14, 1),(13, 14, 2),(18, 14, 3),
(19, 14, 4),(22, 14, 5),(8, 19, 1),(23, 21, 1),(25, 11, 1),(25, 21, 2),(26, 32, 1),(27, 32, 2),(28, 32, 3),(30, 32, 4),(31, 32, 5),(32, 32, 6),(33, 32, 7),(34, 33, 1),
(35, 33, 2),(36, 33, 3),(37, 33, 4),(38, 36, 1),(39, 37, 1),(40, 32, 8),(41, 32, 9),(42, 32, 10),(43, 32, 11),(42, 14, 6),(43, 14, 7),(44, 32, 12),(45, 32, 13),(46, 32, 15),
(47, 32, 14),(48, 32, 16),(49, 32, 17),(50, 32, 18),(51, 32, 19),(51, 45, 1),(25, 25, 1),(41, 20, 2);

CREATE TABLE `PREFIX_pagenotfound` (
  id_pagenotfound INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  request_uri VARCHAR(256) NOT NULL,
  http_referer VARCHAR(256) NOT NULL,
  date_add DATETIME NOT NULL,
  PRIMARY KEY(id_pagenotfound)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE PREFIX_statssearch (
	id_statssearch INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	keywords VARCHAR(255) NOT NULL,
	results INT(6) NOT NULL DEFAULT 0,
	date_add DATETIME NOT NULL,
	PRIMARY KEY(id_statssearch)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `PREFIX_sekeyword` (
	id_sekeyword INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	keyword VARCHAR(256) NOT NULL,
	date_add DATETIME NOT NULL,
	PRIMARY KEY(id_sekeyword)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `PREFIX_range_price` (`id_range_price`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES (1, 2, 0, 10000);
INSERT INTO `PREFIX_range_weight` (`id_range_weight`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES (1, 2, 0, 10000);
INSERT INTO `PREFIX_delivery` (`id_delivery`, `id_range_price`, `id_range_weight`, `id_carrier`, `id_zone`, `price`) VALUES 
(1, NULL, 1, 2, 1, 5.00),(2, NULL, 1, 2, 2, 5.00),(4, 1, NULL, 2, 1, 5.00),(5, 1, NULL, 2, 2, 5.00);

INSERT INTO `PREFIX_customer_group` (`id_customer`, `id_group`) VALUES (1, 1);
INSERT INTO `PREFIX_category_group` (`id_category`, `id_group`) VALUES (2, 1),(3, 1),(4, 1);

INSERT INTO `PREFIX_customer` (`id_customer`, `id_gender`, `secure_key`, `email`, `passwd`, `birthday`, `lastname`, `newsletter`, `optin`, `firstname`, `active`, `date_add`, `date_upd`)
	VALUES (1, 1, '47ce86627c1f3c792a80773c5d2deaf8', 'pub@prestashop.com', 'ad807bdf0426766c05c64041124d30ce', '1970-01-15', 'DOE', 1, 1, 'John', 1, NOW(), NOW());
INSERT INTO `PREFIX_connections` (`id_connections`, `id_guest`, `id_page`, `ip_address`, `date_add`, `http_referer`)
	VALUES (1, 1, 1, '2130706433', NOW(), 'http://www.prestashop.com');
INSERT INTO `PREFIX_guest` (`id_guest`, `id_operating_system`, `id_web_browser`, `id_customer`, `javascript`, `screen_resolution_x`, `screen_resolution_y`, `screen_color`, `sun_java`, `adobe_flash`, `adobe_director`, `apple_quicktime`, `real_player`, `windows_media`, `accept_language`)
	VALUES (1, 1, 3, 1, 1, 1680, 1050, 32, 1, 1, 0, 1, 1, 0, 'en-us');

INSERT INTO `PREFIX_cart` (`id_cart`, `id_carrier`, `id_lang`, `id_address_delivery`, `id_address_invoice`, `id_currency`, `id_customer`, `id_guest`, `recyclable`, `gift`, `date_add`, `date_upd`)
	VALUES (1, 2, 2, 6, 6, 1, 1, 1, 1, 0, NOW(), NOW());
INSERT INTO `PREFIX_cart_product` (`id_cart`, `id_product`, `id_product_attribute`, `quantity`, `date_add`) VALUES (1, 7, 23, 1, NOW());
INSERT INTO `PREFIX_cart_product` (`id_cart`, `id_product`, `id_product_attribute`, `quantity`, `date_add`) VALUES (1, 9, 0, 1, NOW());

INSERT INTO `PREFIX_orders` (`id_order`, `id_carrier`, `id_lang`, `id_customer`, `id_cart`, `id_currency`, `id_address_delivery`, `id_address_invoice`, `secure_key`, `payment`, `module`, `recyclable`, `gift`, `gift_message`, `shipping_number`, `total_discounts`, `total_paid`, `total_paid_real`, `total_products`, `total_shipping`, `total_wrapping`, `invoice_number`, `delivery_number`, `invoice_date`, `delivery_date`, `date_add`, `date_upd`)
	VALUES (1, 2, 2, 1, 1, 1, 2, 2, '47ce86627c1f3c792a80773c5d2deaf8', 'Chèque', 'cheque', 1, 0, '', '', '0.00', '625.98', '625.98', '516.72', '7.98', '0.00', 1, 0, '2008-09-10 15:30:44', '0000-00-00 00:00:00', NOW(), NOW());
INSERT INTO `PREFIX_order_detail` (`id_order_detail`, `id_order`, `product_id`, `product_attribute_id`, `product_name`, `product_quantity`, `product_quantity_return`, `product_price`, `product_quantity_discount`, `product_ean13`, `product_reference`, `product_supplier_reference`, `product_weight`, `tax_name`, `tax_rate`, `ecotax`, `download_hash`, `download_nb`, `download_deadline`)
	VALUES (1, 1, 7, 23, 'iPod touch - Capacité: 32Go', 1, 0, '392.140500', '0.000000', NULL, NULL, NULL, 0, 'TVA 19.6%', '19.60', '0.00', '', 0, '0000-00-00 00:00:00');
INSERT INTO `PREFIX_order_detail` (`id_order_detail`, `id_order`, `product_id`, `product_attribute_id`, `product_name`, `product_quantity`, `product_quantity_return`, `product_price`, `product_quantity_discount`, `product_ean13`, `product_reference`, `product_supplier_reference`, `product_weight`, `tax_name`, `tax_rate`, `ecotax`, `download_hash`, `download_nb`, `download_deadline`)
	VALUES (2, 1, 9, 0, 'Écouteurs à isolation sonore Shure SE210', 1, 0, '124.581900', '0.000000', NULL, NULL, NULL, 0, 'TVA 19.6%', '19.60', '0.00', '', 0, '0000-00-00 00:00:00');
INSERT INTO `PREFIX_order_history` (`id_order_history`, `id_employee`, `id_order`, `id_order_state`, `date_add`) VALUES (1, 0, 1, 1, NOW());

INSERT INTO `PREFIX_manufacturer` (`id_manufacturer`, `name`, `date_add`, `date_upd`) VALUES (1, 'Apple Computer, Inc', NOW(), NOW());
INSERT INTO `PREFIX_manufacturer` (`id_manufacturer`, `name`, `date_add`, `date_upd`) VALUES(2, 'Shure Incorporated', NOW(), NOW());

INSERT INTO `PREFIX_address` (`id_address`, `id_country`, `id_state`, `id_customer`, `id_manufacturer`, `id_supplier`, `alias`, `lastname`, `firstname`, `address1`, `postcode`, `city`, `phone`, `date_add`, `date_upd`, `active`, `deleted`)
	VALUES (1, 21, 5, 0, 1, 0, 'manufacturer', 'JOBS', 'STEVE', '1 Infinite Loop', '95014', 'Cupertino', '(800) 275-2273', NOW(), NOW(), 1, 0);
INSERT INTO `PREFIX_address` (`id_address`, `id_country`, `id_state`, `id_customer`, `id_manufacturer`, `id_supplier`, `alias`, `company`, `lastname`, `firstname`, `address1`, `address2`, `postcode`, `city`, `phone`, `date_add`, `date_upd`, `active`, `deleted`)
	VALUES (2, 8, 0, 1, 0, 0, 'Mon adresse', 'My Company', 'DOE', 'John', '16, Main street', '2nd floor', '75000', 'Paris ', '0102030405', NOW(), NOW(), 1, 0);

INSERT INTO `PREFIX_supplier` (`id_supplier`, `name`, `date_add`, `date_upd`) VALUES (1, 'AppleStore', NOW(), NOW());
INSERT INTO `PREFIX_supplier` (`id_supplier`, `name`, `date_add`, `date_upd`) VALUES (2, 'Shure Online Store', NOW(), NOW());

INSERT INTO `PREFIX_product` (`id_product`, `indexed`, `id_supplier`, `id_manufacturer`, `id_tax`, `id_category_default`, `id_color_default`, `on_sale`, `ean13`, `ecotax`, `quantity`, `price`, `wholesale_price`, `reduction_price`, `reduction_percent`, `reduction_from`, `reduction_to`, `reference`, `supplier_reference`, `weight`, `out_of_stock`, `quantity_discount`, `customizable`, `uploadable_files`, `text_fields`, `active`, `date_add`, `date_upd`) VALUES
(1, 1, 1, 1, 1, 2, 2, 0, '0', 0.00, 800, 124.581940, 70.000000, 0.00, 5, NOW(), NOW(), '', '', 0.5, 2, 0, 0, 0, 0, 1, NOW(), NOW()),
(2, 1, 1, 1, 1, 2, 0, 0, '0', 0.00, 100, 66.053500, 33.000000, 0.00, 0, NOW(), NOW(), '', '', 0, 2, 0, 0, 0, 0, 1, NOW(), NOW()),
(5, 1, 1, 1, 1, 4, 0, 0, '0', 0.00, 274, 1504.180602, 1000.000000, 0.00, 0, NOW(), NOW(), '', NULL, 1.36, 2, 0, 0, 0, 0, 1, NOW(), NOW()),
(6, 1, 1, 1, 1, 4, 0, 0, '0', 0.00, 250, 1170.568561, 0.000000, 0.00, 0,NOW(), NOW(), '', NULL, 0.75, 2, 0, 0, 0, 0, 1, NOW(), NOW()),
(7, 1, 0, 0, 1, 2, 0, 0, '', 0.00, 180, 241.638796, 200.000000, 0.00, 0, NOW(), NOW(), '', NULL, 0, 2, 0, 0, 0, 0, 1, NOW(), NOW()),
(8, 1, 0, 0, 1, 3, 0, 0, '', 0.00, 1, 25.041806, 0.000000, 0.00, 0, NOW(), NOW(), '', NULL, 0, 2, 0, 0, 0, 0, 1, NOW(), NOW()),
(9, 1, 2, 2, 1, 3, 0, 0, '', 0.00, 1, 124.581940, 0.000000, 0.00, 0, NOW(), NOW(), '', NULL, 0, 2, 0, 0, 0, 0, 1, NOW(), NOW());


INSERT INTO `PREFIX_product_lang` (`id_product`, `id_lang`, `description`, `description_short`, `link_rewrite`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `available_now`, `available_later`) VALUES
(1, 1, '<p><strong><span style="font-size: small;">Curved ahead of the curve.</span></strong></p>\r\n<p>For those about to rock, we give you nine amazing colors. But that''s only part of the story. Feel the curved, all-aluminum and glass design and you won''t want to put iPod nano down.</p>\r\n<p><strong><span style="font-size: small;">Great looks. And brains, too.</span></strong></p>\r\n<p>The new Genius feature turns iPod nano into your own highly intelligent, personal DJ. It creates playlists by finding songs in your library that go great together.</p>\r\n<p><strong><span style="font-size: small;">Made to move with your moves.</span></strong></p>\r\n<p>The accelerometer comes to iPod nano. Give it a shake to shuffle your music. Turn it sideways to view Cover Flow. And play games designed with your moves in mind.</p>', '<p>New design. New features. Now in 8GB and 16GB. iPod nano rocks like never before.</p>', 'ipod-nano', '', '', '', 'iPod Nano', 'In stock', ''),
(1, 2, '<p><span style="font-size: small;"><strong>Des courbes avantageuses.</strong></span></p>\r\n<p>Pour les amateurs de sensations, voici neuf nouveaux coloris. Et ce n''est pas tout ! Faites l''expérience du design elliptique en aluminum et verre. Vous ne voudrez plus le lâcher.</p>\r\n<p><strong><span style="font-size: small;">Beau et intelligent.</span></strong></p>\r\n<p>La nouvelle fonctionnalité Genius fait d''iPod nano votre DJ personnel. Genius crée des listes de lecture en recherchant dans votre bibliothèque les chansons qui vont bien ensemble.</p>\r\n<p><strong><span style="font-size: small;">Fait pour bouger avec vous.</span></strong></p>\r\n<p>iPod nano est équipé de l''accéléromètre. Secouez-le pour mélanger votre musique. Basculez-le pour afficher Cover Flow. Et découvrez des jeux adaptés à vos mouvements.</p>', '<p>Nouveau design. Nouvelles fonctionnalités. Désormais en 8 et 16 Go. iPod nano, plus rock que jamais.</p>', 'ipod-nano', '', '', '', 'iPod Nano', 'En stock', ''),
(2, 1, '<p><span style="font-size: small;"><strong>Instant attachment.</strong></span></p>\r\n<p>Wear up to 500 songs on your sleeve. Or your belt. Or your gym shorts. iPod shuffle is a badge of musical devotion. Now in new, more brilliant colors.</p>\r\n<p><span style="font-size: small;"><strong>Feed your iPod shuffle.</strong></span></p>\r\n<p>iTunes is your entertainment superstore. It’s your ultra-organized music collection and jukebox. And it’s how you load up your iPod shuffle in one click.</p>\r\n<p><span style="font-size: small;"><strong>Beauty and the beat.</strong></span></p>\r\n<p>Intensely colorful anodized aluminum complements the simple design of iPod shuffle. Now in blue, green, pink, red, and original silver.</p>', '<p>iPod shuffle, the world’s most wearable music player, now clips on in more vibrant blue, green, pink, and red.</p>', 'ipod-shuffle', '', '', '', 'iPod shuffle', 'In stock', ''),
(2, 2, '<p><span style="font-size: small;"><strong>Un lien immédiat.</strong></span></p>\r\n<p>Portez jusqu''à 500 chansons accrochées à votre manche, à votre ceinture ou à votre short. Arborez votre iPod shuffle comme signe extérieur de votre passion pour la musique. Existe désormais en quatre nouveaux coloris encore plus éclatants.</p>\r\n<p><span style="font-size: small;"><strong>Emplissez votre iPod shuffle.</strong></span></p>\r\n<p>iTunes est un immense magasin dédié au divertissement, une collection musicale parfaitement organisée et un jukebox. Vous pouvez en un seul clic remplir votre iPod shuffle de chansons.</p>\r\n<p><strong><span style="font-size: small;">La musique en technicolor.</span></strong></p>\r\n<p>iPod shuffle s''affiche désormais dans de nouveaux coloris intenses qui rehaussent le design épuré du boîtier en aluminium anodisé. Choisissez parmi le bleu, le vert, le rose, le rouge et l''argenté d''origine.</p>', '<p>iPod shuffle, le baladeur le plus portable du monde, se clippe maintenant en bleu, vert, rose et rouge.</p>', 'ipod-shuffle', '', '', '', 'iPod shuffle', 'En stock', ''),
(5, 1, '<p>MacBook Air is nearly as thin as your index finger. Practically every detail that could be streamlined has been. Yet it still has a 13.3-inch widescreen LED display, full-size keyboard, and large multi-touch trackpad. It’s incomparably portable without the usual ultraportable screen and keyboard compromises.</p><p>The incredible thinness of MacBook Air is the result of numerous size- and weight-shaving innovations. From a slimmer hard drive to strategically hidden I/O ports to a lower-profile battery, everything has been considered and reconsidered with thinness in mind.</p><p>MacBook Air is designed and engineered to take full advantage of the wireless world. A world in which 802.11n Wi-Fi is now so fast and so available, people are truly living untethered — buying and renting movies online, downloading software, and sharing and storing files on the web. </p>', 'MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.', 'macbook-air', '', '', '', 'MacBook Air', '', NULL),
(5, 2, '<p>MacBook Air est presque aussi fin que votre index. Pratiquement tout ce qui pouvait être simplifié l''a été. Il n''en dispose pas moins d''un écran panoramique de 13,3 pouces, d''un clavier complet et d''un vaste trackpad multi-touch. Incomparablement portable il vous évite les compromis habituels en matière d''écran et de clavier ultra-portables.</p><p>L''incroyable finesse de MacBook Air est le résultat d''un grand nombre d''innovations en termes de réduction de la taille et du poids. D''un disque dur plus fin à des ports d''E/S habilement dissimulés en passant par une batterie plus plate, chaque détail a été considéré et reconsidéré avec la finesse à l''esprit.</p><p>MacBook Air a été conçu et élaboré pour profiter pleinement du monde sans fil. Un monde dans lequel la norme Wi-Fi 802.11n est désormais si rapide et si accessible qu''elle permet véritablement de se libérer de toute attache pour acheter des vidéos en ligne, télécharger des logicééééiels, stocker et partager des fichiers sur le Web. </p>', 'MacBook Air est ultra fin, ultra portable et ultra différent de tout le reste. Mais on ne perd pas des kilos et des centimètres en une nuit. C''est le résultat d''une réinvention des normes. D''une multitude d''innovations sans fil. Et d''une révolution dans le design. Avec MacBook Air, l''informatique mobile prend soudain une nouvelle dimension.', 'macbook-air', '', '', '', 'MacBook Air', '', NULL),
(6, 1, 'Every MacBook has a larger hard drive, up to 250GB, to store growing media collections and valuable data.<br /><br />The 2.4GHz MacBook models now include 2GB of memory standard — perfect for running more of your favorite applications smoothly.', 'MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.', 'macbook', '', '', '', 'MacBook', '', NULL),
(6, 2, 'Chaque MacBook est équipé d''un disque dur plus spacieux, d''une capacité atteignant 250 Go, pour stocker vos collections multimédia en expansion et vos données précieuses.<br /><br />Le modèle MacBook à 2,4 GHz intègre désormais 2 Go de mémoire en standard. L''idéal pour exécuter en souplesse vos applications préférées.', 'MacBook vous offre la liberté de mouvement grâce à son boîtier résistant en polycarbonate, à ses technologies sans fil intégrées et à son adaptateur secteur MagSafe novateur qui se déconnecte automatiquement si quelqu''un se prend les pieds dans le fil.', 'macbook', '', '', '', 'MacBook', '', NULL),
(7, 1, '<h3>Five new hands-on applications</h3>\r\n<p>View rich HTML email with photos as well as PDF, Word, and Excel attachments. Get maps, directions, and real-time traffic information. Take notes and read stock and weather reports.</p>\r\n<h3>Touch your music, movies, and more</h3>\r\n<p>The revolutionary Multi-Touch technology built into the gorgeous 3.5-inch display lets you pinch, zoom, scroll, and flick with your fingers.</p>\r\n<h3>Internet in your pocket</h3>\r\n<p>With the Safari web browser, see websites the way they were designed to be seen and zoom in and out with a tap.<sup>2</sup> And add Web Clips to your Home screen for quick access to favorite sites.</p>\r\n<h3>What''s in the box</h3>\r\n<ul>\r\n<li><span></span>iPod touch</li>\r\n<li><span></span>Earphones</li>\r\n<li><span></span>USB 2.0 cable</li>\r\n<li><span></span>Dock adapter</li>\r\n<li><span></span>Polishing cloth</li>\r\n<li><span></span>Stand</li>\r\n<li><span></span>Quick Start guide</li>\r\n</ul>', '<ul>\r\n<li>Revolutionary Multi-Touch interface</li>\r\n<li>3.5-inch widescreen color display</li>\r\n<li>Wi-Fi (802.11b/g)</li>\r\n<li>8 mm thin</li>\r\n<li>Safari, YouTube, Mail, Stocks, Weather, Notes, iTunes Wi-Fi Music Store, Maps</li>\r\n</ul>', 'ipod-touch', '', '', '', 'iPod touch', '', NULL),
(7, 2, '<h1>Titre 1</h1>\r\n<h2>Titre 2</h2>\r\n<h3>Titre 3</h3>\r\n<h4>Titre 4</h4>\r\n<h5>Titre 5</h5>\r\n<h6>Titre 6</h6>\r\n<ul>\r\n<li>UL</li>\r\n<li>UL</li>\r\n<li>UL</li>\r\n<li>UL</li>\r\n</ul>\r\n<ol>\r\n<li>OL</li>\r\n<li>OL</li>\r\n<li>OL</li>\r\n<li>OL</li>\r\n</ol>\r\n<p>paragraphe...</p>\r\n<p>paragraphe...</p>\r\n<p>paragraphe...</p>\r\n<table border="0">\r\n<thead> \r\n<tr>\r\n<th>th</th> <th>th</th> <th>th</th>\r\n</tr>\r\n</thead> \r\n<tbody>\r\n<tr>\r\n<td>td</td>\r\n<td>td</td>\r\n<td>td</td>\r\n</tr>\r\n<tr>\r\n<td>td</td>\r\n<td>td</td>\r\n<td>td</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Cinq nouvelles applications sous la main</h3>\r\n<p>Consultez vos e-mails au format HTML enrichi, avec photos et pieces jointes au format PDF, Word et Excel. Obtenez des cartes, des itinéraires et des informations sur l''état de la circulation en temps réel. Rédigez des notes et consultez les cours de la Bourse et les bulletins météo.</p>\r\n<h3>Touchez du doigt votre musique et vos vidéos. Entre autres.</h3>\r\n<p>La technologie multi-touch révolutionnaire intégrée au superbe écran de 3,5 pouces vous permet d''effectuer des zooms avant et arrière, de faire défiler et de feuilleter des pages à l''aide de vos seuls doigts.</p>\r\n<h3>Internet dans votre poche</h3>\r\n<p>Avec le navigateur Safari, vous pouvez consulter des sites web dans leur mise en page d''origine et effectuer un zoom avant et arrière d''une simple pression sur l''écran.</p>\r\n<h3>Contenu du coffret</h3>\r\n<ul>\r\n<li><span></span>iPod touch</li>\r\n<li><span></span>Écouteurs</li>\r\n<li><span></span>Câble USB 2.0</li>\r\n<li><span></span>Adaptateur Dock</li>\r\n<li><span></span>Chiffon de nettoyage</li>\r\n<li><span></span>Support</li>\r\n<li><span></span>Guide de démarrage rapide</li>\r\n</ul>\r\n<p> </p>', '<p>Interface multi-touch révolutionnaire<br />Écran panoramique couleur de 3,5 pouces<br />Wi-Fi (802.11b/g)<br />8 mm d''épaisseur<br />Safari, YouTube, iTunes Wi-Fi Music Store, Courrier, Cartes, Bourse, Météo, Notes</p>', 'ipod-touch', '', '', '', 'iPod touch', 'En stock', NULL),
(8, 1, '<p>Lorem ipsum</p>', '<p>Lorem ipsum</p>', 'housse-portefeuille-en-cuir-belkin-pour-ipod-nano-noir-chocolat', '', '', '', 'Housse portefeuille en cuir Belkin pour iPod nano - Noir/Chocolat', '', NULL),
(8, 2, '<p><strong>Caractéristiques</strong></p>\r\n<li>Cuir doux résistant<br /> </li>\r\n<li>Accès au bouton Hold<br /> </li>\r\n<li>Fermeture magnétique<br /> </li>\r\n<li>Accès au Dock Connector<br /> </li>\r\n<li>Protège-écran</li>', '<p>Cet étui en cuir tendance assure une protection complète contre les éraflures et les petits aléas de la vie quotidienne. Sa conception élégante et compacte vous permet de glisser votre iPod directement dans votre poche ou votre sac à main.</p>', 'housse-portefeuille-en-cuir-ipod-nano-noir-chocolat', '', '', '', 'Housse portefeuille en cuir (iPod nano) - Noir/Chocolat', '', NULL),
(9, 1, '<div class="product-overview-full">Using Hi-Definition MicroSpeakers to deliver full-range audio, the ergonomic and lightweight design of the SE210 earphones is ideal for premium on-the-go listening on your iPod or iPhone. They offer the most accurate audio reproduction from both portable and home stereo audio sources--for the ultimate in precision highs and rich low end. In addition, the flexible design allows you to choose the most comfortable fit from a variety of wearing positions. <br /> <br /> <strong>Features </strong> <br /> \r\n<ul>\r\n<li>Sound-isolating design </li>\r\n<li> Hi-Definition MicroSpeaker with a single balanced armature driver </li>\r\n<li> Detachable, modular cable so you can make the cable longer or shorter depending on your activity </li>\r\n<li> Connector compatible with earphone ports on both iPod and iPhone </li>\r\n</ul>\r\n<strong>Specifications </strong><br /> \r\n<ul>\r\n<li>Speaker type: Hi-Definition MicroSpeaker </li>\r\n<li> Frequency range: 25Hz-18.5kHz </li>\r\n<li> Impedance (1kHz): 26 Ohms </li>\r\n<li> Sensitivity (1mW): 114 dB SPL/mW </li>\r\n<li> Cable length (with extension): 18.0 in./45.0 cm (54.0 in./137.1 cm) </li>\r\n</ul>\r\n<strong>In the box</strong><br /> \r\n<ul>\r\n<li>Shure SE210 earphones </li>\r\n<li> Extension cable (36.0 in./91.4 cm) </li>\r\n<li> Three pairs foam earpiece sleeves (small, medium, large) </li>\r\n<li> Three pairs soft flex earpiece sleeves (small, medium, large) </li>\r\n<li> One pair triple-flange earpiece sleeves </li>\r\n<li> Carrying case </li>\r\n</ul>\r\nWarranty<br /> Two-year limited <br />(For details, please visit <br />www.shure.com/PersonalAudio/CustomerSupport/ProductReturnsAndWarranty/index.htm.) <br /><br /> Mfr. Part No.: SE210-A-EFS <br /><br />Note: Products sold through this website that do not bear the Apple Brand name are serviced and supported exclusively by their manufacturers in accordance with terms and conditions packaged with the products. Apple''s Limited Warranty does not apply to products that are not Apple-branded, even if packaged or sold with Apple products. Please contact the manufacturer directly for technical support and customer service.</div>', '<p>Evolved from personal monitor technology road-tested by pro musicians and perfected by Shure engineers, the lightweight and stylish SE210 delivers full-range audio that''s free from outside noise.</p>', 'ecouteurs-a-isolation-sonore-shure-se210-blanc', '', '', '', 'Shure SE210 Sound-Isolating Earphones for iPod and iPhone', '', NULL),
(9, 2, '<p>Basés sur la technologie des moniteurs personnels testée sur la route par des musiciens professionnels et perfectionnée par les ingénieurs Shure, les écouteurs SE210, légers et élégants, fournissent une sortie audio à gamme étendue exempte de tout bruit externe.</p>\r\n<p><img src="http://store.apple.com/Catalog/fr/Images/TM255_screen1.jpg" border="0" /></p>\r\n<p><strong>Conception à isolation sonore <br /></strong>Les embouts à isolation sonore fournis bloquent plus de 90 % du bruit ambiant. Combinés à un design ergonomique séduisant et un câble modulaire, ils minimisent les intrusions du monde extérieur, vous permettant de vous concentrer sur votre musique. Conçus pour les amoureux de la musique qui souhaitent faire évoluer leur appareil audio portable, les écouteurs SE210 vous permettent d''emmener la performance avec vous. <br /> <br /><strong>Micro-transducteur haute définition <br /></strong>Développés pour une écoute de qualité supérieure en déplacement, les écouteurs SE210 utilisent un seul transducteur à armature équilibrée pour bénéficier d''une gamme audio étendue. Le résultat ? Un confort d''écoute époustouflant qui restitue tous les détails d''un spectacle live.</p>\r\n<p><strong>Le kit universel Deluxe comprend les éléments suivants : <br /></strong>- <strong><em>Embouts à isolation sonore</em></strong> <br />Les embouts à isolation sonore inclus ont un double rôle : bloquer les bruits ambiants et garantir un maintien et un confort personnalisés. Comme chaque oreille est différente, le kit universel Deluxe comprend trois tailles (S, M, L) d''embouts mousse et flexibles. Choisissez la taille et le style d''embout qui vous conviennent le mieux : une bonne étanchéité est un facteur clé pour optimiser l''isolation sonore et la réponse des basses, ainsi que pour accroître le confort en écoute prolongée.<br /><br />- <em><strong>Câble modulaire</strong></em> <br />En se basant sur les commentaires de nombreux utilisateurs, les ingénieurs de Shure ont développé une solution de câble détachable pour permettre un degré de personnalisation sans précédent. Le câble de 1 mètre fourni vous permet d''adapter votre confort en fonction de l''activité et de l''application.<br /> <br />- <em><strong>Étui de transport</strong></em> <br />Outre les embouts à isolation sonore et le câble modulaire, un étui de transport compact et résistant est fourni avec les écouteurs SE210 pour vous permettre de ranger vos écouteurs de manière pratique et sans encombres.<br /> <br />- <strong><em>Garantie limitée de deux ans <br /></em></strong>Chaque solution SE210 achetée est couverte par une garantie pièces et main-d''œuvre de deux ans.<br /><br /><strong>Caractéristiques techniques</strong></p>\r\n<ul>\r\n<li> Type de transducteur : micro-transducteur haute définition<br /></li>\r\n<li> Sensibilité (1 mW) : pression acoustique de 114 dB/mW<br /></li>\r\n<li> Impédance (à 1 kHz) : 26 W<br /></li>\r\n<li> Gamme de fréquences : 25 Hz – 18,5 kHz<br /></li>\r\n<li> Longueur de câble / avec rallonge : 45 cm / 136 cm<br /></li>\r\n</ul>\r\n<p><strong>Contenu du coffret<br /></strong></p>\r\n<ul>\r\n<li> Écouteurs Shure SE210<br /></li>\r\n<li> Kit universel Deluxe (embouts à isolation sonore, câble modulaire, étui de transport)</li>\r\n</ul>', '<p>Les écouteurs à isolation sonore ergonomiques et légers offrent la reproduction audio la plus fidèle en provenance de sources audio stéréo portables ou de salon.</p>', 'ecouteurs-a-isolation-sonore-shure-se210', '', '', '', 'Écouteurs à isolation sonore Shure SE210', '', NULL),
(7, 3, '<p>Cinco nuevas aplicaciones a mano</p>\r\n<p><br /> Consulta tu correo en formato HTML enriquecido, con fotos y ficheros adjuntos en formato PDF, Word y Excel. Consigue mapas, itinerarios e información sobre el estado de la carreteras en tiempo real. Escribe notas y consulta la bolsa y el tiempo. <br /> Alcanza con un dedo tu música y tus videos, entre otras cosas. <br /> La tecnología multi-touch revolucionaria integrada a la magnífica pantalla de 3,5 pulgadas te permitirá efectuar zoom hacia adelante y hacia atrás, y pasar y ojear las páginas solo con la ayuda de tus dedos.</p>\r\n<p>Internet en tu bolsillo</p>\r\n<p>Con el navegador Safari, podrás consultar sitios web en su compaginación de origen y efectuar un zoom hacia adelante y hacia atrás con la simple presión de un dedo en la pantalla.</p>\r\n<p>Contenido del estuche<br />    * iPod touch<br />    * Auriculares<br />    * Cable USB 2.0<br />    * Adaptador Dock<br />    * Paño de limpieza<br />    * Base<br />    * Guía de inicio rápido<br /> Título<br /> Párrafo</p>', '<p>Interfaz multi-touch revolucionaria<br /> Pantalla panorámica color de 3,5 pulgadas<br /> Wi-Fi (802.11b/g)<br /> 8 mm de espesor<br /> Safari, YouTube, iTunes Wi-Fi Music Store, Correo, Mapas, Bolsa, El tiempo, Notas</p>', 'ipod-touch', '', '', '', 'iPod touch', 'Disponible', ''),
(1, 3, '<p><strong>Curvas aerodinámicas.</strong></p>\r\n<p>Para los aficionados a las sensaciones fuertes, os presentamos nueve nuevos colores. ¡ Y eso no es todo ! Experimenta el diseño elíptico de aluminio y vidrio. ¡ No querrás separarte de él nunca más !</p>\r\n<p><strong><br /> Estético e inteligente.</strong></p>\r\n<p>La nueva aplicación Genius hace de iPod nano tu discjockey personal. Genuis crea listas de lectura buscando en tu biblioteca las canciones que combinan entre si.</p>\r\n<p><strong><br /> Hecho para moverse contigo.</strong><br /> iPod nano está equipado de un acelerómetro. Muévelo para mezclar tu música. Voltéalo para mostrar Cover Flow. Y descubre juegos adaptados a tus movimientos.</p>', '<p>Nuevo diseño. Nuevas aplicaciones. Ahora disponible en 8 y 16 Go. iPod nano, más rock que nunca.</p>', 'ipod-nano', '', '', '', 'iPod Nano', 'Disponible', ''),
(2, 3, '<p><strong>Un enlace inmediato.</strong><br /> <br /> Lleva hasta 500 canciones colgadas de tu manga, de tu cinturón o de tu pantalón. Presume con tu iPod shuffle como signo exterior de tu pasión por la música. Ahora ya existen cuatro nuevos colores más llamativos. <br /> <br /> <strong>Llena tu iPod shuffle.</strong><br /> <br /> iTunes es una enorme tienda dedicada a la diversión, una colección de música organizada perfectamente y un jukebox. Con tan solo un clic puedes llenar tu iPod shuffle con canciones. <br /> <br /> <strong>La música en tecnicolor. </strong><br /> <br /> iPod shuffle presenta nuevos colores vivos que realzan su diseño estilizado en aluminio anodizado. Elige entre azul, verde, rosa, rojo y el plateado de origen.</p>', '<p>iPod shuffle, el walkman más portátil del mundo, ahora en azul, verde, rosa y rojo.</p>', 'ipod-shuffle', '', '', '', 'iPod shuffle', 'Disponible', ''),
(6, 3, '<p>Cada MacBook está equipado de un disco duro más espacioso, de una capacidad de hasta  250 Go, para almacenar tus colecciones multimedia en expansión y tus datos más preciados. <br /> El modelo  MacBook de 2,4 GHz integra 2 Go de memoria en estándar. Lo ideal para realizar sin dificultad tus aplicaciones preferidas.</p>', '<p>MacBook te ofrece una gran libertad de movimientos gracias a su exterior resistente en policarbonato, a su tecnología sin cable y a su adaptador cargador sector innovador que se desconecta automáticamente si alguien se engancha en el cable.</p>', 'macbook', '', '', '', 'MacBook', 'Disponible', ''),
(5, 3, '<p>MacBook Air es casi tan fino como tu dedo. Se ha simplificado al máximo y a pesar de ello dispone de una pantalla panorámica de 13,3 pulgadas, de un teclado completo y de un amplio trackpad multi-touch. Portátil al 100%, te evitará tener que hacer un compromiso en lo que concierne a la pantalla y al teclado.  <br /> <br /> La increíble sutileza de MacBook Air es el resultado de un gran número de innovaciones en materia de reducción de tamaño y peso. Desde un disco duro más fino hasta puertos E/S disimulados hábilmente pasando por una batería más plana, cada detalle se consideró para que el resultado fuera lo más fino posible.<br /> <br /> MacBook Air fue creado y elaborado para disfrutar plenamente del mundo inalámbrico. Un mundo en el que la norma Wi-Fi 802.11n es tan rápida y accesible que permite liberarse completamente de cualquier atadura para comprar videos en línea, descargar programas, almacenar y compartir archivos en la Red.</p>', '<p>MacBook Air es ultra fino, ultra portátil y ultra diferente de todo el resto. Pero no se pierden kilos y centímetros en tan solo una noche. Todo esto es el resultado de un nuevo invento de normas. De un sinfín de novedades sin cable. Y de una revolución en el diseño. Con MacBook Air, la informática móvil adquiere una nueva dimensión.</p>', 'macbook-air', '', '', '', 'MacBook Air', 'Disponible', ''),
(8, 3, '<p><strong>Características</strong></p>\r\n<ul>\r\n<li> Cuero suave resistente</li>\r\n<li>Acceso a la tecla Hold</li>\r\n<li>Cierre magnético</li>\r\n<li>Acceso al Dock Conector</li>\r\n<li>Salva pantallas</li>\r\n</ul>', '<p>Este estuche de cuero de última moda garantiza una completa protección contra los arañazos y los pequeños contratiempos de la vida diaria. Su diseño elegante y compacto te permite meter tu Ipod directamente en tu bolsillo o en tu bolso.</p>', 'funda-cuero-ipod-nano-negro-chocolate', '', '', '', 'Leather Case (iPod nano) - Negro / Chocolate', 'Disponible', ''),
(9, 3, '<p>Los auriculares SE210, ligeros y elegantes, están basados en la tecnología de los monitores personales que los músicos profesionales utilizan en carretera y que los ingenieros de Shure han perfeccionado. También están provistos de una salida audio de gama extendida exenta de todo ruido exterior. <br /> <br /> <strong>Creado para un aislamiento sonoro</strong></p>\r\n<p>Las almohadillas provistas de un aislamiento sonoro bloquean más del 90% del ruido ambiente. Combinadas con un diseño ergonómico atractivo y un cable modular, minimizan las intrusiones del mundo exterior y te permiten concentrarte en tu música. Creados para los apasionados por la música que quieren que su aparato audio móvil evolucione, los auriculares  SE210 te permitirán llevar la tecnología allí donde tú vayas. <br /> <br /> <strong>Micro-transductor alta definición </strong><br /> Desarrollados para poder tener una audición de calidad durante los desplazamientos, los auriculares SE210 utilizan un único transductor con un armazón equilibrado para poder disfrutar de una gama audio extendida. ¿El resultado ? Un confort audio increíble que restituye cada detalle de un espectáculo en directo. <br /> <br /> <strong>El kit universal Deluxe incluye los siguientes elementos :</strong><br /> - Almohadillas para aislamiento sonoro<br /> Las almohadillas para el aislamiento sonoro tienen una doble función : bloquear el ruido ambiente y garantizar una estabilidad y un confort personalizados. Como cada oreja es diferente el kit universal Deluxe incluye tres tallas (S, M, L) de almohadillas de espuma y flexibles. Elige la talla y el estilo de almohadilla que mejor te convenga : un buen aislamiento es un factor clave tanto para optimizar el aislamiento sonoro y la respuesta de los bajos como para aumentar el confort durante una audición prolongada. <br /> <br /> - Cable modular</p>\r\n<p>Basándose en los comentarios de los numerosos usuarios, los ingenieros de Shure han creado una solución de cable separable para permitir un grado de personalización sin precedentes. El cable de 1 metro te permite adaptar el confort en función de la actividad del momento y de la aplicación. <br /> <br /> - Estuche para el transporte</p>\r\n<p>Además de las almohadillas de aislamiento sonoro y del cable modular, los auriculares SE210 están provistos de un estuche de transporte compacto y resistente para guardar los auriculares de manera práctica y sin dificultad. <br /> - Garantía límite de dos años <br /> Cada solución SE210 tiene una garantía piezas y mano de obra de dos años.</p>\r\n<p><br /> <em><strong>Características técnicas</strong></em></p>\r\n<ul>\r\n<li>Tipo de transductor : micro-transductor alta definición</li>\r\n<li>Sensibilidad (1 mW) : presión acústica de 114 dB/mW</li>\r\n<li>Impedancia : (à 1 kHz) : 26 W</li>\r\n<li>Gama de frecuencias : 25 Hz ˆ 18,5 kHz</li>\r\n<li>Longitud del cable / con alargador : 45 cm / 136 cm</li>\r\n</ul>\r\n<p><br /> <strong><em>Contenido de la caja</em></strong></p>\r\n<ul>\r\n<li>Altavoces Shure SE210</li>\r\n<li>Kit universal Deluxe (almohadillas de aislamiento sonoro, cable modular, estuche de transporte)</li>\r\n</ul>', '<p>Los auriculares con aislamiento ergonómicos y ligeros ofrecen la reproducción más fiel proveniente de fuentes audio estéreo móviles o de salón.</p>', 'auriculares-aislantes-del-sonido-shure-se210', '', '', '', 'Auriculares aislantes del sonido Shure SE210', 'Disponible', '');

INSERT INTO `PREFIX_category` VALUES (2, 1, 1, 1, NOW(), NOW()),(3, 1, 1, 1, NOW(), NOW()),(4, 1, 1, 1, NOW(), NOW());

INSERT INTO `PREFIX_category_lang` VALUES
(2, 1, 'iPods', 'Now that you can buy movies from the iTunes Store and sync them to your iPod, the whole world is your theater.', 'music-ipods', '', '', ''),
(2, 2, 'iPods', 'Il est temps, pour le meilleur lecteur de musique, de remonter sur scène pour un rappel. Avec le nouvel iPod, le monde est votre scène.', 'musique-ipods', '', '', ''),
(3, 1, 'Accessories', 'Wonderful accessories for your iPod', 'accessories-ipod', '', '', ''),
(3, 2, 'Accessoires', 'Tous les accessoires à la mode pour votre iPod', 'accessoires-ipod', '', '', ''),
(4, 1, 'Laptops', 'The latest Intel processor, a bigger hard drive, plenty of memory, and even more new features all fit inside just one liberating inch. The new Mac laptops have the performance, power, and connectivity of a desktop computer. Without the desk part.', 'laptops', 'Apple laptops', 'Apple laptops MacBook Air', 'Powerful and chic Apple laptops'),
(4, 2, 'Portables', 'Le tout dernier processeur Intel, un disque dur plus spacieux, de la mémoire à profusion et d''autres nouveautés. Le tout, dans à peine 2,59 cm qui vous libèrent de toute entrave. Les nouveaux portables Mac réunissent les performances, la puissance et la connectivité d''un ordinateur de bureau. Sans la partie bureau.', 'portables-apple', 'Portables Apple', 'portables apple macbook air', 'portables apple puissants et design'),
(4, 3, 'Portátiles', 'El último procesador Intel, un disco duro más grande, con profusión de memoria y otras novedades. Todo en sólo 2,59 cm libres de cualquier obstrucción. Las nuevas portátiles Mac cumplir rendimiento, potencia y conectividad de una computadora de escritorio. Sin la parte del escritorio.', 'portátiles-apple', 'Portátiles Apple', 'portátiles apple macbook air', 'portátiles apple poderoso y el diseño'),
(3, 3, 'Accesorios', 'Todos los accesorios de moda para tu iPod', 'ipod-accesorios', '', '', ''),
(2, 3, 'iPods', 'Es hora de que el mejor jugador de la música, al escenario para hacer un bis. Con el nuevo iPod, el mundo es tu escenario.', 'musica-ipods', '', '', '');

INSERT INTO `PREFIX_category_product` (`id_category`, `id_product`, `position`) VALUES 
(1, 1, 0),(1, 2, 1),(1, 6, 2),(1, 7, 3),(2, 1, 0),(2, 2, 1),(2, 7, 2),(3, 8, 0),(3, 9, 1),(4, 5, 0),(4, 6, 1);

INSERT INTO `PREFIX_attribute_group` (`id_attribute_group`, `is_color_group`) VALUES (1, 0),(2, 1),(3, 0);

INSERT INTO `PREFIX_attribute_group_lang` VALUES
(1, 1, 'Disk space', 'Disk space'),(1, 2, 'Capacité', 'Capacité'),(2, 1, 'Color', 'Color'),(2, 2, 'Couleur', 'Couleur'),(3, 1, 'ICU', 'Processor'),
(3, 2, 'ICU', 'Processeur'),(1, 3, 'Capacidad', 'Capacidad'),(2, 3, 'Color', 'Color'),(3, 3, 'ICU', 'Procesador');

INSERT INTO `PREFIX_attribute_impact` (`id_attribute_impact`, `id_product`, `id_attribute`, `weight`, `price`) VALUES
(1, 1, 2, 0, 60.00),(2, 1, 5, 0, 0.00),(3, 1, 16, 0, 50.00),(4, 1, 15, 0, 0.00),(5, 1, 4, 0, 0.00),(6, 1, 19, 0, 0.00),(7, 1, 3, 0, 0.00),(8, 1, 14, 0, 0.00),
(9, 1, 7, 0, 0.00),(10, 1, 20, 0, 0.00),(11, 1, 6, 0, 0.00),(12, 1, 18, 0, 0.00);

INSERT INTO `PREFIX_scene` (`id_scene`, `active`) VALUES (1, 1),(2, 1),(3, 1);

INSERT INTO `PREFIX_scene_category` (`id_scene`, `id_category`) VALUES (1, 2),(2, 2),(3, 4);

INSERT INTO `PREFIX_scene_lang` (`id_scene`, `id_lang`, `name`) VALUES
(1, 1, 'The iPods Nano'),(1, 2, 'Les iPods Nano'),(1, 3, 'El iPod Nano'),
(2, 1, 'The iPods'),(2, 2, 'Les iPods'),(2, 3, 'El iPod'),
(3, 1, 'The MacBooks'),(3, 2, 'Les MacBooks'),(3, 3, 'El MacBook');

INSERT INTO `PREFIX_scene_products` (`id_scene`, `id_product`, `x_axis`, `y_axis`, `zone_width`, `zone_height`) VALUES
(1, 1, 474, 15, 72, 166),(2, 2, 389, 137, 51, 46),(2, 7, 111, 83, 161, 108),(2, 1, 340, 31, 46, 151),(3, 6, 355, 37, 151, 103),(3, 6, 50, 47, 128, 84),
(3, 5, 198, 47, 137, 92),(1, 1, 394, 14, 73, 168),(1, 1, 318, 14, 69, 168),(1, 1, 244, 14, 66, 169),(1, 1, 180, 13, 59, 168),(1, 1, 6, 12, 30, 175),
(1, 1, 38, 12, 30, 170),(1, 1, 76, 14, 41, 169),(1, 1, 123, 13, 49, 169);

INSERT INTO `PREFIX_attribute` (`id_attribute`, `id_attribute_group`) VALUES (1, 1),(2, 1),(8, 1),(9, 1),(10, 3),(11, 3),(12, 1),(13, 1),(14, 2);
INSERT INTO `PREFIX_attribute` (`id_attribute`, `id_attribute_group`, `color`) VALUES (3, 2, '#D2D6D5'),(4, 2, '#008CB7'),(5, 2, '#F3349E'),(6, 2, '#93D52D'),
(7, 2, '#FD9812'),(15, 1, ''),(16, 1, ''),(17, 1, ''),(18, 2, '#7800F0'),(19, 2, '#F6EF04'),(20, 2, '#F60409');

INSERT INTO `PREFIX_attribute_lang` VALUES (1, 1, '2GB'),(1, 2, '2Go'),(1, 3, '2Go'),(2, 1, '4GB'),(2, 2, '4Go'),(2, 3, '4Go'),(3, 1, 'Metal'),(3, 2, 'Metal'),(3, 3, 'Metal'),
(4, 1, 'Blue'),(4, 2, 'Bleu'),(4, 3, 'Azul'),(5, 1, 'Pink'),(5, 2, 'Rose'),(5, 3, 'Rosa'),(6, 1, 'Green'),(6, 2, 'Vert'),(6, 3, 'Verde'),(7, 1, 'Orange'),(7, 2, 'Orange'),
(7, 3, 'Naranja'),(8, 1, 'Optional 64GB solid-state drive'),(8, 2, 'Disque dur SSD (solid-state drive) de 64 Go '),(8, 3, 'SSD (solid-state drive) 64 Go '),
(9, 1, '80GB Parallel ATA Drive @ 4200 rpm'),(9, 2, 'Disque dur PATA de 80 Go à 4 200 tr/min'),(9, 3, 'Disco duro PATA 80 Go 4 200 tr/min'),(10, 1, '1.60GHz Intel Core 2 Duo'),
(10, 2, 'Intel Core 2 Duo à 1,6 GHz'),(10, 3, 'Intel Core 2 Duo para 1,6 GHz'),(11, 1, '1.80GHz Intel Core 2 Duo'),(11, 2, 'Intel Core 2 Duo à 1,8 GHz'),
(11, 3, 'Intel Core 2 Duo para 1,8 GHz'),(12, 1, '80GB: 20,000 Songs'),(12, 2, '80 Go : 20 000 chansons'),(12, 3, '80 Go : 20 000 canciones'),(13, 1, '160GB: 40,000 Songs'),
(13, 2, '160 Go : 40 000 chansons'),(13, 3, '160 Go : 40 000 canciones'),(14, 2, 'Noir'),(14, 3, 'Negro'),(14, 1, 'Black'),(15, 1, '8Go'),(15, 2, '8Go'),(15, 3, '8Go'),
(16, 1, '16Go'),(16, 2, '16Go'),(16, 3, '16Go'),(17, 1, '32Go'),(17, 2, '32Go'),(17, 3, '32Go');

INSERT INTO `PREFIX_attribute_lang` (`id_attribute`, `id_lang`, `name`) VALUES
(18, 1, 'Purple'),(18, 2, 'Violet'),(18, 3, 'Violeta'),(19, 1, 'Yellow'),(19, 2, 'Jaune'),(19, 3, 'Amarillo'),(20, 1, 'Red'),(20, 2, 'Rouge'),(20, 3, 'Rojo');

INSERT INTO `PREFIX_product_attribute` (`id_product_attribute`, `id_product`, `reference`, `supplier_reference`, `ean13`, `wholesale_price`, `price`, `ecotax`, `quantity`, `weight`, `default_on`) VALUES
(30, 1, '', '', '', 0.000000, 0.00, 0.00, 50, 0, 0),
(29, 1, '', '', '', 0.000000, 50.00, 0.00, 50, 0, 0),
(28, 1, '', '', '', 0.000000, 0.00, 0.00, 50, 0, 0),
(27, 1, '', '', '', 0.000000, 50.00, 0.00, 50, 0, 0),
(26, 1, '', '', '', 0.000000, 0.00, 0.00, 50, 0, 0),
(25, 1, '', '', '', 0.000000, 50.00, 0.00, 50, 0, 0),
(7, 2, '', '', '', 0.000000, 0.00, 0.00, 10, 0, 0),
(8, 2, '', '', '', 0.000000, 0.00, 0.00, 20, 0, 1),
(9, 2, '', '', '', 0.000000, 0.00, 0.00, 30, 0, 0),
(10, 2, '', '', '', 0.000000, 0.00, 0.00, 40, 0, 0),
(12, 5, '', NULL, '', 0.000000, 899.00, 0.00, 100, 0, 0),
(13, 5, '', NULL, '', 0.000000, 0.00, 0.00, 99, 0, 1),
(14, 5, '', NULL, '', 0.000000, 270.00, 0.00, 50, 0, 0),
(15, 5, '', NULL, '', 0.000000, 1169.00, 0.00, 25, 0, 0),
(23, 7, '', NULL, '', 0.000000, 180.00, 0.00, 70, 0, 0),
(22, 7, '', NULL, '', 0.000000, 90.00, 0.00, 60, 0, 0),
(19, 7, '', NULL, '', 0.000000, 0.00, 0.00, 50, 0, 1),
(31, 1, '', '', '', 0.000000, 50.00, 0.00, 50, 0, 1),
(32, 1, '', '', '', 0.000000, 0.00, 0.00, 50, 0, 0),
(33, 1, '', '', '', 0.000000, 50.00, 0.00, 50, 0, 0),
(34, 1, '', '', '', 0.000000, 0.00, 0.00, 50, 0, 0),
(35, 1, '', '', '', 0.000000, 50.00, 0.00, 50, 0, 0),
(36, 1, '', '', '', 0.000000, 0.00, 0.00, 50, 0, 0),
(39, 1, '', '', '', 0.000000, 50.00, 0.00, 50, 0, 0),
(40, 1, '', '', '', 0.000000, 0.00, 0.00, 50, 0, 0),
(41, 1, '', '', '', 0.000000, 50.00, 0.00, 50, 0, 0),
(42, 1, '', '', '', 0.000000, 0.00, 0.00, 50, 0, 0);

INSERT INTO `PREFIX_product_attribute_image` (`id_product_attribute`, `id_image`) VALUES (30, 44),(29, 44),(28, 45),(27, 45),(26, 38),(25, 38),(7, 46),(8, 47),(9, 49),
(10, 48),(12, 0),(13, 0),(14, 0),(15, 0),(23, 0),(22, 0),(19, 0),(31, 37),(32, 37),(33, 40),(34, 40),(35, 41),(36, 41),(39, 39),(40, 39),(41, 42),(42, 42);

INSERT INTO `PREFIX_product_attribute_combination` (`id_attribute`, `id_product_attribute`) VALUES (3, 9),(3, 12),(3, 13),(3, 14),(3, 15),(3, 29),(3, 30),(4, 7),(4, 25),
(4, 26),(5, 10),(5, 35),(5, 36),(6, 8),(6, 39),(6, 40),(7, 33),(7, 34),(8, 13),(8, 15),(9, 12),(9, 14),(10, 12),(10, 13),(11, 14),(11, 15),(14, 31),(14, 32),(15, 19),
(15, 26),(15, 28),(15, 30),(15, 32),(15, 34),(15, 36),(15, 40),(15, 42),(16, 22),(16, 25),(16, 27),(16, 29),(16, 31),(16, 33),(16, 35),(16, 39),(16, 41),(17, 23),(18, 41),(18, 42),(19, 27),(19, 28);

INSERT INTO `PREFIX_feature` (`id_feature`) VALUES (1), (2), (3), (4), (5);

INSERT INTO `PREFIX_feature_lang` (`id_feature`, `id_lang`, `name`) VALUES
(1, 1, 'Height'), (1, 2, 'Hauteur'),(2, 1, 'Width'), (2, 2, 'Largeur'),(3, 1, 'Depth'), (3, 2, 'Profondeur'),(4, 1, 'Weight'), (4, 2, 'Poids'),(5, 1, 'Headphone'), (5, 2, 'Prise casque'),
(1, 3, 'Alto'),(2, 3, 'Ancho'),(3, 3, 'Profundo'),(4, 3, 'Peso'),(5, 3, 'Toma auriculares');

INSERT INTO `PREFIX_feature_product` (`id_feature`, `id_product`, `id_feature_value`) VALUES
(1, 1, 11),(1, 2, 15),(2, 1, 12),(2, 2, 16),(3, 1, 14),(3, 2, 18),(4, 1, 13),(4, 2, 17),(5, 1, 10),(5, 2, 10),(3, 7, 26),(5, 7, 9),(4, 7, 25),(2, 7, 24),(1, 7, 23);

INSERT INTO `PREFIX_feature_value` (`id_feature_value`, `id_feature`, `custom`) VALUES
(11, 1, 1),(15, 1, 1),(12, 2, 1),(16, 2, 1),(14, 3, 1),(18, 3, 1),(13, 4, 1),(17, 4, 1),(26, 3, 1),(25, 4, 1),(24, 2, 1),(23, 1, 1);

INSERT INTO `PREFIX_feature_value` (`id_feature_value`, `id_feature`, `custom`) VALUES (9, 5, NULL), (10, 5, NULL);

INSERT INTO `PREFIX_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES
(13, 1, '49.2 grams'),(13, 2, '49,2 grammes'),(13, 3, '49,2 g'),(12, 2, '52,3 mm'),(12, 1, '52.3 mm'),(12, 3, '52.3 mm'),(11, 2, '69,8 mm'),(11, 1, '69.8 mm'),(11, 3, '69.8 mm'),
(17, 2, '15,5 g'),(17, 1, '15.5 g'),(17, 3, '15.5 g'),(16, 2, '41,2 mm'),(16, 1, '41.2 mm'),(16, 3, '41.2 mm'),(15, 2, '27,3 mm'),(15, 1, '27.3 mm'),(15, 3, '27.3 mm'),(9, 1, 'Jack stereo'),
(9, 2, 'Jack stéréo'),(9, 3, 'Jack stereo'),(10, 1, 'Mini-jack stereo'),(10, 2, 'Mini-jack stéréo'),(10, 3, 'Mini-jack stéréo'),(14, 1, '6,5 mm'),(14, 2, '6,5 mm'),(14, 3, '6,5 mm'),
(18, 1, '10,5 mm (clip compris)'),(18, 2, '10,5 mm (clip compris)'),(18, 3, '10,5 mm (clip incluyendo)'),(26, 2, '8mm'),(26, 1, '8mm'),(26, 3, '8mm'),(25, 2, '120g'),(25, 3, '120g'),
(25, 1, '120g'),(24, 2, '70mm'),(24, 1, '70mm'),(24, 3, '70mm'),(23, 2, '110mm'),(23, 3, '110mm'),(23, 1, '110mm');

INSERT INTO `PREFIX_image` (`id_image`, `id_product`, `position`, `cover`) VALUES
(40, 1, 4, 0),(39, 1, 3, 0),(38, 1, 2, 0),(37, 1, 1, 1),(48, 2, 3, 0),(47, 2, 2, 0),(49, 2, 4, 0),(46, 2, 1, 1),(15, 5, 1, 1),(16, 5, 2, 0),(17, 5, 3, 0),(18, 6, 4, 0),(19, 6, 5, 0),
(20, 6, 1, 1),(24, 7, 1, 1),(33, 8, 1, 1),(27, 7, 3, 0),(26, 7, 2, 0),(29, 7, 4, 0),(30, 7, 5, 0),(32, 7, 6, 0),(36, 9, 1, 1),(41, 1, 5, 0),(42, 1, 6, 0),(44, 1, 7, 0),(45, 1, 8, 0);

INSERT INTO `PREFIX_image_lang` (`id_image`, `id_lang`, `legend`) VALUES
(40, 2, 'iPod Nano'),(40, 3, 'iPod Nano'),(40, 1, 'iPod Nano'),(39, 2, 'iPod Nano'),(39, 3, 'iPod Nano'),(39, 1, 'iPod Nano'),(38, 2, 'iPod Nano'),(38, 3, 'iPod Nano'),(38, 1, 'iPod Nano'),
(37, 2, 'iPod Nano'),(37, 3, 'iPod Nano'),(37, 1, 'iPod Nano'),(48, 2, 'iPod shuffle'),(48, 3, 'iPod shuffle'),(48, 1, 'iPod shuffle'),(47, 2, 'iPod shuffle'),(47, 3, 'iPod shuffle'),
(47, 1, 'iPod shuffle'),(49, 2, 'iPod shuffle'),(49, 3, 'iPod shuffle'),(49, 1, 'iPod shuffle'),(46, 2, 'iPod shuffle'),(46, 3, 'iPod shuffle'),(46, 1, 'iPod shuffle'),
(10, 1, 'luxury-cover-for-ipod-video'),(10, 3, 'luxury-cover-for-ipod-video'),(10, 2, 'housse-luxe-pour-ipod-video'),(11, 1, 'cover'),(11, 2, 'housse'),(11, 3, 'cubrir'),
(12, 1, 'myglove-ipod-nano'),(12, 2, 'myglove-ipod-nano'),(12, 3, 'myglove-ipod-nano'),(13, 1, 'myglove-ipod-nano'),(13, 2, 'myglove-ipod-nano'),(13, 3, 'myglove-ipod-nano'),
(14, 1, 'myglove-ipod-nano'),(14, 2, 'myglove-ipod-nano'),(14, 3, 'myglove-ipod-nano'),(15, 1, 'MacBook Air'),(15, 2, 'macbook-air-1'),(15, 3, 'macbook-air-1'),(16, 1, 'MacBook Air'),
(16, 2, 'macbook-air-2'),(16, 3, 'macbook-air-2'),(17, 1, 'MacBook Air'),(17, 2, 'macbook-air-3'),(17, 3, 'macbook-air-3'),(18, 1, 'MacBook Air'),(18, 2, 'macbook-air-4'),
(18, 3, 'macbook-air-4'),(19, 1, 'MacBook Air'),(19, 2, 'macbook-air-5'),(19, 3, 'macbook-air-5'),(20, 1, ' MacBook Air SuperDrive'),(20, 2, 'superdrive-pour-macbook-air-1'),
(20, 3, 'superdrive-pour-macbook-air-1'),(24, 2, 'iPod touch'),(24, 1, 'iPod touch'),(24, 3, 'iPod touch'),(33, 1, 'housse-portefeuille-en-cuir'),(33, 3, 'housse-portefeuille-en-cuir'),
(26, 1, 'iPod touch'),(26, 2, 'iPod touch'),(26, 3, 'iPod touch'),(27, 1, 'iPod touch'),(27, 2, 'iPod touch'),(27, 3, 'iPod touch'),(29, 1, 'iPod touch'),(29, 2, 'iPod touch'),
(29, 3, 'iPod touch'),(30, 1, 'iPod touch'),(30, 2, 'iPod touch'),(30, 3, 'iPod touch'),(32, 1, 'iPod touch'),(32, 2, 'iPod touch'),(32, 3, 'iPod touch'),
(33, 2, 'housse-portefeuille-en-cuir-ipod-nano'),(36, 2, 'Écouteurs à isolation sonore Shure SE210'),(36, 3, 'Auriculares aislantes del sonido Shure SE210'),
(36, 1, 'Shure SE210 Sound-Isolating Earphones for iPod and iPhone'),(41, 1, 'iPod Nano'),(41, 2, 'iPod Nano'),(41, 3, 'iPod Nano'),(42, 1, 'iPod Nano'),(42, 2, 'iPod Nano'),
(42, 3, 'iPod Nano'),(44, 1, 'iPod Nano'),(44, 2, 'iPod Nano'),(44, 3, 'iPod Nano'),(45, 1, 'iPod Nano'),(45, 2, 'iPod Nano'),(45, 3, 'iPod Nano');

INSERT INTO `PREFIX_tag` (`id_tag`, `id_lang`, `name`) VALUES (5, 1, 'apple'),(6, 2, 'ipod'),(7, 2, 'nano'),(8, 2, 'apple'),
(18, 2, 'shuffle'),(19, 2, 'macbook'),(20, 2, 'macbookair'),(21, 2, 'air'),
(22, 1, 'superdrive'),(27, 2, 'marche'),(26, 2, 'casque'),(25, 2, 'écouteurs'),
(24, 2, 'ipod touch tacticle'),(23, 1, 'Ipod touch');

INSERT INTO `PREFIX_product_tag` (`id_product`, `id_tag`) VALUES (1, 2),(1, 6),(1, 7),(1, 8),(2, 6),(2, 18),
(5, 8),(5, 19),(5, 20),(5, 21),(6, 5),(6, 22),(7, 23),(7, 24),(9, 25),(9, 26),(9, 27);

INSERT INTO `PREFIX_alias` (`alias`, `search`, `active`, `id_alias`) VALUES ('piod', 'ipod', 1, 4),('ipdo', 'ipod', 1, 3);
INSERT INTO `PREFIX_order_message` (`id_order_message`, `date_add`) VALUES (1, NOW());
INSERT INTO `PREFIX_order_message_lang` (`id_order_message`, `id_lang`, `name`, `message`) VALUES
(1, 1, 'Delay', 'Hi,

Unfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.
Please accept our apologies and rest assured that we are working hard to rectify this.

Best regards,');

INSERT INTO `PREFIX_order_message_lang` (`id_order_message`, `id_lang`, `name`, `message`) VALUES
(1, 2, 'Délai', 'Bonjour,

Un des éléments de votre commande est actuellement en réapprovisionnement, ce qui peut légèrement retarder son envoi.

Merci de votre compréhension.

Cordialement,');

INSERT INTO `PREFIX_order_message_lang` (`id_order_message`, `id_lang`, `name`, `message`) VALUES
(1, 3, 'Plazo', 'Hola,

Uno de los elementos de su solicitud se encuentra actualmente la reposición, el cual poco puede retrasar el envío.

Gracias por su comprensión.

Saludos cordiales,');

/* Currency/Country module */
INSERT INTO `PREFIX_module_currency` (`id_module`, `id_currency`) VALUES (3, 1),(3, 2),(3, 3),(4, -2),(6, 1),(6, 2),(6, 3);
INSERT INTO `PREFIX_module_group` (`id_module`, `id_group`) VALUES (3, 1),(4, 1),(6, 1);

INSERT INTO `PREFIX_module_country` (`id_module`, `id_country`) VALUES (3, 1),(3, 2),(3, 3),(3, 4),(3, 5),(3, 6),(3, 7),(3, 8),
(3, 9),(3, 10),(3, 11),(3, 12),(3, 13),(3, 14),(3, 15),(3, 16),(3, 17),(3, 18),(3, 19),(3, 20),(3, 21),(3, 22),(3, 23),(3, 24),
(3, 25),(3, 26),(3, 27),(3, 28),(3, 29),(3, 30),(3, 31),(3, 32),(3, 33),(3, 34),(4, 1),(4, 2),(4, 3),(4, 4),(4, 5),(4, 6),(4, 7),
(4, 8),(4, 9),(4, 10),(4, 11),(4, 12),(4, 13),(4, 14),(4, 15),(4, 16),(4, 17),(4, 18),(4, 19),(4, 20),(4, 21),(4, 22),(4, 23),
(4, 24),(4, 25),(4, 26),(4, 27),(4, 28),(4, 29),(4, 30),(4, 31),(4, 32),(4, 33),(4, 34),(6, 1),(6, 2),(6, 3),(6, 4),(6, 5),(6, 6),
(6, 7),(6, 8),(6, 9),(6, 10),(6, 11),(6, 12),(6, 13),(6, 14),(6, 15),(6, 16),(6, 17),(6, 18),(6, 19),(6, 20),(6, 21),(6, 22),(6, 23),
(6, 24),(6, 25),(6, 26),(6, 27),(6, 28),(6, 29),(6, 30),(6, 31),(6, 32),(6, 33),(6, 34);

INSERT INTO `PREFIX_search_index` (`id_product`, `id_word`, `weight`) VALUES (1, 1, 10),(1, 2, 10),(1, 3, 2),(1, 4, 1),(1, 5, 1),
(1, 6, 1),(1, 7, 1),(1, 8, 1),(1, 9, 1),(1, 10, 1),(1, 11, 1),(1, 12, 1),(1, 13, 1),(1, 14, 1),(1, 15, 1),(1, 16, 2),(1, 17, 1),
(1, 18, 1),(1, 19, 1),(1, 20, 2),(1, 21, 1),(1, 22, 1),(1, 23, 1),(1, 24, 1),(1, 25, 1),(1, 26, 1),(1, 27, 1),(1, 28, 1),(1, 29, 1),
(1, 30, 2),(1, 31, 1),(1, 32, 1),(1, 33, 1),(1, 34, 1),(1, 35, 1),(1, 36, 1),(1, 37, 5),(1, 38, 1),(1, 39, 1),(1, 40, 1),(1, 41, 1),
(1, 42, 1),(1, 43, 1),(1, 44, 1),(1, 45, 1),(1, 46, 1),(1, 47, 1),(1, 48, 1),(1, 49, 2),(1, 50, 2),(1, 51, 1),(1, 52, 1),(1, 53, 1),
(1, 54, 1),(1, 55, 1),(1, 56, 1),(1, 57, 1),(1, 58, 1),(1, 59, 1),(1, 60, 1),(1, 61, 1),(1, 62, 1),(1, 63, 1),(1, 64, 1),(1, 65, 3),
(1, 66, 3),(1, 67, 3),(1, 68, 4),(1, 69, 16),(1, 70, 4),(1, 71, 4),(1, 72, 4),(1, 73, 4),(1, 74, 4),(1, 75, 4),(1, 76, 4),(1, 77, 2),
(1, 78, 2),(1, 79, 2),(1, 80, 12),(1, 81, 12),(1, 82, 1),(1, 83, 2),(1, 84, 1),(1, 85, 1),(1, 86, 1),(1, 87, 1),(1, 88, 2),(1, 89, 1),
(1, 90, 1),(1, 91, 1),(1, 92, 1),(1, 93, 4),(1, 94, 1),(1, 95, 1),(1, 96, 1),(1, 97, 1),(1, 98, 1),(1, 99, 1),(1, 100, 1),(1, 101, 1),
(1, 102, 1),(1, 103, 1),(1, 104, 1),(1, 105, 1),(1, 106, 1),(1, 107, 2),(1, 108, 1),(1, 109, 1),(1, 110, 1),(1, 111, 1),(1, 112, 1),
(1, 113, 1),(1, 114, 2),(1, 115, 2),(1, 116, 1),(1, 117, 3),(1, 118, 1),(1, 119, 1),(1, 120, 1),(1, 121, 1),(1, 122, 1),(1, 123, 1),
(1, 124, 1),(1, 125, 1),(1, 126, 1),(1, 127, 1),(1, 128, 1),(1, 129, 1),(1, 130, 1),(1, 131, 1),(1, 132, 1),(1, 133, 1),(1, 134, 1),
(1, 135, 1),(1, 136, 1),(1, 137, 1),(1, 138, 1),(1, 139, 1),(1, 140, 1),(1, 141, 1),(1, 142, 1),(1, 143, 1),(1, 144, 3),(1, 145, 7),
(1, 146, 3),(1, 147, 4),(1, 148, 16),(1, 149, 4),(1, 150, 4),(1, 151, 4),(1, 152, 4),(1, 153, 4),(1, 154, 4),(1, 155, 4),(1, 156, 2),
(1, 157, 2),(1, 158, 2),(2, 1, 11),(2, 54, 10),(2, 159, 1),(2, 160, 1),(2, 161, 1),(2, 162, 1),(2, 55, 2),(2, 163, 1),(2, 164, 1),
(2, 165, 2),(2, 166, 1),(2, 167, 2),(2, 168, 2),(2, 169, 2),(2, 170, 1),(2, 171, 1),(2, 172, 1),(2, 44, 1),(2, 37, 7),(2, 173, 1),
(2, 174, 1),(2, 175, 1),(2, 176, 1),(2, 177, 1),(2, 178, 1),(2, 179, 1),(2, 180, 1),(2, 19, 1),(2, 181, 1),(2, 182, 1),(2, 183, 1),
(2, 184, 1),(2, 185, 1),(2, 186, 1),(2, 187, 1),(2, 188, 1),(2, 189, 1),(2, 190, 1),(2, 191, 1),(2, 192, 1),(2, 193, 1),(2, 194, 1),
(2, 195, 1),(2, 196, 1),(2, 197, 1),(2, 3, 1),(2, 198, 1),(2, 199, 1),(2, 200, 1),(2, 65, 3),(2, 66, 3),(2, 67, 3),(2, 71, 2),(2, 75, 2),
(2, 68, 2),(2, 74, 2),(2, 201, 2),(2, 202, 2),(2, 78, 2),(2, 79, 2),(2, 80, 15),(2, 203, 14),(2, 204, 1),(2, 205, 1),(2, 88, 2),
(2, 206, 1),(2, 207, 1),(2, 208, 1),(2, 209, 1),(2, 210, 2),(2, 211, 2),(2, 153, 3),(2, 212, 2),(2, 213, 1),(2, 214, 1),(2, 215, 1),
(2, 0, 1),(2, 125, 2),(2, 217, 1),(2, 117, 7),(2, 218, 1),(2, 219, 1),(2, 220, 1),(2, 221, 1),(2, 222, 1),(2, 223, 1),(2, 224, 1),
(2, 225, 1),(2, 93, 1),(2, 135, 2),(2, 226, 1),(2, 86, 2),(2, 227, 1),(2, 98, 2),(2, 99, 2),(2, 228, 1),(2, 229, 1),(2, 230, 1),
(2, 231, 1),(2, 232, 1),(2, 233, 1),(2, 234, 1),(2, 235, 1),(2, 236, 1),(2, 237, 1),(2, 238, 1),(2, 239, 1),(2, 240, 1),(2, 107, 1),
(2, 241, 1),(2, 242, 1),(2, 243, 1),(2, 244, 1),(2, 245, 1),(2, 246, 1),(2, 123, 1),(2, 247, 1),(2, 248, 1),(2, 83, 1),(2, 249, 1),
(2, 250, 1),(2, 251, 1),(2, 252, 1),(2, 253, 1),(2, 254, 1),(2, 255, 1),(2, 256, 1),(2, 257, 1),(2, 144, 3),(2, 145, 3),(2, 146, 3),
(2, 150, 2),(2, 154, 2),(2, 147, 2),(2, 258, 2),(2, 259, 2),(2, 157, 2),(2, 158, 2),(5, 260, 10),(5, 261, 1),(5, 262, 1),(5, 263, 1),
(5, 264, 1),(5, 265, 1),(5, 266, 1),(5, 267, 1),(5, 268, 1),(5, 269, 1),(5, 270, 1),(5, 271, 2),(5, 272, 1),(5, 273, 1),(5, 274, 1),
(5, 275, 2),(5, 276, 2),(5, 277, 1),(5, 3, 1),(5, 49, 2),(5, 278, 1),(5, 279, 1),(5, 280, 1),(5, 281, 1),(5, 282, 1),(5, 283, 1),
(5, 284, 1),(5, 37, 1),(5, 285, 1),(5, 286, 1),(5, 287, 1),(5, 288, 1),(5, 289, 1),(5, 20, 1),(5, 290, 1),(5, 291, 1),(5, 292, 2),
(5, 293, 1),(5, 294, 1),(5, 295, 1),(5, 296, 1),(5, 297, 1),(5, 298, 1),(5, 299, 1),(5, 300, 1),(5, 301, 1),(5, 302, 1),(5, 303, 1),
(5, 304, 1),(5, 305, 1),(5, 306, 1),(5, 307, 1),(5, 308, 1),(5, 309, 1),(5, 310, 1),(5, 311, 2),(5, 312, 1),(5, 313, 1),(5, 314, 1),
(5, 315, 1),(5, 316, 1),(5, 317, 1),(5, 318, 9),(5, 319, 1),(5, 320, 1),(5, 321, 1),(5, 322, 1),(5, 323, 1),(5, 324, 1),(5, 325, 1),
(5, 326, 1),(5, 327, 1),(5, 63, 1),(5, 328, 1),(5, 329, 1),(5, 330, 1),(5, 331, 1),(5, 160, 2),(5, 332, 1),(5, 333, 1),(5, 334, 1),
(5, 335, 1),(5, 336, 1),(5, 337, 1),(5, 338, 1),(5, 339, 1),(5, 340, 1),(5, 341, 1),(5, 342, 1),(5, 343, 1),(5, 344, 1),(5, 345, 1),
(5, 346, 1),(5, 347, 1),(5, 348, 1),(5, 349, 1),(5, 350, 3),(5, 66, 3),(5, 67, 3),(5, 68, 8),(5, 351, 4),(5, 352, 4),(5, 353, 4),
(5, 354, 4),(5, 355, 8),(5, 356, 8),(5, 357, 4),(5, 358, 4),(5, 359, 4),(5, 360, 4),(5, 361, 14),(5, 362, 3),(5, 363, 1),(5, 206, 2),
(5, 364, 1),(5, 101, 2),(5, 365, 1),(5, 366, 1),(5, 367, 1),(5, 368, 1),(5, 369, 1),(5, 370, 1),(5, 371, 1),(5, 372, 2),(5, 373, 3),
(5, 374, 1),(5, 375, 1),(5, 376, 1),(5, 377, 2),(5, 378, 2),(5, 379, 1),(5, 123, 2),(5, 83, 1),(5, 130, 2),(5, 380, 1),(5, 381, 1),
(5, 382, 1),(5, 383, 1),(5, 384, 1),(5, 112, 1),(5, 385, 1),(5, 386, 1),(5, 387, 1),(5, 117, 1),(5, 388, 1),(5, 389, 1),(5, 390, 1),
(5, 391, 1),(5, 392, 1),(5, 393, 1),(5, 394, 1),(5, 395, 1),(5, 396, 5),(5, 397, 1),(5, 398, 1),(5, 399, 1),(5, 400, 2),(5, 401, 1),
(5, 402, 1),(5, 403, 1),(5, 404, 1),(5, 405, 1),(5, 107, 1),(5, 406, 1),(5, 407, 1),(5, 408, 1),(5, 409, 1),(5, 410, 1),(5, 411, 1),
(5, 412, 2),(5, 413, 1),(5, 414, 1),(5, 415, 1),(5, 416, 1),(5, 417, 1),(5, 418, 1),(5, 419, 9),(5, 88, 2),(5, 420, 1),(5, 421, 1),
(5, 422, 1),(5, 423, 1),(5, 424, 1),(5, 425, 1),(5, 426, 1),(5, 427, 1),(5, 428, 1),(5, 429, 1),(5, 430, 1),(5, 431, 1),(5, 432, 1),
(5, 93, 2),(5, 433, 1),(5, 434, 1),(5, 435, 2),(5, 436, 1),(5, 437, 1),(5, 438, 1),(5, 439, 1),(5, 86, 1),(5, 440, 1),(5, 441, 1),
(5, 442, 1),(5, 443, 1),(5, 444, 1),(5, 445, 1),(5, 446, 1),(5, 447, 1),(5, 448, 1),(5, 449, 1),(5, 450, 1),(5, 451, 1),(5, 452, 1),
(5, 453, 1),(5, 454, 1),(5, 455, 1),(5, 456, 3),(5, 145, 7),(5, 146, 3),(5, 457, 4),(5, 147, 8),(5, 458, 4),(5, 459, 8),(5, 460, 8),
(5, 461, 4),(5, 462, 4),(6, 260, 9),(6, 463, 1),(6, 464, 1),(6, 465, 1),(6, 466, 1),(6, 467, 1),(6, 468, 1),(6, 469, 1),(6, 470, 1),
(6, 275, 1),(6, 471, 1),(6, 472, 1),(6, 473, 1),(6, 474, 1),(6, 475, 1),(6, 20, 1),(6, 476, 1),(6, 477, 1),(6, 478, 1),(6, 479, 1),
(6, 480, 1),(6, 481, 1),(6, 288, 1),(6, 482, 1),(6, 317, 1),(6, 483, 1),(6, 484, 1),(6, 485, 1),(6, 486, 1),(6, 487, 1),(6, 488, 1),
(6, 489, 1),(6, 490, 1),(6, 491, 1),(6, 492, 1),(6, 493, 1),(6, 494, 1),(6, 282, 1),(6, 495, 1),(6, 496, 1),(6, 165, 1),(6, 37, 1),
(6, 497, 1),(6, 498, 1),(6, 499, 1),(6, 350, 3),(6, 66, 7),(6, 67, 3),(6, 500, 4),(6, 361, 9),(6, 107, 1),(6, 501, 1),(6, 502, 1),
(6, 503, 1),(6, 504, 1),(6, 250, 1),(6, 505, 1),(6, 506, 1),(6, 507, 1),(6, 378, 1),(6, 508, 1),(6, 509, 1),(6, 510, 1),(6, 511, 1),
(6, 512, 1),(6, 513, 1),(6, 514, 1),(6, 515, 1),(6, 383, 1),(6, 516, 1),(6, 123, 1),(6, 426, 1),(6, 131, 1),(6, 396, 1),(6, 419, 1),
(6, 88, 1),(6, 517, 1),(6, 373, 1),(6, 518, 1),(6, 519, 1),(6, 93, 2),(6, 453, 1),(6, 520, 1),(6, 521, 1),(6, 522, 1),(6, 523, 1),
(6, 524, 1),(6, 525, 1),(6, 526, 1),(6, 86, 1),(6, 527, 1),(6, 528, 1),(6, 529, 1),(6, 530, 1),(6, 531, 1),(6, 532, 1),(6, 533, 1),
(6, 456, 3),(6, 145, 3),(6, 146, 3),(7, 1, 11),(7, 534, 12),(7, 535, 2),(7, 300, 2),(7, 536, 1),(7, 537, 2),(7, 295, 1),(7, 538, 1),
(7, 539, 2),(7, 334, 2),(7, 540, 1),(7, 284, 1),(7, 541, 1),(7, 542, 1),(7, 543, 1),(7, 544, 1),(7, 545, 1),(7, 546, 1),(7, 182, 1),
(7, 55, 1),(7, 547, 1),(7, 548, 1),(7, 549, 1),(7, 550, 1),(7, 498, 1),(7, 58, 1),(7, 551, 1),(7, 552, 1),(7, 553, 1),(7, 49, 4),
(7, 554, 1),(7, 555, 1),(7, 556, 1),(7, 557, 1),(7, 558, 1),(7, 559, 1),(7, 560, 1),(7, 561, 1),(7, 562, 1),(7, 563, 1),(7, 564, 1),
(7, 329, 1),(7, 565, 1),(7, 566, 1),(7, 567, 1),(7, 568, 1),(7, 569, 1),(7, 37, 4),(7, 570, 1),(7, 571, 1),(7, 165, 1),(7, 572, 1),
(7, 573, 1),(7, 36, 1),(7, 574, 1),(7, 575, 1),(7, 576, 1),(7, 577, 1),(7, 578, 1),(7, 579, 1),(7, 580, 1),(7, 581, 1),(7, 582, 1),
(7, 583, 1),(7, 584, 1),(7, 585, 1),(7, 586, 1),(7, 587, 1),(7, 63, 1),(7, 588, 1),(7, 589, 1),(7, 590, 1),(7, 164, 1),(7, 591, 1),
(7, 307, 1),(7, 592, 2),(7, 593, 1),(7, 497, 1),(7, 594, 1),(7, 595, 1),(7, 596, 1),(7, 597, 1),(7, 598, 1),(7, 475, 1),(7, 599, 1),
(7, 600, 1),(7, 601, 1),(7, 602, 1),(7, 603, 1),(7, 65, 3),(7, 604, 2),(7, 69, 2),(7, 605, 2),(7, 79, 2),(7, 606, 2),(7, 607, 2),
(7, 608, 2),(7, 80, 11),(7, 609, 11),(7, 610, 1),(7, 404, 2),(7, 611, 2),(7, 398, 1),(7, 612, 1),(7, 613, 1),(7, 614, 1),(7, 615, 1),
(7, 616, 1),(7, 231, 1),(7, 438, 1),(7, 617, 1),(7, 618, 1),(7, 619, 1),(7, 620, 2),(7, 621, 1),(7, 622, 1),(7, 623, 2),(7, 624, 6),
(7, 625, 3),(7, 626, 1),(7, 84, 1),(7, 532, 1),(7, 627, 1),(7, 628, 1),(7, 629, 2),(7, 630, 1),(7, 631, 2),(7, 632, 1),(7, 633, 1),
(7, 130, 2),(7, 634, 1),(7, 635, 1),(7, 636, 1),(7, 637, 1),(7, 638, 1),(7, 639, 1),(7, 640, 1),(7, 641, 1),(7, 642, 1),(7, 643, 1),
(7, 644, 1),(7, 645, 1),(7, 646, 1),(7, 647, 1),(7, 648, 1),(7, 649, 1),(7, 650, 1),(7, 651, 1),(7, 652, 1),(7, 653, 1),(7, 117, 2),
(7, 135, 1),(7, 449, 1),(7, 654, 1),(7, 655, 1),(7, 656, 1),(7, 657, 1),(7, 658, 1),(7, 397, 1),(7, 659, 1),(7, 107, 2),(7, 443, 1),
(7, 660, 1),(7, 661, 1),(7, 662, 2),(7, 663, 1),(7, 664, 1),(7, 665, 1),(7, 666, 1),(7, 667, 1),(7, 668, 1),(7, 669, 1),(7, 670, 1),
(7, 671, 1),(7, 123, 2),(7, 672, 1),(7, 673, 1),(7, 674, 1),(7, 241, 1),(7, 675, 1),(7, 676, 1),(7, 677, 1),(7, 678, 1),(7, 679, 1),
(7, 257, 1),(7, 680, 1),(7, 681, 1),(7, 682, 1),(7, 373, 1),(7, 683, 1),(7, 684, 1),(7, 685, 1),(7, 686, 1),(7, 687, 1),(7, 688, 1),
(7, 689, 1),(7, 509, 1),(7, 690, 1),(7, 691, 1),(7, 692, 1),(7, 693, 1),(7, 694, 1),(7, 695, 1),(7, 440, 1),(7, 144, 3),(7, 696, 4),
(7, 697, 2),(7, 148, 2),(7, 698, 2),(7, 158, 2),(7, 699, 2),(7, 700, 2),(7, 701, 2),(8, 702, 6),(8, 703, 6),(8, 704, 6),(8, 705, 6),
(8, 706, 6),(8, 1, 6),(8, 2, 6),(8, 707, 6),(8, 708, 6),(8, 709, 2),(8, 710, 2),(8, 711, 3),(8, 712, 6),(8, 713, 6),(8, 714, 8),
(8, 715, 6),(8, 716, 6),(8, 151, 6),(8, 717, 6),(8, 718, 1),(8, 719, 1),(8, 720, 1),(8, 721, 1),(8, 722, 1),(8, 723, 1),(8, 724, 1),
(8, 725, 1),(8, 726, 1),(8, 727, 1),(8, 728, 1),(8, 729, 1),(8, 730, 1),(8, 107, 1),(8, 443, 1),(8, 731, 1),(8, 117, 3),(8, 80, 1),
(8, 732, 1),(8, 123, 1),(8, 672, 1),(8, 628, 1),(8, 733, 1),(8, 734, 1),(8, 505, 1),(8, 735, 2),(8, 736, 1),(8, 737, 1),(8, 738, 1),
(8, 739, 1),(8, 690, 1),(8, 740, 1),(8, 741, 1),(8, 742, 3),(9, 743, 11),(9, 744, 9),(9, 745, 7),(9, 596, 8),(9, 1, 8),(9, 746, 8),
(9, 747, 1),(9, 315, 4),(9, 40, 1),(9, 748, 1),(9, 572, 1),(9, 749, 1),(9, 750, 1),(9, 751, 1),(9, 752, 1),(9, 753, 2),(9, 754, 1),
(9, 755, 1),(9, 756, 2),(9, 757, 3),(9, 758, 1),(9, 759, 1),(9, 760, 1),(9, 761, 1),(9, 762, 1),(9, 763, 3),(9, 764, 1),(9, 765, 1),
(9, 766, 1),(9, 767, 1),(9, 3, 3),(9, 768, 1),(9, 769, 1),(9, 770, 1),(9, 771, 1),(9, 37, 2),(9, 586, 1),(9, 772, 1),(9, 161, 2),
(9, 773, 1),(9, 774, 1),(9, 775, 2),(9, 303, 1),(9, 591, 1),(9, 79, 1),(9, 776, 1),(9, 777, 1),(9, 778, 1),(9, 779, 1),(9, 551, 1),
(9, 780, 1),(9, 781, 1),(9, 782, 1),(9, 783, 1),(9, 784, 1),(9, 785, 1),(9, 786, 1),(9, 787, 1),(9, 4, 1),(9, 788, 2),(9, 49, 5),
(9, 789, 1),(9, 790, 1),(9, 791, 1),(9, 792, 1),(9, 793, 1),(9, 794, 1),(9, 597, 4),(9, 795, 1),(9, 796, 1),(9, 797, 1),(9, 798, 1),
(9, 799, 1),(9, 800, 1),(9, 801, 1),(9, 802, 1),(9, 321, 1),(9, 803, 1),(9, 804, 1),(9, 805, 1),(9, 806, 1),(9, 807, 1),(9, 808, 1),
(9, 809, 1),(9, 810, 1),(9, 811, 1),(9, 812, 1),(9, 813, 1),(9, 814, 1),(9, 815, 1),(9, 816, 1),(9, 817, 1),(9, 818, 1),(9, 819, 1),
(9, 820, 1),(9, 821, 2),(9, 822, 2),(9, 823, 1),(9, 824, 3),(9, 825, 3),(9, 826, 2),(9, 827, 2),(9, 828, 2),(9, 829, 1),(9, 830, 1),
(9, 831, 1),(9, 832, 1),(9, 833, 1),(9, 834, 1),(9, 835, 2),(9, 836, 1),(9, 837, 2),(9, 838, 1),(9, 839, 1),(9, 840, 2),(9, 841, 1),
(9, 842, 1),(9, 843, 1),(9, 844, 1),(9, 845, 1),(9, 846, 1),(9, 22, 1),(9, 847, 1),(9, 848, 1),(9, 849, 4),(9, 850, 2),(9, 851, 1),
(9, 852, 1),(9, 853, 1),(9, 20, 2),(9, 854, 1),(9, 66, 2),(9, 855, 1),(9, 856, 1),(9, 857, 1),(9, 858, 1),(9, 859, 1),(9, 860, 1),
(9, 861, 1),(9, 862, 1),(9, 863, 1),(9, 864, 1),(9, 865, 2),(9, 866, 1),(9, 867, 1),(9, 868, 1),(9, 869, 1),(9, 870, 1),(9, 871, 1),
(9, 872, 1),(9, 873, 1),(9, 874, 1),(9, 875, 1),(9, 876, 1),(9, 877, 1),(9, 711, 3),(9, 878, 3),(9, 688, 17),(9, 879, 13),(9, 880, 13),
(9, 881, 11),(9, 882, 11),(9, 883, 1),(9, 884, 2),(9, 885, 1),(9, 886, 1),(9, 887, 5),(9, 88, 2),(9, 888, 1),(9, 889, 1),(9, 890, 1),
(9, 158, 1),(9, 456, 1),(9, 891, 1),(9, 892, 1),(9, 656, 1),(9, 893, 1),(9, 894, 1),(9, 895, 1),(9, 896, 1),(9, 897, 1),(9, 898, 1),
(9, 899, 1),(9, 900, 2),(9, 901, 1),(9, 902, 1),(9, 903, 1),(9, 904, 1),(9, 905, 1),(9, 906, 3),(9, 907, 2),(9, 908, 1),(9, 101, 1),
(9, 909, 2),(9, 910, 1),(9, 728, 1),(9, 911, 4),(9, 912, 1),(9, 913, 1),(9, 914, 1),(9, 915, 1),(9, 83, 1),(9, 916, 1),(9, 917, 1),
(9, 689, 7),(9, 918, 3),(9, 919, 1),(9, 920, 1),(9, 435, 1),(9, 921, 1),(9, 107, 7),(9, 922, 1),(9, 923, 1),(9, 117, 2),(9, 135, 2),
(9, 924, 1),(9, 93, 7),(9, 925, 1),(9, 926, 1),(9, 664, 1),(9, 927, 1),(9, 677, 1),(9, 928, 1),(9, 929, 1),(9, 930, 1),(9, 931, 1),
(9, 932, 1),(9, 130, 3),(9, 933, 2),(9, 934, 2),(9, 935, 2),(9, 936, 1),(9, 937, 2),(9, 938, 1),(9, 939, 1),(9, 940, 1),(9, 941, 1),
(9, 242, 1),(9, 942, 2),(9, 943, 1),(9, 944, 1),(9, 945, 1),(9, 373, 1),(9, 372, 1),(9, 946, 4),(9, 947, 1),(9, 948, 1),(9, 949, 1),
(9, 950, 1),(9, 951, 1),(9, 396, 1),(9, 952, 1),(9, 953, 1),(9, 954, 3),(9, 955, 3),(9, 956, 2),(9, 957, 1),(9, 958, 1),(9, 959, 1),
(9, 960, 1),(9, 961, 1),(9, 962, 1),(9, 963, 1),(9, 964, 1),(9, 965, 1),(9, 966, 1),(9, 967, 1),(9, 222, 1),(9, 426, 2),(9, 968, 1),
(9, 969, 1),(9, 970, 1),(9, 971, 1),(9, 972, 1),(9, 973, 1),(9, 974, 1),(9, 253, 1),(9, 417, 1),(9, 975, 1),(9, 976, 1),(9, 977, 1),
(9, 978, 1),(9, 979, 1),(9, 980, 1),(9, 981, 1),(9, 982, 1),(9, 983, 1),(9, 984, 1),(9, 985, 1),(9, 986, 1),(9, 987, 1),(9, 988, 1),
(9, 989, 1),(9, 990, 1),(9, 991, 1),(9, 992, 1),(9, 993, 1),(9, 994, 1),(9, 995, 2),(9, 996, 1),(9, 997, 2),(9, 998, 1),(9, 999, 1),
(9, 378, 2),(9, 1000, 1),(9, 1001, 1),(9, 1002, 2),(9, 443, 1),(9, 1003, 1),(9, 1004, 1),(9, 1005, 1),(9, 1006, 1),(9, 718, 3),
(9, 1007, 2),(9, 1008, 1),(9, 1009, 1),(9, 505, 1),(9, 1010, 1),(9, 1011, 1),(9, 1012, 1),(9, 1013, 1),(9, 1014, 2),(9, 1015, 1),
(9, 1016, 2),(9, 1017, 1),(9, 1018, 1),(9, 635, 1),(9, 1019, 1),(9, 1020, 1),(9, 1021, 1),(9, 1022, 1),(9, 1023, 1),(9, 684, 1),
(9, 1024, 1),(9, 1025, 1),(9, 1026, 1),(9, 1027, 1),(9, 1028, 1),(9, 1029, 1),(9, 686, 1),(9, 687, 1),(9, 1030, 1),(9, 1031, 1),
(9, 1032, 1),(9, 742, 3),(9, 1033, 3),(9, 1034, 4),(9, 1035, 4);


INSERT INTO `PREFIX_search_word` (`id_word`, `id_lang`, `word`) VALUES (1, 1, 'ipod'),(2, 1, 'nano'),(3, 1, 'design'),(4, 1, 'features'),
(5, 1, '16gb'),(6, 1, 'rocks'),(7, 1, 'like'),(8, 1, 'never'),(9, 1, 'before'),(10, 1, 'curved'),(11, 1, 'ahead'),(12, 1, 'curve'),
(13, 1, 'those'),(14, 1, 'about'),(15, 1, 'rock,'),(16, 1, 'give'),(17, 1, 'nine'),(18, 1, 'amazing'),(19, 1, 'colors'),(20, 1, 'that'),
(21, 1, 'only'),(22, 1, 'part'),(23, 1, 'story'),(24, 1, 'feel'),(25, 1, 'curved,'),(26, 1, 'allaluminum'),(27, 1, 'glass'),(28, 1, 'want'),
(29, 1, 'down'),(30, 1, 'great'),(31, 1, 'looks'),(32, 1, 'brains,'),(33, 1, 'genius'),(34, 1, 'feature'),(35, 1, 'turns'),(36, 1, 'into'),
(37, 1, 'your'),(38, 1, 'highly'),(39, 1, 'intelligent,'),(40, 1, 'personal'),(41, 1, 'creates'),(42, 1, 'playlists'),(43, 1, 'finding'),
(44, 1, 'songs'),(45, 1, 'library'),(46, 1, 'together'),(47, 1, 'made'),(48, 1, 'move'),(49, 1, 'with'),(50, 1, 'moves'),(51, 1, 'accelerometer'),
(52, 1, 'comes'),(53, 1, 'shake'),(54, 1, 'shuffle'),(55, 1, 'music'),(56, 1, 'turn'),(57, 1, 'sideways'),(58, 1, 'view'),(59, 1, 'cover'),
(60, 1, 'flow'),(61, 1, 'play'),(62, 1, 'games'),(63, 1, 'designed'),(64, 1, 'mind'),(65, 1, 'ipods'),(66, 1, 'apple'),(67, 1, 'computer,'),
(68, 1, 'metal'),(69, 1, '16go'),(70, 1, 'yellow'),(71, 1, 'blue'),(72, 1, 'black'),(73, 1, 'orange'),(74, 1, 'pink'),(75, 1, 'green'),
(76, 1, 'purple'),(77, 1, 'grams'),(78, 1, 'minijack'),(79, 1, 'stereo'),(80, 2, 'ipod'),(81, 2, 'nano'),(82, 2, 'nouveau'),(83, 2, 'design'),
(84, 2, 'nouvelles'),(85, 2, 'fonctionnalités'),(86, 2, 'désormais'),(87, 2, 'nano,'),(88, 2, 'plus'),(89, 2, 'rock'),(90, 2, 'jamais'),
(91, 2, 'courbes'),(92, 2, 'avantageuses'),(93, 2, 'pour'),(94, 2, 'amateurs'),(95, 2, 'sensations,'),(96, 2, 'voici'),(97, 2, 'neuf'),
(98, 2, 'nouveaux'),(99, 2, 'coloris'),(100, 2, 'n''est'),(101, 2, 'tout'),(102, 2, 'faites'),(103, 2, 'l''expérience'),(104, 2, 'elliptique'),
(105, 2, 'aluminum'),(106, 2, 'verre'),(107, 2, 'vous'),(108, 2, 'voudrez'),(109, 2, 'lâcher'),(110, 2, 'beau'),(111, 2, 'intelligent'),
(112, 2, 'nouvelle'),(113, 2, 'fonctionnalité'),(114, 2, 'genius'),(115, 2, 'fait'),(116, 2, 'd''ipod'),(117, 2, 'votre'),(118, 2, 'personnel'),
(119, 2, 'crée'),(120, 2, 'listes'),(121, 2, 'lecture'),(122, 2, 'recherchant'),(123, 2, 'dans'),(124, 2, 'bibliothèque'),(125, 2, 'chansons'),
(126, 2, 'vont'),(127, 2, 'bien'),(128, 2, 'ensemble'),(129, 2, 'bouger'),(130, 2, 'avec'),(131, 2, 'équipé'),(132, 2, 'l''accéléromètre'),
(133, 2, 'secouezle'),(134, 2, 'mélanger'),(135, 2, 'musique'),(136, 2, 'basculezle'),(137, 2, 'afficher'),(138, 2, 'cover'),(139, 2, 'flow'),
(140, 2, 'découvrez'),(141, 2, 'jeux'),(142, 2, 'adaptés'),(143, 2, 'mouvements'),(144, 2, 'ipods'),(145, 2, 'apple'),(146, 2, 'computer,'),
(147, 2, 'metal'),(148, 2, '16go'),(149, 2, 'jaune'),(150, 2, 'bleu'),(151, 2, 'noir'),(152, 2, 'orange'),(153, 2, 'rose'),(154, 2, 'vert'),
(155, 2, 'violet'),(156, 2, 'grammes'),(157, 2, 'minijack'),(158, 2, 'stéréo'),(159, 1, 'shuffle,'),(160, 1, 'world'),(161, 1, 'most'),
(162, 1, 'wearable'),(163, 1, 'player,'),(164, 1, 'clips'),(165, 1, 'more'),(166, 1, 'vibrant'),(167, 1, 'blue,'),(168, 1, 'green,'),
(169, 1, 'pink,'),(170, 1, 'instant'),(171, 1, 'attachment'),(172, 1, 'wear'),(173, 1, 'sleeve'),(174, 1, 'belt'),(175, 1, 'shorts'),
(176, 1, 'badge'),(177, 1, 'musical'),(178, 1, 'devotion'),(179, 1, 'new,'),(180, 1, 'brilliant'),(181, 1, 'feed'),(182, 1, 'itunes'),
(183, 1, 'entertainment'),(184, 1, 'superstore'),(185, 1, 'ultraorganized'),(186, 1, 'collection'),(187, 1, 'jukebox'),(188, 1, 'load'),
(189, 1, 'click'),(190, 1, 'beauty'),(191, 1, 'beat'),(192, 1, 'intensely'),(193, 1, 'colorful'),(194, 1, 'anodized'),(195, 1, 'aluminum'),
(196, 1, 'complements'),(197, 1, 'simple'),(198, 1, 'red,'),(199, 1, 'original'),(200, 1, 'silver'),(201, 1, '(clip'),(202, 1, 'compris)'),
(203, 2, 'shuffle'),(204, 2, 'shuffle,'),(205, 2, 'baladeur'),(206, 2, 'portable'),(207, 2, 'monde,'),(208, 2, 'clippe'),(209, 2, 'maintenant'),
(210, 2, 'bleu,'),(211, 2, 'vert,'),(212, 2, 'rouge'),(213, 2, 'lien'),(214, 2, 'immédiat'),(215, 2, 'portez'),(217, 2, 'accrochées'),
(218, 2, 'manche,'),(219, 2, 'ceinture'),(220, 2, 'short'),(221, 2, 'arborez'),(222, 2, 'comme'),(223, 2, 'signe'),(224, 2, 'extérieur'),
(225, 2, 'passion'),(226, 2, 'existe'),(227, 2, 'quatre'),(228, 2, 'encore'),(229, 2, 'éclatants'),(230, 2, 'emplissez'),(231, 2, 'itunes'),
(232, 2, 'immense'),(233, 2, 'magasin'),(234, 2, 'dédié'),(235, 2, 'divertissement,'),(236, 2, 'collection'),(237, 2, 'musicale'),
(238, 2, 'parfaitement'),(239, 2, 'organisée'),(240, 2, 'jukebox'),(241, 2, 'pouvez'),(242, 2, 'seul'),(243, 2, 'clic'),(244, 2, 'remplir'),
(245, 2, 'technicolor'),(246, 2, 's''affiche'),(247, 2, 'intenses'),(248, 2, 'rehaussent'),(249, 2, 'épuré'),(250, 2, 'boîtier'),
(251, 2, 'aluminium'),(252, 2, 'anodisé'),(253, 2, 'choisissez'),(254, 2, 'parmi'),(255, 2, 'rose,'),(256, 2, 'l''argenté'),
(257, 2, 'd''origine'),(258, 2, '(clip'),(259, 2, 'compris)'),(260, 1, 'macbook'),(261, 1, 'ultrathin,'),(262, 1, 'ultraportable,'),
(263, 1, 'ultra'),(264, 1, 'unlike'),(265, 1, 'anything'),(266, 1, 'else'),(267, 1, 'lose'),(268, 1, 'inches'),(269, 1, 'pounds'),
(270, 1, 'overnight'),(271, 1, 'result'),(272, 1, 'rethinking'),(273, 1, 'conventions'),(274, 1, 'multiple'),(275, 1, 'wireless'),
(276, 1, 'innovations'),(277, 1, 'breakthrough'),(278, 1, 'air,'),(279, 1, 'mobile'),(280, 1, 'computing'),(281, 1, 'suddenly'),
(282, 1, 'standard'),(283, 1, 'nearly'),(284, 1, 'thin'),(285, 1, 'index'),(286, 1, 'finger'),(287, 1, 'practically'),(288, 1, 'every'),
(289, 1, 'detail'),(290, 1, 'could'),(291, 1, 'streamlined'),(292, 1, 'been'),(293, 1, 'still'),(294, 1, '133inch'),(295, 1, 'widescreen'),
(296, 1, 'display,'),(297, 1, 'fullsize'),(298, 1, 'keyboard,'),(299, 1, 'large'),(300, 1, 'multitouch'),(301, 1, 'trackpad'),
(302, 1, 'incomparably'),(303, 1, 'portable'),(304, 1, 'without'),(305, 1, 'usual'),(306, 1, 'ultraportable'),(307, 1, 'screen'),
(308, 1, 'keyboard'),(309, 1, 'compromisesthe'),(310, 1, 'incredible'),(311, 1, 'thinness'),(312, 1, 'numerous'),(313, 1, 'size'),
(314, 1, 'weightshaving'),(315, 1, 'from'),(316, 1, 'slimmer'),(317, 1, 'hard'),(318, 1, 'drive'),(319, 1, 'strategically'),
(320, 1, 'hidden'),(321, 1, 'ports'),(322, 1, 'lowerprofile'),(323, 1, 'battery,'),(324, 1, 'everything'),(325, 1, 'considered'),
(326, 1, 'reconsidered'),(327, 1, 'mindmacbook'),(328, 1, 'engineered'),(329, 1, 'take'),(330, 1, 'full'),(331, 1, 'advantage'),
(332, 1, 'which'),(333, 1, '80211n'),(334, 1, 'wifi'),(335, 1, 'fast'),(336, 1, 'available,'),(337, 1, 'people'),(338, 1, 'truly'),
(339, 1, 'living'),(340, 1, 'untethered'),(341, 1, 'buying'),(342, 1, 'renting'),(343, 1, 'movies'),(344, 1, 'online,'),
(345, 1, 'downloading'),(346, 1, 'software,'),(347, 1, 'sharing'),(348, 1, 'storing'),(349, 1, 'files'),(350, 1, 'laptops'),
(351, 1, '80gb'),(352, 1, 'parallel'),(353, 1, '4200'),(354, 1, '160ghz'),(355, 1, 'intel'),(356, 1, 'core'),(357, 1, 'optional'),
(358, 1, '64gb'),(359, 1, 'solidstate'),(360, 1, '180ghz'),(361, 2, 'macbook'),(362, 2, 'ultra'),(363, 2, 'fin,'),(364, 2, 'différent'),
(365, 2, 'reste'),(366, 2, 'mais'),(367, 2, 'perd'),(368, 2, 'kilos'),(369, 2, 'centimètres'),(370, 2, 'nuit'),(371, 2, 'c''est'),
(372, 2, 'résultat'),(373, 2, 'd''une'),(374, 2, 'réinvention'),(375, 2, 'normes'),(376, 2, 'multitude'),(377, 2, 'd''innovations'),
(378, 2, 'sans'),(379, 2, 'révolution'),(380, 2, 'air,'),(381, 2, 'l''informatique'),(382, 2, 'mobile'),(383, 2, 'prend'),(384, 2, 'soudain'),
(385, 2, 'dimension'),(386, 2, 'presque'),(387, 2, 'aussi'),(388, 2, 'index'),(389, 2, 'pratiquement'),(390, 2, 'pouvait'),(391, 2, 'être'),
(392, 2, 'simplifié'),(393, 2, 'n''en'),(394, 2, 'dispose'),(395, 2, 'moins'),(396, 2, 'd''un'),(397, 2, 'écran'),(398, 2, 'panoramique'),
(399, 2, 'pouces,'),(400, 2, 'clavier'),(401, 2, 'complet'),(402, 2, 'vaste'),(403, 2, 'trackpad'),(404, 2, 'multitouch'),
(405, 2, 'incomparablemen'),(406, 2, 'évite'),(407, 2, 'compromis'),(408, 2, 'habituels'),(409, 2, 'matière'),(410, 2, 'd''écran'),
(411, 2, 'ultraportablesl'),(412, 2, 'finesse'),(413, 2, 'grand'),(414, 2, 'nombre'),(415, 2, 'termes'),(416, 2, 'réduction'),
(417, 2, 'taille'),(418, 2, 'poids'),(419, 2, 'disque'),(420, 2, 'ports'),(421, 2, 'habilement'),(422, 2, 'dissimulés'),
(423, 2, 'passant'),(424, 2, 'batterie'),(425, 2, 'plate,'),(426, 2, 'chaque'),(427, 2, 'détail'),(428, 2, 'considéré'),
(429, 2, 'reconsidéré'),(430, 2, 'l''espritmacbook'),(431, 2, 'conçu'),(432, 2, 'élaboré'),(433, 2, 'profiter'),(434, 2, 'pleinement'),(435, 2, 'monde'),(436, 2, 'lequel'),(437, 2, 'norme'),(438, 2, 'wifi'),(439, 2, '80211n'),(440, 2, 'rapide'),(441, 2, 'accessible'),(442, 2, 'qu''elle'),(443, 2, 'permet'),(444, 2, 'véritablement'),(445, 2, 'libérer'),(446, 2, 'toute'),(447, 2, 'attache'),(448, 2, 'acheter'),(449, 2, 'vidéos'),(450, 2, 'ligne,'),(451, 2, 'télécharger'),(452, 2, 'logicééééiels,'),(453, 2, 'stocker'),(454, 2, 'partager'),(455, 2, 'fichiers'),(456, 2, 'portables'),(457, 2, 'macbookair'),(458, 2, 'pata'),(459, 2, 'intel'),(460, 2, 'core'),(461, 2, '(solidstate'),(462, 2, 'drive)'),(463, 1, 'makes'),(464, 1, 'easy'),(465, 1, 'road'),(466, 1, 'thanks'),(467, 1, 'tough'),(468, 1, 'polycarbonate'),(469, 1, 'case,'),(470, 1, 'builtin'),(471, 1, 'technologies,'),(472, 1, 'innovative'),(473, 1, 'magsafe'),(474, 1, 'power'),(475, 1, 'adapter'),(476, 1, 'releases'),(477, 1, 'automatically'),(478, 1, 'someone'),(479, 1, 'accidentally'),(480, 1, 'trips'),(481, 1, 'cord'),(482, 1, 'larger'),(483, 1, 'drive,'),(484, 1, '250gb,'),(485, 1, 'store'),(486, 1, 'growing'),(487, 1, 'media'),(488, 1, 'collections'),(489, 1, 'valuable'),(490, 1, 'datathe'),(491, 1, '24ghz'),(492, 1, 'models'),(493, 1, 'include'),(494, 1, 'memory'),(495, 1, 'perfect'),(496, 1, 'running'),(497, 1, 'favorite'),(498, 1, 'applications'),(499, 1, 'smoothly'),(500, 1, 'superdrive'),(501, 2, 'offre'),(502, 2, 'liberté'),(503, 2, 'mouvement'),(504, 2, 'grâce'),(505, 2, 'résistant'),(506, 2, 'polycarbonate,'),(507, 2, 'technologies'),(508, 2, 'intégrées'),(509, 2, 'adaptateur'),(510, 2, 'secteur'),(511, 2, 'magsafe'),(512, 2, 'novateur'),(513, 2, 'déconnecte'),(514, 2, 'automatiquement'),(515, 2, 'quelqu''un'),(516, 2, 'pieds'),(517, 2, 'spacieux,'),(518, 2, 'capacité'),(519, 2, 'atteignant'),(520, 2, 'collections'),(521, 2, 'multimédia'),(522, 2, 'expansion'),(523, 2, 'données'),(524, 2, 'précieusesle'),(525, 2, 'modèle'),(526, 2, 'intègre'),(527, 2, 'mémoire'),(528, 2, 'standard'),(529, 2, 'l''idéal'),(530, 2, 'exécuter'),(531, 2, 'souplesse'),(532, 2, 'applications'),(533, 2, 'préférées'),(534, 1, 'touch'),(535, 1, 'revolutionary'),(536, 1, 'interface'),(537, 1, '35inch'),(538, 1, 'color'),(539, 1, 'display'),(540, 1, '(80211b'),(541, 1, 'safari,'),(542, 1, 'youtube,'),(543, 1, 'mail,'),(544, 1, 'stocks,'),(545, 1, 'weather,'),(546, 1, 'notes,'),(547, 1, 'store,'),(548, 1, 'maps'),(549, 1, 'five'),(550, 1, 'handson'),(551, 1, 'rich'),(552, 1, 'html'),(553, 1, 'email'),(554, 1, 'photos'),(555, 1, 'well'),(556, 1, 'pdf,'),(557, 1, 'word,'),(558, 1, 'excel'),(559, 1, 'attachments'),(560, 1, 'maps,'),(561, 1, 'directions,'),(562, 1, 'realtime'),(563, 1, 'traffic'),(564, 1, 'information'),(565, 1, 'notes'),(566, 1, 'read'),(567, 1, 'stock'),(568, 1, 'weather'),(569, 1, 'reports'),(570, 1, 'music,'),(571, 1, 'movies,'),(572, 1, 'technology'),(573, 1, 'built'),(574, 1, 'gorgeous'),(575, 1, 'lets'),(576, 1, 'pinch,'),(577, 1, 'zoom,'),(578, 1, 'scroll,'),(579, 1, 'flick'),(580, 1, 'fingers'),(581, 1, 'internet'),(582, 1, 'pocket'),(583, 1, 'safari'),(584, 1, 'browser,'),(585, 1, 'websites'),(586, 1, 'they'),(587, 1, 'were'),(588, 1, 'seen'),(589, 1, 'zoom'),(590, 1, 'tap2'),(591, 1, 'home'),(592, 1, 'quick'),(593, 1, 'access'),(594, 1, 'sites'),(595, 1, 'what'),(596, 1, 'earphones'),(597, 1, 'cable'),(598, 1, 'dock'),(599, 1, 'polishing'),(600, 1, 'cloth'),(601, 1, 'stand'),(602, 1, 'start'),(603, 1, 'guide'),(604, 1, '32go'),(605, 1, 'jack'),(606, 1, '120g'),(607, 1, '70mm'),(608, 1, '110mm'),(609, 2, 'touch'),(610, 2, 'interface'),(611, 2, 'révolutionnaire'),(612, 2, 'couleur'),(613, 2, 'pouceswifi'),(614, 2, '(80211b'),(615, 2, 'd''épaisseursafa'),(616, 2, 'youtube,'),(617, 2, 'music'),(618, 2, 'store,'),(619, 2, 'courrier,'),(620, 2, 'cartes,'),(621, 2, 'bourse,'),(622, 2, 'météo,'),(623, 2, 'notes'),(624, 2, 'titre'),(625, 2, 'paragraphe'),(626, 2, 'cinq'),(627, 2, 'sous'),(628, 2, 'main'),(629, 2, 'consultez'),(630, 2, 'emails'),(631, 2, 'format'),(632, 2, 'html'),(633, 2, 'enrichi,'),(634, 2, 'photos'),(635, 2, 'pieces'),(636, 2, 'jointes'),(637, 2, 'pdf,'),(638, 2, 'word'),(639, 2, 'excel'),(640, 2, 'obtenez'),(641, 2, 'itinéraires'),(642, 2, 'informations'),(643, 2, 'l''état'),(644, 2, 'circulation'),(645, 2, 'temps'),(646, 2, 'réel'),(647, 2, 'rédigez'),(648, 2, 'cours'),(649, 2, 'bourse'),(650, 2, 'bulletins'),(651, 2, 'météo'),(652, 2, 'touchez'),(653, 2, 'doigt'),(654, 2, 'entre'),(655, 2, 'autres'),(656, 2, 'technologie'),(657, 2, 'intégrée'),(658, 2, 'superbe'),(659, 2, 'pouces'),(660, 2, 'd''effectuer'),(661, 2, 'zooms'),(662, 2, 'avant'),(663, 2, 'arrière,'),(664, 2, 'faire'),(665, 2, 'défiler'),(666, 2, 'feuilleter'),(667, 2, 'pages'),(668, 2, 'l''aide'),(669, 2, 'seuls'),(670, 2, 'doigts'),(671, 2, 'internet'),(672, 2, 'poche'),(673, 2, 'navigateur'),(674, 2, 'safari,'),(675, 2, 'consulter'),(676, 2, 'sites'),(677, 2, 'leur'),(678, 2, 'mise'),(679, 2, 'page'),(680, 2, 'effectuer'),(681, 2, 'zoom'),(682, 2, 'arrière'),(683, 2, 'simple'),(684, 2, 'pression'),(685, 2, 'l''écran'),(686, 2, 'contenu'),(687, 2, 'coffret'),(688, 2, 'écouteurs'),(689, 2, 'câble'),(690, 2, 'dock'),(691, 2, 'chiffon'),(692, 2, 'nettoyage'),(693, 2, 'support'),(694, 2, 'guide'),(695, 2, 'démarrage'),(696, 2, 'tacticle'),(697, 2, '32go'),(698, 2, 'jack'),(699, 2, '120g'),(700, 2, '70mm'),(701, 2, '110mm'),(702, 1, 'housse'),(703, 1, 'portefeuille'),(704, 1, 'cuir'),(705, 1, 'belkin'),(706, 1, 'pour'),(707, 1, 'noir'),(708, 1, 'chocolat'),(709, 1, 'lorem'),(710, 1, 'ipsum'),(711, 1, 'accessories'),(712, 2, 'housse'),(713, 2, 'portefeuille'),(714, 2, 'cuir'),(715, 2, '(ipod'),(716, 2, 'nano)'),(717, 2, 'chocolat'),(718, 2, 'étui'),(719, 2, 'tendance'),(720, 2, 'assure'),(721, 2, 'protection'),(722, 2, 'complète'),(723, 2, 'contre'),(724, 2, 'éraflures'),(725, 2, 'petits'),(726, 2, 'aléas'),(727, 2, 'quotidienne'),(728, 2, 'conception'),(729, 2, 'élégante'),(730, 2, 'compacte'),(731, 2, 'glisser'),(732, 2, 'directement'),(733, 2, 'caractéristique'),(734, 2, 'doux'),(735, 2, 'accès'),(736, 2, 'bouton'),(737, 2, 'hold'),(738, 2, 'fermeture'),(739, 2, 'magnétique'),(740, 2, 'connector'),(741, 2, 'protègeécran'),(742, 2, 'accessoires'),(743, 1, 'shure'),(744, 1, 'se210'),(745, 1, 'soundisolating'),(746, 1, 'iphone'),(747, 1, 'evolved'),(748, 1, 'monitor'),(749, 1, 'roadtested'),(750, 1, 'musicians'),(751, 1, 'perfected'),(752, 1, 'engineers,'),(753, 1, 'lightweight'),(754, 1, 'stylish'),(755, 1, 'delivers'),(756, 1, 'fullrange'),(757, 1, 'audio'),(758, 1, 'that''s'),(759, 1, 'free'),(760, 1, 'outside'),(761, 1, 'noise'),(762, 1, 'using'),(763, 1, 'hidefinition'),(764, 1, 'microspeakers'),(765, 1, 'deliver'),(766, 1, 'audio,'),(767, 1, 'ergonomic'),(768, 1, 'ideal'),(769, 1, 'premium'),(770, 1, 'onthego'),(771, 1, 'listening'),(772, 1, 'offer'),(773, 1, 'accurate'),(774, 1, 'reproduction'),(775, 1, 'both'),(776, 1, 'sourcesfor'),(777, 1, 'ultimate'),(778, 1, 'precision'),(779, 1, 'highs'),(780, 1, 'addition,'),(781, 1, 'flexible'),(782, 1, 'allows'),(783, 1, 'choose'),(784, 1, 'comfortable'),(785, 1, 'variety'),(786, 1, 'wearing'),(787, 1, 'positions'),(788, 1, 'microspeaker'),(789, 1, 'single'),(790, 1, 'balanced'),(791, 1, 'armature'),(792, 1, 'driver'),(793, 1, 'detachable,'),(794, 1, 'modular'),(795, 1, 'make'),(796, 1, 'longer'),(797, 1, 'shorter'),(798, 1, 'depending'),(799, 1, 'activity'),(800, 1, 'connector'),(801, 1, 'compatible'),(802, 1, 'earphone'),(803, 1, 'specifications'),(804, 1, 'speaker'),(805, 1, 'type'),(806, 1, 'frequency'),(807, 1, 'range'),(808, 1, '25hz185khz'),(809, 1, 'impedance'),(810, 1, '(1khz)'),(811, 1, 'ohms'),(812, 1, 'sensitivity'),(813, 1, '(1mw)'),(814, 1, 'length'),(815, 1, '(with'),(816, 1, 'extension)'),(817, 1, '(540'),(818, 1, '1371'),(819, 1, 'extension'),(820, 1, '(360'),(821, 1, 'three'),(822, 1, 'pairs'),(823, 1, 'foam'),(824, 1, 'earpiece'),(825, 1, 'sleeves'),(826, 1, '(small,'),(827, 1, 'medium,'),(828, 1, 'large)'),(829, 1, 'soft'),(830, 1, 'flex'),(831, 1, 'pair'),(832, 1, 'tripleflange'),(833, 1, 'carrying'),(834, 1, 'case'),(835, 1, 'warranty'),(836, 1, 'twoyear'),(837, 1, 'limited'),(838, 1, '(for'),(839, 1, 'details,'),(840, 1, 'please'),(841, 1, 'visit'),(842, 1, 'wwwshurecom'),(843, 1, 'personalaudio'),(844, 1, 'customersupport'),(845, 1, 'productreturnsa'),(846, 1, 'indexhtm)'),(847, 1, 'se210aefs'),(848, 1, 'note'),(849, 1, 'products'),(850, 1, 'sold'),(851, 1, 'through'),(852, 1, 'this'),(853, 1, 'website'),(854, 1, 'bear'),(855, 1, 'brand'),(856, 1, 'name'),(857, 1, 'serviced'),(858, 1, 'supported'),(859, 1, 'exclusively'),(860, 1, 'their'),(861, 1, 'manufacturers'),(862, 1, 'accordance'),(863, 1, 'terms'),(864, 1, 'conditions'),(865, 1, 'packaged'),(866, 1, 'apple''s'),(867, 1, 'does'),(868, 1, 'apply'),(869, 1, 'applebranded,'),(870, 1, 'even'),(871, 1, 'contact'),(872, 1, 'manufacturer'),(873, 1, 'directly'),(874, 1, 'technical'),(875, 1, 'support'),(876, 1, 'customer'),(877, 1, 'service'),(878, 1, 'incorporated'),(879, 2, 'isolation'),(880, 2, 'sonore'),(881, 2, 'shure'),(882, 2, 'se210'),(883, 2, 'ergonomiques'),(884, 2, 'légers'),(885, 2, 'offrent'),(886, 2, 'reproduction'),(887, 2, 'audio'),(888, 2, 'fidèle'),(889, 2, 'provenance'),(890, 2, 'sources'),(891, 2, 'salon'),(892, 2, 'basés'),(893, 2, 'moniteurs'),(894, 2, 'personnels'),(895, 2, 'testée'),(896, 2, 'route'),(897, 2, 'musiciens'),(898, 2, 'professionnels'),(899, 2, 'perfectionnée'),(900, 2, 'ingénieurs'),(901, 2, 'shure,'),(902, 2, 'se210,'),(903, 2, 'élégants,'),(904, 2, 'fournissent'),(905, 2, 'sortie'),(906, 2, 'gamme'),(907, 2, 'étendue'),(908, 2, 'exempte'),(909, 2, 'bruit'),(910, 2, 'externe'),(911, 2, 'embouts'),(912, 2, 'fournis'),(913, 2, 'bloquent'),(914, 2, 'ambiant'),(915, 2, 'combinés'),(916, 2, 'ergonomique'),(917, 2, 'séduisant'),(918, 2, 'modulaire,'),(919, 2, 'minimisent'),(920, 2, 'intrusions'),(921, 2, 'extérieur,'),(922, 2, 'permettant'),(923, 2, 'concentrer'),(924, 2, 'conçus'),(925, 2, 'amoureux'),(926, 2, 'souhaitent'),(927, 2, 'évoluer'),(928, 2, 'appareil'),(929, 2, 'portable,'),(930, 2, 'permettent'),(931, 2, 'd''emmener'),(932, 2, 'performance'),(933, 2, 'microtransducte'),(934, 2, 'haute'),(935, 2, 'définition'),(936, 2, 'développés'),(937, 2, 'écoute'),(938, 2, 'qualité'),(939, 2, 'supérieure'),(940, 2, 'déplacement,'),(941, 2, 'utilisent'),(942, 2, 'transducteur'),(943, 2, 'armature'),(944, 2, 'équilibrée'),(945, 2, 'bénéficier'),(946, 2, 'confort'),(947, 2, 'd''écoute'),(948, 2, 'époustouflant'),(949, 2, 'restitue'),(950, 2, 'tous'),(951, 2, 'détails'),(952, 2, 'spectacle'),(953, 2, 'live'),(954, 2, 'universel'),(955, 2, 'deluxe'),(956, 2, 'comprend'),(957, 2, 'éléments'),(958, 2, 'suivants'),(959, 2, 'inclus'),(960, 2, 'double'),(961, 2, 'rôle'),(962, 2, 'bloquer'),(963, 2, 'bruits'),(964, 2, 'ambiants'),(965, 2, 'garantir'),(966, 2, 'maintien'),(967, 2, 'personnalisés'),(968, 2, 'oreille'),(969, 2, 'différente,'),(970, 2, 'trois'),(971, 2, 'tailles'),(972, 2, 'd''embouts'),(973, 2, 'mousse'),(974, 2, 'flexibles'),(975, 2, 'style'),(976, 2, 'd''embout'),(977, 2, 'conviennent'),(978, 2, 'mieux'),(979, 2, 'bonne'),(980, 2, 'étanchéité'),(981, 2, 'facteur'),(982, 2, 'optimiser'),(983, 2, 'l''isolation'),(984, 2, 'réponse'),(985, 2, 'basses,'),(986, 2, 'ainsi'),(987, 2, 'accroître'),(988, 2, 'prolongée'),(989, 2, 'modulaire'),(990, 2, 'basant'),(991, 2, 'commentaires'),(992, 2, 'nombreux'),(993, 2, 'utilisateurs,'),(994, 2, 'développé'),(995, 2, 'solution'),(996, 2, 'détachable'),(997, 2, 'permettre'),(998, 2, 'degré'),(999, 2, 'personnalisatio'),(1000, 2, 'précédent'),(1001, 2, 'mètre'),(1002, 2, 'fourni'),(1003, 2, 'd''adapter'),(1004, 2, 'fonction'),(1005, 2, 'l''activité'),(1006, 2, 'l''application'),(1007, 2, 'transport'),(1008, 2, 'outre'),(1009, 2, 'compact'),(1010, 2, 'ranger'),(1011, 2, 'manière'),(1012, 2, 'pratique'),(1013, 2, 'encombres'),(1014, 2, 'garantie'),(1015, 2, 'limitée'),(1016, 2, 'deux'),(1017, 2, 'achetée'),(1018, 2, 'couverte'),(1019, 2, 'maind''œuvre'),(1020, 2, 'anscaractéristi'),(1021, 2, 'techniques'),(1022, 2, 'type'),(1023, 2, 'sensibilité'),(1024, 2, 'acoustique'),(1025, 2, 'impédance'),(1026, 2, 'khz)'),(1027, 2, 'fréquences'),(1028, 2, 'longueur'),(1029, 2, 'rallonge'),(1030, 2, '(embouts'),(1031, 2, 'sonore,'),(1032, 2, 'transport)'),(1033, 2, 'incorporated'),(1034, 2, 'casque'),(1035, 2, 'marche');
