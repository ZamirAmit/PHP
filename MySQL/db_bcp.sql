-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bgmndrlz7ef9djdqxyfg-mysql.services.clever-cloud.com:3306
-- Generation Time: Apr 20, 2021 at 05:09 PM
-- Server version: 8.0.22-13
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bgmndrlz7ef9djdqxyfg`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`uuibjej9e6w3n7as`@`%` PROCEDURE `create_tables_for_db` ()  create table types as
    select  @rownum := @rownum + 1 as id_type,
            t.`type` as type_desc
    from (SELECT DISTINCT `type` FROM `TABLE 3`) t
    cross join (select @rownum := 100) r
    order by t.`type`$$

CREATE DEFINER=`uuibjej9e6w3n7as`@`%` PROCEDURE `create_table_dailye` ()  MODIFIES SQL DATA
CREATE TABLE  daily_expances as
 select @rownum := @rownum + 1 as id_expance, b.* from (SELECT a.date, a.UserID, `types`.`id_type`, a.sum FROM `types` LEFT JOIN ( SELECT `TABLE 3`.`date`, `users`.`UserID`,`TABLE 3`.`type`,`TABLE 3`.`sum` FROM `TABLE 3` LEFT JOIN `users` ON `users`.`UserName` = `TABLE 3`.`user` ) a ON a.type = `types`.`type_desc`) b cross join (select @rownum := 1000) r$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_expances`
--

CREATE TABLE `daily_expances` (
  `id_expance` double DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `UserID` int,
  `id_type` double DEFAULT NULL,
  `sum` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daily_expances`
--

INSERT INTO `daily_expances` (`id_expance`, `date`, `UserID`, `id_type`, `sum`) VALUES
(1001, '2017-02-01', 1, 101, '112.00'),
(1002, '2017-08-01', 2, 101, '370.00'),
(1003, '2018-07-01', 1, 101, '278.00'),
(1004, '2018-07-01', 2, 101, '389.00'),
(1005, '2019-04-01', 1, 101, '172.00'),
(1006, '2019-12-01', 1, 101, '203.00'),
(1007, '2019-12-01', 2, 101, '571.00'),
(1008, '2020-01-01', 1, 101, '342.00'),
(1009, '2020-01-01', 2, 101, '448.00'),
(1010, '2020-02-01', 1, 101, '148.00'),
(1011, '2020-02-01', 2, 101, '96.00'),
(1012, '2020-03-01', 1, 101, '54.00'),
(1013, '2020-03-01', 2, 101, '568.00'),
(1014, '2020-04-01', 1, 101, '85.00'),
(1015, '2020-04-01', 2, 101, '32.00'),
(1016, '2020-05-01', 1, 101, '275.00'),
(1017, '2020-05-01', 2, 101, '123.00'),
(1018, '2020-06-01', 1, 101, '372.00'),
(1019, '2020-06-01', 2, 101, '191.00'),
(1020, '2020-07-01', 1, 101, '181.00'),
(1021, '2020-07-01', 2, 101, '220.00'),
(1022, '2020-08-01', 1, 101, '227.00'),
(1023, '2020-08-01', 2, 101, '707.00'),
(1024, '2020-09-01', 1, 101, '100.00'),
(1025, '2020-09-01', 2, 101, '650.00'),
(1026, '2020-10-01', 2, 101, '799.00'),
(1027, '2020-12-01', 2, 101, '1049.90'),
(1028, '2020-11-01', 1, 102, '282.00'),
(1029, '2020-11-01', 2, 102, '809.00'),
(1030, '2021-01-01', 2, 102, '1084.30'),
(1031, '2021-03-01', 1, 102, '41.50'),
(1032, '2021-03-01', 2, 102, '304.00'),
(1033, '2021-02-01', 2, 103, '1444.00'),
(1034, '2019-12-01', 2, 104, '105.00'),
(1035, '2016-04-01', 1, 105, '305.00'),
(1036, '2016-05-01', 1, 105, '60.00'),
(1037, '2016-06-01', 1, 105, '112.00'),
(1038, '2016-07-01', 1, 105, '112.00'),
(1039, '2016-08-01', 1, 105, '113.00'),
(1040, '2016-09-01', 1, 105, '113.00'),
(1041, '2016-09-01', 2, 105, '3500.00'),
(1042, '2016-10-01', 1, 105, '113.00'),
(1043, '2016-10-01', 2, 105, '3300.00'),
(1044, '2016-11-01', 1, 105, '87.00'),
(1045, '2016-11-01', 2, 105, '3350.00'),
(1046, '2016-12-01', 1, 105, '112.00'),
(1047, '2016-12-01', 2, 105, '3400.00'),
(1048, '2017-01-01', 1, 105, '112.00'),
(1049, '2017-01-01', 2, 105, '3300.00'),
(1050, '2017-02-01', 1, 105, '113.00'),
(1051, '2017-02-01', 2, 105, '3300.00'),
(1052, '2017-03-01', 1, 105, '112.00'),
(1053, '2017-03-01', 2, 105, '3300.00'),
(1054, '2017-04-01', 1, 105, '112.00'),
(1055, '2017-04-01', 2, 105, '3800.00'),
(1056, '2017-05-01', 2, 105, '113.00'),
(1057, '2017-06-01', 2, 105, '200.00'),
(1058, '2017-06-01', 2, 105, '121.00'),
(1059, '2017-07-01', 2, 105, '121.00'),
(1060, '2017-08-01', 2, 105, '415.00'),
(1061, '2017-08-01', 2, 105, '121.00'),
(1062, '2017-09-01', 2, 105, '121.00'),
(1063, '2017-10-01', 2, 105, '121.00'),
(1064, '2017-11-01', 2, 105, '121.00'),
(1065, '2017-12-01', 2, 105, '121.00'),
(1066, '2018-01-01', 2, 105, '121.00'),
(1067, '2018-02-01', 2, 105, '121.00'),
(1068, '2018-04-01', 1, 105, '121.00'),
(1069, '2018-04-01', 2, 105, '3300.00'),
(1070, '2018-05-01', 1, 105, '120.00'),
(1071, '2018-05-01', 2, 105, '3300.00'),
(1072, '2018-06-01', 1, 105, '121.00'),
(1073, '2018-06-01', 2, 105, '3300.00'),
(1074, '2018-07-01', 1, 105, '121.00'),
(1075, '2018-07-01', 2, 105, '3300.00'),
(1076, '2018-08-01', 1, 105, '121.00'),
(1077, '2018-08-01', 2, 105, '3300.00'),
(1078, '2018-09-01', 1, 105, '121.00'),
(1079, '2018-09-01', 2, 105, '3300.00'),
(1080, '2018-10-01', 1, 105, '121.00'),
(1081, '2018-10-01', 2, 105, '3300.00'),
(1082, '2018-11-01', 2, 105, '4300.00'),
(1083, '2018-11-01', 2, 105, '121.00'),
(1084, '2018-12-01', 2, 105, '3300.00'),
(1085, '2019-01-01', 1, 105, '242.00'),
(1086, '2019-01-01', 2, 105, '3300.00'),
(1087, '2019-02-01', 1, 105, '121.00'),
(1088, '2019-02-01', 2, 105, '3305.00'),
(1089, '2019-03-01', 1, 105, '121.00'),
(1090, '2019-03-01', 2, 105, '3300.00'),
(1091, '2019-04-01', 1, 105, '121.00'),
(1092, '2019-04-01', 2, 105, '3300.00'),
(1093, '2019-05-01', 1, 105, '121.00'),
(1094, '2019-05-01', 2, 105, '4148.00'),
(1095, '2019-06-01', 1, 105, '121.00'),
(1096, '2019-06-01', 2, 105, '3300.00'),
(1097, '2019-07-01', 2, 105, '3300.00'),
(1098, '2019-07-01', 2, 105, '121.00'),
(1099, '2019-08-01', 2, 105, '121.00'),
(1100, '2019-09-01', 1, 105, '121.00'),
(1101, '2019-09-01', 2, 105, '120.00'),
(1102, '2019-10-01', 1, 105, '121.00'),
(1103, '2019-11-01', 2, 105, '121.00'),
(1104, '2019-12-01', 2, 105, '1161.00'),
(1105, '2019-12-01', 2, 105, '121.00'),
(1106, '2020-01-01', 2, 105, '500.00'),
(1107, '2020-01-01', 2, 105, '121.00'),
(1108, '2020-02-01', 2, 105, '500.00'),
(1109, '2020-02-01', 2, 105, '123.00'),
(1110, '2020-03-01', 1, 105, '134.00'),
(1111, '2020-03-01', 2, 105, '320.00'),
(1112, '2020-04-01', 2, 105, '317.50'),
(1113, '2020-04-01', 2, 105, '134.00'),
(1114, '2020-05-01', 1, 105, '134.00'),
(1115, '2020-05-01', 2, 105, '200.00'),
(1116, '2020-06-01', 1, 105, '134.00'),
(1117, '2020-06-01', 2, 105, '820.00'),
(1118, '2020-07-01', 1, 105, '134.00'),
(1119, '2020-07-01', 2, 105, '97.00'),
(1120, '2020-08-01', 1, 105, '134.00'),
(1121, '2020-09-01', 2, 105, '134.00'),
(1122, '2020-10-01', 2, 105, '134.00'),
(1123, '2020-11-01', 2, 105, '134.00'),
(1124, '2020-12-01', 2, 105, '134.00'),
(1125, '2021-01-01', 2, 105, '319.92'),
(1126, '2021-03-01', 2, 105, '981.03'),
(1127, '2021-03-01', 2, 105, '57.21'),
(1128, '2018-03-01', 1, 106, '121.00'),
(1129, '2018-03-01', 2, 106, '600.00'),
(1130, '2018-04-01', 2, 107, '1226.00'),
(1131, '2018-05-01', 2, 108, '1079.00'),
(1132, '2018-03-01', 2, 109, '400.00'),
(1133, '2016-05-01', 2, 110, '525.00'),
(1134, '2016-07-01', 2, 110, '380.00'),
(1135, '2016-09-01', 1, 110, '375.00'),
(1136, '2016-11-01', 1, 110, '375.00'),
(1137, '2016-12-01', 1, 110, '371.00'),
(1138, '2017-02-01', 1, 110, '383.00'),
(1139, '2017-05-01', 2, 110, '382.00'),
(1140, '2017-07-01', 2, 110, '390.00'),
(1141, '2017-09-01', 2, 110, '382.00'),
(1142, '2017-10-01', 2, 110, '383.00'),
(1143, '2018-01-01', 2, 110, '363.00'),
(1144, '2018-03-01', 2, 110, '406.00'),
(1145, '2018-05-01', 1, 110, '390.00'),
(1146, '2018-07-01', 1, 110, '398.00'),
(1147, '2018-09-01', 1, 110, '394.00'),
(1148, '2018-11-01', 1, 110, '395.00'),
(1149, '2019-01-01', 1, 110, '380.00'),
(1150, '2019-02-01', 1, 110, '391.00'),
(1151, '2019-05-01', 1, 110, '391.00'),
(1152, '2019-07-01', 1, 110, '400.00'),
(1153, '2019-09-01', 1, 110, '377.00'),
(1154, '2019-11-01', 2, 110, '394.00'),
(1155, '2020-01-01', 2, 110, '379.00'),
(1156, '2020-03-01', 2, 110, '416.00'),
(1157, '2020-05-01', 2, 110, '390.00'),
(1158, '2020-07-01', 2, 110, '389.00'),
(1159, '2020-09-01', 2, 110, '421.00'),
(1160, '2020-11-01', 2, 110, '398.00'),
(1161, '2021-01-01', 2, 110, '393.53'),
(1162, '2021-03-01', 2, 110, '405.70'),
(1163, '2018-10-01', 1, 111, '289.00'),
(1164, '2016-05-01', 1, 112, '147.00'),
(1165, '2016-06-01', 1, 112, '1101.00'),
(1166, '2016-07-01', 1, 112, '236.00'),
(1167, '2018-04-01', 1, 113, '232.00'),
(1168, '2020-01-01', 1, 114, '528.00'),
(1169, '2020-01-01', 2, 114, '138.00'),
(1170, '2020-06-01', 1, 115, '60.00'),
(1171, '2020-06-01', 2, 115, '95.00'),
(1172, '2016-07-01', 2, 116, '234.00'),
(1173, '2016-09-01', 1, 116, '105.00'),
(1174, '2016-11-01', 1, 116, '110.00'),
(1175, '2017-01-01', 1, 116, '112.00'),
(1176, '2017-03-01', 1, 116, '126.00'),
(1177, '2017-05-01', 2, 116, '80.00'),
(1178, '2017-07-01', 2, 116, '98.00'),
(1179, '2017-09-01', 2, 116, '193.00'),
(1180, '2017-11-01', 2, 116, '103.00'),
(1181, '2018-01-01', 2, 116, '148.00'),
(1182, '2018-03-01', 2, 116, '129.00'),
(1183, '2018-05-01', 1, 116, '72.00'),
(1184, '2018-09-01', 1, 116, '155.00'),
(1185, '2018-11-01', 1, 116, '89.00'),
(1186, '2019-01-01', 1, 116, '81.00'),
(1187, '2019-03-01', 1, 116, '90.00'),
(1188, '2019-05-01', 1, 116, '71.00'),
(1189, '2019-07-01', 1, 116, '70.00'),
(1190, '2019-09-01', 1, 116, '115.00'),
(1191, '2019-11-01', 2, 116, '89.00'),
(1192, '2020-01-01', 2, 116, '118.00'),
(1193, '2020-03-01', 2, 116, '115.00'),
(1194, '2020-07-01', 1, 116, '277.00'),
(1195, '2020-10-01', 2, 116, '112.00'),
(1196, '2020-11-01', 2, 116, '118.00'),
(1197, '2021-01-01', 2, 116, '125.94'),
(1198, '2021-03-01', 2, 116, '149.61'),
(1199, '2016-04-01', 1, 117, '150.00'),
(1200, '2016-04-01', 2, 117, '495.00'),
(1201, '2016-05-01', 2, 117, '340.00'),
(1202, '2016-06-01', 1, 117, '175.00'),
(1203, '2016-06-01', 2, 117, '160.00'),
(1204, '2016-07-01', 1, 117, '156.00'),
(1205, '2016-07-01', 2, 117, '170.00'),
(1206, '2016-08-01', 2, 117, '330.00'),
(1207, '2016-09-01', 1, 117, '345.00'),
(1208, '2016-10-01', 1, 117, '342.00'),
(1209, '2016-11-01', 1, 117, '502.00'),
(1210, '2016-11-01', 2, 117, '176.00'),
(1211, '2016-12-01', 1, 117, '371.00'),
(1212, '2017-01-01', 1, 117, '180.00'),
(1213, '2017-02-01', 1, 117, '611.00'),
(1214, '2017-02-01', 2, 117, '370.00'),
(1215, '2017-03-01', 1, 117, '655.00'),
(1216, '2017-04-01', 1, 117, '906.00'),
(1217, '2017-04-01', 2, 117, '180.00'),
(1218, '2017-05-01', 2, 117, '500.00'),
(1219, '2017-06-01', 2, 117, '409.00'),
(1220, '2017-07-01', 2, 117, '691.00'),
(1221, '2017-08-01', 2, 117, '468.00'),
(1222, '2017-09-01', 2, 117, '172.00'),
(1223, '2017-10-01', 2, 117, '352.00'),
(1224, '2017-11-01', 2, 117, '328.00'),
(1225, '2018-01-01', 2, 117, '182.00'),
(1226, '2018-02-01', 2, 117, '185.00'),
(1227, '2018-03-01', 1, 117, '181.00'),
(1228, '2018-03-01', 2, 117, '342.00'),
(1229, '2018-04-01', 1, 117, '361.00'),
(1230, '2018-10-01', 1, 117, '471.00'),
(1231, '2019-02-01', 1, 117, '239.00'),
(1232, '2019-02-01', 2, 117, '213.00'),
(1233, '2019-03-01', 1, 117, '100.00'),
(1234, '2019-03-01', 2, 117, '223.00'),
(1235, '2019-04-01', 1, 117, '244.00'),
(1236, '2019-12-01', 1, 117, '479.00'),
(1237, '2020-03-01', 1, 117, '12.00'),
(1238, '2020-03-01', 2, 117, '212.00'),
(1239, '2020-04-01', 1, 117, '10.00'),
(1240, '2020-04-01', 2, 117, '157.00'),
(1241, '2018-05-01', 1, 118, '759.00'),
(1242, '2018-10-01', 1, 118, '135.00'),
(1243, '2020-05-01', 1, 118, '406.00'),
(1244, '2020-05-01', 2, 118, '1388.00'),
(1245, '2020-06-01', 1, 118, '248.00'),
(1246, '2020-06-01', 2, 118, '1185.00'),
(1247, '2020-07-01', 1, 118, '22.00'),
(1248, '2020-07-01', 2, 118, '878.00'),
(1249, '2020-08-01', 1, 118, '7.00'),
(1250, '2020-08-01', 2, 118, '690.00'),
(1251, '2020-09-01', 1, 118, '7.00'),
(1252, '2020-09-01', 2, 118, '696.00'),
(1253, '2020-10-01', 2, 118, '312.00'),
(1254, '2020-11-01', 2, 118, '561.00'),
(1255, '2020-12-01', 2, 118, '148.08'),
(1256, '2021-01-01', 1, 118, '2.50'),
(1257, '2021-01-01', 2, 118, '1927.55'),
(1258, '2021-02-01', 2, 118, '1800.89'),
(1259, '2021-03-01', 2, 118, '825.89'),
(1260, '2021-04-01', 2, 118, '825.89'),
(1261, '2018-06-01', 1, 119, '1442.00'),
(1262, '2018-06-01', 2, 119, '210.00'),
(1263, '2018-11-01', 1, 120, '909.00'),
(1264, '2018-11-01', 2, 120, '270.00'),
(1265, '2018-12-01', 1, 120, '707.00'),
(1266, '2018-12-01', 2, 120, '214.00'),
(1267, '2019-01-01', 1, 120, '235.00'),
(1268, '2019-01-01', 2, 120, '214.00'),
(1269, '2020-01-01', 1, 120, '253.00'),
(1270, '2020-01-01', 2, 120, '395.00'),
(1271, '2020-02-01', 1, 120, '255.00'),
(1272, '2020-02-01', 2, 120, '416.00'),
(1273, '2016-04-01', 2, 121, '1500.00'),
(1274, '2017-08-01', 1, 122, '120.00'),
(1275, '2018-06-01', 1, 122, '362.00'),
(1276, '2018-12-01', 1, 122, '265.00'),
(1277, '2018-12-01', 2, 122, '47.00'),
(1278, '2020-09-01', 2, 122, '203.00'),
(1279, '2018-11-01', 1, 123, '565.00'),
(1280, '2020-04-01', 1, 124, '430.00'),
(1281, '2020-04-01', 2, 124, '64.00'),
(1282, '2016-05-01', 2, 125, '65.00'),
(1283, '2016-06-01', 2, 125, '65.00'),
(1284, '2016-07-01', 2, 125, '65.00'),
(1285, '2016-08-01', 2, 125, '65.00'),
(1286, '2016-10-01', 2, 126, '50.00'),
(1287, '2016-11-01', 2, 126, '50.00'),
(1288, '2016-12-01', 2, 126, '50.00'),
(1289, '2017-01-01', 2, 126, '50.00'),
(1290, '2017-04-01', 2, 127, '500.00'),
(1291, '2016-05-01', 2, 128, '150.00'),
(1292, '2016-06-01', 2, 128, '60.00'),
(1293, '2016-07-01', 2, 128, '60.00'),
(1294, '2016-08-01', 2, 128, '60.00'),
(1295, '2016-09-01', 2, 128, '60.00'),
(1296, '2016-11-01', 1, 128, '180.00'),
(1297, '2017-01-01', 1, 128, '180.00'),
(1298, '2017-05-01', 2, 128, '60.00'),
(1299, '2017-06-01', 2, 128, '60.00'),
(1300, '2017-07-01', 2, 128, '60.00'),
(1301, '2017-08-01', 2, 128, '60.00'),
(1302, '2017-09-01', 2, 128, '60.00'),
(1303, '2017-10-01', 2, 128, '60.00'),
(1304, '2017-11-01', 2, 128, '60.00'),
(1305, '2017-12-01', 2, 128, '60.00'),
(1306, '2018-01-01', 2, 128, '60.00'),
(1307, '2018-02-01', 2, 128, '60.00'),
(1308, '2018-03-01', 2, 128, '60.00'),
(1309, '2018-04-01', 1, 128, '60.00'),
(1310, '2018-05-01', 1, 128, '60.00'),
(1311, '2018-06-01', 1, 128, '60.00'),
(1312, '2018-07-01', 1, 128, '60.00'),
(1313, '2018-08-01', 1, 128, '60.00'),
(1314, '2018-09-01', 1, 128, '60.00'),
(1315, '2018-10-01', 1, 128, '60.00'),
(1316, '2018-11-01', 1, 128, '60.00'),
(1317, '2018-12-01', 1, 128, '60.00'),
(1318, '2019-01-01', 1, 128, '60.00'),
(1319, '2019-02-01', 1, 128, '60.00'),
(1320, '2019-03-01', 1, 128, '60.00'),
(1321, '2019-04-01', 1, 128, '60.00'),
(1322, '2019-05-01', 1, 128, '60.00'),
(1323, '2019-06-01', 1, 128, '60.00'),
(1324, '2019-07-01', 1, 128, '60.00'),
(1325, '2019-08-01', 2, 128, '60.00'),
(1326, '2019-09-01', 2, 128, '60.00'),
(1327, '2019-10-01', 2, 128, '60.00'),
(1328, '2019-11-01', 2, 128, '60.00'),
(1329, '2019-12-01', 2, 128, '60.00'),
(1330, '2020-01-01', 2, 128, '60.00'),
(1331, '2020-02-01', 2, 128, '60.00'),
(1332, '2020-03-01', 2, 128, '60.00'),
(1333, '2020-04-01', 2, 128, '60.00'),
(1334, '2020-05-01', 2, 128, '60.00'),
(1335, '2020-06-01', 2, 128, '60.00'),
(1336, '2020-07-01', 2, 128, '60.00'),
(1337, '2020-08-01', 2, 128, '60.00'),
(1338, '2020-09-01', 2, 128, '60.00'),
(1339, '2020-10-01', 2, 128, '60.00'),
(1340, '2020-11-01', 2, 128, '60.00'),
(1341, '2020-12-01', 2, 128, '60.00'),
(1342, '2021-01-01', 2, 128, '60.00'),
(1343, '2021-02-01', 2, 128, '60.00'),
(1344, '2021-03-01', 2, 128, '60.00'),
(1345, '2021-04-01', 2, 128, '60.00'),
(1346, '2019-03-01', 1, 129, '867.00'),
(1347, '2019-03-01', 2, 129, '1107.00'),
(1348, '2019-04-01', 1, 130, '1619.00'),
(1349, '2019-04-01', 2, 130, '1595.00'),
(1350, '2019-09-01', 2, 130, '500.00'),
(1351, '2019-10-01', 2, 130, '500.00'),
(1352, '2019-11-01', 2, 130, '500.00'),
(1353, '2016-05-01', 2, 131, '100.00'),
(1354, '2016-11-01', 1, 132, '52.00'),
(1355, '2016-05-01', 2, 133, '215.00'),
(1356, '2016-08-01', 2, 133, '555.00'),
(1357, '2016-10-01', 1, 133, '662.00'),
(1358, '2016-12-01', 1, 133, '528.00'),
(1359, '2017-01-01', 1, 133, '573.00'),
(1360, '2017-03-01', 2, 133, '536.00'),
(1361, '2017-05-01', 2, 133, '535.00'),
(1362, '2017-09-01', 2, 133, '679.00'),
(1363, '2017-10-01', 2, 133, '858.00'),
(1364, '2017-12-01', 2, 133, '740.00'),
(1365, '2018-02-01', 2, 133, '635.00'),
(1366, '2018-04-01', 1, 133, '556.00'),
(1367, '2018-06-01', 1, 133, '503.00'),
(1368, '2018-08-01', 1, 133, '614.00'),
(1369, '2018-10-01', 1, 133, '713.00'),
(1370, '2019-01-01', 1, 133, '1399.00'),
(1371, '2019-03-01', 1, 133, '617.00'),
(1372, '2019-06-01', 1, 133, '465.00'),
(1373, '2019-08-01', 2, 133, '706.00'),
(1374, '2019-10-01', 2, 133, '762.00'),
(1375, '2019-12-01', 2, 133, '691.00'),
(1376, '2020-02-01', 2, 133, '620.00'),
(1377, '2020-04-01', 2, 133, '577.00'),
(1378, '2020-06-01', 2, 133, '477.00'),
(1379, '2020-08-01', 2, 133, '716.00'),
(1380, '2020-10-01', 2, 133, '762.00'),
(1381, '2020-12-01', 2, 133, '685.00'),
(1382, '2021-02-01', 2, 133, '580.45'),
(1383, '2017-01-01', 1, 134, '710.00'),
(1384, '2017-02-01', 1, 134, '195.00'),
(1385, '2017-03-01', 1, 134, '115.00'),
(1386, '2017-04-01', 1, 134, '834.00'),
(1387, '2017-04-01', 2, 134, '419.00'),
(1388, '2017-05-01', 2, 134, '300.00'),
(1389, '2017-06-01', 1, 134, '19.00'),
(1390, '2017-06-01', 2, 134, '792.00'),
(1391, '2017-07-01', 1, 134, '46.00'),
(1392, '2017-07-01', 2, 134, '348.00'),
(1393, '2017-08-01', 2, 134, '391.00'),
(1394, '2017-09-01', 2, 134, '239.00'),
(1395, '2017-10-01', 2, 134, '178.00'),
(1396, '2017-11-01', 2, 134, '313.00'),
(1397, '2017-12-01', 2, 134, '620.00'),
(1398, '2018-01-01', 2, 134, '665.00'),
(1399, '2018-02-01', 2, 134, '530.00'),
(1400, '2018-03-01', 1, 134, '237.00'),
(1401, '2018-03-01', 2, 134, '432.00'),
(1402, '2018-04-01', 1, 134, '653.00'),
(1403, '2018-04-01', 2, 134, '288.00'),
(1404, '2018-05-01', 1, 134, '1191.00'),
(1405, '2018-06-01', 1, 134, '592.00'),
(1406, '2018-07-01', 1, 134, '215.00'),
(1407, '2018-07-01', 2, 134, '357.00'),
(1408, '2018-08-01', 1, 134, '118.00'),
(1409, '2018-08-01', 2, 134, '357.00'),
(1410, '2018-09-01', 1, 134, '330.00'),
(1411, '2018-10-01', 1, 134, '595.00'),
(1412, '2018-10-01', 2, 134, '161.00'),
(1413, '2018-11-01', 1, 134, '269.00'),
(1414, '2018-11-01', 2, 134, '100.00'),
(1415, '2018-12-01', 1, 134, '741.00'),
(1416, '2018-12-01', 2, 134, '449.00'),
(1417, '2019-01-01', 1, 134, '246.00'),
(1418, '2019-01-01', 2, 134, '340.00'),
(1419, '2019-02-01', 1, 134, '528.00'),
(1420, '2019-02-01', 2, 134, '267.00'),
(1421, '2019-03-01', 1, 134, '527.00'),
(1422, '2019-03-01', 2, 134, '589.00'),
(1423, '2019-04-01', 1, 134, '600.00'),
(1424, '2019-05-01', 1, 134, '254.00'),
(1425, '2019-06-01', 1, 134, '444.00'),
(1426, '2019-06-01', 2, 134, '277.00'),
(1427, '2019-07-01', 1, 134, '533.00'),
(1428, '2019-07-01', 2, 134, '277.00'),
(1429, '2019-08-01', 2, 134, '791.00'),
(1430, '2019-09-01', 2, 134, '515.00'),
(1431, '2019-10-01', 2, 134, '277.00'),
(1432, '2019-11-01', 2, 134, '619.00'),
(1433, '2019-12-01', 1, 134, '100.00'),
(1434, '2019-12-01', 2, 134, '478.00'),
(1435, '2020-01-01', 2, 134, '666.00'),
(1436, '2020-02-01', 2, 134, '358.00'),
(1437, '2020-03-01', 1, 134, '210.00'),
(1438, '2020-03-01', 2, 134, '358.00'),
(1439, '2020-04-01', 1, 134, '211.00'),
(1440, '2020-05-01', 1, 134, '448.00'),
(1441, '2020-05-01', 2, 134, '232.00'),
(1442, '2020-06-01', 1, 134, '236.00'),
(1443, '2020-06-01', 2, 134, '139.00'),
(1444, '2020-07-01', 2, 134, '232.00'),
(1445, '2020-08-01', 2, 134, '232.00'),
(1446, '2020-09-01', 2, 134, '430.00'),
(1447, '2020-10-01', 2, 134, '198.00'),
(1448, '2020-11-01', 2, 134, '305.00'),
(1449, '2020-12-01', 2, 134, '942.45'),
(1450, '2021-01-01', 2, 134, '506.45'),
(1451, '2021-02-01', 2, 134, '2108.45'),
(1452, '2021-03-01', 2, 134, '400.45'),
(1453, '2021-04-01', 2, 134, '182.20'),
(1454, '2020-07-01', 2, 135, '250.00'),
(1455, '2020-08-01', 2, 135, '250.00'),
(1456, '2020-09-01', 2, 135, '250.00'),
(1457, '2018-04-01', 2, 136, '290.00'),
(1458, '2016-08-01', 2, 137, '220.00'),
(1459, '2016-11-01', 1, 137, '312.00'),
(1460, '2016-12-01', 1, 137, '387.00'),
(1461, '2017-01-01', 1, 137, '242.00'),
(1462, '2017-03-01', 1, 137, '230.00'),
(1463, '2017-06-01', 2, 137, '290.00'),
(1464, '2017-07-01', 2, 137, '249.00'),
(1465, '2017-09-01', 2, 137, '244.00'),
(1466, '2017-11-01', 2, 137, '308.00'),
(1467, '2018-01-01', 2, 137, '273.00'),
(1468, '2018-03-01', 1, 137, '282.00'),
(1469, '2018-05-01', 1, 137, '273.00'),
(1470, '2018-07-01', 1, 137, '250.00'),
(1471, '2018-09-01', 1, 137, '358.00'),
(1472, '2018-12-01', 1, 137, '357.00'),
(1473, '2019-01-01', 1, 137, '127.00'),
(1474, '2019-03-01', 1, 137, '309.00'),
(1475, '2019-05-01', 1, 137, '275.00'),
(1476, '2019-07-01', 1, 137, '224.00'),
(1477, '2019-09-01', 1, 137, '381.00'),
(1478, '2019-12-01', 2, 137, '352.00'),
(1479, '2020-01-01', 2, 137, '324.00'),
(1480, '2020-03-01', 2, 137, '322.00'),
(1481, '2020-05-01', 2, 137, '379.00'),
(1482, '2020-07-01', 2, 137, '376.00'),
(1483, '2020-09-01', 2, 137, '357.00'),
(1484, '2020-11-01', 2, 137, '440.00'),
(1485, '2021-01-01', 2, 137, '399.08'),
(1486, '2021-03-01', 2, 137, '365.74'),
(1487, '2018-07-01', 2, 138, '302.00'),
(1488, '2018-08-01', 2, 138, '302.00'),
(1489, '2018-09-01', 2, 138, '302.00'),
(1490, '2018-10-01', 2, 138, '302.00'),
(1491, '2018-11-01', 2, 138, '302.00'),
(1492, '2017-12-01', 2, 139, '198.00'),
(1493, '2017-05-01', 1, 140, '95.00'),
(1494, '2016-04-01', 1, 141, '220.00'),
(1495, '2016-04-01', 2, 141, '1980.00'),
(1496, '2016-05-01', 1, 141, '896.00'),
(1497, '2016-05-01', 2, 141, '1728.00'),
(1498, '2016-06-01', 1, 141, '772.00'),
(1499, '2016-06-01', 2, 141, '1696.00'),
(1500, '2016-07-01', 1, 141, '572.00'),
(1501, '2016-07-01', 2, 141, '2341.00'),
(1502, '2016-08-01', 1, 141, '1097.00'),
(1503, '2016-08-01', 2, 141, '1657.00'),
(1504, '2016-09-01', 1, 141, '3813.00'),
(1505, '2016-09-01', 2, 141, '1204.00'),
(1506, '2016-10-01', 1, 141, '200.00'),
(1507, '2016-10-01', 2, 141, '55.00'),
(1508, '2016-11-01', 1, 141, '124.00'),
(1509, '2016-12-01', 1, 141, '838.00'),
(1510, '2016-12-01', 2, 141, '50.00'),
(1511, '2017-01-01', 1, 141, '70.40'),
(1512, '2017-03-01', 1, 141, '257.00'),
(1513, '2017-03-01', 2, 141, '389.00'),
(1514, '2017-04-01', 1, 141, '1023.00'),
(1515, '2017-04-01', 2, 141, '669.00'),
(1516, '2017-05-01', 1, 141, '32.00'),
(1517, '2017-05-01', 2, 141, '537.00'),
(1518, '2017-06-01', 1, 141, '43.00'),
(1519, '2017-06-01', 2, 141, '1160.00'),
(1520, '2017-07-01', 1, 141, '197.00'),
(1521, '2017-07-01', 2, 141, '690.00'),
(1522, '2017-08-01', 2, 141, '345.00'),
(1523, '2017-09-01', 2, 141, '167.00'),
(1524, '2017-10-01', 1, 141, '51.00'),
(1525, '2017-10-01', 2, 141, '38.00'),
(1526, '2017-11-01', 2, 141, '31.00'),
(1527, '2017-12-01', 2, 141, '92.00'),
(1528, '2018-01-01', 1, 141, '87.00'),
(1529, '2018-01-01', 2, 141, '772.00'),
(1530, '2018-02-01', 2, 141, '233.00'),
(1531, '2018-03-01', 1, 141, '513.00'),
(1532, '2018-03-01', 2, 141, '1223.00'),
(1533, '2018-04-01', 1, 141, '1601.00'),
(1534, '2018-04-01', 2, 141, '399.00'),
(1535, '2018-05-01', 1, 141, '1254.00'),
(1536, '2018-05-01', 2, 141, '332.00'),
(1537, '2018-06-01', 1, 141, '560.00'),
(1538, '2018-06-01', 2, 141, '553.00'),
(1539, '2018-07-01', 1, 141, '672.00'),
(1540, '2018-07-01', 2, 141, '335.00'),
(1541, '2018-08-01', 1, 141, '1365.00'),
(1542, '2018-08-01', 2, 141, '214.00'),
(1543, '2018-09-01', 1, 141, '2881.00'),
(1544, '2018-09-01', 2, 141, '541.00'),
(1545, '2018-10-01', 1, 141, '1307.00'),
(1546, '2018-10-01', 2, 141, '279.00'),
(1547, '2018-11-01', 1, 141, '899.00'),
(1548, '2018-11-01', 2, 141, '203.00'),
(1549, '2018-12-01', 1, 141, '955.00'),
(1550, '2018-12-01', 2, 141, '608.00'),
(1551, '2019-02-01', 1, 141, '967.00'),
(1552, '2019-02-01', 2, 141, '606.00'),
(1553, '2019-03-01', 1, 141, '990.00'),
(1554, '2019-03-01', 2, 141, '581.00'),
(1555, '2019-04-01', 1, 141, '712.00'),
(1556, '2019-04-01', 2, 141, '329.00'),
(1557, '2019-05-01', 1, 141, '998.00'),
(1558, '2019-05-01', 2, 141, '156.00'),
(1559, '2019-06-01', 1, 141, '534.00'),
(1560, '2019-06-01', 2, 141, '287.00'),
(1561, '2019-07-01', 1, 141, '510.00'),
(1562, '2019-07-01', 2, 141, '711.00'),
(1563, '2019-08-01', 1, 141, '1053.00'),
(1564, '2019-08-01', 2, 141, '427.00'),
(1565, '2019-09-01', 1, 141, '729.00'),
(1566, '2019-09-01', 2, 141, '1317.00'),
(1567, '2019-10-01', 1, 141, '850.00'),
(1568, '2019-10-01', 2, 141, '3110.00'),
(1569, '2019-11-01', 1, 141, '600.00'),
(1570, '2019-11-01', 2, 141, '2558.00'),
(1571, '2020-06-01', 1, 141, '96.00'),
(1572, '2020-08-01', 1, 141, '472.00'),
(1573, '2016-10-01', 1, 142, '1987.00'),
(1574, '2016-11-01', 1, 142, '2102.00'),
(1575, '2016-11-01', 2, 142, '234.00'),
(1576, '2016-12-01', 1, 142, '1722.00'),
(1577, '2016-12-01', 2, 142, '822.00'),
(1578, '2017-01-01', 1, 142, '1368.00'),
(1579, '2017-01-01', 2, 142, '462.00'),
(1580, '2017-02-01', 1, 142, '2182.00'),
(1581, '2017-02-01', 2, 142, '560.00'),
(1582, '2017-03-01', 1, 142, '2434.00'),
(1583, '2017-03-01', 2, 142, '278.00'),
(1584, '2017-04-01', 1, 142, '1687.00'),
(1585, '2017-05-01', 1, 142, '598.00'),
(1586, '2017-05-01', 2, 142, '1470.00'),
(1587, '2017-06-01', 1, 142, '838.00'),
(1588, '2017-06-01', 2, 142, '1531.00'),
(1589, '2017-07-01', 2, 142, '1980.00'),
(1590, '2017-08-01', 1, 142, '67.00'),
(1591, '2017-08-01', 2, 142, '1369.00'),
(1592, '2017-09-01', 1, 142, '192.00'),
(1593, '2017-09-01', 2, 142, '2241.00'),
(1594, '2017-10-01', 1, 142, '310.00'),
(1595, '2017-10-01', 2, 142, '2033.00'),
(1596, '2017-11-01', 1, 142, '98.00'),
(1597, '2017-11-01', 2, 142, '3120.00'),
(1598, '2017-12-01', 1, 142, '37.00'),
(1599, '2017-12-01', 2, 142, '2084.00'),
(1600, '2018-01-01', 2, 142, '2313.00'),
(1601, '2018-02-01', 2, 142, '2162.00'),
(1602, '2018-03-01', 1, 142, '257.00'),
(1603, '2018-03-01', 2, 142, '1601.00'),
(1604, '2018-04-01', 1, 142, '1618.00'),
(1605, '2018-05-01', 1, 142, '1057.00'),
(1606, '2018-05-01', 2, 142, '494.00'),
(1607, '2018-06-01', 1, 142, '1076.00'),
(1608, '2018-06-01', 2, 142, '1287.00'),
(1609, '2018-07-01', 1, 142, '2019.00'),
(1610, '2018-07-01', 2, 142, '605.00'),
(1611, '2018-08-01', 1, 142, '1879.00'),
(1612, '2018-08-01', 2, 142, '37.00'),
(1613, '2018-10-01', 1, 142, '1688.00'),
(1614, '2018-10-01', 2, 142, '1526.00'),
(1615, '2018-11-01', 1, 142, '2151.00'),
(1616, '2018-12-01', 1, 142, '2399.00'),
(1617, '2018-12-01', 2, 142, '830.00'),
(1618, '2019-01-01', 1, 142, '2029.00'),
(1619, '2019-01-01', 2, 142, '1268.00'),
(1620, '2019-02-01', 1, 142, '2239.00'),
(1621, '2019-02-01', 2, 142, '98.00'),
(1622, '2019-03-01', 1, 142, '1708.00'),
(1623, '2019-03-01', 2, 142, '592.00'),
(1624, '2019-05-01', 1, 142, '2146.00'),
(1625, '2019-05-01', 2, 142, '772.00'),
(1626, '2019-06-01', 1, 142, '2177.00'),
(1627, '2019-07-01', 1, 142, '3650.00'),
(1628, '2019-07-01', 2, 142, '896.00'),
(1629, '2019-08-01', 1, 142, '979.00'),
(1630, '2019-08-01', 2, 142, '2268.00'),
(1631, '2019-09-01', 1, 142, '36.00'),
(1632, '2019-09-01', 2, 142, '2352.00'),
(1633, '2019-10-01', 1, 142, '1652.00'),
(1634, '2019-10-01', 2, 142, '1000.00'),
(1635, '2019-11-01', 1, 142, '647.00'),
(1636, '2019-11-01', 2, 142, '2336.00'),
(1637, '2019-12-01', 1, 142, '736.00'),
(1638, '2019-12-01', 2, 142, '3292.00'),
(1639, '2020-01-01', 1, 142, '313.00'),
(1640, '2020-01-01', 2, 142, '3155.00'),
(1641, '2020-02-01', 1, 142, '367.00'),
(1642, '2020-02-01', 2, 142, '3235.00'),
(1643, '2020-03-01', 1, 142, '829.00'),
(1644, '2020-03-01', 2, 142, '2423.00'),
(1645, '2020-04-01', 1, 142, '222.00'),
(1646, '2020-04-01', 2, 142, '2909.00'),
(1647, '2020-05-01', 1, 142, '291.00'),
(1648, '2020-05-01', 2, 142, '3322.00'),
(1649, '2020-06-01', 1, 142, '916.00'),
(1650, '2020-06-01', 2, 142, '2649.00'),
(1651, '2020-07-01', 1, 142, '825.00'),
(1652, '2020-07-01', 2, 142, '2215.00'),
(1653, '2020-08-01', 1, 142, '754.00'),
(1654, '2020-08-01', 2, 142, '3449.00'),
(1655, '2020-09-01', 1, 142, '800.00'),
(1656, '2020-09-01', 2, 142, '3550.00'),
(1657, '2020-10-01', 2, 142, '4035.00'),
(1658, '2020-11-01', 1, 143, '66.00'),
(1659, '2020-11-01', 2, 143, '3594.00'),
(1660, '2020-12-01', 2, 143, '3858.03'),
(1661, '2021-01-01', 1, 143, '167.30'),
(1662, '2021-01-01', 2, 143, '3765.21'),
(1663, '2021-02-01', 2, 143, '3831.91'),
(1664, '2021-03-01', 2, 143, '429.70'),
(1665, '2019-01-01', 1, 144, '1230.00'),
(1666, '2019-01-01', 2, 144, '974.00'),
(1667, '2017-06-01', 1, 145, '872.00'),
(1668, '2019-05-01', 1, 145, '1559.00'),
(1669, '2019-06-01', 1, 145, '484.00'),
(1670, '2019-06-01', 2, 145, '827.00'),
(1671, '2019-07-01', 1, 145, '691.00'),
(1672, '2019-07-01', 2, 145, '771.00'),
(1673, '2019-08-01', 1, 145, '548.00'),
(1674, '2019-08-01', 2, 145, '1228.00'),
(1675, '2019-09-01', 1, 145, '315.00'),
(1676, '2019-09-01', 2, 145, '654.00'),
(1677, '2019-10-01', 1, 145, '234.00'),
(1678, '2019-10-01', 2, 145, '430.00'),
(1679, '2019-11-01', 1, 145, '243.00'),
(1680, '2019-11-01', 2, 145, '646.00'),
(1681, '2016-04-01', 1, 146, '3300.00'),
(1682, '2016-05-01', 1, 146, '3300.00'),
(1683, '2016-06-01', 1, 146, '3300.00'),
(1684, '2016-07-01', 1, 146, '3300.00'),
(1685, '2016-08-01', 1, 146, '2980.00'),
(1686, '2017-05-01', 1, 146, '3300.00'),
(1687, '2017-06-01', 1, 146, '3300.00'),
(1688, '2017-07-01', 1, 146, '3555.00'),
(1689, '2017-08-01', 1, 146, '3300.00'),
(1690, '2017-09-01', 1, 146, '3300.00'),
(1691, '2017-10-01', 1, 146, '3300.00'),
(1692, '2017-11-01', 1, 146, '3300.00'),
(1693, '2017-12-01', 1, 146, '3300.00'),
(1694, '2018-01-01', 1, 146, '3300.00'),
(1695, '2018-02-01', 1, 146, '3300.00'),
(1696, '2018-03-01', 1, 146, '3300.00'),
(1697, '2018-10-01', 1, 146, '156.00'),
(1698, '2018-12-01', 1, 146, '20.50'),
(1699, '2019-01-01', 1, 146, '56.50'),
(1700, '2019-03-01', 1, 146, '28.00'),
(1701, '2019-06-01', 1, 146, '400.00'),
(1702, '2019-08-01', 1, 146, '3331.00'),
(1703, '2019-09-01', 1, 146, '3485.00'),
(1704, '2019-10-01', 1, 146, '3320.00'),
(1705, '2019-11-01', 1, 146, '3300.00'),
(1706, '2019-12-01', 1, 146, '3300.00'),
(1707, '2020-01-01', 1, 146, '4041.00'),
(1708, '2020-02-01', 1, 146, '4654.00'),
(1709, '2020-03-01', 1, 146, '3320.00'),
(1710, '2020-04-01', 1, 146, '3300.00'),
(1711, '2020-05-01', 1, 146, '3300.00'),
(1712, '2020-06-01', 1, 146, '3300.00'),
(1713, '2020-07-01', 1, 146, '3339.00'),
(1714, '2020-08-01', 1, 146, '3330.00'),
(1715, '2020-09-01', 1, 146, '5482.00'),
(1716, '2020-10-01', 1, 146, '5736.00'),
(1717, '2020-11-01', 1, 146, '5028.00'),
(1718, '2020-12-01', 1, 146, '4783.65'),
(1719, '2021-01-01', 1, 146, '4140.00'),
(1720, '2021-02-01', 1, 146, '3375.30'),
(1721, '2021-03-01', 1, 146, '3300.00'),
(1722, '2021-04-01', 1, 146, '3300.00');

-- --------------------------------------------------------

--
-- Table structure for table `date_picker`
--

CREATE TABLE `date_picker` (
  `DateStart` date NOT NULL,
  `DateEnd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `date_picker`
--

INSERT INTO `date_picker` (`DateStart`, `DateEnd`) VALUES
('2018-01-01', '2018-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id_type` double DEFAULT NULL,
  `type_desc` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id_type`, `type_desc`) VALUES
(101, 'TA'),
(102, 'TA+טיפים'),
(103, 'TA+טיפים+הופעות'),
(104, 'איביי+אמזון'),
(105, 'אינטרנט'),
(106, 'אינטרנט+העברה לאבא'),
(107, 'איקאה'),
(108, 'איקאה\\הופעה'),
(109, 'אירוע'),
(110, 'ארנונה'),
(111, 'ביטוח לחו\"ל+סים'),
(112, 'ביטוח רכב'),
(113, 'בילוי'),
(114, 'בילויים'),
(115, 'בית'),
(116, 'גז'),
(117, 'דלק'),
(118, 'דלק+ביטוח'),
(119, 'דלק+ביטוח+אגרת רכב'),
(120, 'דלק+רכב'),
(121, 'הובלה'),
(122, 'הופעה'),
(123, 'הופעה+מסעדה'),
(124, 'החזר איקאה לאבא'),
(125, 'החזר בגד-ים'),
(126, 'החזר נעליים'),
(127, 'הרכבת ארון'),
(128, 'ועד בית'),
(129, 'חו\"ל'),
(130, 'חול'),
(131, 'חופשי חודש '),
(132, 'חניה אילת'),
(133, 'חשמל'),
(134, 'חתולים'),
(135, 'מדפסת'),
(136, 'מזגן'),
(137, 'מים'),
(138, 'מכונת כביסה'),
(139, 'מסעדה'),
(140, 'פיצה'),
(141, 'קניות'),
(142, 'קניות סופר'),
(143, 'קניות סופר+קניות בית+קפה'),
(144, 'קניות+הופעה'),
(145, 'רכב'),
(146, 'שכר דירה');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `UserEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `UserEmail`) VALUES
(1, 'רביד', 'shataach.ravid@gmail.com'),
(2, 'עמית', 'zamir.amit@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;