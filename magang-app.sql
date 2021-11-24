/*
 Navicat Premium Data Transfer

 Source Server         : titan
 Source Server Type    : MySQL
 Source Server Version : 100416
 Source Host           : localhost:3306
 Source Schema         : magang-app

 Target Server Type    : MySQL
 Target Server Version : 100416
 File Encoding         : 65001

 Date: 24/11/2021 20:20:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2021_09_21_173337_create_tests_table', 2);
INSERT INTO `migrations` VALUES (16, '2021_09_23_024119_create_students_table', 3);

-- ----------------------------
-- Table structure for pasien
-- ----------------------------
DROP TABLE IF EXISTS `pasien`;
CREATE TABLE `pasien`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pasien
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `students_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (1, 'Noe Goodwin', 'pierce93@hotmail.com', 'lockman.estefania', '316.820.1488', '2009-08-03', NULL, NULL);
INSERT INTO `students` VALUES (2, 'Mr. Duncan Schiller I', 'ozella.hand@lynch.com', 'tobin19', '(269) 707-0646', '1974-04-09', NULL, NULL);
INSERT INTO `students` VALUES (3, 'Monserrate McLaughlin', 'darien.hoppe@cassin.net', 'pgerhold', '+1-570-547-7838', '2005-05-05', NULL, NULL);
INSERT INTO `students` VALUES (4, 'Kenton McLaughlin MD', 'garland.mills@kertzmann.com', 'desiree.orn', '1-276-319-3916', '1986-09-29', NULL, NULL);
INSERT INTO `students` VALUES (5, 'Gerhard Thompson', 'tyler.lakin@batz.info', 'jerde.twila', '+18207003329', '2017-12-20', NULL, NULL);
INSERT INTO `students` VALUES (6, 'Alexander Corwin', 'zweimann@wilkinson.biz', 'nohara', '(760) 484-8060', '2016-03-13', NULL, NULL);
INSERT INTO `students` VALUES (7, 'Elijah Hahn', 'marques94@gmail.com', 'wschuster', '+1-660-886-7068', '1993-11-15', NULL, NULL);
INSERT INTO `students` VALUES (8, 'Cesar Murphy II', 'ugorczany@ryan.com', 'patricia78', '+19157058108', '1983-05-13', NULL, NULL);
INSERT INTO `students` VALUES (9, 'Nicklaus Greenfelder', 'esanford@yahoo.com', 'theaney', '281.977.4371', '1983-12-24', NULL, NULL);
INSERT INTO `students` VALUES (10, 'Jettie Larson', 'lubowitz.karen@hotmail.com', 'maci.hauck', '+1-352-403-8289', '2011-10-23', NULL, NULL);
INSERT INTO `students` VALUES (11, 'Dan O\'Keefe', 'nova40@herman.org', 'barney94', '+14255374648', '1977-03-15', NULL, NULL);
INSERT INTO `students` VALUES (12, 'Garfield Walter', 'sanford.garfield@yahoo.com', 'rboyer', '1-351-489-7900', '1988-09-08', NULL, NULL);
INSERT INTO `students` VALUES (13, 'Mr. Triston Bayer V', 'mdouglas@hotmail.com', 'celestino.pollich', '917-651-6323', '1978-05-08', NULL, NULL);
INSERT INTO `students` VALUES (14, 'Salvador Koch', 'parisian.carlee@ruecker.com', 'rernser', '+1.215.963.7300', '1997-04-22', NULL, NULL);
INSERT INTO `students` VALUES (15, 'Prof. Triston Crist', 'xrogahn@jones.com', 'kallie19', '1-641-548-2511', '1976-02-28', NULL, NULL);
INSERT INTO `students` VALUES (16, 'David Vandervort', 'eda83@torp.com', 'fziemann', '240-472-1635', '2012-07-24', NULL, NULL);
INSERT INTO `students` VALUES (17, 'Dr. Monte Frami', 'swaniawski.claud@skiles.info', 'ckuphal', '248.815.9699', '2002-03-23', NULL, NULL);
INSERT INTO `students` VALUES (18, 'Billy Dietrich', 'leuschke.arlie@yahoo.com', 'eli80', '+1-863-378-3506', '1988-05-25', NULL, NULL);
INSERT INTO `students` VALUES (19, 'Jackson Rutherford', 'adams.savannah@yahoo.com', 'gottlieb.deion', '+18727683746', '1979-01-22', NULL, NULL);
INSERT INTO `students` VALUES (20, 'Dr. Geovanni Emmerich Jr.', 'lsmitham@windler.biz', 'franz.nolan', '+17652003130', '1985-04-09', NULL, NULL);
INSERT INTO `students` VALUES (21, 'Stevie Greenholt', 'monahan.laurence@yahoo.com', 'delilah.wolf', '1-563-216-9730', '2002-02-22', NULL, NULL);
INSERT INTO `students` VALUES (22, 'Dr. Cloyd Hermiston', 'ijohns@yahoo.com', 'jerad.huels', '+12282951101', '1994-08-12', NULL, NULL);
INSERT INTO `students` VALUES (23, 'Tyrel Douglas', 'fredrick.oreilly@yahoo.com', 'maudie.kassulke', '(863) 403-5469', '1971-02-12', NULL, NULL);
INSERT INTO `students` VALUES (24, 'Bruce Kirlin', 'ohara.micheal@ledner.com', 'stanley.waters', '1-978-445-8203', '1990-06-14', NULL, NULL);
INSERT INTO `students` VALUES (25, 'Cade Schuster', 'velva66@yahoo.com', 'nitzsche.orin', '+1-929-779-5263', '2005-03-21', NULL, NULL);
INSERT INTO `students` VALUES (26, 'Dr. Alexis Gulgowski Sr.', 'francesco61@hotmail.com', 'emilio50', '743-597-3301', '2021-07-07', NULL, NULL);
INSERT INTO `students` VALUES (27, 'Dr. Jerald Stehr Jr.', 'xstroman@yahoo.com', 'desiree09', '1-959-460-7911', '2004-12-08', NULL, NULL);
INSERT INTO `students` VALUES (28, 'Everardo Schuster', 'xdurgan@hotmail.com', 'zrenner', '1-385-443-0131', '1974-07-09', NULL, NULL);
INSERT INTO `students` VALUES (29, 'Carol Jast', 'alden97@gmail.com', 'emily.botsford', '(417) 634-2041', '1983-08-03', NULL, NULL);
INSERT INTO `students` VALUES (30, 'Roy Senger', 'imayer@hotmail.com', 'aryanna42', '646-293-3942', '1971-04-15', NULL, NULL);
INSERT INTO `students` VALUES (31, 'Johnny Lindgren', 'noel93@lynch.com', 'boehm.deion', '1-520-496-6981', '2001-12-09', NULL, NULL);
INSERT INTO `students` VALUES (32, 'Zackary Spencer', 'kobe.king@turner.net', 'dedrick94', '+1-813-318-1294', '2019-03-07', NULL, NULL);
INSERT INTO `students` VALUES (33, 'Nickolas Ferry', 'hconroy@bruen.com', 'erunolfsson', '+1.234.327.5298', '2004-10-29', NULL, NULL);
INSERT INTO `students` VALUES (34, 'Tyshawn Dibbert', 'elmer39@abernathy.info', 'uschowalter', '1-361-251-5451', '1977-07-10', NULL, NULL);
INSERT INTO `students` VALUES (35, 'Dr. Brook Vandervort', 'yundt.constance@larkin.com', 'berge.christy', '281.358.3213', '1971-02-20', NULL, NULL);
INSERT INTO `students` VALUES (36, 'Trent Kiehn', 'orland18@gmail.com', 'luther23', '(551) 501-5177', '2010-12-26', NULL, NULL);
INSERT INTO `students` VALUES (37, 'Santino Bartoletti', 'lizzie58@mcdermott.com', 'rice.clare', '+1 (534) 739-3846', '2016-10-12', NULL, NULL);
INSERT INTO `students` VALUES (38, 'Jaron Dickens', 'nyah85@hotmail.com', 'dortiz', '641-680-6567', '2010-12-11', NULL, NULL);
INSERT INTO `students` VALUES (39, 'Daron Lockman', 'bmedhurst@feest.com', 'kadin.nicolas', '540.207.7195', '1982-12-11', NULL, NULL);
INSERT INTO `students` VALUES (40, 'Geoffrey Hartmann MD', 'keegan.hansen@gmail.com', 'morissette.yasmeen', '747-371-8274', '2016-09-29', NULL, NULL);
INSERT INTO `students` VALUES (41, 'Scot Crooks DVM', 'etha.hayes@block.info', 'richard17', '1-713-280-7172', '1984-03-25', NULL, NULL);
INSERT INTO `students` VALUES (42, 'Alexander Hand', 'konopelski.kiera@mitchell.com', 'kkessler', '940-257-0876', '2017-10-15', NULL, NULL);
INSERT INTO `students` VALUES (43, 'Mr. Miguel Zemlak', 'wledner@hotmail.com', 'larson.aimee', '1-617-268-9035', '1990-09-10', NULL, NULL);
INSERT INTO `students` VALUES (44, 'Branson Sanford', 'ikohler@gmail.com', 'jnitzsche', '762.369.0881', '1975-07-03', NULL, NULL);
INSERT INTO `students` VALUES (45, 'Derrick Tillman', 'jschulist@hauck.org', 'felipe27', '+15715995008', '1985-09-14', NULL, NULL);
INSERT INTO `students` VALUES (46, 'Xavier Roob', 'hhermann@yahoo.com', 'gusikowski.donald', '(847) 362-6266', '2014-09-13', NULL, NULL);
INSERT INTO `students` VALUES (47, 'Dr. Jeremie Crona', 'savion.gutkowski@gmail.com', 'nils.fadel', '+1.252.752.8722', '1985-03-08', NULL, NULL);
INSERT INTO `students` VALUES (48, 'Will Stiedemann MD', 'stehr.jaquelin@kirlin.com', 'monte.upton', '442-382-4330', '1995-12-08', NULL, NULL);
INSERT INTO `students` VALUES (49, 'Isom Rogahn', 'huel.mertie@rohan.com', 'toreilly', '1-272-635-0593', '1970-04-10', NULL, NULL);
INSERT INTO `students` VALUES (50, 'Israel Kuphal', 'lwolf@hotmail.com', 'burnice90', '+1-256-564-1867', '1984-02-23', NULL, NULL);
INSERT INTO `students` VALUES (51, 'Dr. Davion Mertz DVM', 'brooke.rippin@quitzon.net', 'murphy.hipolito', '1-559-896-1669', '1991-07-04', NULL, NULL);
INSERT INTO `students` VALUES (52, 'Mr. Julien Collier V', 'dlowe@hotmail.com', 'aaron.ward', '+1-509-533-0447', '1979-08-26', NULL, NULL);
INSERT INTO `students` VALUES (53, 'Dr. Ezequiel Mann IV', 'gardner54@nikolaus.org', 'nlubowitz', '704.664.9054', '1989-08-09', NULL, NULL);
INSERT INTO `students` VALUES (54, 'Donavon Durgan', 'london07@murray.com', 'icole', '+15407044635', '1997-08-24', NULL, NULL);
INSERT INTO `students` VALUES (55, 'Dr. Anthony Howell III', 'tatum73@gutkowski.net', 'bashirian.icie', '1-626-241-2309', '2012-09-06', NULL, NULL);
INSERT INTO `students` VALUES (56, 'Carey Veum', 'obie.hyatt@ullrich.com', 'leann01', '1-508-946-5543', '2018-07-28', NULL, NULL);
INSERT INTO `students` VALUES (57, 'Louvenia Wunsch DDS', 'sfadel@pagac.org', 'winona.rolfson', '469-665-2503', '2000-07-18', NULL, NULL);
INSERT INTO `students` VALUES (58, 'Dr. Jeffrey Hintz I', 'abbigail.thiel@hotmail.com', 'adickinson', '1-347-344-7951', '2012-07-05', NULL, NULL);
INSERT INTO `students` VALUES (59, 'Hector Willms III', 'molly.dickens@kunze.com', 'lon.dicki', '1-480-588-7414', '2007-02-26', NULL, NULL);
INSERT INTO `students` VALUES (60, 'Timmy Kling', 'zlueilwitz@hotmail.com', 'conn.vicenta', '+1-757-589-1254', '2019-12-03', NULL, NULL);
INSERT INTO `students` VALUES (61, 'Hal Kuhlman', 'toney.wehner@yahoo.com', 'ipowlowski', '(917) 865-5339', '1996-04-18', NULL, NULL);
INSERT INTO `students` VALUES (62, 'Josiah Heidenreich', 'trudie.bahringer@macejkovic.org', 'lewis24', '(843) 584-8236', '2005-09-08', NULL, NULL);
INSERT INTO `students` VALUES (63, 'Walker Torphy', 'roob.franco@lehner.com', 'herman.jalon', '+1.585.439.1376', '1975-10-24', NULL, NULL);
INSERT INTO `students` VALUES (64, 'Mr. Kyle Cole DVM', 'hcarroll@gmail.com', 'hermann.mateo', '386-853-7117', '1990-09-30', NULL, NULL);
INSERT INTO `students` VALUES (65, 'Dr. Blake Mertz MD', 'treva.ebert@gmail.com', 'flatley.lexie', '1-702-584-0658', '1974-11-12', NULL, NULL);
INSERT INTO `students` VALUES (66, 'Keagan Schiller', 'qwolff@christiansen.com', 'jokon', '(865) 289-6841', '1977-02-28', NULL, NULL);
INSERT INTO `students` VALUES (67, 'Brain Hackett', 'mwatsica@mayer.com', 'margarett52', '+12794139176', '1995-11-13', NULL, NULL);
INSERT INTO `students` VALUES (68, 'Jarred Vandervort', 'ronaldo58@wiza.com', 'macey.thiel', '+14255037771', '1995-07-28', NULL, NULL);
INSERT INTO `students` VALUES (69, 'Prof. Noel Heidenreich III', 'janae12@kertzmann.com', 'emiliano07', '1-636-321-5308', '2018-04-09', NULL, NULL);
INSERT INTO `students` VALUES (70, 'Adrain Oberbrunner', 'steuber.cecelia@hotmail.com', 'chayes', '+1.234.978.8163', '1979-03-19', NULL, NULL);
INSERT INTO `students` VALUES (71, 'Broderick Kuhn', 'jeff.effertz@deckow.com', 'heaney.colleen', '(678) 200-5540', '2001-01-02', NULL, NULL);
INSERT INTO `students` VALUES (72, 'Darius Trantow', 'usimonis@gmail.com', 'okuneva.greg', '+1-423-622-5695', '2000-11-30', NULL, NULL);
INSERT INTO `students` VALUES (73, 'Murray Considine', 'greenholt.jeramie@schmitt.com', 'sgrant', '1-715-904-9739', '2009-08-11', NULL, NULL);
INSERT INTO `students` VALUES (74, 'Mr. Arch Prohaska I', 'yost.hyman@gmail.com', 'francesca56', '+1 (660) 517-8090', '2016-10-28', NULL, NULL);
INSERT INTO `students` VALUES (75, 'Cory Dickens', 'hahn.hillard@mccullough.biz', 'qohara', '(248) 585-2302', '1986-06-29', NULL, NULL);
INSERT INTO `students` VALUES (76, 'Elbert Blick', 'mccullough.francesca@watsica.com', 'zhaley', '(385) 926-6169', '1977-07-08', NULL, NULL);
INSERT INTO `students` VALUES (77, 'Dr. Arno Medhurst I', 'karen36@willms.com', 'jritchie', '413.605.0179', '2003-06-14', NULL, NULL);
INSERT INTO `students` VALUES (78, 'Jefferey Bogan', 'marques70@connelly.com', 'smayert', '+1 (586) 654-7098', '1976-02-28', NULL, NULL);
INSERT INTO `students` VALUES (79, 'Olen Stokes', 'hermiston.hardy@yahoo.com', 'muller.darron', '(352) 698-6252', '1993-10-05', NULL, NULL);
INSERT INTO `students` VALUES (80, 'Dr. Quinn Cassin', 'hprice@hotmail.com', 'faye.fritsch', '(838) 633-7468', '2012-03-05', NULL, NULL);
INSERT INTO `students` VALUES (81, 'Saul Cremin', 'dan15@gmail.com', 'sawayn.chaya', '(915) 922-1754', '1976-08-24', NULL, NULL);
INSERT INTO `students` VALUES (82, 'Emmet Erdman V', 'rswift@lind.com', 'merl.lind', '+15408772774', '2019-04-30', NULL, NULL);
INSERT INTO `students` VALUES (83, 'Markus Klein III', 'swaniawski.marilou@ritchie.com', 'terry.bartell', '(830) 821-8861', '1998-02-02', NULL, NULL);
INSERT INTO `students` VALUES (84, 'Stevie Little II', 'yost.nelda@hotmail.com', 'garland28', '917-761-4308', '1971-01-07', NULL, NULL);
INSERT INTO `students` VALUES (85, 'Prof. Morton Tillman DVM', 'aadams@gmail.com', 'gleannon', '+1-916-308-9393', '1982-12-27', NULL, NULL);
INSERT INTO `students` VALUES (86, 'Mr. Gabriel Jast', 'myriam84@gmail.com', 'claud.considine', '+1.936.452.2614', '1971-08-26', NULL, NULL);
INSERT INTO `students` VALUES (87, 'Aurelio Towne', 'margaret90@hotmail.com', 'delaney82', '585.949.6591', '1974-11-04', NULL, NULL);
INSERT INTO `students` VALUES (88, 'Austen Mayer MD', 'yundt.josue@mertz.info', 'marcelo02', '951-661-1339', '1974-11-06', NULL, NULL);
INSERT INTO `students` VALUES (89, 'Erich Kling', 'tosinski@hotmail.com', 'leannon.leann', '+1-818-958-4065', '2012-11-28', NULL, NULL);
INSERT INTO `students` VALUES (90, 'Willis Kihn', 'wklein@hotmail.com', 'petra18', '1-931-931-7433', '2014-09-06', NULL, NULL);
INSERT INTO `students` VALUES (91, 'Dr. Ayden Cruickshank DDS', 'oreilly.lesly@gmail.com', 'qcassin', '234.803.0182', '1998-10-11', NULL, NULL);
INSERT INTO `students` VALUES (92, 'Jerrold Schaden', 'sadie11@labadie.net', 'pgerhold', '458-630-1225', '1991-06-20', NULL, NULL);
INSERT INTO `students` VALUES (93, 'Prof. Lonzo Harris DVM', 'david92@gleichner.com', 'dante.rogahn', '1-305-935-9472', '2019-11-23', NULL, NULL);
INSERT INTO `students` VALUES (94, 'Johnathon Waters', 'harvey.barton@hotmail.com', 'ehessel', '541.252.5223', '1978-04-12', NULL, NULL);
INSERT INTO `students` VALUES (95, 'Donato O\'Kon PhD', 'savannah.harvey@gmail.com', 'neal.jakubowski', '1-678-443-1685', '1971-06-11', NULL, NULL);
INSERT INTO `students` VALUES (96, 'Madyson Borer', 'edward45@crist.com', 'cremin.jensen', '601-402-7565', '1971-07-31', NULL, NULL);
INSERT INTO `students` VALUES (97, 'Dr. Dayton Bergstrom PhD', 'libbie59@lockman.com', 'kuhlman.maryjane', '+13805068897', '1974-06-30', NULL, NULL);
INSERT INTO `students` VALUES (98, 'Abelardo Koelpin', 'toconner@okuneva.net', 'pollich.ardella', '+12014372289', '1971-05-07', NULL, NULL);
INSERT INTO `students` VALUES (99, 'Ryan Breitenberg', 'denesik.warren@hotmail.com', 'austyn.smitham', '984-687-8926', '2011-06-24', NULL, NULL);
INSERT INTO `students` VALUES (100, 'Prof. Randy Bernier', 'cole.orville@price.com', 'candelario.bins', '301-682-5830', '1986-08-10', NULL, NULL);
INSERT INTO `students` VALUES (101, 'Vance Labadie', 'jacky.kirlin@yahoo.com', 'kyleigh.schulist', '1-920-384-6861', '1989-03-06', NULL, NULL);
INSERT INTO `students` VALUES (102, 'Prof. Stevie Zieme', 'vicente81@daniel.info', 'bschmitt', '1-210-486-8965', '2013-07-17', NULL, NULL);
INSERT INTO `students` VALUES (103, 'Alfredo Kirlin', 'blanda.jeffry@hotmail.com', 'eliseo.howe', '725.776.0445', '2002-07-06', NULL, NULL);
INSERT INTO `students` VALUES (104, 'Newell Kautzer', 'little.karson@hotmail.com', 'destiney66', '+1-765-299-2541', '1970-02-02', NULL, NULL);
INSERT INTO `students` VALUES (105, 'Deonte Pollich', 'oreilly.hollis@casper.info', 'sallie10', '+1-414-784-9341', '1971-07-08', NULL, NULL);
INSERT INTO `students` VALUES (106, 'Mr. Merl VonRueden', 'vonrueden.sienna@koss.com', 'ulises24', '1-754-509-3901', '2003-10-27', NULL, NULL);
INSERT INTO `students` VALUES (107, 'Lucius Hills', 'volkman.lelia@gmail.com', 'leopold.kozey', '1-650-901-0910', '1978-08-30', NULL, NULL);
INSERT INTO `students` VALUES (108, 'Mr. Zakary Zulauf I', 'nwalsh@hotmail.com', 'hegmann.sheridan', '(754) 945-0504', '1994-06-19', NULL, NULL);
INSERT INTO `students` VALUES (109, 'Otho Schamberger PhD', 'damore.leilani@hotmail.com', 'kaleb04', '434-836-9031', '1987-02-27', NULL, NULL);
INSERT INTO `students` VALUES (110, 'German Lubowitz', 'kaela82@daugherty.com', 'cristina10', '+1 (941) 765-6995', '1991-07-19', NULL, NULL);
INSERT INTO `students` VALUES (111, 'Prof. Shad Haley', 'electa.beier@gmail.com', 'ludwig55', '+1.432.984.5086', '2009-12-02', NULL, NULL);
INSERT INTO `students` VALUES (112, 'Paolo Price', 'jacky.schamberger@goldner.com', 'upton.verlie', '636.845.5002', '2005-02-22', NULL, NULL);
INSERT INTO `students` VALUES (113, 'Jaron Turcotte IV', 'uzulauf@mertz.com', 'jerel35', '(352) 880-8774', '2000-03-16', NULL, NULL);
INSERT INTO `students` VALUES (114, 'Eusebio McClure', 'donnie61@hotmail.com', 'woreilly', '+12243677616', '1982-04-01', NULL, NULL);
INSERT INTO `students` VALUES (115, 'Prof. Leonel Muller', 'leonie.abernathy@gmail.com', 'andrew47', '+1 (551) 881-2324', '2013-10-08', NULL, NULL);
INSERT INTO `students` VALUES (116, 'Mr. Davin Sawayn', 'baylee86@yahoo.com', 'sanford.pouros', '678.517.1475', '1996-06-08', NULL, NULL);
INSERT INTO `students` VALUES (117, 'Mr. Jovany Kilback V', 'jjerde@little.biz', 'kathryne.macejkovic', '+15753896444', '2003-12-21', NULL, NULL);
INSERT INTO `students` VALUES (118, 'Erik Koss Sr.', 'kimberly24@hotmail.com', 'rosalind.kemmer', '+1-681-962-4588', '1997-06-09', NULL, NULL);
INSERT INTO `students` VALUES (119, 'Dr. Jeff Greenfelder II', 'dwiegand@kuhn.com', 'phirthe', '408.336.4542', '1985-02-16', NULL, NULL);
INSERT INTO `students` VALUES (120, 'Mr. Richie D\'Amore', 'monserrat.hane@rutherford.org', 'junius57', '1-517-337-2276', '1984-11-10', NULL, NULL);
INSERT INTO `students` VALUES (121, 'Mack Dibbert', 'stanton.ashly@hotmail.com', 'bosco.tabitha', '+1-727-846-0023', '1988-05-11', NULL, NULL);
INSERT INTO `students` VALUES (122, 'Toni Block', 'adela.corkery@yahoo.com', 'karl47', '(920) 347-6775', '1978-02-12', NULL, NULL);
INSERT INTO `students` VALUES (123, 'Marcos Goldner', 'nkeebler@turcotte.biz', 'barton.jess', '(405) 210-8944', '1975-05-19', NULL, NULL);
INSERT INTO `students` VALUES (124, 'Mr. Alexis Klocko Sr.', 'thad86@gmail.com', 'jonatan.cassin', '585.242.0702', '1975-11-09', NULL, NULL);
INSERT INTO `students` VALUES (125, 'Virgil Haag', 'hammes.elenora@lueilwitz.info', 'jerald.walter', '346-915-5982', '2017-08-27', NULL, NULL);
INSERT INTO `students` VALUES (126, 'Prof. Thurman Wolf III', 'cchamplin@hotmail.com', 'borer.dewitt', '856.414.3490', '1994-08-22', NULL, NULL);
INSERT INTO `students` VALUES (127, 'Mr. Zander Witting Sr.', 'frederique.kirlin@raynor.com', 'olga71', '505-926-4504', '2005-04-29', NULL, NULL);
INSERT INTO `students` VALUES (128, 'Wyman Rowe', 'erna01@frami.info', 'lmoore', '920-531-6697', '1972-05-28', NULL, NULL);
INSERT INTO `students` VALUES (129, 'Gabriel Roberts', 'rebeka.gutkowski@mann.com', 'delia47', '1-283-542-5612', '2002-09-30', NULL, NULL);
INSERT INTO `students` VALUES (130, 'Federico Bashirian Jr.', 'germaine15@hotmail.com', 'rosalinda13', '(551) 470-7744', '1990-01-23', NULL, NULL);
INSERT INTO `students` VALUES (131, 'Adriel Fahey DVM', 'acollier@hermiston.com', 'wbrekke', '530.733.9413', '1974-06-10', NULL, NULL);
INSERT INTO `students` VALUES (132, 'Dr. Floyd O\'Connell', 'witting.macie@gmail.com', 'shanahan.kim', '+1 (541) 377-6771', '1974-07-18', NULL, NULL);
INSERT INTO `students` VALUES (133, 'Prof. Delmer Ondricka', 'adriel28@gmail.com', 'elfrieda96', '501.504.7053', '1973-10-27', NULL, NULL);
INSERT INTO `students` VALUES (134, 'Earnest Douglas', 'tbraun@waters.com', 'astrid.kreiger', '260.695.3210', '1984-08-30', NULL, NULL);
INSERT INTO `students` VALUES (135, 'Amparo Spinka', 'earnestine.swift@yahoo.com', 'gus.cummerata', '(484) 390-0483', '2010-06-15', NULL, NULL);
INSERT INTO `students` VALUES (136, 'Wilfrid Weimann V', 'dbashirian@fahey.com', 'bnikolaus', '+1.828.976.0376', '2006-01-18', NULL, NULL);
INSERT INTO `students` VALUES (137, 'Tyrique Pollich', 'moore.kaleigh@metz.com', 'katrina.schultz', '+1.769.750.5682', '1983-01-06', NULL, NULL);
INSERT INTO `students` VALUES (138, 'Forest Goldner', 'lazaro.kerluke@hotmail.com', 'dkeeling', '+1 (251) 718-6556', '1990-12-23', NULL, NULL);
INSERT INTO `students` VALUES (139, 'Eric Ziemann', 'irma.satterfield@hotmail.com', 'rhahn', '+1-727-936-1135', '1988-10-04', NULL, NULL);
INSERT INTO `students` VALUES (140, 'Merlin Bode', 'fred11@bernhard.com', 'delfina.schuppe', '(872) 932-7911', '1982-08-29', NULL, NULL);
INSERT INTO `students` VALUES (141, 'Franz Powlowski', 'flesch@gmail.com', 'ywuckert', '+1-618-414-2137', '1986-11-26', NULL, NULL);
INSERT INTO `students` VALUES (142, 'Garnet Crooks', 'elvera51@hotmail.com', 'markus.leannon', '+1-272-223-6765', '1981-05-22', NULL, NULL);
INSERT INTO `students` VALUES (143, 'Nicholaus Hill', 'dkuphal@bartoletti.info', 'senger.dillan', '770.980.3233', '1982-01-22', NULL, NULL);
INSERT INTO `students` VALUES (144, 'Mr. Karl Hessel', 'kaylee98@hotmail.com', 'lavada48', '1-432-472-3846', '1981-01-01', NULL, NULL);
INSERT INTO `students` VALUES (145, 'Brad Huels', 'kessler.alverta@rowe.com', 'laverna.gislason', '1-564-526-0600', '2013-06-10', NULL, NULL);
INSERT INTO `students` VALUES (146, 'Zion Johnston', 'fahey.loyal@gmail.com', 'clark.block', '+1-213-540-1648', '1985-01-27', NULL, NULL);
INSERT INTO `students` VALUES (147, 'Johnny Metz', 'williamson.jeramie@hotmail.com', 'eritchie', '336.852.2410', '2000-04-08', NULL, NULL);
INSERT INTO `students` VALUES (148, 'Prof. Fernando Hirthe', 'zola04@donnelly.com', 'yasmin.ledner', '+1 (530) 934-7207', '2016-02-06', NULL, NULL);
INSERT INTO `students` VALUES (149, 'Deshaun Ziemann', 'tsteuber@mraz.com', 'keeling.felipa', '+1-458-459-8348', '1988-08-12', NULL, NULL);
INSERT INTO `students` VALUES (150, 'Lionel Vandervort', 'macejkovic.maci@herman.info', 'eparisian', '(662) 805-6350', '1999-02-11', NULL, NULL);
INSERT INTO `students` VALUES (151, 'Heber Toy', 'marlon.mraz@gmail.com', 'dasia65', '(531) 490-0644', '1979-10-20', NULL, NULL);
INSERT INTO `students` VALUES (152, 'Marcelino McGlynn', 'gia.stokes@hotmail.com', 'kovacek.armani', '+1.312.295.5900', '2001-07-09', NULL, NULL);
INSERT INTO `students` VALUES (153, 'Dr. Xavier Gibson I', 'thompson.ismael@yahoo.com', 'pauline26', '(630) 721-7237', '2004-04-17', NULL, NULL);
INSERT INTO `students` VALUES (154, 'Macey Hamill', 'slemke@towne.biz', 'usimonis', '+1-217-858-6210', '1979-04-05', NULL, NULL);
INSERT INTO `students` VALUES (155, 'Nigel Ortiz', 'jast.melany@yahoo.com', 'gaylord.wuckert', '770.477.9999', '1984-12-29', NULL, NULL);
INSERT INTO `students` VALUES (156, 'Dr. Kayley Goldner PhD', 'kub.donnie@yahoo.com', 'etha68', '(949) 313-9291', '2015-03-04', NULL, NULL);
INSERT INTO `students` VALUES (157, 'Saul Hettinger', 'okeefe.emilie@yahoo.com', 'mparker', '1-479-435-4610', '1978-10-14', NULL, NULL);
INSERT INTO `students` VALUES (158, 'Christ Rutherford', 'fupton@denesik.org', 'aurelia.reinger', '(458) 881-1092', '2005-09-12', NULL, NULL);
INSERT INTO `students` VALUES (159, 'Mr. Myrl Torp PhD', 'rippin.laney@brekke.biz', 'darian01', '540-627-1827', '2008-04-20', NULL, NULL);
INSERT INTO `students` VALUES (160, 'Jedediah Boyle', 'fmonahan@senger.com', 'gail.kuhic', '435-984-2880', '1988-03-31', NULL, NULL);
INSERT INTO `students` VALUES (161, 'Elwin Hyatt', 'gaylord.trantow@hackett.com', 'skoelpin', '+1-201-387-1753', '1980-02-24', NULL, NULL);
INSERT INTO `students` VALUES (162, 'Freddy Funk', 'tanner20@fisher.com', 'otho98', '865.286.3935', '1973-02-01', NULL, NULL);
INSERT INTO `students` VALUES (163, 'Mr. Clifton Lynch DVM', 'germaine.hoeger@erdman.com', 'kali68', '1-940-339-7672', '2017-07-06', NULL, NULL);
INSERT INTO `students` VALUES (164, 'Kareem Legros', 'pbuckridge@gmail.com', 'kautzer.alberta', '+1-985-894-1722', '2016-11-30', NULL, NULL);
INSERT INTO `students` VALUES (165, 'Max Hahn', 'qkunde@ward.com', 'berenice.gislason', '(985) 570-0613', '1990-08-27', NULL, NULL);
INSERT INTO `students` VALUES (166, 'Khalil Hand', 'nayeli35@hotmail.com', 'dorris.wilderman', '+1-570-284-6381', '2009-02-16', NULL, NULL);
INSERT INTO `students` VALUES (167, 'Casimir Yundt', 'savanah04@simonis.com', 'jerrold.boyle', '+1 (678) 418-5488', '2019-06-14', NULL, NULL);
INSERT INTO `students` VALUES (168, 'Junior Ebert', 'rwest@gmail.com', 'hugh.romaguera', '+13178971682', '1982-06-15', NULL, NULL);
INSERT INTO `students` VALUES (169, 'Chris Leffler', 'verdman@gmail.com', 'klein.elena', '458.747.1360', '2009-12-23', NULL, NULL);
INSERT INTO `students` VALUES (170, 'Lyric Cummerata', 'mwaters@gmail.com', 'casper.kristopher', '681.435.3411', '2011-04-22', NULL, NULL);
INSERT INTO `students` VALUES (171, 'Adan Hahn', 'dean.dicki@yahoo.com', 'cleveland19', '432.287.6617', '2014-04-26', NULL, NULL);
INSERT INTO `students` VALUES (172, 'Friedrich Legros I', 'savanna.glover@gottlieb.org', 'chloe.oberbrunner', '+1-341-675-0086', '2007-03-08', NULL, NULL);
INSERT INTO `students` VALUES (173, 'Mr. Michale Schaden V', 'aaron.schiller@rogahn.org', 'hill.franco', '1-779-498-8232', '2006-04-24', NULL, NULL);
INSERT INTO `students` VALUES (174, 'Orlo Barrows I', 'rkirlin@tremblay.info', 'ardith03', '1-847-463-0851', '2012-05-13', NULL, NULL);
INSERT INTO `students` VALUES (175, 'Jasen Mills', 'gorczany.lexi@gmail.com', 'uwilderman', '+1-979-383-3408', '1988-10-20', NULL, NULL);
INSERT INTO `students` VALUES (176, 'Mr. Monserrate Fisher Jr.', 'claire.kovacek@prohaska.com', 'orn.kenna', '480.825.3148', '1995-03-09', NULL, NULL);
INSERT INTO `students` VALUES (177, 'Donnell Beier V', 'rklocko@botsford.com', 'nathanial.schmidt', '541-290-5482', '1972-08-28', NULL, NULL);
INSERT INTO `students` VALUES (178, 'Prof. Jerome Raynor IV', 'linwood13@torphy.com', 'hilton22', '(214) 752-4419', '1985-04-29', NULL, NULL);
INSERT INTO `students` VALUES (179, 'Destin Parker III', 'brooklyn.skiles@shields.com', 'ocarroll', '1-337-396-7858', '1970-10-29', NULL, NULL);
INSERT INTO `students` VALUES (180, 'Chris Prosacco', 'qhilpert@gmail.com', 'ukuhic', '854-597-7911', '2016-05-13', NULL, NULL);
INSERT INTO `students` VALUES (181, 'Nicholas Ruecker', 'cbaumbach@hotmail.com', 'vernice73', '+1 (930) 578-5796', '2010-09-24', NULL, NULL);
INSERT INTO `students` VALUES (182, 'Prof. Mose Treutel I', 'ykris@yahoo.com', 'adams.edgardo', '831-809-3142', '2018-11-21', NULL, NULL);
INSERT INTO `students` VALUES (183, 'Dr. Angel Hessel', 'gianni43@gmail.com', 'madalyn84', '(740) 395-6727', '1977-02-28', NULL, NULL);
INSERT INTO `students` VALUES (184, 'Perry Lakin', 'jasmin20@okuneva.com', 'fhoppe', '1-603-815-9280', '2006-05-08', NULL, NULL);
INSERT INTO `students` VALUES (185, 'Marquis Witting', 'theo24@greenholt.com', 'rowe.nickolas', '(786) 671-7304', '1985-12-20', NULL, NULL);
INSERT INTO `students` VALUES (186, 'Jamir Homenick', 'ykreiger@friesen.com', 'barrows.justina', '1-678-559-7627', '1983-07-23', NULL, NULL);
INSERT INTO `students` VALUES (187, 'Hilton Dietrich', 'paltenwerth@blick.org', 'retta83', '1-207-867-3463', '2013-10-09', NULL, NULL);
INSERT INTO `students` VALUES (188, 'Javon Auer III', 'ted46@kris.org', 'darwin75', '+1 (303) 835-0688', '1999-03-28', NULL, NULL);
INSERT INTO `students` VALUES (189, 'Dr. Raoul Volkman', 'koch.arely@hotmail.com', 'wankunding', '850-359-2195', '1996-06-08', NULL, NULL);
INSERT INTO `students` VALUES (190, 'Alan Marquardt', 'aerdman@paucek.com', 'wilfredo85', '+16504767061', '1983-09-01', NULL, NULL);
INSERT INTO `students` VALUES (191, 'Nathan Lynch', 'edamore@hotmail.com', 'vena.lebsack', '747-860-2522', '1972-09-17', NULL, NULL);
INSERT INTO `students` VALUES (192, 'Prof. Dawson Nitzsche Sr.', 'swaniawski.jesus@yahoo.com', 'rau.lambert', '423-582-6483', '1997-03-10', NULL, NULL);
INSERT INTO `students` VALUES (193, 'Prof. Mathew Runte III', 'eichmann.carroll@abshire.com', 'agrady', '803-389-8376', '1977-10-13', NULL, NULL);
INSERT INTO `students` VALUES (194, 'Geovanni Greenfelder', 'cormier.heloise@gmail.com', 'howell.anabelle', '+19418769484', '2000-02-22', NULL, NULL);
INSERT INTO `students` VALUES (195, 'Ignatius Schmitt', 'tabitha14@yahoo.com', 'hwuckert', '+1-541-401-0122', '1979-07-25', NULL, NULL);
INSERT INTO `students` VALUES (196, 'Prof. Horace Bailey DVM', 'qwalter@yahoo.com', 'gblock', '631-272-4288', '1987-03-10', NULL, NULL);
INSERT INTO `students` VALUES (197, 'Mr. Pablo Kuphal V', 'katelin16@hotmail.com', 'gerhold.giovanny', '(412) 721-9449', '1972-02-06', NULL, NULL);
INSERT INTO `students` VALUES (198, 'Edison Rogahn', 'lillie08@gmail.com', 'hans02', '(225) 387-9846', '2016-01-05', NULL, NULL);
INSERT INTO `students` VALUES (199, 'Brando Goyette', 'ruthe37@hotmail.com', 'senger.dwight', '+1-336-426-9323', '2017-05-29', NULL, NULL);
INSERT INTO `students` VALUES (200, 'Jovanny Emard', 'maggio.dedrick@goldner.com', 'kenneth11', '(564) 433-3146', '2009-04-11', NULL, NULL);

-- ----------------------------
-- Table structure for tests
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tests
-- ----------------------------
INSERT INTO `tests` VALUES (1, 'tt', '2021-09-22 00:39:01', '2021-09-22 00:39:02');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Titan', 'titan.tib@gmail.com', '2021-11-24 13:10:37', '$2y$10$2DmQB2iXMkWVTw6SzWziSO8/kHleADsyv/2KYIEH64h3QjSwVOYZG', NULL, 'admin', '2021-11-24 13:10:37', '2021-11-24 13:10:37');

SET FOREIGN_KEY_CHECKS = 1;
