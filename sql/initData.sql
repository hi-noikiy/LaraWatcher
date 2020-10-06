-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.5.5-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  larawatcher.admin_menu 的数据：~10 rows (大约)
DELETE FROM `admin_menu`;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
	(1, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', '2020-10-06 10:25:02', NULL),
	(2, 0, 5, 'Admin', 'feather icon-settings', '', '2020-10-06 10:25:02', '2020-10-06 19:05:37'),
	(3, 2, 6, 'Users', '', 'auth/users', '2020-10-06 10:25:02', '2020-10-06 19:05:37'),
	(4, 2, 7, 'Roles', '', 'auth/roles', '2020-10-06 10:25:02', '2020-10-06 19:05:37'),
	(5, 2, 8, 'Permission', '', 'auth/permissions', '2020-10-06 10:25:02', '2020-10-06 19:05:37'),
	(6, 2, 9, 'Menu', '', 'auth/menu', '2020-10-06 10:25:02', '2020-10-06 19:05:37'),
	(7, 2, 10, 'Operation log', '', 'auth/logs', '2020-10-06 10:25:02', '2020-10-06 19:05:37'),
	(8, 0, 2, 'Servers', NULL, 'servers', '2020-10-06 19:05:00', '2020-10-06 19:05:37'),
	(9, 0, 3, 'Services', NULL, 'services', '2020-10-06 19:05:09', '2020-10-06 19:05:37'),
	(10, 0, 4, 'Service Tracks', NULL, 'service_tracks', '2020-10-06 19:05:25', '2020-10-06 19:05:37');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;

-- 正在导出表  larawatcher.admin_permissions 的数据：~6 rows (大约)
DELETE FROM `admin_permissions`;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `order`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'Auth management', 'auth-management', '', '', 1, 0, '2020-10-06 10:25:02', NULL),
	(2, 'Users', 'users', '', '/auth/users*', 2, 1, '2020-10-06 10:25:02', NULL),
	(3, 'Roles', 'roles', '', '/auth/roles*', 3, 1, '2020-10-06 10:25:02', NULL),
	(4, 'Permissions', 'permissions', '', '/auth/permissions*', 4, 1, '2020-10-06 10:25:02', NULL),
	(5, 'Menu', 'menu', '', '/auth/menu*', 5, 1, '2020-10-06 10:25:02', NULL),
	(6, 'Operation log', 'operation-log', '', '/auth/logs*', 6, 1, '2020-10-06 10:25:02', NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;

-- 正在导出表  larawatcher.admin_permission_menu 的数据：~0 rows (大约)
DELETE FROM `admin_permission_menu`;
/*!40000 ALTER TABLE `admin_permission_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_permission_menu` ENABLE KEYS */;

-- 正在导出表  larawatcher.admin_roles 的数据：~1 rows (大约)
DELETE FROM `admin_roles`;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'administrator', '2020-10-06 10:25:02', '2020-10-06 10:25:02');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;

-- 正在导出表  larawatcher.admin_role_menu 的数据：~0 rows (大约)
DELETE FROM `admin_role_menu`;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;

-- 正在导出表  larawatcher.admin_role_permissions 的数据：~0 rows (大约)
DELETE FROM `admin_role_permissions`;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;

-- 正在导出表  larawatcher.admin_role_users 的数据：~1 rows (大约)
DELETE FROM `admin_role_users`;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;

-- 正在导出表  larawatcher.admin_users 的数据：~1 rows (大约)
DELETE FROM `admin_users`;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '$2y$10$avHTuKMT9A8G.FkZff7lxe15UA2XE1wJofTu6fixz7e6nr.82ceHa', 'Administrator', NULL, NULL, '2020-10-06 10:25:02', '2020-10-06 10:25:02');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;

-- 正在导出表  larawatcher.failed_jobs 的数据：~0 rows (大约)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- 正在导出表  larawatcher.servers 的数据：~3 rows (大约)
DELETE FROM `servers`;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
INSERT INTO `servers` (`id`, `name`, `ip`, `description`, `location`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'SERVER-A1', '192.168.1.100', NULL, NULL, NULL, '2020-10-06 19:10:49', '2020-10-06 19:10:49'),
	(2, 'SERVER-A2', '192.168.1.101', NULL, NULL, NULL, '2020-10-06 19:11:01', '2020-10-06 19:11:01'),
	(3, 'SERVER-V1', '192.168.2.100', NULL, NULL, NULL, '2020-10-06 19:11:09', '2020-10-06 19:11:09');
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;

-- 正在导出表  larawatcher.services 的数据：~2 rows (大约)
DELETE FROM `services`;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`id`, `server_id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'AD 服务', NULL, NULL, '2020-10-06 19:12:21', '2020-10-06 20:32:40'),
	(2, 1, 'FileServer 文件共享服务', '文件服务器', NULL, '2020-10-06 19:13:37', '2020-10-06 20:32:49'),
	(3, 3, 'Exchange 邮箱服务', '邮箱服务', NULL, '2020-10-06 20:30:49', '2020-10-06 20:30:49'),
	(4, 3, 'ERP 服务', NULL, NULL, '2020-10-06 20:32:58', '2020-10-06 20:32:58'),
	(5, 2, 'ERP DB 服务', NULL, NULL, '2020-10-06 20:33:11', '2020-10-06 20:33:11'),
	(6, 1, 'Redis 缓存服务', NULL, NULL, '2020-10-06 20:33:25', '2020-10-06 20:33:25'),
	(7, 2, 'MES 服务', NULL, NULL, '2020-10-06 20:33:49', '2020-10-06 20:33:49');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- 正在导出表  larawatcher.service_tracks 的数据：~0 rows (大约)
DELETE FROM `service_tracks`;
/*!40000 ALTER TABLE `service_tracks` DISABLE KEYS */;
INSERT INTO `service_tracks` (`id`, `service_id`, `status`, `description`, `recovery`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '服务意外停止', '2020-10-07 19:34:11', '2020-10-06 19:39:14', '2020-10-06 19:34:13', '2020-10-06 19:39:14'),
	(2, 1, 2, '服务器电源失效', '2020-10-08 19:44:40', NULL, '2020-10-06 19:44:42', '2020-10-06 20:04:33'),
	(3, 2, 1, '服务器电源失效', '2020-10-08 19:44:40', NULL, '2020-10-06 19:44:42', '2020-10-06 19:44:42'),
	(4, 4, 1, '访问速度异常缓慢', '2020-10-09 20:34:08', NULL, '2020-10-06 20:35:15', '2020-10-06 20:35:15'),
	(5, 6, 2, '缓存IO阻塞', '2020-10-06 20:35:32', NULL, '2020-10-06 20:35:35', '2020-10-06 20:35:44');
/*!40000 ALTER TABLE `service_tracks` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
