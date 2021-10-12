-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 11:11 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school-tut`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '123456789', '2021-08-08 18:48:51', '2021-08-08 18:48:51'),
(2, 'ali', 'ali@gmail.com', '123456789', '2021-08-08 18:48:51', '2021-08-08 18:48:51'),
(3, 'test', 'test@gmail.com', '123456789', '2021-08-08 18:48:51', '2021-08-08 18:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'wrong',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `quiz_id`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(69, 14, 'محلول فهلنج', 'wrong', NULL, NULL),
(70, 14, 'مبيد حشري', 'wrong', NULL, NULL),
(71, 14, 'مبيد فطيريات', 'wrong', NULL, NULL),
(72, 14, 'جميع ما سبق', 'correct', NULL, NULL),
(77, 16, 'إكــــــس', 'wrong', NULL, NULL),
(78, 16, 'حـــــــــمراء', 'wrong', NULL, NULL),
(79, 16, 'فوق بنفسجية', 'wrong', NULL, NULL),
(80, 16, 'جــــــــــامـــــــــا', 'correct', NULL, NULL),
(81, 17, '1B و 2B', 'correct', NULL, NULL),
(82, 17, '2B', 'wrong', NULL, NULL),
(83, 17, '1B', 'wrong', NULL, NULL),
(84, 17, '3B', 'wrong', NULL, NULL),
(85, 18, '30', 'wrong', NULL, NULL),
(86, 18, 'صـــفر', 'correct', NULL, NULL),
(87, 18, '10', 'wrong', NULL, NULL),
(88, 18, 'لا توجد اجابه صحيحة', 'wrong', NULL, NULL),
(89, 19, 'الحديد', 'wrong', NULL, NULL),
(90, 19, 'المنجنيز', 'correct', NULL, NULL),
(91, 19, 'التيتانيوم', 'wrong', NULL, NULL),
(92, 19, 'د- الأكتينيدات', 'wrong', NULL, NULL),
(93, 15, 'المنجنيز', 'wrong', NULL, NULL),
(94, 15, 'السكاندم', 'wrong', NULL, NULL),
(95, 15, 'التتاتنوم', 'wrong', NULL, NULL),
(96, 15, 'جميع ما سبق', 'correct', NULL, NULL),
(97, 13, 'الكروم', 'wrong', NULL, NULL),
(98, 13, 'النيكل', 'wrong', NULL, NULL),
(99, 13, 'الكوبليت', 'wrong', NULL, NULL),
(100, 13, 'الفانديوم', 'correct', NULL, NULL),
(117, 22, 'أكبر', 'correct', NULL, NULL),
(118, 22, 'أصغر', 'wrong', NULL, NULL),
(119, 22, 'يساوي', 'wrong', NULL, NULL),
(120, 22, 'لاتوجد اجابة', 'wrong', NULL, NULL),
(125, 20, 'أكبر من واحد', 'correct', NULL, NULL),
(126, 20, 'اصغر من واحد', 'wrong', NULL, NULL),
(127, 20, 'يساوي واحد', 'wrong', NULL, NULL),
(128, 20, 'لاتوجد اجابة صحيحة', 'wrong', NULL, NULL),
(129, 23, 'تيحول من البرتقالي للازرق', 'wrong', NULL, NULL),
(130, 23, 'يتحول من الازرق للبرتقالي', 'correct', NULL, NULL),
(131, 23, 'لايتأثر', 'wrong', NULL, NULL),
(132, 23, 'لاتوجد اجابة صحيحة', 'wrong', NULL, NULL),
(141, 26, 'متساوية عددا ومتشابهة توزيعا', 'wrong', NULL, NULL),
(142, 26, 'متساوية عددا ومختلفة توزيعا', 'correct', NULL, NULL),
(143, 26, 'متساوية عددا و توزيعا', 'wrong', NULL, NULL),
(144, 26, 'لا توجد إجابة صحيحة', 'wrong', NULL, NULL),
(145, 27, 'عنصر غير انتقالي', 'wrong', NULL, NULL),
(146, 27, 'عنصر انتقالي', 'wrong', NULL, NULL),
(147, 27, 'يقع في المجموعة 1B', 'wrong', NULL, NULL),
(148, 27, 'الإجابتان ب و ج معا', 'correct', NULL, NULL),
(149, 28, '+1', 'wrong', NULL, NULL),
(150, 28, '+3', 'wrong', NULL, NULL),
(151, 28, '+2', 'wrong', NULL, NULL),
(152, 28, 'الإجابتان ب و ج معا', 'correct', NULL, NULL),
(153, 29, '30', 'wrong', NULL, NULL),
(154, 29, '27', 'correct', NULL, NULL),
(155, 29, '28', 'wrong', NULL, NULL),
(156, 29, '35', 'wrong', NULL, NULL),
(157, 30, 'اكبر من الواحد', 'wrong', NULL, NULL),
(158, 30, 'اقل من الواحد', 'correct', NULL, NULL),
(159, 30, 'تساوى الواحد', 'wrong', NULL, NULL),
(160, 30, 'لا توجد اجابه صحيحه', 'wrong', NULL, NULL),
(161, 31, 'Zn', 'wrong', NULL, NULL),
(162, 31, 'Cu', 'correct', NULL, NULL),
(163, 31, 'Cr', 'wrong', NULL, NULL),
(164, 31, 'Fe', 'wrong', NULL, NULL),
(165, 32, 'حالات التاكسد', 'wrong', NULL, NULL),
(166, 32, 'عدد جالاث التاكسد', 'correct', NULL, NULL),
(167, 32, 'كل منهما عنصر انتقالى', 'wrong', NULL, NULL),
(168, 32, 'جميع ما سبق', 'wrong', NULL, NULL),
(169, 33, 'Ni', 'wrong', NULL, NULL),
(170, 33, 'Co', 'wrong', NULL, NULL),
(171, 33, 'Cd', 'wrong', NULL, NULL),
(172, 33, 'V', 'correct', NULL, NULL),
(173, 34, 'Sc21', 'wrong', NULL, NULL),
(174, 34, 'Zn30', 'wrong', NULL, NULL),
(175, 34, 'Ti22', 'wrong', NULL, NULL),
(176, 34, 'Cu29', 'wrong', NULL, NULL),
(177, 35, 'Cu+3', 'wrong', NULL, NULL),
(178, 35, 'Mn+2', 'correct', NULL, NULL),
(179, 35, 'V+2', 'wrong', NULL, NULL),
(180, 35, 'Co+3', 'wrong', NULL, NULL),
(181, 36, 'Cu+1', 'wrong', NULL, NULL),
(182, 36, 'Ti+2', 'correct', NULL, NULL),
(183, 36, 'Zn+2', 'wrong', NULL, NULL),
(184, 36, 'Mn+2', 'wrong', NULL, NULL),
(185, 37, 'الفانديوم', 'wrong', NULL, NULL),
(186, 37, 'الكروم', 'wrong', NULL, NULL),
(187, 37, 'المنجنيز', 'wrong', NULL, NULL),
(188, 37, 'الحديد', 'correct', NULL, NULL),
(189, 38, '1', 'correct', NULL, NULL),
(190, 38, '2', 'wrong', NULL, NULL),
(191, 38, '4', 'wrong', NULL, NULL),
(192, 38, '6', 'wrong', NULL, NULL),
(193, 39, 'ازدواج الإلكترونات في المستوي الفرعي 3', 'wrong', NULL, NULL),
(194, 39, 'زيادة جهد التأين', 'wrong', NULL, NULL),
(195, 39, 'أ , ب صحيحتان', 'correct', NULL, NULL),
(196, 39, 'لا توجد إجابة صحيحة', 'wrong', NULL, NULL),
(197, 40, '4,5', 'wrong', NULL, NULL),
(198, 40, '6B,7B', 'wrong', NULL, NULL),
(199, 40, '1B,2B', 'correct', NULL, NULL),
(200, 40, '9,10', 'wrong', NULL, NULL),
(201, 41, '2B', 'wrong', NULL, NULL),
(202, 41, '7B', 'wrong', NULL, NULL),
(203, 41, '8', 'correct', NULL, NULL),
(204, 41, '5B', 'wrong', NULL, NULL),
(205, 42, 'ضعف', 'correct', NULL, NULL),
(206, 42, 'ضعفين', 'wrong', NULL, NULL),
(207, 42, 'نصف', 'wrong', NULL, NULL),
(208, 42, 'يساوى', 'wrong', NULL, NULL),
(209, 43, '8', 'wrong', NULL, NULL),
(210, 43, '2', 'correct', NULL, NULL),
(211, 43, '9', 'wrong', NULL, NULL),
(212, 43, '3', 'wrong', NULL, NULL),
(217, 44, '6B', 'wrong', NULL, NULL),
(218, 44, '1B', 'wrong', NULL, NULL),
(219, 44, '8', 'correct', NULL, NULL),
(220, 44, '2B', 'wrong', NULL, NULL),
(221, 25, 'Mn+3', 'wrong', NULL, NULL),
(222, 25, 'Fe+4', 'wrong', NULL, NULL),
(223, 25, 'Cr+2', 'wrong', NULL, NULL),
(224, 25, 'v+2', 'correct', NULL, NULL),
(225, 45, 'لا يوجد له عدد تأكسد يدل علي خروج جميع إلكترونات المستوي الأخير وقبل الأخير )', 'wrong', NULL, NULL),
(226, 45, 'يحدث به ازدواج للإلكترونات داخل أوربيتالات المستوي الفرعي d', 'wrong', NULL, NULL),
(227, 45, 'لا يتعدي عدد تأكسده رقم مجموعته', 'wrong', NULL, NULL),
(228, 45, 'أ , ب معًا', 'correct', NULL, NULL),
(229, 46, '27', 'wrong', NULL, NULL),
(230, 46, '26', 'correct', NULL, NULL),
(231, 46, '25', 'wrong', NULL, NULL),
(232, 46, '22', 'wrong', NULL, NULL),
(233, 47, 'V+2', 'wrong', NULL, NULL),
(234, 47, 'V+3', 'wrong', NULL, NULL),
(235, 47, 'V+4', 'wrong', NULL, NULL),
(236, 47, 'V+5', 'correct', NULL, NULL),
(237, 48, '(A) اقل من (B) في عدد حالات التأكسد', 'wrong', NULL, NULL),
(238, 48, '- (A) يساوي (B) في نصف القطر', 'wrong', NULL, NULL),
(239, 48, '(A) ، (B) نفس عدد حالات التأكسد', 'correct', NULL, NULL),
(240, 48, '(A) اكبر من (B) في عدد حالات التأكسد', 'wrong', NULL, NULL),
(241, 49, '8', 'wrong', NULL, NULL),
(242, 49, '4', 'correct', NULL, NULL),
(243, 49, '6', 'wrong', NULL, NULL),
(244, 49, '3', 'wrong', NULL, NULL),
(245, 50, 'انتقالى فقط', 'wrong', NULL, NULL),
(246, 50, 'غير انتقالى فقط', 'wrong', NULL, NULL),
(247, 50, 'انتقالى وغير انتقالى', 'correct', NULL, NULL),
(248, 50, 'خامل', 'wrong', NULL, NULL),
(249, 51, 'Sc', 'correct', NULL, NULL),
(250, 51, 'Cu', 'wrong', NULL, NULL),
(251, 51, 'Ti', 'wrong', NULL, NULL),
(252, 51, 'V', 'wrong', NULL, NULL),
(253, 52, '3(Mn2(So4', 'wrong', NULL, NULL),
(254, 52, 'MnSo4', 'wrong', NULL, NULL),
(255, 52, 'FeSo4', 'correct', NULL, NULL),
(256, 52, '3(Fe2(So4', 'wrong', NULL, NULL),
(257, 53, 'Na', 'correct', NULL, NULL),
(258, 53, 'Ti', 'wrong', NULL, NULL),
(259, 53, 'Cu', 'wrong', NULL, NULL),
(260, 53, 'أ و ج صحيحتان', 'wrong', NULL, NULL),
(261, 54, '+6', 'correct', NULL, NULL),
(262, 54, '+4', 'wrong', NULL, NULL),
(263, 54, '+3', 'wrong', NULL, NULL),
(264, 54, '+2', 'wrong', NULL, NULL),
(265, 55, 'أ- السيدريت', 'wrong', NULL, NULL),
(266, 55, 'ب- الليمونيت', 'correct', NULL, NULL),
(267, 55, 'ج- الهيماتيت', 'wrong', NULL, NULL),
(268, 55, 'د- المجنتيت', 'wrong', NULL, NULL),
(269, 56, 'اصفر', 'wrong', NULL, NULL),
(270, 56, 'ازرق', 'wrong', NULL, NULL),
(271, 56, 'احمر', 'correct', NULL, NULL),
(272, 56, 'اخضر', 'wrong', NULL, NULL),
(273, 57, 'التكسير', 'wrong', NULL, NULL),
(274, 57, 'التحميص', 'correct', NULL, NULL),
(275, 57, 'التلبيد', 'wrong', NULL, NULL),
(276, 57, 'التركيز والتنقيه', 'wrong', NULL, NULL),
(277, 58, '- أكسيد الحديد III', 'wrong', NULL, NULL),
(278, 58, '- أكسيد الحديد المغناطيسي', 'wrong', NULL, NULL),
(279, 58, '- أكسيد الحديد II', 'correct', NULL, NULL),
(280, 58, 'فلز الحديد', 'wrong', NULL, NULL),
(281, 59, 'أكسيد الحديد II', 'wrong', NULL, NULL),
(282, 59, '- خليط من أكسيدي الحديد ( II , III )', 'wrong', NULL, NULL),
(283, 59, '- الحديد', 'correct', NULL, NULL),
(284, 59, '- أكسيد الحديد المغناطيسي', 'wrong', NULL, NULL),
(285, 60, '- أيونات النحاس وأيونات الخارصين', 'correct', NULL, NULL),
(286, 60, 'أيونات النحاس وأيونات قصدير', 'wrong', NULL, NULL),
(287, 60, '- ذرات نحاس وذرات الخارصين', 'wrong', NULL, NULL),
(288, 60, 'ذرات نحاس وذرات قصدير', 'wrong', NULL, NULL),
(289, 61, 'لهما نفس البناء البللوري', 'wrong', NULL, NULL),
(290, 61, 'حجمهما الذري متقارب', 'wrong', NULL, NULL),
(291, 61, 'درجة انصهارهما مرتفعة', 'wrong', NULL, NULL),
(292, 61, 'حجم ذرات الكربون صغير', 'correct', NULL, NULL),
(293, 62, 'أنصاف أقطار', 'correct', NULL, NULL),
(294, 62, 'كثافة', 'wrong', NULL, NULL),
(295, 62, '- درجة انصهار', 'wrong', NULL, NULL),
(296, 62, 'درجة غليان', 'wrong', NULL, NULL),
(297, 63, ') يجب أن يكون الفرق في نصف القطر كبير نسبيًا', 'wrong', NULL, NULL),
(298, 63, ') يجب أن يكون لهم نفس عدد إلكترونات التكافؤ', 'wrong', NULL, NULL),
(299, 63, 'الكثافة الإلكترونية للفلزات يجب أن تكون متساوية', 'wrong', NULL, NULL),
(300, 63, 'تركيب الشبكة البللورية يجب أن يكون متشابهة', 'correct', NULL, NULL),
(301, 64, 'Al , Pb', 'wrong', NULL, NULL),
(302, 64, 'Al , Ni', 'correct', NULL, NULL),
(303, 64, 'Al , Cu , Ni', 'wrong', NULL, NULL),
(304, 64, 'ب , ج صحيحتان', 'wrong', NULL, NULL),
(305, 65, '- أكسيد حديد III', 'wrong', NULL, NULL),
(306, 65, 'أكسيد الحديد المغناطيسي', 'correct', NULL, NULL),
(307, 65, 'كربونات الحديد', 'wrong', NULL, NULL),
(308, 65, 'لا توجد إجابة صحيحة', 'wrong', NULL, NULL),
(309, 66, 'أكسيد حديد III', 'wrong', NULL, NULL),
(310, 66, 'أكسيد الحديد المغناطيسي', 'wrong', NULL, NULL),
(311, 66, 'كربونات الحديد', 'correct', NULL, NULL),
(312, 66, 'لا توجد اجابه صحيحه', 'wrong', NULL, NULL),
(313, 67, 'أملاح حديد II', 'correct', NULL, NULL),
(314, 67, 'أملاح الحديد III', 'wrong', NULL, NULL),
(315, 67, 'ا , ب معًا', 'wrong', NULL, NULL),
(316, 67, 'لا توجد إجابة صحيحة', 'wrong', NULL, NULL),
(317, 68, 'أول أكسيد الكربون', 'correct', NULL, NULL),
(318, 68, '- الغاز المائي', 'wrong', NULL, NULL),
(319, 68, '- الغاز الطبيعي', 'wrong', NULL, NULL),
(320, 68, 'فوق أكسيد الهيدروجين', 'wrong', NULL, NULL),
(321, 69, 'ثاني أكسيد الكربون والهيدروجين', 'wrong', NULL, NULL),
(322, 69, 'أول أكسيد الكربون والماء', 'wrong', NULL, NULL),
(323, 69, 'أول أكسيد الكربون والهيدروجين', 'wrong', NULL, NULL),
(324, 69, 'لا توجد إجابة صحيحة', 'correct', NULL, NULL),
(325, 70, 'في صورة عنصر', 'wrong', NULL, NULL),
(326, 70, 'متحدًا بالكبريت', 'wrong', NULL, NULL),
(327, 70, 'في صورة أكاسيد متهدرتة', 'wrong', NULL, NULL),
(328, 70, 'متحدًا بالأكسجين', 'correct', NULL, NULL),
(329, 71, '3〖FeCO〗', 'wrong', NULL, NULL),
(330, 71, '2 〖FeS〗', 'correct', NULL, NULL),
(331, 71, 'Fe2O3', 'wrong', NULL, NULL),
(332, 71, 'Fe3O4', 'wrong', NULL, NULL),
(333, 72, ') تحتوي علي أيونات حديد تتميز بالامتلاء النصفي لأوربيتالات المستوي الفرعي ( d )', 'correct', NULL, NULL),
(334, 72, ') تستخدم مباشرة في الفرن المفتوح لإنتاج الحديد الصلب', 'wrong', NULL, NULL),
(335, 72, 'تحتوي علي الحديد بنسبة 48.5 %', 'wrong', NULL, NULL),
(336, 72, 'ينتج عن اختزالها بغاز الميثان تصاعد غاز CO', 'wrong', NULL, NULL),
(337, 73, 'فحم الكوك', 'wrong', NULL, NULL),
(338, 73, 'غاز أول أكسيد الكربون', 'wrong', NULL, NULL),
(339, 73, 'غاز الميثان', 'wrong', NULL, NULL),
(340, 73, 'غاز ثالث أكسيد الكبريت', 'correct', NULL, NULL),
(341, 74, 'Fe2O3', 'wrong', NULL, NULL),
(342, 74, 'Au2pb', 'wrong', NULL, NULL),
(343, 74, 'Fe3C', 'correct', NULL, NULL),
(344, 74, 'Ni2Al', 'wrong', NULL, NULL),
(345, 75, 'اكسيد حديد ثنائى', 'wrong', NULL, NULL),
(346, 75, 'أكسيد حديد ثلاثي', 'wrong', NULL, NULL),
(347, 75, 'أكسيد حديد مغناطيسي', 'correct', NULL, NULL),
(348, 75, 'أكسيد حديد أحمر', 'wrong', NULL, NULL),
(349, 76, 'كلوريد الحديد II', 'wrong', NULL, NULL),
(350, 76, 'كلوريد الحديد III', 'correct', NULL, NULL),
(351, 76, '- خليط منهما', 'wrong', NULL, NULL),
(352, 76, 'لا توجد إجابة صحيحة', 'wrong', NULL, NULL),
(353, 77, '- مؤكسد', 'correct', NULL, NULL),
(354, 77, 'حفاز', 'wrong', NULL, NULL),
(355, 77, '- مساعد', 'wrong', NULL, NULL),
(356, 77, 'مختزل', 'wrong', NULL, NULL),
(357, 78, 'كلوريد الحديد II فقط', 'wrong', NULL, NULL),
(358, 78, 'كلوريد الحديد II وهيدروجين', 'correct', NULL, NULL),
(359, 78, 'كلوريد حديد III فقط', 'wrong', NULL, NULL),
(360, 78, '- كلوريد حديد III وهيدروجين', 'wrong', NULL, NULL),
(361, 79, 'كبريتات الحديد II فقط', 'wrong', NULL, NULL),
(362, 79, 'كبريتات الحديد III فقط', 'wrong', NULL, NULL),
(363, 79, 'كبريتات الحديد II  ,  III', 'correct', NULL, NULL),
(364, 79, 'ثاني وثالث أكسيد الكبريت', 'wrong', NULL, NULL),
(365, 80, 'H2SO4 dill', 'wrong', NULL, NULL),
(366, 80, 'HCl dill', 'wrong', NULL, NULL),
(367, 80, 'HNO3 Cnoc', 'correct', NULL, NULL),
(368, 80, 'H2SO4 conc', 'wrong', NULL, NULL),
(369, 81, 'السحب', 'wrong', NULL, NULL),
(370, 81, 'الحك', 'wrong', NULL, NULL),
(371, 81, 'HCL dill', 'wrong', NULL, NULL),
(372, 81, 'ب , جـ صحيحتان', 'correct', NULL, NULL),
(373, 82, 'Feso4', 'wrong', NULL, NULL),
(374, 82, 'Feo', 'correct', NULL, NULL),
(375, 82, 'Fe2O3', 'wrong', NULL, NULL),
(376, 82, 'Fe', 'wrong', NULL, NULL),
(377, 83, 'ملح حديد III وماء', 'wrong', NULL, NULL),
(378, 83, 'ملح حديد III وهيدروجين', 'wrong', NULL, NULL),
(379, 83, '- ملح حديد II وماء', 'correct', NULL, NULL),
(380, 83, '- ملح حديد II وهيدروجين', 'wrong', NULL, NULL),
(381, 84, 'أكسيد حديد II', 'wrong', NULL, NULL),
(382, 84, 'أكسيد حديد مغناطيسي', 'wrong', NULL, NULL),
(383, 84, '- أكسيد حديد III', 'correct', NULL, NULL),
(384, 84, 'هيدروكسيد الحديد II', 'wrong', NULL, NULL),
(385, 85, ') تسخين أوكسالات الحديد II بمعزل عن الهواء', 'wrong', NULL, NULL),
(386, 85, ') تسخين كبريتات الحديد II بمعزل عن الهواء', 'correct', NULL, NULL),
(387, 85, 'اختزال أكسيد الحديد III بالهيدروجين في درجة حرارة من 400 : 700 0C', 'wrong', NULL, NULL),
(388, 85, 'اختزال أكسيد الحديد المغناطيسي بالهيدروجين في درجة حرارة من 400 : 700 0C', 'wrong', NULL, NULL),
(389, 86, 'انحلال فقط', 'wrong', NULL, NULL),
(390, 86, 'أكسدة واختزال فقط', 'wrong', NULL, NULL),
(391, 86, 'انحلال ثم أكسدة واختزال', 'correct', NULL, NULL),
(392, 86, 'أكسدة واختزال ثم انحلال', 'wrong', NULL, NULL),
(393, 87, 'إمرار بخار الماء علي الحديد الساخن', 'wrong', NULL, NULL),
(394, 87, 'برادة الحديد مع الكلور', 'wrong', NULL, NULL),
(395, 87, '- برادة الحديد مع حمض الهيدروكلوريك المخفف', 'correct', NULL, NULL),
(396, 87, '- تسخين كبريتات الحديد II', 'wrong', NULL, NULL),
(397, 88, 'تسخين الحديد في الهواء الجوي لدرجة الاحمرار', 'wrong', NULL, NULL),
(398, 88, 'إمرار بخار الماء علي الحديد الساخن', 'wrong', NULL, NULL),
(399, 88, 'اختزال أسيد حديد III عند درجة حرارة 230 : 300 0C', 'wrong', NULL, NULL),
(400, 88, 'اختزال أكسيد حديد III عند درجة حرارة أعلي من 700 0C', 'correct', NULL, NULL),
(401, 89, '- كلوريد الحديد II', 'wrong', NULL, NULL),
(402, 89, 'كلوريد الحديد III وماء', 'wrong', NULL, NULL),
(403, 89, 'كلوريد الحديد II وكلوريد الحديد III وماء', 'correct', NULL, NULL),
(404, 89, '- كلوريد الحديد II وكلوريد الحديد III والهيدروجين', 'wrong', NULL, NULL),
(405, 90, 'تسخين كبريتات الحديد II', 'wrong', NULL, NULL),
(406, 90, 'تسخين أوكسالات الحديد II بمعزل عن الهواء', 'wrong', NULL, NULL),
(407, 90, 'اختزال المجنتيت بأول أكسيد الكربون 400 : 700 0C', 'wrong', NULL, NULL),
(408, 90, 'أ , ب صحيحتان', 'correct', NULL, NULL),
(409, 91, 'نوع الأكسيد', 'wrong', NULL, NULL),
(410, 91, 'العامل المختزل', 'wrong', NULL, NULL),
(411, 91, 'درجه الحراره', 'correct', NULL, NULL),
(412, 91, 'جميع ما سبق', 'wrong', NULL, NULL),
(413, 92, 'Fe2O3', 'wrong', NULL, NULL),
(414, 92, 'Fe3O4', 'correct', NULL, NULL),
(415, 92, 'FeO', 'wrong', NULL, NULL),
(416, 92, 'Fe2O3.Fe3O4', 'wrong', NULL, NULL),
(417, 93, 'كلوريد الحديد II', 'correct', NULL, NULL),
(418, 93, 'كلوريد الحديد III', 'wrong', NULL, NULL),
(419, 93, '- كبريتات الحديد II', 'wrong', NULL, NULL),
(420, 93, 'لا توجد إجابة صحيحة', 'wrong', NULL, NULL),
(421, 94, '- كلوريد الحديد II', 'wrong', NULL, NULL),
(422, 94, 'كلوريد الحديد III', 'wrong', NULL, NULL),
(423, 94, 'أ , ب معًا', 'wrong', NULL, NULL),
(424, 94, 'لا توجد إجابة صحيحة', 'correct', NULL, NULL),
(425, 95, 'أكسد حديد II', 'wrong', NULL, NULL),
(426, 95, 'أكسيد الحديد المغناطيسي', 'wrong', NULL, NULL),
(427, 95, 'أكسيد الحديد III', 'correct', NULL, NULL),
(428, 95, 'هيدروكسيد الحديد II', 'wrong', NULL, NULL),
(429, 96, '- أكسيد الحديد II  + ماء', 'correct', NULL, NULL),
(430, 96, 'أكسيد الحديد III  + ماء', 'wrong', NULL, NULL),
(431, 96, 'أوكسالات حديد + ماء', 'wrong', NULL, NULL),
(432, 96, 'لا توجد إجابة صحيحة', 'wrong', NULL, NULL),
(433, 97, 'بنى محمر', 'correct', NULL, NULL),
(434, 97, 'ازرق', 'wrong', NULL, NULL),
(435, 97, 'اصفر برتقالى', 'wrong', NULL, NULL),
(436, 97, 'اخضر', 'wrong', NULL, NULL),
(437, 98, 'أكسيد الحديد II', 'wrong', NULL, NULL),
(438, 98, 'هيدروكسيد الحديد III', 'correct', NULL, NULL),
(439, 98, '- كربونات الحديد II', 'wrong', NULL, NULL),
(440, 98, '- كبريتات الحديد II', 'wrong', NULL, NULL),
(441, 99, 'كبريتات حديد II', 'wrong', NULL, NULL),
(442, 99, '- كبريتات الحديد III', 'wrong', NULL, NULL),
(443, 99, 'أ , ب معًا', 'correct', NULL, NULL),
(444, 99, 'لا توجد إجابة صحيحة', 'wrong', NULL, NULL),
(445, 100, 'أملاح الحديد II فقط', 'wrong', NULL, NULL),
(446, 100, 'أملاح الحديد III فقط', 'wrong', NULL, NULL),
(447, 100, 'أكسيد الحديد II', 'wrong', NULL, NULL),
(448, 100, 'أملاح الحديد III و II', 'correct', NULL, NULL),
(449, 101, 'أ- أكسيد الحديد III', 'wrong', NULL, NULL),
(450, 101, 'ب- أكسيد الحديد II', 'wrong', NULL, NULL),
(451, 101, 'ج- أكسيد حديد مغناطيسي', 'correct', NULL, NULL),
(452, 101, 'د- أ , ب معًا', 'wrong', NULL, NULL),
(453, 102, '( أ ) بتفاعل الحديد الساخن مع غاز الكلور وينتج كلوريد الحديد III', 'wrong', NULL, NULL),
(454, 102, '(ب) إذا سخن الحديد بشدة في الهواء أو الأكسجين يتكون أكسيد الحديد المغناطيسي', 'wrong', NULL, NULL),
(455, 102, '(ج) يتفاعل الحديد مع حمض HCl المخفف مكونًا كلوريد الحديد III ويتصاعد غاز الهيدروجين', 'correct', NULL, NULL),
(456, 102, '( د ) يحل الحديد محل النحاس في المحلول عند وضع قطعة من الحديد في محلول كبريتات النحاس II', 'wrong', NULL, NULL),
(457, 103, 'هيدروكسيد الصوديوم', 'wrong', NULL, NULL),
(458, 103, 'نيترات الفضة', 'wrong', NULL, NULL),
(459, 103, 'برمنجنات البوتاسيوم المحمضة', 'correct', NULL, NULL),
(460, 103, '- أول أكسيد الكربون', 'wrong', NULL, NULL),
(461, 104, '- بني محمر', 'wrong', NULL, NULL),
(462, 104, '- أخضر', 'wrong', NULL, NULL),
(463, 104, 'اسود', 'wrong', NULL, NULL),
(464, 104, 'أحمر داكن', 'correct', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `name`, `phone`, `image`, `number`, `note`, `status`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 'احمد', '3333', 'bill/9BBnxNzkPffSPgxVmI7r8GNv4viTw1u0q6q17hKb.png', '10', 'ثصيس', '1', '2833', '2021-10-09 13:52:52', '2021-10-11 00:15:56'),
(2, 'حسن', '111', 'bill/Um0PO4ee1MbKCv59S2ybcbp1uN5R1jEjj3WUw6so.png', '444', 'شيبشيب', '0', '2833', '2021-10-09 13:53:08', '2021-10-09 13:53:08'),
(4, 'علي', '222', 'bill/ImkR8hqCpYsm9tf4twazkKXKisQnvOYBCF0zGvlE.png', '200', 'بعت 200 وكمان باقلي 500', '1', '2835', '2021-10-11 00:14:45', '2021-10-11 00:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studant_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_user_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `studant_id`, `admin_id`, `message`, `message_user_id`, `created_at`, `updated_at`) VALUES
(36, 2500, 1, 'علي', '2500', '2021-10-12 16:06:28', '2021-10-12 16:06:28'),
(37, 2500, 1, 'ايوه ياباشا', '1', '2021-10-12 16:06:40', '2021-10-12 16:06:40'),
(47, 2500, 1, 'نعم', '2500', '2021-10-12 20:13:52', '2021-10-12 20:13:52'),
(48, 2500, 1, 'اقوليك', '2500', '2021-10-12 20:14:01', '2021-10-12 20:14:01'),
(49, 2500, 1, 'مافي', '1', '2021-10-12 20:14:35', '2021-10-12 20:14:35'),
(50, 2500, 1, '؟؟', '2500', '2021-10-12 20:14:52', '2021-10-12 20:14:52'),
(51, 2500, 1, 'الحل شنوو', '2500', '2021-10-12 20:17:03', '2021-10-12 20:17:03'),
(52, 2500, 1, 'السلام عليكم', '2500', '2021-10-12 20:32:13', '2021-10-12 20:32:13'),
(53, 2500, 1, 'وعليكم السلام', '1', '2021-10-12 20:32:32', '2021-10-12 20:32:32'),
(54, 2509, 1, 'هال', '2509', '2021-10-12 20:55:14', '2021-10-12 20:55:14'),
(55, 2509, 1, 'اتفضل', '1', '2021-10-12 20:55:32', '2021-10-12 20:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `level_id`, `subject_id`, `group_id`, `description`, `youtube`, `zoom`, `video`, `image`, `note`, `created_at`, `updated_at`) VALUES
(5, 'الدرس الاول', 3, 2, 4, NULL, 'https://youtu.be/vxPCktiNnYU', NULL, '', '1629556634.shutterstock_608671094.jpg', '', '2021-08-21 22:37:14', '2021-08-21 22:37:14'),
(6, 'الواجب', 3, 2, 4, NULL, 'https://drive.google.com/file/d/1qawstvRz-nAMtxiPFseWukash8Y5lGU_/preview', NULL, '', '1629650413.chemistrypic12.png', '1629650413.السلسه الانتقاليه الدرس الاول - Copy.pdf', '2021-08-23 00:40:13', '2021-10-06 00:32:55'),
(7, 'الشرح', 3, 2, 4, NULL, 'https://drive.google.com/file/d/11-EX2rMorWzaMyPf6PtXQ-hVTcPqAVq4/preview', NULL, '', '1629650736.7fbefc982cf51a55c2298a66da84837f.jpg', '1629650736.شرح الباب الاول 2022 (1) (Repaired) (1).pdf', '2021-08-23 00:45:36', '2021-10-06 00:32:08'),
(9, 'حل الواجب', 3, 2, 4, NULL, 'https://youtu.be/sn1iq_R8NA0', NULL, '', '1629941094.7fbefc982cf51a55c2298a66da84837f.jpg', '', '2021-08-26 09:24:54', '2021-09-08 07:30:49'),
(16, 'الدرس الثاني', 3, 2, 4, NULL, 'https://youtu.be/hqylcMve6gY', NULL, '', '1630195122.shutterstock_608671094.jpg', '1630195122.شرح الباب الاول 2022 (1) (Repaired).pdf', '2021-08-29 07:58:42', '2021-08-29 07:58:42'),
(18, 'الواجب', 3, 2, 4, NULL, 'https://drive.google.com/file/d/1wk8ZsJjXTc4W433cRAHROl0qSNUrLDRL/view?usp=sharing', NULL, '', '1630359639.shutterstock_608671094.jpg', '1630359639.واجب الحصه الثانيه اعداد التاكسد.pdf', '2021-08-31 05:40:39', '2021-08-31 05:40:39'),
(20, 'حل الواجب الدرس التاني', 3, 2, 4, NULL, 'https://youtu.be/BGDpaf8VljE', NULL, '', '1630631708.chemistrypic12.png', '', '2021-09-03 09:15:08', '2021-09-08 07:30:32'),
(21, 'المحاضرة الثالثة', 3, 2, 4, NULL, 'https://youtu.be/jyqnpSaiMxQ', NULL, '', '1631057406.498x317-12500_F_108592228_Vbb71lGDMIO4eliM6b4Y5bwQfrKqedl0.jpg', '1631057406.شرح الباب الاول 2022 (1) (Repaired).pdf', '2021-09-08 07:30:06', '2021-09-08 07:30:06'),
(22, 'واجب المحاضرة الثالثة', 3, 2, 4, NULL, 'https://youtu.be/aNW0w4_CC1g', NULL, '', '1631373618.كيمياء-9-1.png', '1631373618.الخصائص العامه للعناصر الانتقاليه.pdf', '2021-09-11 23:20:18', '2021-09-11 23:20:18'),
(23, 'حل الواجب الدرس الثالث', 3, 2, 18, NULL, 'https://youtu.be/aNW0w4_CC1g', NULL, '', '1631391815.مصبوغ-المواد-من-الكيمياء-ألبوم-الصور__bld20832.jpg', '1631391815.الخصائص العامه للعناصر الانتقاليه.pdf', '2021-09-12 04:23:35', '2021-09-12 04:23:35'),
(25, 'ملزمة الواجب الاول', 3, 2, 18, NULL, 'https://drive.google.com/file/d/11-EX2rMorWzaMyPf6PtXQ-hVTcPqAVq4/preview', NULL, '', '1631392244.thumb-2022-new-year-4k-3d-bronze-letters-happy-new-year-2022-2022-bronze-background.jpg', '1631392244.السلسه الانتقاليه الدرس الاول - Copy.pdf', '2021-09-12 04:30:44', '2021-10-06 00:34:36'),
(26, 'حل واجب المحاضرة الاولي', 3, 2, 18, NULL, 'https://youtu.be/sn1iq_R8NA0', NULL, '', '1631392394.thumb-2022-new-year-4k-3d-bronze-letters-happy-new-year-2022-2022-bronze-background.jpg', '', '2021-09-12 04:33:14', '2021-09-12 04:33:14'),
(27, 'حل واجب المحاضرة التانية', 3, 2, 18, NULL, 'https://youtu.be/BGDpaf8VljE', NULL, '', '1631392480.498x317-12500_F_108592228_Vbb71lGDMIO4eliM6b4Y5bwQfrKqedl0.jpg', '1631392480.واجب الحصه الثانيه اعداد التاكسد.pdf', '2021-09-12 04:34:40', '2021-09-12 04:34:40'),
(28, 'المحاضرة الرابعة', 3, 2, 4, NULL, 'https://youtu.be/PXLYtyrX3Xg', NULL, '', '1631810824.مصبوغ-المواد-من-الكيمياء-ألبوم-الصور__bld20832.jpg', '1631810824.واجب المحاضرة الرابعة.pdf', '2021-09-17 00:47:04', '2021-09-17 00:47:04'),
(29, 'حل الواجب الرابع', 3, 2, 4, NULL, 'https://youtu.be/1_yEYJTjQaI', NULL, '', '1631984714.thumb-2022-new-year-4k-3d-bronze-letters-happy-new-year-2022-2022-bronze-background.jpg', '', '2021-09-19 01:05:14', '2021-09-19 01:05:14'),
(30, 'محاضرة حل الواجب الرابع', 3, 2, 18, NULL, 'https://youtu.be/1_yEYJTjQaI', NULL, '', '1632080519.كيمياء-9-1.png', '1632080519.واجب المحاضرة الرابعة.pdf', '2021-09-20 03:41:59', '2021-09-20 03:41:59'),
(31, 'معادلات الحديد الخواص الفيزيائية والكيميائية للحديد ( المحاضرة الخامسة)', 3, 2, 21, NULL, 'https://youtu.be/AVKBuLmdYeU', NULL, '', '1632432245.WhatsApp Image 2021-09-18 at 4.19.34 PM.jpeg', '1632432245.شرح الباب الاول 2022 (1) (Repaired) (1).pdf', '2021-09-24 05:24:05', '2021-09-24 05:24:05'),
(32, 'المحاضرة السادسة أكاسيد الحديد', 3, 2, 21, NULL, 'https://youtu.be/KECqcsbfkIs', NULL, '', '1632852776.WhatsApp Image 2021-09-18 at 3.52.26 PM.jpeg', '1632852776.شرح الباب الاول 2022 (1) (Repaired).pdf', '2021-09-29 02:12:56', '2021-10-02 05:59:52'),
(33, 'حل واجب المحاضرة الخامسة', 3, 2, 21, NULL, 'https://youtu.be/R1zPcdQEKKM', NULL, '', '1633284758.WhatsApp Image 2021-09-18 at 4.09.12 PM.jpeg', '1633284758.واجب درس الحديد.pdf', '2021-10-04 02:12:38', '2021-10-04 02:12:38'),
(34, 'حل واجب المحاضرة الخامسة', 3, 2, 18, NULL, 'https://youtu.be/R1zPcdQEKKM', NULL, '1633285076.واجب درس الحديد.pdf', '1633285076.WhatsApp Image 2021-09-18 at 4.09.12 PM.jpeg', '1633285076.واجب درس الحديد.pdf', '2021-10-04 02:17:56', '2021-10-04 02:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_works`
--

CREATE TABLE `delivery_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_file_noty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `studant` int(11) NOT NULL DEFAULT 0,
  `status` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `home_work_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_works`
--

INSERT INTO `delivery_works` (`id`, `delivery_file`, `delivery_file_noty`, `studant`, `status`, `home_work_id`, `created_at`, `updated_at`) VALUES
(1, 'delivery_file/O1eIAk16SZNofEghCXpO8NtOUEsA1LaeGztQMhZ9.png', 'afdada', 2501, 0, 1, '2021-10-10 22:13:43', '2021-10-11 16:03:58'),
(2, 'delivery_file/lH2FvetNZB1kz7mhsn3cNVqrWf2AuRc7bAzILAD9.png', 'afdada', 2501, 1, 1, '2021-10-10 22:19:43', '2021-10-10 23:12:06'),
(4, 'delivery_file/dcaDmn3QS4cC0vSO4jY9PcrGbAK04uUVnLZ2hcux.png', 'سبلسبل', 2501, 1, 2, '2021-10-11 16:10:42', '2021-10-12 19:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `level_id`, `subject_id`, `group_id`, `created_at`, `updated_at`) VALUES
(11, 'الاول', 3, 2, 4, '2021-09-04 04:51:11', '2021-09-17 02:54:25'),
(12, 'امتحان الحصه الثانيه', 3, 2, 4, '2021-09-06 00:50:19', '2021-10-04 02:24:30'),
(13, 'امنحان نصف الشهر الحديد', 3, 2, 21, '2021-10-03 02:32:12', '2021-10-06 04:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `final_exams`
--

CREATE TABLE `final_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `exam_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_period` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_exams`
--

INSERT INTO `final_exams` (`id`, `exam_id`, `exam_start`, `exam_end`, `status`, `exam_period`, `created_at`, `updated_at`) VALUES
(11, 11, '9-3', '9-13', 'active', 20, '2021-09-04 04:51:11', '2021-09-04 04:52:29'),
(12, 12, '5\\9', '20\\9', 'active', 60, '2021-09-06 00:50:19', '2021-09-06 23:02:49'),
(13, 13, '2/10/2021', '11/10/2021', 'active', 120, '2021-10-03 02:32:12', '2021-10-03 21:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `group_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `level_id`, `subject_id`, `group_description`, `created_at`, `updated_at`) VALUES
(4, 'اون لاين', 3, 2, NULL, '2021-08-21 05:26:22', '2021-09-11 04:15:26'),
(18, 'السناتر', 3, 2, NULL, '2021-09-04 02:44:57', '2021-09-04 02:44:57'),
(19, 'الاول الثانوى عام', 4, 5, NULL, '2021-09-08 02:54:57', '2021-10-03 21:10:41'),
(20, 'عام الثانى الثانوى', 5, 6, NULL, '2021-09-08 03:34:37', '2021-10-03 21:10:58'),
(21, 'اشتراك من شهر 9 الي 10', 3, 2, NULL, '2021-09-24 04:24:21', '2021-09-24 04:24:21'),
(22, 'ازهر الثالث الثانوى', 3, 2, NULL, '2021-10-03 21:09:06', '2021-10-03 21:09:06'),
(23, 'ازهر الثانى الثانوى', 5, 6, NULL, '2021-10-03 21:09:50', '2021-10-03 21:09:50'),
(24, 'ازهر الاول الثانوى', 4, 5, NULL, '2021-10-03 21:10:24', '2021-10-03 21:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `group_student`
--

CREATE TABLE `group_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_student`
--

INSERT INTO `group_student` (`id`, `student_id`, `group_id`, `created_at`, `updated_at`) VALUES
(8, 2502, 4, '2021-08-21 05:50:10', '2021-08-21 05:50:10'),
(15, 2510, 4, '2021-08-21 22:41:49', '2021-08-21 22:41:49'),
(21, 2512, 4, '2021-08-22 00:01:54', '2021-08-22 00:01:54'),
(22, 2509, 4, '2021-08-22 00:21:47', '2021-08-22 00:21:47'),
(23, 2501, 4, '2021-08-22 02:33:50', '2021-08-22 02:33:50'),
(24, 2505, 4, '2021-08-22 02:34:38', '2021-08-22 02:34:38'),
(25, 2513, 4, '2021-08-22 02:36:31', '2021-08-22 02:36:31'),
(27, 2515, 4, '2021-08-22 02:38:43', '2021-08-22 02:38:43'),
(54, 2518, 4, '2021-08-23 03:21:43', '2021-08-23 03:21:43'),
(55, 2519, 4, '2021-08-23 23:01:22', '2021-08-23 23:01:22'),
(56, 2520, 4, '2021-08-25 22:04:30', '2021-08-25 22:04:30'),
(131, 2524, 4, '2021-08-29 06:37:54', '2021-08-29 06:37:54'),
(175, 2609, 4, '2021-09-03 00:48:32', '2021-09-03 00:48:32'),
(176, 2527, 18, '2021-09-04 02:46:29', '2021-09-04 02:46:29'),
(177, 2528, 18, '2021-09-04 02:47:15', '2021-09-04 02:47:15'),
(179, 2529, 18, '2021-09-04 02:48:51', '2021-09-04 02:48:51'),
(180, 2530, 18, '2021-09-04 02:49:40', '2021-09-04 02:49:40'),
(181, 2531, 4, '2021-09-04 02:50:15', '2021-09-04 02:50:15'),
(183, 2533, 18, '2021-09-04 02:51:32', '2021-09-04 02:51:32'),
(184, 2534, 18, '2021-09-04 02:52:05', '2021-09-04 02:52:05'),
(185, 2535, 18, '2021-09-04 02:52:45', '2021-09-04 02:52:45'),
(186, 2536, 18, '2021-09-04 02:53:38', '2021-09-04 02:53:38'),
(187, 2538, 18, '2021-09-04 03:00:25', '2021-09-04 03:00:25'),
(188, 2539, 18, '2021-09-04 03:05:53', '2021-09-04 03:05:53'),
(189, 2540, 18, '2021-09-04 03:06:24', '2021-09-04 03:06:24'),
(191, 2542, 18, '2021-09-04 03:07:15', '2021-09-04 03:07:15'),
(192, 2543, 18, '2021-09-04 03:07:43', '2021-09-04 03:07:43'),
(193, 2544, 18, '2021-09-04 03:08:27', '2021-09-04 03:08:27'),
(194, 2545, 18, '2021-09-04 03:08:53', '2021-09-04 03:08:53'),
(195, 2546, 18, '2021-09-04 03:09:14', '2021-09-04 03:09:14'),
(196, 2547, 18, '2021-09-04 03:09:38', '2021-09-04 03:09:38'),
(197, 2548, 18, '2021-09-04 03:10:05', '2021-09-04 03:10:05'),
(198, 2549, 18, '2021-09-04 03:10:24', '2021-09-04 03:10:24'),
(199, 2550, 18, '2021-09-04 03:10:50', '2021-09-04 03:10:50'),
(200, 2551, 18, '2021-09-04 03:11:12', '2021-09-04 03:11:12'),
(201, 2552, 18, '2021-09-04 03:11:37', '2021-09-04 03:11:37'),
(202, 2553, 18, '2021-09-04 03:11:59', '2021-09-04 03:11:59'),
(203, 2554, 18, '2021-09-04 03:12:25', '2021-09-04 03:12:25'),
(204, 2555, 18, '2021-09-04 03:12:48', '2021-09-04 03:12:48'),
(205, 2556, 18, '2021-09-04 03:13:17', '2021-09-04 03:13:17'),
(206, 2557, 18, '2021-09-04 03:13:40', '2021-09-04 03:13:40'),
(207, 2558, 18, '2021-09-04 03:14:03', '2021-09-04 03:14:03'),
(208, 2559, 18, '2021-09-04 03:14:26', '2021-09-04 03:14:26'),
(209, 2560, 18, '2021-09-04 03:14:47', '2021-09-04 03:14:47'),
(210, 2561, 18, '2021-09-04 03:15:14', '2021-09-04 03:15:14'),
(211, 2562, 18, '2021-09-04 03:15:38', '2021-09-04 03:15:38'),
(212, 2563, 18, '2021-09-04 03:16:06', '2021-09-04 03:16:06'),
(213, 2564, 18, '2021-09-04 03:16:28', '2021-09-04 03:16:28'),
(214, 2565, 18, '2021-09-04 03:16:58', '2021-09-04 03:16:58'),
(216, 2567, 18, '2021-09-04 03:18:28', '2021-09-04 03:18:28'),
(217, 2568, 18, '2021-09-04 03:18:51', '2021-09-04 03:18:51'),
(218, 2569, 18, '2021-09-04 03:19:16', '2021-09-04 03:19:16'),
(219, 2570, 18, '2021-09-04 03:19:39', '2021-09-04 03:19:39'),
(220, 2571, 18, '2021-09-04 03:20:09', '2021-09-04 03:20:09'),
(221, 2572, 18, '2021-09-04 03:21:13', '2021-09-04 03:21:13'),
(222, 2573, 18, '2021-09-04 03:21:43', '2021-09-04 03:21:43'),
(223, 2574, 18, '2021-09-04 03:22:12', '2021-09-04 03:22:12'),
(224, 2575, 18, '2021-09-04 03:22:38', '2021-09-04 03:22:38'),
(225, 2576, 18, '2021-09-04 03:23:07', '2021-09-04 03:23:07'),
(226, 2577, 18, '2021-09-04 03:23:31', '2021-09-04 03:23:31'),
(228, 2579, 18, '2021-09-04 03:25:08', '2021-09-04 03:25:08'),
(229, 2580, 18, '2021-09-04 03:25:37', '2021-09-04 03:25:37'),
(230, 2581, 18, '2021-09-04 03:26:04', '2021-09-04 03:26:04'),
(231, 2582, 18, '2021-09-04 03:26:35', '2021-09-04 03:26:35'),
(232, 2583, 18, '2021-09-04 03:27:12', '2021-09-04 03:27:12'),
(233, 2584, 18, '2021-09-04 03:27:41', '2021-09-04 03:27:41'),
(234, 2585, 18, '2021-09-04 03:28:21', '2021-09-04 03:28:21'),
(236, 2586, 18, '2021-09-04 03:29:13', '2021-09-04 03:29:13'),
(237, 2587, 18, '2021-09-04 03:29:37', '2021-09-04 03:29:37'),
(238, 2588, 18, '2021-09-04 03:30:06', '2021-09-04 03:30:06'),
(239, 2589, 18, '2021-09-04 03:30:35', '2021-09-04 03:30:35'),
(240, 2590, 18, '2021-09-04 03:31:05', '2021-09-04 03:31:05'),
(241, 2591, 18, '2021-09-04 03:31:34', '2021-09-04 03:31:34'),
(242, 2592, 18, '2021-09-04 03:32:06', '2021-09-04 03:32:06'),
(243, 2593, 18, '2021-09-04 03:32:48', '2021-09-04 03:32:48'),
(244, 2594, 18, '2021-09-04 03:33:16', '2021-09-04 03:33:16'),
(245, 2595, 18, '2021-09-04 03:33:53', '2021-09-04 03:33:53'),
(246, 2597, 18, '2021-09-04 03:34:38', '2021-09-04 03:34:38'),
(247, 2598, 18, '2021-09-04 03:35:17', '2021-09-04 03:35:17'),
(248, 2599, 18, '2021-09-04 03:35:50', '2021-09-04 03:35:50'),
(249, 2600, 18, '2021-09-04 03:36:11', '2021-09-04 03:36:11'),
(250, 2601, 18, '2021-09-04 03:36:41', '2021-09-04 03:36:41'),
(254, 2605, 18, '2021-09-04 04:16:57', '2021-09-04 04:16:57'),
(255, 2606, 18, '2021-09-04 04:17:19', '2021-09-04 04:17:19'),
(258, 2610, 18, '2021-09-04 04:21:37', '2021-09-04 04:21:37'),
(271, 2618, 18, '2021-09-04 20:58:37', '2021-09-04 20:58:37'),
(272, 2617, 18, '2021-09-04 20:59:47', '2021-09-04 20:59:47'),
(273, 2612, 18, '2021-09-04 21:04:59', '2021-09-04 21:04:59'),
(274, 2611, 18, '2021-09-04 21:06:59', '2021-09-04 21:06:59'),
(275, 2615, 18, '2021-09-04 21:07:51', '2021-09-04 21:07:51'),
(276, 2616, 18, '2021-09-04 21:10:06', '2021-09-04 21:10:06'),
(277, 2614, 18, '2021-09-04 21:12:49', '2021-09-04 21:12:49'),
(278, 2619, 18, '2021-09-04 21:21:11', '2021-09-04 21:21:11'),
(279, 2620, 18, '2021-09-04 21:28:08', '2021-09-04 21:28:08'),
(283, 2622, 4, '2021-09-06 23:52:03', '2021-09-06 23:52:03'),
(284, 2613, 18, '2021-09-08 02:11:21', '2021-09-08 02:11:21'),
(285, 2621, 4, '2021-09-08 02:16:00', '2021-09-08 02:16:00'),
(288, 2625, 19, '2021-09-08 02:57:52', '2021-09-08 02:57:52'),
(289, 2626, 19, '2021-09-08 02:59:06', '2021-09-08 02:59:06'),
(293, 2628, 19, '2021-09-08 03:02:09', '2021-09-08 03:02:09'),
(294, 2627, 19, '2021-09-08 03:02:30', '2021-09-08 03:02:30'),
(295, 2629, 19, '2021-09-08 03:03:19', '2021-09-08 03:03:19'),
(296, 2630, 19, '2021-09-08 03:04:15', '2021-09-08 03:04:15'),
(297, 2578, 18, '2021-09-08 03:05:36', '2021-09-08 03:05:36'),
(298, 2566, 18, '2021-09-08 03:05:47', '2021-09-08 03:05:47'),
(299, 2631, 19, '2021-09-08 03:07:23', '2021-09-08 03:07:23'),
(300, 2632, 19, '2021-09-08 03:08:26', '2021-09-08 03:08:26'),
(302, 2633, 19, '2021-09-08 03:11:00', '2021-09-08 03:11:00'),
(303, 2634, 19, '2021-09-08 03:11:31', '2021-09-08 03:11:31'),
(304, 2635, 19, '2021-09-08 03:12:44', '2021-09-08 03:12:44'),
(306, 2637, 19, '2021-09-08 03:14:36', '2021-09-08 03:14:36'),
(307, 2636, 19, '2021-09-08 03:14:59', '2021-09-08 03:14:59'),
(308, 2638, 19, '2021-09-08 03:15:52', '2021-09-08 03:15:52'),
(309, 2639, 19, '2021-09-08 03:25:07', '2021-09-08 03:25:07'),
(310, 2640, 19, '2021-09-08 03:26:18', '2021-09-08 03:26:18'),
(311, 2641, 19, '2021-09-08 03:30:00', '2021-09-08 03:30:00'),
(312, 2642, 19, '2021-09-08 03:30:45', '2021-09-08 03:30:45'),
(313, 2643, 19, '2021-09-08 03:32:27', '2021-09-08 03:32:27'),
(315, 2645, 20, '2021-09-08 03:35:39', '2021-09-08 03:35:39'),
(316, 2646, 20, '2021-09-08 03:36:36', '2021-09-08 03:36:36'),
(317, 2647, 20, '2021-09-08 03:37:41', '2021-09-08 03:37:41'),
(318, 2648, 20, '2021-09-08 03:38:59', '2021-09-08 03:38:59'),
(319, 2649, 20, '2021-09-08 03:39:53', '2021-09-08 03:39:53'),
(320, 2650, 20, '2021-09-08 03:41:37', '2021-09-08 03:41:37'),
(321, 2651, 20, '2021-09-08 03:42:39', '2021-09-08 03:42:39'),
(323, 2653, 4, '2021-09-10 00:08:25', '2021-09-10 00:08:25'),
(324, 2623, 18, '2021-09-10 01:28:15', '2021-09-10 01:28:15'),
(325, 2624, 19, '2021-09-10 01:29:39', '2021-09-10 01:29:39'),
(326, 2607, 18, '2021-09-10 01:37:08', '2021-09-10 01:37:08'),
(327, 2608, 18, '2021-09-10 01:40:38', '2021-09-10 01:40:38'),
(329, 2654, 18, '2021-09-10 01:56:21', '2021-09-10 01:56:21'),
(330, 2655, 18, '2021-09-10 01:59:09', '2021-09-10 01:59:09'),
(332, 2656, 18, '2021-09-10 02:08:09', '2021-09-10 02:08:09'),
(333, 2657, 18, '2021-09-10 02:13:20', '2021-09-10 02:13:20'),
(334, 2658, 18, '2021-09-10 02:22:13', '2021-09-10 02:22:13'),
(336, 2604, 18, '2021-09-10 02:35:03', '2021-09-10 02:35:03'),
(337, 2603, 18, '2021-09-10 02:59:55', '2021-09-10 02:59:55'),
(338, 2660, 4, '2021-09-11 04:16:28', '2021-09-11 04:16:28'),
(339, 2661, 4, '2021-09-11 20:58:09', '2021-09-11 20:58:09'),
(340, 2659, 18, '2021-09-11 22:30:24', '2021-09-11 22:30:24'),
(341, 2662, 18, '2021-09-11 22:31:41', '2021-09-11 22:31:41'),
(342, 2663, 18, '2021-09-11 22:33:49', '2021-09-11 22:33:49'),
(344, 2541, 18, '2021-09-12 00:37:37', '2021-09-12 00:37:37'),
(345, 2664, 18, '2021-09-12 00:41:26', '2021-09-12 00:41:26'),
(347, 2666, 18, '2021-09-12 00:44:33', '2021-09-12 00:44:33'),
(349, 2668, 18, '2021-09-12 00:48:05', '2021-09-12 00:48:05'),
(350, 2669, 19, '2021-09-12 00:49:19', '2021-09-12 00:49:19'),
(351, 2670, 19, '2021-09-12 00:52:06', '2021-09-12 00:52:06'),
(352, 2671, 18, '2021-09-12 00:54:39', '2021-09-12 00:54:39'),
(353, 2665, 18, '2021-09-12 01:24:41', '2021-09-12 01:24:41'),
(354, 2667, 18, '2021-09-12 01:27:16', '2021-09-12 01:27:16'),
(357, 2500, 4, '2021-09-12 04:38:07', '2021-09-12 04:38:07'),
(359, 2673, 18, '2021-09-17 02:47:52', '2021-09-17 02:47:52'),
(360, 2674, 18, '2021-09-17 02:52:54', '2021-09-17 02:52:54'),
(361, 2675, 18, '2021-09-17 03:43:09', '2021-09-17 03:43:09'),
(363, 2677, 18, '2021-09-20 03:39:22', '2021-09-20 03:39:22'),
(365, 2678, 18, '2021-09-22 03:44:05', '2021-09-22 03:44:05'),
(366, 2679, 18, '2021-09-24 00:42:31', '2021-09-24 00:42:31'),
(367, 2652, 20, '2021-09-24 01:41:23', '2021-09-24 01:41:23'),
(368, 2680, 20, '2021-09-24 01:42:31', '2021-09-24 01:42:31'),
(369, 2681, 20, '2021-09-24 01:44:04', '2021-09-24 01:44:04'),
(370, 2682, 20, '2021-09-24 01:45:40', '2021-09-24 01:45:40'),
(371, 2683, 20, '2021-09-24 01:47:15', '2021-09-24 01:47:15'),
(372, 2511, 4, '2021-09-24 01:47:47', '2021-09-24 01:47:47'),
(373, 2511, 18, '2021-09-24 01:47:47', '2021-09-24 01:47:47'),
(374, 2511, 19, '2021-09-24 01:47:47', '2021-09-24 01:47:47'),
(375, 2511, 20, '2021-09-24 01:47:47', '2021-09-24 01:47:47'),
(376, 2684, 20, '2021-09-24 01:50:39', '2021-09-24 01:50:39'),
(377, 2685, 20, '2021-09-24 01:52:18', '2021-09-24 01:52:18'),
(378, 2686, 20, '2021-09-24 01:53:28', '2021-09-24 01:53:28'),
(379, 2687, 20, '2021-09-24 01:54:42', '2021-09-24 01:54:42'),
(380, 2688, 20, '2021-09-24 01:56:27', '2021-09-24 01:56:27'),
(381, 2689, 20, '2021-09-24 01:57:43', '2021-09-24 01:57:43'),
(382, 2690, 20, '2021-09-24 01:59:03', '2021-09-24 01:59:03'),
(383, 2691, 20, '2021-09-24 02:00:32', '2021-09-24 02:00:32'),
(384, 2692, 20, '2021-09-24 02:01:48', '2021-09-24 02:01:48'),
(385, 2693, 20, '2021-09-24 02:39:06', '2021-09-24 02:39:06'),
(386, 2694, 20, '2021-09-24 02:40:27', '2021-09-24 02:40:27'),
(388, 2695, 20, '2021-09-24 02:41:42', '2021-09-24 02:41:42'),
(389, 2696, 20, '2021-09-24 02:43:29', '2021-09-24 02:43:29'),
(390, 2697, 20, '2021-09-24 02:47:42', '2021-09-24 02:47:42'),
(391, 2698, 20, '2021-09-24 02:49:05', '2021-09-24 02:49:05'),
(392, 2699, 20, '2021-09-24 02:51:50', '2021-09-24 02:51:50'),
(393, 2700, 20, '2021-09-24 02:53:33', '2021-09-24 02:53:33'),
(394, 2701, 20, '2021-09-24 02:54:41', '2021-09-24 02:54:41'),
(395, 2702, 20, '2021-09-24 02:56:18', '2021-09-24 02:56:18'),
(396, 2703, 20, '2021-09-24 02:58:27', '2021-09-24 02:58:27'),
(398, 2644, 19, '2021-09-24 03:08:23', '2021-09-24 03:08:23'),
(399, 2705, 19, '2021-09-24 03:09:42', '2021-09-24 03:09:42'),
(400, 2706, 19, '2021-09-24 03:10:40', '2021-09-24 03:10:40'),
(401, 2707, 19, '2021-09-24 03:11:45', '2021-09-24 03:11:45'),
(402, 2708, 19, '2021-09-24 03:12:56', '2021-09-24 03:12:56'),
(403, 2709, 19, '2021-09-24 03:14:00', '2021-09-24 03:14:00'),
(404, 2710, 19, '2021-09-24 03:15:08', '2021-09-24 03:15:08'),
(405, 2711, 19, '2021-09-24 03:16:34', '2021-09-24 03:16:34'),
(406, 2714, 19, '2021-09-24 03:27:28', '2021-09-24 03:27:28'),
(407, 2715, 19, '2021-09-24 03:28:42', '2021-09-24 03:28:42'),
(408, 2716, 19, '2021-09-24 03:34:06', '2021-09-24 03:34:06'),
(409, 2717, 19, '2021-09-24 03:41:17', '2021-09-24 03:41:17'),
(410, 2718, 19, '2021-09-24 03:42:16', '2021-09-24 03:42:16'),
(411, 2719, 19, '2021-09-24 03:45:05', '2021-09-24 03:45:05'),
(412, 2720, 19, '2021-09-24 03:47:07', '2021-09-24 03:47:07'),
(413, 2721, 19, '2021-09-24 03:49:54', '2021-09-24 03:49:54'),
(415, 2526, 4, '2021-09-24 04:25:51', '2021-09-24 04:25:51'),
(416, 2526, 21, '2021-09-24 04:25:51', '2021-09-24 04:25:51'),
(417, 2525, 4, '2021-09-24 04:26:18', '2021-09-24 04:26:18'),
(418, 2525, 21, '2021-09-24 04:26:18', '2021-09-24 04:26:18'),
(419, 2514, 4, '2021-09-24 04:26:33', '2021-09-24 04:26:33'),
(420, 2514, 21, '2021-09-24 04:26:33', '2021-09-24 04:26:33'),
(421, 2516, 4, '2021-09-24 04:26:47', '2021-09-24 04:26:47'),
(422, 2516, 21, '2021-09-24 04:26:47', '2021-09-24 04:26:47'),
(423, 2723, 21, '2021-09-24 05:29:04', '2021-09-24 05:29:04'),
(427, 2725, 18, '2021-09-27 02:12:19', '2021-09-27 02:12:19'),
(429, 2727, 18, '2021-09-27 02:16:13', '2021-09-27 02:16:13'),
(430, 2728, 18, '2021-09-27 02:17:45', '2021-09-27 02:17:45'),
(431, 2729, 18, '2021-09-27 02:20:24', '2021-09-27 02:20:24'),
(432, 2730, 18, '2021-09-27 02:23:17', '2021-09-27 02:23:17'),
(433, 2726, 18, '2021-09-27 02:35:53', '2021-09-27 02:35:53'),
(434, 2676, 4, '2021-09-27 21:03:03', '2021-09-27 21:03:03'),
(435, 2676, 21, '2021-09-27 21:03:03', '2021-09-27 21:03:03'),
(436, 2731, 4, '2021-09-27 21:11:45', '2021-09-27 21:11:45'),
(437, 2731, 21, '2021-09-27 21:11:45', '2021-09-27 21:11:45'),
(438, 2532, 18, '2021-09-27 21:19:01', '2021-09-27 21:19:01'),
(439, 2732, 18, '2021-09-27 21:33:45', '2021-09-27 21:33:45'),
(440, 2733, 18, '2021-09-28 04:30:24', '2021-09-28 04:30:24'),
(441, 2734, 18, '2021-09-28 05:20:21', '2021-09-28 05:20:21'),
(442, 2722, 19, '2021-09-29 00:16:13', '2021-09-29 00:16:13'),
(443, 2735, 19, '2021-09-29 00:17:21', '2021-09-29 00:17:21'),
(444, 2736, 19, '2021-09-29 00:19:01', '2021-09-29 00:19:01'),
(445, 2737, 19, '2021-09-29 00:20:18', '2021-09-29 00:20:18'),
(446, 2738, 19, '2021-09-29 00:21:32', '2021-09-29 00:21:32'),
(447, 2739, 19, '2021-09-29 00:23:13', '2021-09-29 00:23:13'),
(448, 2740, 19, '2021-09-29 00:24:07', '2021-09-29 00:24:07'),
(449, 2741, 19, '2021-09-29 00:25:00', '2021-09-29 00:25:00'),
(450, 2742, 19, '2021-09-29 00:25:57', '2021-09-29 00:25:57'),
(451, 2743, 19, '2021-09-29 00:26:54', '2021-09-29 00:26:54'),
(452, 2744, 19, '2021-09-29 00:27:48', '2021-09-29 00:27:48'),
(453, 2745, 19, '2021-09-29 00:28:45', '2021-09-29 00:28:45'),
(454, 2746, 19, '2021-09-29 00:29:36', '2021-09-29 00:29:36'),
(455, 2747, 19, '2021-09-29 00:30:50', '2021-09-29 00:30:50'),
(456, 2748, 19, '2021-09-29 00:32:27', '2021-09-29 00:32:27'),
(457, 2749, 19, '2021-09-29 00:33:54', '2021-09-29 00:33:54'),
(458, 2750, 19, '2021-09-29 00:34:54', '2021-09-29 00:34:54'),
(459, 2751, 19, '2021-09-29 00:35:44', '2021-09-29 00:35:44'),
(460, 2704, 20, '2021-09-29 00:40:03', '2021-09-29 00:40:03'),
(461, 2752, 20, '2021-09-29 00:41:06', '2021-09-29 00:41:06'),
(462, 2753, 20, '2021-09-29 00:42:14', '2021-09-29 00:42:14'),
(464, 2754, 20, '2021-09-29 00:45:13', '2021-09-29 00:45:13'),
(465, 2755, 20, '2021-09-29 00:46:20', '2021-09-29 00:46:20'),
(466, 2756, 20, '2021-09-29 00:47:51', '2021-09-29 00:47:51'),
(467, 2757, 20, '2021-09-29 00:48:52', '2021-09-29 00:48:52'),
(468, 2758, 20, '2021-09-29 00:49:59', '2021-09-29 00:49:59'),
(470, 2759, 20, '2021-09-29 00:56:43', '2021-09-29 00:56:43'),
(471, 2760, 20, '2021-09-29 00:57:40', '2021-09-29 00:57:40'),
(472, 2761, 20, '2021-09-29 00:59:03', '2021-09-29 00:59:03'),
(473, 2762, 20, '2021-09-29 01:00:39', '2021-09-29 01:00:39'),
(474, 2763, 20, '2021-09-29 01:02:39', '2021-09-29 01:02:39'),
(475, 2764, 20, '2021-09-29 01:03:39', '2021-09-29 01:03:39'),
(476, 2765, 20, '2021-09-29 01:04:51', '2021-09-29 01:04:51'),
(478, 2767, 20, '2021-09-29 01:07:23', '2021-09-29 01:07:23'),
(479, 2766, 20, '2021-09-29 01:07:41', '2021-09-29 01:07:41'),
(480, 2768, 20, '2021-09-29 01:15:21', '2021-09-29 01:15:21'),
(481, 2769, 20, '2021-09-29 01:17:06', '2021-09-29 01:17:06'),
(482, 2770, 20, '2021-09-29 01:18:07', '2021-09-29 01:18:07'),
(483, 2771, 20, '2021-09-29 01:19:11', '2021-09-29 01:19:11'),
(484, 2772, 20, '2021-09-29 01:20:10', '2021-09-29 01:20:10'),
(485, 2773, 20, '2021-09-29 01:21:28', '2021-09-29 01:21:28'),
(487, 2774, 20, '2021-09-29 01:24:42', '2021-09-29 01:24:42'),
(488, 2775, 20, '2021-09-29 01:25:47', '2021-09-29 01:25:47'),
(489, 2776, 20, '2021-09-29 01:27:17', '2021-09-29 01:27:17'),
(490, 2777, 20, '2021-09-29 01:28:46', '2021-09-29 01:28:46'),
(491, 2778, 20, '2021-09-29 01:29:46', '2021-09-29 01:29:46'),
(492, 2779, 20, '2021-09-29 01:32:02', '2021-09-29 01:32:02'),
(493, 2780, 20, '2021-09-29 01:33:25', '2021-09-29 01:33:25'),
(494, 2781, 20, '2021-09-29 01:34:32', '2021-09-29 01:34:32'),
(495, 2782, 20, '2021-09-29 01:35:49', '2021-09-29 01:35:49'),
(496, 2783, 20, '2021-09-29 01:36:55', '2021-09-29 01:36:55'),
(497, 2784, 20, '2021-09-29 01:37:55', '2021-09-29 01:37:55'),
(498, 2785, 20, '2021-09-29 01:40:22', '2021-09-29 01:40:22'),
(499, 2786, 20, '2021-09-29 01:41:32', '2021-09-29 01:41:32'),
(503, 2789, 20, '2021-09-29 01:51:05', '2021-09-29 01:51:05'),
(504, 2788, 19, '2021-09-29 01:51:48', '2021-09-29 01:51:48'),
(505, 2787, 19, '2021-09-29 01:52:38', '2021-09-29 01:52:38'),
(506, 2791, 19, '2021-09-29 01:53:49', '2021-09-29 01:53:49'),
(507, 2792, 19, '2021-09-29 01:55:06', '2021-09-29 01:55:06'),
(508, 2793, 19, '2021-09-29 01:57:03', '2021-09-29 01:57:03'),
(509, 2794, 19, '2021-09-29 01:58:42', '2021-09-29 01:58:42'),
(510, 2796, 18, '2021-09-29 02:01:31', '2021-09-29 02:01:31'),
(511, 2795, 18, '2021-09-29 02:01:47', '2021-09-29 02:01:47'),
(513, 2798, 18, '2021-09-29 02:05:10', '2021-09-29 02:05:10'),
(514, 2517, 4, '2021-09-29 07:17:56', '2021-09-29 07:17:56'),
(515, 2517, 18, '2021-09-29 07:17:56', '2021-09-29 07:17:56'),
(516, 2517, 19, '2021-09-29 07:17:56', '2021-09-29 07:17:56'),
(517, 2517, 20, '2021-09-29 07:17:56', '2021-09-29 07:17:56'),
(518, 2517, 21, '2021-09-29 07:17:56', '2021-09-29 07:17:56'),
(519, 2672, 4, '2021-10-03 01:32:48', '2021-10-03 01:32:48'),
(520, 2672, 21, '2021-10-03 01:32:48', '2021-10-03 01:32:48'),
(522, 2799, 18, '2021-10-03 20:31:04', '2021-10-03 20:31:04'),
(523, 2800, 24, '2021-10-03 21:56:30', '2021-10-03 21:56:30'),
(525, 2801, 24, '2021-10-03 21:58:36', '2021-10-03 21:58:36'),
(526, 2802, 24, '2021-10-03 22:00:30', '2021-10-03 22:00:30'),
(527, 2803, 24, '2021-10-03 22:01:49', '2021-10-03 22:01:49'),
(529, 2804, 24, '2021-10-03 22:04:07', '2021-10-03 22:04:07'),
(530, 2805, 24, '2021-10-03 22:06:10', '2021-10-03 22:06:10'),
(531, 2806, 24, '2021-10-03 22:08:04', '2021-10-03 22:08:04'),
(532, 2807, 24, '2021-10-03 22:09:45', '2021-10-03 22:09:45'),
(533, 2808, 24, '2021-10-03 22:11:39', '2021-10-03 22:11:39'),
(534, 2809, 24, '2021-10-03 22:13:00', '2021-10-03 22:13:00'),
(535, 2810, 24, '2021-10-03 22:14:18', '2021-10-03 22:14:18'),
(536, 2811, 24, '2021-10-03 22:16:06', '2021-10-03 22:16:06'),
(537, 2812, 24, '2021-10-03 22:17:21', '2021-10-03 22:17:21'),
(538, 2813, 24, '2021-10-03 22:18:57', '2021-10-03 22:18:57'),
(539, 2814, 24, '2021-10-03 22:20:26', '2021-10-03 22:20:26'),
(540, 2815, 24, '2021-10-03 22:21:58', '2021-10-03 22:21:58'),
(541, 2816, 24, '2021-10-03 22:24:48', '2021-10-03 22:24:48'),
(542, 2817, 19, '2021-10-03 22:26:29', '2021-10-03 22:26:29'),
(543, 2818, 19, '2021-10-03 22:27:32', '2021-10-03 22:27:32'),
(544, 2819, 19, '2021-10-03 22:28:44', '2021-10-03 22:28:44'),
(554, 2820, 4, '2021-10-04 02:47:03', '2021-10-04 02:47:03'),
(555, 2820, 21, '2021-10-04 02:47:03', '2021-10-04 02:47:03'),
(556, 2820, 22, '2021-10-04 02:47:03', '2021-10-04 02:47:03'),
(564, 2821, 4, '2021-10-04 06:55:28', '2021-10-04 06:55:28'),
(565, 2821, 21, '2021-10-04 06:55:28', '2021-10-04 06:55:28'),
(566, 2822, 4, '2021-10-04 22:24:25', '2021-10-04 22:24:25'),
(567, 2822, 21, '2021-10-04 22:24:25', '2021-10-04 22:24:25'),
(571, 2824, 18, '2021-10-06 04:52:52', '2021-10-06 04:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `home_works`
--

CREATE TABLE `home_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_file_noty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_works`
--

INSERT INTO `home_works` (`id`, `name`, `time`, `work_file`, `work_file_noty`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 'fadfd', '22:38', 'work_file/axTHrRgloQrWjUMF4C0XLGlT1UcGVFuu9IuQBXTZ.png', 'adfadf', 30, '2021-10-10 20:33:49', '2021-10-10 20:33:49'),
(2, 'الحصه الاولي - test', '12:29', 'work_file/HQozS3cdIGAolk95ljoE58HMjGyokpsF4MtsYSAL.png', 'ملاحظه', 21, '2021-10-11 00:18:47', '2021-10-11 00:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level_name`, `level_description`, `created_at`, `updated_at`) VALUES
(3, 'الصف الثالث الثانوي', NULL, '2021-08-11 02:00:32', '2021-08-11 02:00:32'),
(4, 'الصف الاول الثانوى', NULL, '2021-09-08 02:53:50', '2021-09-08 02:53:50'),
(5, 'الصف الثانى الثانوى', NULL, '2021-09-08 03:33:19', '2021-09-08 03:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_02_035647_create_levels_table', 1),
(5, '2021_08_02_043724_create_subjects_table', 1),
(6, '2021_08_02_052350_create_groups_table', 1),
(7, '2021_08_02_060735_create_students_table', 1),
(8, '2021_08_02_072049_create_collections_table', 1),
(9, '2021_08_02_165329_create_classes_table', 1),
(10, '2021_08_02_190704_create_quizzes_table', 1),
(11, '2021_08_02_194517_create_answers_table', 1),
(12, '2021_08_02_225101_create_exams_table', 1),
(13, '2021_08_03_020947_create_tests_table', 1),
(14, '2021_08_03_041650_create_final_exams_table', 1),
(15, '2021_08_03_223432_create_results_table', 1),
(16, '2021_08_04_040438_create_admin_table', 1),
(17, '2021_08_07_044157_create_subject_students_table', 1),
(20, '2021_10_09_133615_create_bills_table', 2),
(23, '2021_10_09_163458_create_home_works_table', 3),
(24, '2021_10_09_164123_create_delivery_works_table', 3),
(26, '2021_10_12_015526_create_chat_admins_table', 4),
(27, '2021_10_12_015544_create_chat_studants_table', 4),
(30, '2021_10_12_112527_create_chats_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `quest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `level_id`, `subject_id`, `quest`, `image`, `created_at`, `updated_at`) VALUES
(13, 3, 2, 'العنصر الذي يستخدم احد مركباته في صناعة المغنطسطات فائقة التوصيل', NULL, '2021-08-28 05:49:42', '2021-08-28 06:28:04'),
(14, 3, 2, 'كبريتات النحاس تدخل في تركيب ...............', NULL, '2021-08-28 05:49:42', '2021-08-28 05:49:42'),
(15, 3, 2, 'الالمنيوم يكون سبائك مع ................', NULL, '2021-08-28 05:49:42', '2021-08-28 06:27:30'),
(16, 3, 2, 'ينتج من الكوبليت 60 اشاعة ..................', NULL, '2021-08-28 05:49:42', '2021-08-28 05:49:42'),
(17, 3, 2, 'مجموعة العناصر تنتهي تركيبها الالكتروني بـــ 3d  عشرة الكترونات', NULL, '2021-08-28 05:49:42', '2021-08-28 05:49:42'),
(18, 3, 2, 'عدد العناصر الاتنتقالية في الثلاث دورات الاولي  يساوي', NULL, '2021-08-28 05:49:42', '2021-08-28 05:49:42'),
(19, 3, 2, 'العنصر الذي يحتل الترتيب الثالث من حيث الوفرة في القشرة الارضية في السلسة الانتقالية الاولي', NULL, '2021-08-28 06:11:22', '2021-08-28 06:11:22'),
(20, 3, 2, 'النسبة حجم جزيئات الاكسيد وذرات الكروم تساوي', '', '2021-08-28 06:29:55', '2021-08-28 06:29:55'),
(22, 3, 2, 'حجم 1 كجم تتانيوم ,,,,,,,,,,,,, حجم 1 كجم حديد', '', '2021-08-28 06:38:20', '2021-08-28 06:38:20'),
(23, 3, 2, 'محلول فهلنج   في حالة وحدد سكر الجلوكوز', '', '2021-08-28 06:42:08', '2021-08-28 06:42:08'),
(25, 3, 2, '1)التوزيع الالكتروني التالي : 4[Ar]3d هو التوزيع الالكتروني للأيونات التالية ما عدا :', NULL, '2021-09-06 19:47:15', '2021-09-06 20:55:11'),
(26, 3, 2, '2)- في ايون النحاس Cu+2 وعنصر الكوبلت Co تكون الالكترونات .', NULL, '2021-09-06 20:02:28', '2021-09-06 20:02:28'),
(27, 3, 2, '3)عنصر الذهب Au 79 ينتهي بالتوزيع الالكتروني 6s1   3d10   لذا فهو :', NULL, '2021-09-06 20:02:28', '2021-09-06 20:02:28'),
(28, 3, 2, '4)من حالات التأكسد التي تجعل فلزات العملة عناصر انتقالية :', NULL, '2021-09-06 20:02:28', '2021-09-06 20:02:28'),
(29, 3, 2, '5)عدد العناصر الانتقالية في السلسلة الانتقالية الأولي والثانية والثالثة :', NULL, '2021-09-06 20:02:28', '2021-09-06 20:02:28'),
(30, 3, 2, '6)النسبه بين كثافه التيتانيوم و كثافه الحديد', NULL, '2021-09-06 20:02:28', '2021-09-06 20:02:28'),
(31, 3, 2, '7)عنصر يكتمل فيه المستوى 3d قبل المستوى 4s', NULL, '2021-09-06 20:11:42', '2021-09-06 20:11:42'),
(32, 3, 2, '8)يتشابه الخارصين والسكانديوم', NULL, '2021-09-06 20:11:42', '2021-09-06 20:11:42'),
(33, 3, 2, '9)جميع العناصر التاليه تدخل فى صناعه البطاريه ما عدا', NULL, '2021-09-06 20:11:42', '2021-09-06 20:11:42'),
(34, 3, 2, '10)المركب MCl4 يمكن ان يكون العنصر M', NULL, '2021-09-06 20:11:42', '2021-09-06 20:11:42'),
(35, 3, 2, '11)احد الايونات التالية توزيعها الالكتروني مماثل للتوزيع الالكتروني لأيون الحديد II', NULL, '2021-09-06 20:22:53', '2021-09-06 20:22:53'),
(36, 3, 2, '12)الايون الأقل استقرارا من الايونات الآتية هو :', NULL, '2021-09-06 20:22:53', '2021-09-06 20:22:53'),
(37, 3, 2, '13)يبدأ ازدواج الالكترونات في المستوي الفرعي 3d اعتبارا من عنصر :', NULL, '2021-09-06 20:22:53', '2021-09-06 20:22:53'),
(38, 3, 2, '14)عدد الكترونات المستوي الخارجي في ذرة عنصر عدده الذري ) 24 ( يساوي', NULL, '2021-09-06 20:22:53', '2021-09-06 20:22:53'),
(39, 3, 2, '15)يبدأ التناقص في حالات عدد التأكسد بداية من الحديد حتي الخارصين بسبب .......', NULL, '2021-09-06 20:22:53', '2021-09-06 20:22:53'),
(40, 3, 2, '16)مجموعتين ينتهى تركيبها (n-1)d10', NULL, '2021-09-06 20:54:15', '2021-09-06 20:54:15'),
(41, 3, 2, '17)تقع الفلزات القابله للتمغنط فى المجموعه', NULL, '2021-09-06 20:54:15', '2021-09-06 20:54:15'),
(42, 3, 2, '18)عدد الالكترونات المفرده فى اوربيتلات عامل حفاز فى تحضير النشادر صناعيا..................... عددها فى عامل حفاز فى هدرجه الزيوت', NULL, '2021-09-06 20:54:15', '2021-09-06 20:54:15'),
(43, 3, 2, '19)عدد العناصر التى تسبق الذهب فى مجموعته', NULL, '2021-09-06 20:54:15', '2021-09-06 20:54:15'),
(44, 3, 2, '20)اكبر عدد عناصر يقع فى المجموعه.................. للعناصر الانتقاليه الرئيسيه', NULL, '2021-09-06 20:54:15', '2021-09-06 20:54:15'),
(45, 3, 2, '21)عنصر الحديد يختلف عن العناصر التي تسبقه في السلسلة الانتقالية الأولي في', NULL, '2021-09-06 21:32:56', '2021-09-06 21:32:56'),
(46, 3, 2, '22)أيون عنصر انتقالي 𝐗+𝟑 تركيبه الإلكتروني هو (𝐀𝐫)𝟒𝐒𝟎,𝟑𝐝𝟓 يكون عدد الذرى', NULL, '2021-09-06 21:32:56', '2021-09-06 21:32:56'),
(47, 3, 2, '23)أكثر الحالات استقرارًا لأيون العنصر V23 هو ........', NULL, '2021-09-06 21:32:56', '2021-09-06 21:32:56'),
(48, 3, 2, '24)عنصر (A) ينتهي بالتوزيع الالكتروني 3d1 ، عنصر غير انتقالي (B) ينتهي بالتوزيع الالكتروني 3d10 أي مما يلي صحيح', NULL, '2021-09-06 21:32:56', '2021-09-06 21:32:56'),
(49, 3, 2, '25) عدد الالكترونات المفردة في المستوي الفرعي d لأيون الفلز في المركب 2-)6(PtCl :', NULL, '2021-09-06 21:32:56', '2021-09-06 21:32:56'),
(50, 3, 2, '26)يحتوى مستوى الطاقه الثالث على 18 الكترون لعنصر....................سلسله 3d', NULL, '2021-09-06 23:01:32', '2021-09-06 23:01:32'),
(51, 3, 2, '27)عنصر انتقالى له حاله تاكسد واحده', NULL, '2021-09-06 23:01:32', '2021-09-06 23:01:32'),
(52, 3, 2, '28)تركت 4 انابيب تحتوى على.............. فان الانيون الذى يتغير لونه فى الهواء', NULL, '2021-09-06 23:01:32', '2021-09-06 23:01:32'),
(53, 3, 2, '29)العنصر الذي له حالة تأكسد واحده (+1) في جميع مركباته', NULL, '2021-09-06 23:01:32', '2021-09-06 23:01:32'),
(54, 3, 2, '30)عنصر عدده الذري 24 يكون أقص ي عدد تأكسد له في مركباته :', NULL, '2021-09-06 23:01:32', '2021-09-06 23:01:32'),
(55, 3, 2, '1) أكسيد الحديد III المتهدرت هو :', NULL, '2021-10-03 02:41:40', '2021-10-03 02:41:40'),
(56, 3, 2, '2) المركب الناتج من اتحاد كاتيونات 〖Fe〗^(+3) مع أنيونات O^(-2) يكون لونه :', NULL, '2021-10-03 02:41:40', '2021-10-03 02:41:40'),
(57, 3, 2, '3) إحدى العمليات الآتية لا تهدف إلي تحسين الخواص الفيزيائية والميكانيكية للخام وهي :', NULL, '2021-10-03 02:41:40', '2021-10-03 02:41:40'),
(58, 3, 2, '4) عند التقطير الاتلافي لكربونات الحديد II يتكون :', NULL, '2021-10-03 02:41:40', '2021-10-03 02:41:40'),
(59, 3, 2, '5) عند تسخين أكسيد الحديد III في وجود الغاز المائي فإنه يختزل إلي :', NULL, '2021-10-03 02:41:40', '2021-10-03 02:41:40'),
(60, 3, 2, '6) النحاس الأصفر أحد أنواع السبائك ويتم ترسيبه كهربيًا علي المقابض من محلول يحتوي علي :', NULL, '2021-10-03 02:50:59', '2021-10-03 02:50:59'),
(61, 3, 2, '7) يكون الحديد مع الكربون المنفصل سبائك بينية لأن :', NULL, '2021-10-03 02:50:59', '2021-10-03 02:50:59'),
(62, 3, 2, '8) يؤدي اختلاف ...... العناصر إلي جعلها أكثر صلابة عند وجودها في صورة سبائك بينية', NULL, '2021-10-03 02:50:59', '2021-10-03 02:50:59'),
(63, 3, 2, '9) أي من الشروط الآتية يجب أن يتوفر أثناء تحضير السبائك الاستبدالية :', NULL, '2021-10-03 02:50:59', '2021-10-03 02:50:59'),
(64, 3, 2, '10) الديورالومين سبيكة مكونة من :', NULL, '2021-10-03 02:50:59', '2021-10-03 02:50:59'),
(65, 3, 2, '11) يوجد الحديد في خام المجنتيت في صورة ........', NULL, '2021-10-03 02:59:35', '2021-10-03 02:59:35'),
(66, 3, 2, '12) يوجد الحديد في خام السيدريت في صورة ........', NULL, '2021-10-03 02:59:35', '2021-10-03 02:59:35'),
(67, 3, 2, '13) عند تفاعل أكسيد الحديد II مع الأحماض المعدنية المخففة يتكون ....... وماء', NULL, '2021-10-03 02:59:35', '2021-10-03 02:59:35'),
(68, 3, 2, '14) عملية اختزال الحديد في الفرن العالي تتم بواسطة ........', NULL, '2021-10-03 02:59:35', '2021-10-03 02:59:35'),
(69, 3, 2, '15) الغاز الطبيعي عبارة عن خليط من ........', NULL, '2021-10-03 02:59:35', '2021-10-03 02:59:35'),
(70, 3, 2, '16) يتواجد معظم الحديد الموجود في القشرة الأرضية واللب الداخلي والخارجي للأرض .......', NULL, '2021-10-03 03:10:04', '2021-10-03 03:10:04'),
(71, 3, 2, '17)ما الصيغة الكيميائية لخام البيريت ؟ ........', NULL, '2021-10-03 03:10:04', '2021-10-03 03:10:04'),
(72, 3, 2, '18)خامات الحديد المحمصة ......', NULL, '2021-10-03 03:10:04', '2021-10-03 03:10:04'),
(73, 3, 2, '19)من المواد غير المستخدمة في عمليات استخلاص الحديد من خام الهيماتيت .....', NULL, '2021-10-03 03:10:04', '2021-10-03 03:10:04'),
(74, 3, 2, '20) الصيغة الكيميائية للسيمنتيت ........', NULL, '2021-10-03 03:10:04', '2021-10-03 03:10:04'),
(75, 3, 2, '21) عند التسخين في الهواء لدرجة الاحمرار يتكون :', NULL, '2021-10-03 03:21:48', '2021-10-03 03:21:48'),
(76, 3, 2, '22) عند تسخين الحديد مع الكلور يتكون :', NULL, '2021-10-03 03:21:48', '2021-10-03 03:21:48'),
(77, 3, 2, '23) يعتبر الكلور عند تفاعله مع الحديد عامل :', NULL, '2021-10-03 03:21:48', '2021-10-03 03:21:48'),
(78, 3, 2, '24) عند تفاعل الحديد مع حمض الهيدروكلوريك المخفف يتكون :', NULL, '2021-10-03 03:21:48', '2021-10-03 03:21:48'),
(79, 3, 2, '25) عند تفاعل الحديد مع حمض الكبريتيك المركز الساخن يتكون :', NULL, '2021-10-03 03:21:48', '2021-10-03 03:21:48'),
(80, 3, 2, '26) يحدث للحديد خمول كيميائي عند إضافة :', NULL, '2021-10-03 03:31:00', '2021-10-03 03:31:00'),
(81, 3, 2, '27) يزال خمول الحديد بواسطة :', NULL, '2021-10-03 03:31:00', '2021-10-03 03:31:00'),
(82, 3, 2, '28) عند اختزال أكسيد الحديد المغناطيسي عند درجة 400 : 700 0C ينتج :', NULL, '2021-10-03 03:31:00', '2021-10-03 03:31:00'),
(83, 3, 2, '29) يتفاعل أكسيد الحديد II مع الأحماض المخففة منتجًا :', NULL, '2021-10-03 03:31:00', '2021-10-03 03:31:00'),
(84, 3, 2, '30) عند تسخين هيدروكسيد الحديد III لدرجة أعلي من 200 0C ينتج :', NULL, '2021-10-03 03:31:00', '2021-10-03 03:31:00'),
(85, 3, 2, '31) إحدي هذه العبارات لا تنطبق علي تحضير أكسيد الحديد II :', NULL, '2021-10-03 03:37:18', '2021-10-03 03:37:18'),
(86, 3, 2, '32) الانحلال الحراري لكبريتات الحديد II عبارة عن عملية :', NULL, '2021-10-03 03:37:18', '2021-10-03 03:37:18'),
(87, 3, 2, '33) ينتج عن جميع التفاعلات الآتية مركبات يكون فيها الحديد ثلاثي التكافؤ ما عدا :', NULL, '2021-10-03 03:37:18', '2021-10-03 03:37:18'),
(88, 3, 2, '34) جميع الطرق التالية تستخدم لتحضير أكسيد الحديد المغناطيسي ماعدا :', NULL, '2021-10-03 19:45:14', '2021-10-03 19:45:14'),
(89, 3, 2, '35) عند تفاعل أكسيد الحديد المغناطيسي مع حمض الهيدروكلوريك المركز الساخن ينتج :', NULL, '2021-10-03 19:45:14', '2021-10-03 19:45:14'),
(90, 3, 2, '36) أي التفاعلات التالية ينتج عنها ثلاث أكاسيد ؟', NULL, '2021-10-03 19:45:14', '2021-10-03 19:45:14'),
(91, 3, 2, '37) ناتج اختزال أكاسيد الحديد يتوقف علي :', NULL, '2021-10-03 19:45:14', '2021-10-03 19:45:14'),
(92, 3, 2, '38) عند إمرار بخار الماء فوق الحديد الساخن يتكون ........', NULL, '2021-10-03 20:20:09', '2021-10-03 20:20:09'),
(93, 3, 2, '39) عندما يتفاعل الحديد مع حمض الهيدروكلوريك المخفف يكون ........', NULL, '2021-10-03 20:20:09', '2021-10-03 20:20:09'),
(94, 3, 2, '40) يتفاعل الحديد مع حمض الكبريتيك المركز الساخن ليعطي .......', NULL, '2021-10-03 20:20:09', '2021-10-03 20:20:09'),
(95, 3, 2, '41) عند تسخين هيدروكسيد الحديد III لدرجة حرارة أعلي من 2000C ينتج', NULL, '2021-10-03 20:44:22', '2021-10-03 20:44:22'),
(96, 3, 2, '42) اختزال أكسيد الحديد المغناطيسي بالهيدروجين عند 400 - 700 ينتج عنه ........', NULL, '2021-10-03 20:44:22', '2021-10-03 20:44:22'),
(97, 3, 2, '43) هيدروكسيد الحديد الثلاثي لونه .......', NULL, '2021-10-03 20:44:22', '2021-10-03 20:44:22'),
(98, 3, 2, '44) عند إضافة محلول قلوي إلي محاليل أملاح الحديد III يترسب .......', NULL, '2021-10-03 20:44:22', '2021-10-03 20:44:22'),
(99, 3, 2, '45) Fe2O3 يتفاعل مع  H2SO4 المركز ليعطى ,,,,,,,,,,,,,,,,,,', NULL, '2021-10-03 21:04:52', '2021-10-03 21:04:52'),
(100, 3, 2, '46) يطلق علي أكسيد الحديد المغناطيسي اسم الأكسيد المختلط لأنه يعطي عند تفاعله مع الأحماض المركزة الساخنة ......', NULL, '2021-10-03 21:04:52', '2021-10-03 21:04:52'),
(101, 3, 2, '47) يتفاعل الحديد الساخن مع الأكسجين وينتج ........', NULL, '2021-10-03 21:04:52', '2021-10-03 21:04:52'),
(102, 3, 2, '48) العبارة الغير صحيحة من العبارات التالية هي :', NULL, '2021-10-03 21:04:52', '2021-10-03 21:04:52'),
(103, 3, 2, '49) لتحويل كلوريد الحديد II إلي كلوريد الحديد III يتم إضافة ........', NULL, '2021-10-03 21:04:52', '2021-10-03 21:04:52'),
(104, 3, 2, '50) عند تسخين كبريتات الحديد II يتكون مركب لونه .......', NULL, '2021-10-03 21:04:52', '2021-10-03 21:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `total` int(11) DEFAULT NULL,
  `correct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `exam_id`, `total`, `correct`, `join`, `end`, `created_at`, `updated_at`) VALUES
(38, 2527, 11, 0, NULL, '2021-09-03 22:54:06', '2021-09-03 23:14:06', '2021-09-04 04:54:06', '2021-09-04 04:54:06'),
(39, 2581, 11, 10, '9', '2021-09-03 23:18:54', '2021-09-03 23:27:22', '2021-09-04 05:18:54', '2021-09-04 05:27:22'),
(40, 2579, 11, 10, '8', '2021-09-03 23:18:59', '2021-09-03 23:27:52', '2021-09-04 05:18:59', '2021-09-04 05:27:52'),
(41, 2578, 11, 10, '9', '2021-09-03 23:18:59', '2021-09-03 23:27:24', '2021-09-04 05:18:59', '2021-09-04 05:27:24'),
(42, 2589, 11, 10, '9', '2021-09-03 23:20:59', '2021-09-03 23:35:11', '2021-09-04 05:20:59', '2021-09-04 05:35:11'),
(43, 2577, 11, 10, '8', '2021-09-03 23:21:37', '2021-09-03 23:32:40', '2021-09-04 05:21:37', '2021-09-04 05:32:40'),
(44, 2590, 11, 10, '10', '2021-09-03 23:49:46', '2021-09-03 23:52:22', '2021-09-04 05:49:46', '2021-09-04 05:52:22'),
(45, 2610, 11, 10, NULL, '2021-09-04 00:18:55', '2021-09-04 00:38:55', '2021-09-04 06:18:55', '2021-09-04 06:18:55'),
(46, 2584, 11, 10, '8', '2021-09-04 01:43:00', '2021-09-04 02:00:56', '2021-09-04 07:43:00', '2021-09-04 08:00:56'),
(47, 2588, 11, 10, '10', '2021-09-04 07:53:27', '2021-09-04 08:01:27', '2021-09-04 13:53:27', '2021-09-04 14:01:27'),
(48, 2582, 11, 10, '7', '2021-09-04 07:56:56', '2021-09-04 08:03:53', '2021-09-04 13:56:56', '2021-09-04 14:03:53'),
(49, 2585, 11, 10, '6', '2021-09-04 13:31:47', '2021-09-04 13:35:45', '2021-09-04 19:31:47', '2021-09-04 19:35:45'),
(50, 2546, 11, 10, NULL, '2021-09-04 14:25:56', '2021-09-04 14:45:56', '2021-09-04 20:25:56', '2021-09-04 20:25:56'),
(51, 2614, 11, 10, '5', '2021-09-04 16:16:52', '2021-09-04 16:33:13', '2021-09-04 22:16:52', '2021-09-04 22:33:13'),
(52, 2539, 11, 10, '0', '2021-09-04 20:13:38', '2021-09-04 20:13:56', '2021-09-05 02:13:38', '2021-09-05 02:13:56'),
(53, 2535, 11, 10, '9', '2021-09-05 15:01:20', '2021-09-05 15:07:52', '2021-09-05 21:01:20', '2021-09-05 21:07:52'),
(54, 2511, 11, 10, '9', '2021-09-05 21:28:29', '2021-09-05 21:29:44', '2021-09-06 03:28:29', '2021-09-06 03:29:44'),
(55, 2511, 12, 0, NULL, '2021-09-05 21:31:10', '2021-09-05 22:16:10', '2021-09-06 03:31:10', '2021-09-06 03:31:10'),
(56, 2564, 11, 10, '3', '2021-09-05 21:34:29', '2021-09-05 21:47:06', '2021-09-06 03:34:29', '2021-09-06 03:47:06'),
(59, 2546, 12, 30, NULL, '2021-09-06 17:37:08', '2021-09-06 18:37:08', '2021-09-06 23:37:08', '2021-09-06 23:37:08'),
(60, 2615, 11, 10, '4', '2021-09-06 19:05:47', '2021-09-06 19:22:10', '2021-09-07 01:05:47', '2021-09-07 01:22:10'),
(61, 2595, 11, 10, '7', '2021-09-06 21:39:39', '2021-09-06 21:41:44', '2021-09-07 03:39:39', '2021-09-07 03:41:44'),
(62, 2554, 11, 10, '8', '2021-09-06 22:39:05', '2021-09-06 22:48:43', '2021-09-07 04:39:05', '2021-09-07 04:48:43'),
(63, 2564, 12, 30, '21', '2021-09-06 23:45:37', '2021-09-07 00:34:05', '2021-09-07 05:45:37', '2021-09-07 06:34:05'),
(64, 2616, 11, 10, '5', '2021-09-06 23:54:41', '2021-09-07 00:11:42', '2021-09-07 05:54:41', '2021-09-07 06:11:42'),
(65, 2551, 11, 10, '10', '2021-09-07 01:24:55', '2021-09-07 01:30:27', '2021-09-07 07:24:55', '2021-09-07 07:30:27'),
(66, 2551, 12, 30, '26', '2021-09-07 01:30:45', '2021-09-07 01:59:58', '2021-09-07 07:30:45', '2021-09-07 07:59:58'),
(67, 2539, 12, 30, '27', '2021-09-07 08:32:45', '2021-09-07 09:02:22', '2021-09-07 14:32:45', '2021-09-07 15:02:22'),
(68, 2612, 11, 10, '6', '2021-09-07 13:56:54', '2021-09-07 14:11:11', '2021-09-07 19:56:54', '2021-09-07 20:11:11'),
(69, 2611, 11, 10, '9', '2021-09-07 16:44:16', '2021-09-07 17:02:25', '2021-09-07 22:44:16', '2021-09-07 23:02:25'),
(70, 2559, 12, 30, '22', '2021-09-07 19:40:41', '2021-09-07 20:11:54', '2021-09-08 01:40:41', '2021-09-08 02:11:54'),
(71, 2555, 12, 30, '26', '2021-09-07 19:51:52', '2021-09-07 20:12:44', '2021-09-08 01:51:52', '2021-09-08 02:12:44'),
(72, 2555, 11, 10, NULL, '2021-09-07 20:15:52', '2021-09-07 20:35:52', '2021-09-08 02:15:52', '2021-09-08 02:15:52'),
(73, 2561, 11, 10, '8', '2021-09-07 22:42:57', '2021-09-07 22:45:53', '2021-09-08 04:42:57', '2021-09-08 04:45:53'),
(74, 2561, 12, 30, '20', '2021-09-07 22:46:05', '2021-09-07 23:03:56', '2021-09-08 04:46:05', '2021-09-08 05:03:56'),
(75, 2552, 11, 10, '9', '2021-09-07 22:49:42', '2021-09-07 22:57:45', '2021-09-08 04:49:42', '2021-09-08 04:57:45'),
(76, 2556, 12, 30, '23', '2021-09-07 22:54:15', '2021-09-07 23:23:34', '2021-09-08 04:54:15', '2021-09-08 05:23:34'),
(77, 2552, 12, 30, NULL, '2021-09-07 22:58:23', '2021-09-07 23:58:23', '2021-09-08 04:58:23', '2021-09-08 04:58:23'),
(78, 2620, 11, 10, '8', '2021-09-07 23:07:13', '2021-09-07 23:11:16', '2021-09-08 05:07:13', '2021-09-08 05:11:16'),
(79, 2620, 12, 30, '27', '2021-09-07 23:11:37', '2021-09-07 23:38:47', '2021-09-08 05:11:37', '2021-09-08 05:38:47'),
(80, 2562, 11, 10, '9', '2021-09-08 02:33:08', '2021-09-08 02:36:54', '2021-09-08 08:33:08', '2021-09-08 08:36:54'),
(81, 2563, 11, 10, '10', '2021-09-08 02:52:55', '2021-09-08 02:59:23', '2021-09-08 08:52:55', '2021-09-08 08:59:23'),
(82, 2563, 12, 30, '25', '2021-09-08 03:26:48', '2021-09-08 03:55:41', '2021-09-08 09:26:48', '2021-09-08 09:55:41'),
(83, 2562, 12, 30, '25', '2021-09-08 04:03:53', '2021-09-08 04:36:23', '2021-09-08 10:03:53', '2021-09-08 10:36:23'),
(84, 2558, 11, 10, '5', '2021-09-08 06:26:54', '2021-09-08 06:34:26', '2021-09-08 12:26:54', '2021-09-08 12:34:26'),
(85, 2557, 11, 10, '6', '2021-09-08 07:59:59', '2021-09-08 08:14:17', '2021-09-08 13:59:59', '2021-09-08 14:14:17'),
(86, 2566, 11, 10, '9', '2021-09-08 14:41:18', '2021-09-08 14:45:58', '2021-09-08 20:41:18', '2021-09-08 20:45:58'),
(87, 2566, 12, 30, '27', '2021-09-08 14:49:46', '2021-09-08 15:16:03', '2021-09-08 20:49:46', '2021-09-08 21:16:03'),
(88, 2591, 11, 10, '0', '2021-09-08 15:53:42', '2021-09-08 15:53:49', '2021-09-08 21:53:42', '2021-09-08 21:53:49'),
(89, 2572, 12, 30, '13', '2021-09-08 21:35:57', '2021-09-08 22:06:33', '2021-09-09 03:35:57', '2021-09-09 04:06:33'),
(90, 2538, 11, 10, '6', '2021-09-09 14:05:16', '2021-09-09 14:13:31', '2021-09-09 20:05:16', '2021-09-09 20:13:31'),
(92, 2604, 11, 10, '7', '2021-09-09 20:36:11', '2021-09-09 20:50:00', '2021-09-10 02:36:11', '2021-09-10 02:50:00'),
(94, 2603, 11, 10, '8', '2021-09-09 21:05:00', '2021-09-09 21:11:06', '2021-09-10 03:05:00', '2021-09-10 03:11:06'),
(95, 2591, 12, 30, '22', '2021-09-10 13:17:36', '2021-09-10 13:52:53', '2021-09-10 19:17:36', '2021-09-10 19:52:53'),
(96, 2595, 12, 30, '17', '2021-09-10 13:28:24', '2021-09-10 14:02:23', '2021-09-10 19:28:24', '2021-09-10 20:02:23'),
(97, 2593, 12, 30, '16', '2021-09-10 13:29:49', '2021-09-10 13:47:23', '2021-09-10 19:29:49', '2021-09-10 19:47:23'),
(98, 2593, 11, 10, NULL, '2021-09-10 13:48:09', '2021-09-10 14:08:09', '2021-09-10 19:48:09', '2021-09-10 19:48:09'),
(99, 2532, 12, 30, '17', '2021-09-10 19:59:30', '2021-09-10 20:34:05', '2021-09-11 01:59:30', '2021-09-11 02:34:05'),
(100, 2579, 12, 30, NULL, '2021-09-10 20:40:10', '2021-09-10 21:40:10', '2021-09-11 02:40:10', '2021-09-11 02:40:10'),
(101, 2578, 12, 30, '21', '2021-09-10 21:07:27', '2021-09-10 21:59:13', '2021-09-11 03:07:27', '2021-09-11 03:59:13'),
(102, 2575, 12, 30, '12', '2021-09-10 21:32:00', '2021-09-10 21:35:22', '2021-09-11 03:32:00', '2021-09-11 03:35:22'),
(103, 2577, 12, 30, '23', '2021-09-10 21:36:40', '2021-09-10 22:08:15', '2021-09-11 03:36:40', '2021-09-11 04:08:15'),
(104, 2581, 12, 30, '16', '2021-09-10 21:40:46', '2021-09-10 22:39:45', '2021-09-11 03:40:46', '2021-09-11 04:39:45'),
(105, 2589, 12, 30, '21', '2021-09-10 22:39:08', '2021-09-10 23:07:50', '2021-09-11 04:39:08', '2021-09-11 05:07:50'),
(106, 2623, 12, 30, '18', '2021-09-11 00:38:24', '2021-09-11 00:57:02', '2021-09-11 06:38:24', '2021-09-11 06:57:02'),
(107, 2588, 12, 30, '19', '2021-09-11 07:54:33', '2021-09-11 08:18:52', '2021-09-11 13:54:33', '2021-09-11 14:18:52'),
(108, 2622, 12, 30, NULL, '2021-09-11 16:48:28', '2021-09-11 17:48:28', '2021-09-11 22:48:28', '2021-09-11 22:48:28'),
(109, 2609, 12, 30, '25', '2021-09-11 19:17:48', '2021-09-11 19:42:31', '2021-09-12 01:17:48', '2021-09-12 01:42:31'),
(110, 2510, 12, 30, NULL, '2021-09-11 21:15:39', '2021-09-11 22:15:39', '2021-09-12 03:15:39', '2021-09-12 03:15:39'),
(111, 2607, 11, 10, '6', '2021-09-15 20:40:56', '2021-09-15 20:58:14', '2021-09-16 02:40:56', '2021-09-16 02:58:14'),
(112, 2570, 11, 10, '2', '2021-09-15 22:46:21', '2021-09-15 23:03:37', '2021-09-16 04:46:21', '2021-09-16 05:03:37'),
(113, 2573, 11, 10, '6', '2021-09-16 07:55:50', '2021-09-16 08:00:50', '2021-09-16 13:55:50', '2021-09-16 14:00:50'),
(114, 2525, 12, 30, '19', '2021-09-16 19:15:16', '2021-09-16 20:07:15', '2021-09-17 01:15:16', '2021-09-17 02:07:15'),
(115, 2617, 11, 10, '9', '2021-09-16 20:02:32', '2021-09-16 20:14:15', '2021-09-17 02:02:32', '2021-09-17 02:14:15'),
(116, 2653, 11, 10, '10', '2021-09-16 23:33:12', '2021-09-16 23:35:55', '2021-09-17 05:33:12', '2021-09-17 05:35:55'),
(117, 2525, 11, 10, '10', '2021-09-17 00:59:41', '2021-09-17 01:02:44', '2021-09-17 06:59:41', '2021-09-17 07:02:44'),
(118, 2585, 12, 30, '24', '2021-09-17 23:06:36', '2021-09-17 23:29:41', '2021-09-18 05:06:36', '2021-09-18 05:29:41'),
(119, 2527, 12, 30, NULL, '2021-09-18 20:42:52', '2021-09-18 21:42:52', '2021-09-19 02:42:52', '2021-09-19 02:42:52'),
(120, 2673, 12, 30, '20', '2021-09-19 09:52:10', '2021-09-19 10:25:41', '2021-09-19 15:52:10', '2021-09-19 16:25:41'),
(121, 2528, 12, 30, '13', '2021-09-19 13:43:04', '2021-09-19 13:57:53', '2021-09-19 19:43:04', '2021-09-19 19:57:53'),
(122, 2665, 12, 30, '23', '2021-09-20 03:36:11', '2021-09-20 03:56:58', '2021-09-20 09:36:11', '2021-09-20 09:56:58'),
(123, 2574, 12, 30, '7', '2021-09-20 05:00:49', '2021-09-20 05:16:25', '2021-09-20 11:00:49', '2021-09-20 11:16:25'),
(124, 2676, 11, 10, '6', '2021-09-20 09:43:57', '2021-09-20 09:45:52', '2021-09-20 15:43:57', '2021-09-20 15:45:52'),
(125, 2678, 12, 30, NULL, '2021-09-21 21:44:55', '2021-09-21 22:44:55', '2021-09-22 03:44:55', '2021-09-22 03:44:55'),
(126, 2611, 12, 30, '25', '2021-09-22 08:54:46', '2021-09-22 09:43:25', '2021-09-22 14:54:46', '2021-09-22 15:43:25'),
(127, 2501, 11, 10, NULL, '2021-09-23 23:50:29', '2021-09-24 00:10:29', '2021-09-24 05:50:29', '2021-09-24 05:50:29'),
(128, 2609, 11, 10, '9', '2021-09-24 22:14:45', '2021-09-24 22:22:37', '2021-09-25 04:14:45', '2021-09-25 04:22:37'),
(129, 2514, 11, 10, '8', '2021-09-26 12:44:03', '2021-09-26 12:48:07', '2021-09-26 18:44:03', '2021-09-26 18:48:07'),
(130, 2734, 12, 30, NULL, '2021-09-27 23:23:18', '2021-09-28 00:23:18', '2021-09-28 05:23:18', '2021-09-28 05:23:18'),
(131, 2603, 12, 30, NULL, '2021-09-29 23:19:38', '2021-09-30 00:19:38', '2021-09-30 05:19:38', '2021-09-30 05:19:38'),
(132, 2559, 13, 50, '39', '2021-10-05 22:29:17', '2021-10-05 23:24:02', '2021-10-06 04:29:17', '2021-10-06 05:24:02'),
(133, 2821, 11, 10, '7', '2021-10-05 22:46:33', '2021-10-05 22:48:08', '2021-10-06 04:46:33', '2021-10-06 04:48:08'),
(134, 2525, 13, 50, '27', '2021-10-06 14:01:02', '2021-10-06 14:35:58', '2021-10-06 20:01:02', '2021-10-06 20:35:58'),
(135, 2501, 12, 30, '0', '2021-10-11 01:21:30', '2021-10-11 01:21:52', '2021-10-10 23:21:30', '2021-10-10 23:21:52'),
(136, 2509, 12, 30, NULL, '2021-10-11 02:04:20', '2021-10-11 03:04:20', '2021-10-11 00:04:20', '2021-10-11 00:04:20'),
(137, 2509, 11, 10, '3', '2021-10-12 23:01:32', '2021-10-12 23:02:05', '2021-10-12 21:01:32', '2021-10-12 21:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('ذكر','انثي') COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `city`, `phone`, `password`, `gender`, `level_id`, `created_at`, `updated_at`) VALUES
(2500, 'يوسف محمود علي', 'قليوبية', '010639229592', '2022', 'ذكر', 3, '2021-08-11 02:05:41', '2021-09-12 04:38:07'),
(2501, 'اية محفوظ', 'المنصورة', '01061372061', '2023', 'انثي', 3, '2021-08-11 02:09:10', '2021-08-22 02:33:50'),
(2502, 'عز الدين احمد', 'بني سويف', '01227593325', '2024', 'ذكر', 3, '2021-08-11 02:11:41', '2021-08-21 05:50:10'),
(2505, 'نوران مجدي', 'اسيوط', '01112153104', '2027', 'انثي', 3, '2021-08-11 02:17:54', '2021-08-22 02:34:38'),
(2509, 'فرح محمد', 'الاسكندرية', '01284548408', '2030', 'انثي', 3, '2021-08-21 06:04:24', '2021-08-22 00:21:47'),
(2510, 'احمد فتحي', 'قليوبية', '01060417028', '2031', 'ذكر', 3, '2021-08-21 22:41:48', '2021-08-21 22:41:48'),
(2511, 'سعد علي', 'القاهره', '01007775920', '2032', 'ذكر', 3, '2021-08-21 22:53:21', '2021-09-24 01:47:47'),
(2512, 'خديجة السيد', 'المنوفية', '01154019702', '2033', 'انثي', 3, '2021-08-22 00:00:31', '2021-08-22 00:01:54'),
(2513, 'مارك سميح', 'اسيوط', '01228483132', '2033', 'ذكر', 3, '2021-08-22 02:36:18', '2021-08-22 02:36:31'),
(2514, 'محمد هاني', 'المنوفية', '01032815060', '2034', 'ذكر', 3, '2021-08-22 02:37:23', '2021-09-24 04:26:33'),
(2515, 'محمد عطا يوسف', 'كفر الشيح', '01061233179', '2035', 'ذكر', 3, '2021-08-22 02:38:35', '2021-08-22 02:38:43'),
(2516, 'بسملة جمال بغدادي', 'كفر الشيح', '0105739273', '2036', 'انثي', 3, '2021-08-22 02:40:33', '2021-09-24 04:26:47'),
(2517, 'نور نبيل', 'نن', 'تتتت', '3333', 'انثي', 3, '2021-08-22 05:08:20', '2021-09-29 07:17:56'),
(2518, 'محمد أيمن عبدالله', 'الشرقية', '01270200650', '2026', 'ذكر', 3, '2021-08-23 03:21:30', '2021-08-23 03:21:43'),
(2519, 'أدهم محمد جبر', 'الجيزة', '01092136136', '2027', 'ذكر', 3, '2021-08-23 23:01:11', '2021-08-23 23:01:22'),
(2520, 'يوسف محمود علي الدغري', 'قليوبية', '01063929592', '2037', 'ذكر', 3, '2021-08-25 21:24:05', '2021-08-25 22:04:30'),
(2524, 'نبيل', '3', '3', '1111', 'ذكر', 3, '2021-08-28 06:57:20', '2021-08-29 06:37:54'),
(2525, 'حسين ياسر', 'المنيا', '01151493223', '2001', 'ذكر', 3, '2021-08-28 08:04:50', '2021-09-24 04:26:18'),
(2526, 'طة مختار', 'المنيا', '01125797456', '2002', 'ذكر', 3, '2021-08-28 08:07:20', '2021-09-24 04:25:51'),
(2527, 'فرح محمد', 'القاهرة', '01129490158', '3000', 'انثي', 3, '2021-08-28 23:22:14', '2021-09-04 02:46:29'),
(2528, 'نورهان ذكي', 'القاهرة', '01102697296', '3001', 'انثي', 3, '2021-08-28 23:25:11', '2021-09-04 02:47:15'),
(2529, 'اسراء حسام', 'القاهرة', '01150388787', '3002', 'انثي', 3, '2021-08-28 23:26:24', '2021-09-04 02:48:51'),
(2530, 'سارة محمد', 'القاهرة', '01099326210', '3003', 'انثي', 3, '2021-08-28 23:27:28', '2021-09-04 02:49:40'),
(2531, 'لينا عبد الرحيم', 'القاهرة', '01019211573', '3004', 'انثي', 3, '2021-08-28 23:29:05', '2021-09-04 02:50:15'),
(2532, 'ورد علي', 'القاهرة', '01158280738', '3005', 'انثي', 3, '2021-08-28 23:30:29', '2021-09-27 21:19:01'),
(2533, 'سارة محمد ذكريا', 'القاهرة', '01094260621', '3006', 'انثي', 3, '2021-08-28 23:31:53', '2021-09-04 02:51:32'),
(2534, 'مريم ماجد', 'القاهرة', '01207734504', '3007', 'انثي', 3, '2021-08-28 23:33:28', '2021-09-04 02:52:05'),
(2535, 'نوره ابراهيم', 'القاهرة', '01017683403', '3008', 'انثي', 3, '2021-08-28 23:35:35', '2021-09-04 02:52:45'),
(2536, 'مريم جمعه', 'القاهرة', '01012854681', '3009', 'انثي', 3, '2021-08-28 23:37:23', '2021-09-04 02:53:38'),
(2537, 'هدير ابراهيم', 'القاهرة', '01201119641', '3010', 'انثي', 3, '2021-08-28 23:39:35', '2021-08-28 23:39:35'),
(2538, 'منى اشرف', 'القاهرة', '01140783718', '3011', 'انثي', 3, '2021-08-28 23:40:37', '2021-09-04 03:00:25'),
(2539, 'ايه محمد', 'القاهرة', '01112263695', '3012', 'انثي', 3, '2021-08-28 23:41:36', '2021-09-04 03:05:53'),
(2540, 'ايهاب نبيل', 'القاهرة', '01099947909', '3013', 'ذكر', 3, '2021-08-28 23:43:21', '2021-09-04 03:06:24'),
(2541, 'صلاح سالم', 'القاهرة', '01100317256', '3014', 'ذكر', 3, '2021-08-28 23:44:17', '2021-09-12 00:37:37'),
(2542, 'عمر حاتم', 'القاهرة', '01022527508', '3015', 'ذكر', 3, '2021-08-28 23:45:33', '2021-09-04 03:07:15'),
(2543, 'اسلام ايمن', 'القاهرة', '01026102300', '3016', 'ذكر', 3, '2021-08-28 23:46:28', '2021-09-04 03:07:43'),
(2544, 'مازن احمد', 'القاهرة', '01119880058', '3017', 'ذكر', 3, '2021-08-28 23:50:11', '2021-09-04 03:08:27'),
(2545, 'عثمان رضا', 'القاهرة', '01155089168', '3018', 'ذكر', 3, '2021-08-28 23:54:39', '2021-09-04 03:08:53'),
(2546, 'طارق محمد', 'القاهرة', '01061073284', '3019', 'ذكر', 3, '2021-08-28 23:56:59', '2021-09-04 03:09:14'),
(2547, 'محمد كيندى', 'القاهره', '01129955679', '3020', 'ذكر', 3, '2021-08-29 03:36:22', '2021-09-04 03:09:38'),
(2548, 'محمود محمد', 'القاهره', '01022549745', '3021', 'ذكر', 3, '2021-08-29 03:37:37', '2021-09-04 03:10:05'),
(2549, 'زياد عبد الفتاح', 'القاهره', '01151071108', '3022', 'ذكر', 3, '2021-08-29 03:39:53', '2021-09-04 03:10:24'),
(2550, 'وليد احمد', 'القاهره', '01001179245', '3023', 'ذكر', 3, '2021-08-29 03:41:00', '2021-09-04 03:10:50'),
(2551, 'يوسف سيد', 'القاهره', '01118114074', '3024', 'ذكر', 3, '2021-08-29 03:48:26', '2021-09-04 03:11:12'),
(2552, 'كريم محمد', 'القاهره', '01120424665', '3025', 'ذكر', 3, '2021-08-29 03:49:28', '2021-09-04 03:11:37'),
(2553, 'يوسف سامى', 'القاهره', '01018454481', '3026', 'ذكر', 3, '2021-08-29 03:50:55', '2021-09-04 03:11:59'),
(2554, 'عبدالرجمن سعيد', 'القاهره', '01128742523', '3027', 'ذكر', 3, '2021-08-29 03:52:05', '2021-09-04 03:12:25'),
(2555, 'دعاء ايمن', 'القاهره', '01282928011', '3028', 'انثي', 3, '2021-08-29 03:53:00', '2021-09-04 03:12:48'),
(2556, 'هبه الله خالد', 'القاهره', '01149956670', '3029', 'انثي', 3, '2021-08-29 03:54:20', '2021-09-04 03:13:17'),
(2557, 'ايه محمد', 'القاهره', '01226879672', '3030', 'انثي', 3, '2021-08-29 03:55:52', '2021-09-04 03:13:40'),
(2558, 'شيماء عزت', 'القاهره', '01200748095', '3031', 'انثي', 3, '2021-08-29 03:57:02', '2021-09-04 03:14:03'),
(2559, 'انجى محسن', 'القاهره', '01204491182', '3032', 'انثي', 3, '2021-08-29 03:58:18', '2021-09-04 03:14:26'),
(2560, 'فجر وائل', 'القاهره', '01556801387', '3033', 'انثي', 3, '2021-08-29 03:59:41', '2021-09-04 03:14:47'),
(2561, 'شهد على', 'القاهره', '01114698460', '3034', 'انثي', 3, '2021-08-29 04:02:01', '2021-09-04 03:15:14'),
(2562, 'خديجه محرم', 'القاهره', '01157228212', '3035', 'انثي', 3, '2021-08-29 04:03:14', '2021-09-04 03:15:38'),
(2563, 'ياسمين حاتم', 'القاهره', '0111890213', '3036', 'انثي', 3, '2021-08-29 04:04:25', '2021-09-04 03:16:06'),
(2564, 'محمد احمد', 'القاهره', '01121684972', '3037', 'ذكر', 3, '2021-08-29 04:05:58', '2021-09-04 03:16:28'),
(2565, 'عبدالرحمن احمد', 'القاهره', '01007212014', '3038', 'ذكر', 3, '2021-08-29 04:08:17', '2021-09-04 03:16:58'),
(2566, 'حامد عماد', 'القاهره', '01100071518', '3039', 'ذكر', 3, '2021-08-29 04:09:52', '2021-09-08 03:05:47'),
(2567, 'سيف الدين السيد', 'القاهره', '01011026234', '3040', 'ذكر', 3, '2021-08-29 04:11:02', '2021-09-04 03:18:28'),
(2568, 'باسل نبيل', 'القاهره', '01223531348', '3041', 'ذكر', 3, '2021-08-29 04:19:04', '2021-09-04 03:18:51'),
(2569, 'سهيله عبد الحكيم', 'القاهره', '01117756311', '3042', 'انثي', 3, '2021-08-29 04:23:47', '2021-09-04 03:19:16'),
(2570, 'عمرو رمضان', 'القاهره', '01097251793', '3043', 'ذكر', 3, '2021-08-29 04:25:00', '2021-09-04 03:19:39'),
(2571, 'ساره نادى', 'القاهره', '01140098103', '3044', 'انثي', 3, '2021-08-29 04:25:58', '2021-09-04 03:20:09'),
(2572, 'محمد ضياء', 'القاهره', '01556144335', '3045', 'ذكر', 3, '2021-08-29 04:27:03', '2021-09-04 03:21:13'),
(2573, 'مريم وجدى', 'القاهره', '012067881162', '3046', 'انثي', 3, '2021-08-29 04:28:22', '2021-09-04 03:21:43'),
(2574, 'السيد محمد', 'القاهره', '01067496446', '3047', 'ذكر', 3, '2021-08-29 04:31:32', '2021-09-04 03:22:12'),
(2575, 'محمد وليد', 'القاهره', '01026609386', '3048', 'ذكر', 3, '2021-08-29 04:33:42', '2021-09-04 03:22:38'),
(2576, 'محمد وليد', 'القاهره', '01148499544', '3049', 'ذكر', 3, '2021-08-29 23:52:30', '2021-09-04 03:23:07'),
(2577, 'محمد صفوت', 'القاهره', '01559091232', '3050', 'ذكر', 3, '2021-08-29 23:53:49', '2021-09-04 03:23:31'),
(2578, 'كمال محمود', 'القاهره', '01029628529', '3051', 'ذكر', 3, '2021-08-29 23:55:20', '2021-09-08 03:05:36'),
(2579, 'عمر محمد', 'القاهره', '01062258886', '3052', 'ذكر', 3, '2021-08-29 23:56:33', '2021-09-04 03:25:08'),
(2580, 'محمد علاء الدين', 'القاهره', '01017066575', '3053', 'ذكر', 3, '2021-08-29 23:57:51', '2021-09-04 03:25:37'),
(2581, 'محمود اشرف', 'القاهره', '01006718337', '3054', 'ذكر', 3, '2021-08-29 23:59:04', '2021-09-04 03:26:04'),
(2582, 'محمد صفوت', 'القاهره', '0112608705', '3055', 'ذكر', 3, '2021-08-30 00:00:27', '2021-09-04 03:26:35'),
(2583, 'محمد احمد', 'القاهره', '011114165758', '3056', 'ذكر', 3, '2021-08-30 00:02:06', '2021-09-04 03:27:12'),
(2584, 'محمد عز', 'القاهره', '01066785147', '3057', 'ذكر', 3, '2021-08-30 00:03:33', '2021-09-04 03:27:41'),
(2585, 'هاجر محمد', 'القاهره', '01004453279', '3058', 'انثي', 3, '2021-08-30 00:04:37', '2021-09-04 03:28:21'),
(2586, 'رنا محمد', 'القاهره', '01126193231', '3059', 'انثي', 3, '2021-08-30 00:05:38', '2021-09-04 03:29:13'),
(2587, 'شهد هانى', 'القاهره', '01001797149', '3060', 'انثي', 3, '2021-08-30 00:06:49', '2021-09-04 03:29:37'),
(2588, 'مريم تامر', 'القاهره', '01016039382', '3061', 'انثي', 3, '2021-08-30 00:08:51', '2021-09-04 03:30:06'),
(2589, 'رودينه صفوت', 'القاهره', '01100367242', '3062', 'انثي', 3, '2021-08-30 00:10:41', '2021-09-04 03:30:35'),
(2590, 'روان محمد', 'القاهره', '01112028489', '3063', 'انثي', 3, '2021-08-30 00:13:10', '2021-09-04 03:31:05'),
(2591, 'عمر سامح', 'القاهره', '01002783008', '3064', 'ذكر', 3, '2021-08-30 00:15:08', '2021-09-04 03:31:34'),
(2592, 'امنيه سليمان', 'القاهره', '01143460785', '3065', 'انثي', 3, '2021-08-30 00:16:23', '2021-09-04 03:32:06'),
(2593, 'جومانا محمود', 'القاهره', '01040560049', '3066', 'انثي', 3, '2021-08-30 00:17:24', '2021-09-04 03:32:48'),
(2594, 'انجى على', 'القاهره', '02025704342', '3067', 'انثي', 3, '2021-08-30 00:18:36', '2021-09-04 03:33:16'),
(2595, 'فرحه قاسم', 'القاهره', '01067243346', '3068', 'انثي', 3, '2021-08-30 00:19:46', '2021-09-04 03:33:53'),
(2596, 'بسمه نبيل', 'القاهره', '01096674949', '3069', 'انثي', 3, '2021-08-30 00:22:00', '2021-08-30 00:22:19'),
(2597, 'حبيبه على', 'القاهره', '01147809815', '3070', 'انثي', 3, '2021-08-30 00:23:13', '2021-09-04 03:34:38'),
(2598, 'رؤوى سامح', 'القاهره', '01118414111', '3071', 'انثي', 3, '2021-08-30 00:25:37', '2021-09-04 03:35:17'),
(2599, 'حسناء ابو الغيط', 'القاهره', '01149440369', '3072', 'انثي', 3, '2021-08-30 00:27:55', '2021-09-04 03:35:50'),
(2600, 'بسمله محمد', 'القاهره', '01124257268', '3073', 'انثي', 3, '2021-08-30 00:31:35', '2021-09-04 03:36:11'),
(2601, 'منه الله سيد', 'القاهره', '01117974732', '3074', 'انثي', 3, '2021-08-30 00:33:27', '2021-09-04 03:36:41'),
(2603, 'كرم عماد', 'القاهره', '01028301346', '5060', 'ذكر', 3, '2021-08-30 00:37:06', '2021-09-10 02:59:55'),
(2604, 'هانى عمرو', 'القاهره', '01153826612', '3077', 'ذكر', 3, '2021-08-30 00:38:58', '2021-09-10 02:35:03'),
(2605, 'بسنت احمد', 'القاهره', '01117947111', '3078', 'انثي', 3, '2021-08-30 00:40:05', '2021-09-04 04:16:57'),
(2606, 'اسماء شكرى', 'القاهره', '01210697650', '3079', 'انثي', 3, '2021-08-30 00:41:29', '2021-09-04 04:17:19'),
(2607, 'ساره حسين', 'القاهره', '01203278848', '3080', 'انثي', 3, '2021-08-30 00:42:42', '2021-09-10 01:37:08'),
(2608, 'ساره صلاح', 'القاهره', '01276900017', '3081', 'انثي', 3, '2021-08-30 00:44:44', '2021-09-10 01:40:38'),
(2609, 'وفاء حسن محمد', 'المنيا', '01153674378', '2288', 'انثي', 3, '2021-08-30 04:21:46', '2021-09-03 00:48:32'),
(2610, 'فاطمه الشروق', 'القاهره', '01050581127', '3090', 'انثي', 3, '2021-09-04 04:21:17', '2021-09-04 04:21:37'),
(2611, 'مروه حسن', 'القاهره', '01147755657', '3091', 'انثي', 3, '2021-09-04 20:31:46', '2021-09-04 21:06:59'),
(2612, 'جويريه وليد', 'القاهره', '01093001966', '3092', 'انثي', 3, '2021-09-04 20:33:27', '2021-09-04 21:04:59'),
(2613, 'منه احمد', 'القاهره', '01014324954', '3093', 'انثي', 3, '2021-09-04 20:35:36', '2021-09-08 02:11:21'),
(2614, 'عبد الرحمن محمد', 'القاهره', '01099054413', '3094', 'ذكر', 3, '2021-09-04 20:37:26', '2021-09-04 21:12:49'),
(2615, 'يوسف غالى', 'القاهره', '01210906349', '3095', 'ذكر', 3, '2021-09-04 20:38:55', '2021-09-04 21:07:51'),
(2616, 'عمر احمد', 'القاهره', '01115911343', '3096', 'ذكر', 3, '2021-09-04 20:41:53', '2021-09-04 21:10:06'),
(2617, 'حبيبه وليد', 'القاهره', '01128458177', '3097', 'انثي', 3, '2021-09-04 20:45:31', '2021-09-04 20:59:47'),
(2618, 'حنان رمضان', 'القاهره', '01099025782', '3098', 'انثي', 3, '2021-09-04 20:56:48', '2021-09-04 20:58:37'),
(2619, 'سيد محمد', 'القاهره', '0191994746', '3099', 'ذكر', 3, '2021-09-04 21:20:55', '2021-09-04 21:21:11'),
(2620, 'ايمن امير', 'القاهره', '01147219615', '4000', 'ذكر', 3, '2021-09-04 21:27:49', '2021-09-04 21:28:08'),
(2621, 'رحمه شعبان', 'د', '01020083581', '4000', 'انثي', 3, '2021-09-06 01:28:48', '2021-09-08 02:16:00'),
(2622, 'إيمان ماهر', 'البحيرة', '01096084275', '4001', 'انثي', 3, '2021-09-06 01:36:21', '2021-09-06 23:52:03'),
(2623, 'مريم على', 'القاهره', '01272728423', '4010', 'انثي', 3, '2021-09-08 02:18:51', '2021-09-10 01:28:15'),
(2624, 'شروق محمد', 'القاهره', '01110772520', '5000', 'انثي', 4, '2021-09-08 02:56:40', '2021-09-10 01:29:39'),
(2625, 'عائشه محمد', 'القاهره', '01156610315', '5001', 'انثي', 4, '2021-09-08 02:57:39', '2021-09-08 02:57:52'),
(2626, 'نورهان محمد', 'القاهره', '01147754228', '5002', 'انثي', 4, '2021-09-08 02:58:50', '2021-09-08 02:59:06'),
(2627, 'ساره محمد', 'القاهره', '01033932597', '5003', 'انثي', 4, '2021-09-08 02:59:55', '2021-09-08 03:02:29'),
(2628, 'هايدى عماد', 'القاهره', '01226793875', '5004', 'انثي', 4, '2021-09-08 03:01:10', '2021-09-08 03:02:09'),
(2629, 'اسراء عبد الفتاح', 'القاهره', '01116957656', '5005', 'انثي', 4, '2021-09-08 03:03:08', '2021-09-08 03:03:19'),
(2630, 'نبيله وائل', 'القاهره', '01115136003', '5006', 'انثي', 4, '2021-09-08 03:04:01', '2021-09-08 03:04:15'),
(2631, 'محمد طارق', 'القاهره', '01550161226', '5007', 'ذكر', 4, '2021-09-08 03:07:09', '2021-09-08 03:07:23'),
(2632, 'محمود محمد', 'القاهره', '01001864276', '5008', 'ذكر', 4, '2021-09-08 03:08:10', '2021-09-08 03:08:26'),
(2633, 'احمد ابراهيم', 'القاهره', '01030328772', '5009', 'ذكر', 4, '2021-09-08 03:09:07', '2021-09-08 03:11:00'),
(2634, 'عبد الله حسن', 'القاهره', '01050082366', '5010', 'ذكر', 4, '2021-09-08 03:10:50', '2021-09-08 03:11:31'),
(2635, 'فارس وليد', 'القاهره', '01061491219', '5011', 'ذكر', 4, '2021-09-08 03:12:31', '2021-09-08 03:12:44'),
(2636, 'هدى محمود', 'القاهره', '01022648327', '5013', 'انثي', 4, '2021-09-08 03:13:27', '2021-09-08 03:14:59'),
(2637, 'فاطيما عبد الغنى', 'القاهره', '01024302954', '5012', 'انثي', 4, '2021-09-08 03:14:24', '2021-09-08 03:14:36'),
(2638, 'عصام كمال', 'القاهره', '01029059995', '5014', 'ذكر', 4, '2021-09-08 03:15:42', '2021-09-08 03:15:52'),
(2639, 'سيد على', 'القاهره', '01149871159', '5015', 'ذكر', 4, '2021-09-08 03:24:54', '2021-09-08 03:25:07'),
(2640, 'محمد اسامه', 'القاهره', '0114589066', '5016', 'ذكر', 4, '2021-09-08 03:26:07', '2021-09-08 03:26:18'),
(2641, 'شهد محمد', 'القاهره', '01121868526', '5017', 'انثي', 4, '2021-09-08 03:26:57', '2021-09-08 03:30:00'),
(2642, 'مريم هانى', 'القاهره', '01277552300', '5018', 'انثي', 4, '2021-09-08 03:30:34', '2021-09-08 03:30:45'),
(2643, 'كنزى احمد', 'القاهره', '01277229895', '5019', 'انثي', 4, '2021-09-08 03:31:33', '2021-09-08 03:32:27'),
(2644, 'لقاء ابراهيم', 'القاهره', '01110846314', '5020', 'انثي', 4, '2021-09-08 03:32:15', '2021-09-24 03:08:23'),
(2645, 'محمد السباعى', 'القاهره', '0111756024', '6000', 'ذكر', 5, '2021-09-08 03:35:24', '2021-09-08 03:35:39'),
(2646, 'عبدالرحمن ابراهيم', 'القاهره', '01019992639', '6001', 'ذكر', 5, '2021-09-08 03:36:22', '2021-09-08 03:36:36'),
(2647, 'رحمه جمعه', 'القاهره', '01029312153', '6002', 'انثي', 5, '2021-09-08 03:37:29', '2021-09-08 03:37:41'),
(2648, 'هاجر محمد', 'القاهره', '01149352067', '6003', 'انثي', 5, '2021-09-08 03:38:39', '2021-09-08 03:38:59'),
(2649, 'امنيه عبد الرحيم', 'القاهره', '01149514663', '6004', 'انثي', 5, '2021-09-08 03:39:41', '2021-09-08 03:39:53'),
(2650, 'حنان احمد', 'القاهره', '01019480418', '6005', 'انثي', 5, '2021-09-08 03:41:26', '2021-09-08 03:41:37'),
(2651, 'ايمان طاهر', 'القاهره', '01127839489', '6006', 'انثي', 5, '2021-09-08 03:42:26', '2021-09-08 03:42:39'),
(2652, 'دينا ربيع', 'القاهره', '01149237515', '6007', 'انثي', 5, '2021-09-08 03:44:08', '2021-09-24 01:41:23'),
(2653, 'منار أسامة محمد عزب', 'الاسماعيلية', '01098501069', '4002', 'انثي', 3, '2021-09-10 00:06:39', '2021-09-10 00:08:25'),
(2654, 'يوسف السيد', 'القاهره', '01003752628', '4050', 'ذكر', 3, '2021-09-10 01:56:03', '2021-09-10 01:56:21'),
(2655, 'اسراء طارق', 'القاهره', '01142383915', '4051', 'انثي', 3, '2021-09-10 01:58:50', '2021-09-10 01:59:09'),
(2656, 'فاطمه احمد', 'القاهره', '01125216871', '4052', 'انثي', 3, '2021-09-10 02:00:04', '2021-09-10 02:08:09'),
(2657, 'احمد رضا', 'القاهره', '01032385486', '4055', 'ذكر', 3, '2021-09-10 02:11:17', '2021-09-10 02:13:20'),
(2658, 'روحيم منتصر', 'القاهره', '01559868084', '5056', 'ذكر', 3, '2021-09-10 02:21:58', '2021-09-10 02:22:13'),
(2659, 'انجى محمد', 'القاهره', '0126907741', '5057', 'انثي', 3, '2021-09-10 02:23:09', '2021-09-11 22:30:24'),
(2660, 'محمود محمد محمود', 'الجيزة', '01022007344', '4003', 'ذكر', 3, '2021-09-11 04:13:11', '2021-09-11 04:16:28'),
(2661, 'آدم عصام الدين على بهنسي', 'طنطا', '01100616164', '4004', 'ذكر', 3, '2021-09-11 20:57:49', '2021-09-11 20:58:09'),
(2662, 'سمر محمد', 'القاهره', '01101615840', '5058', 'انثي', 3, '2021-09-11 22:31:16', '2021-09-11 22:31:41'),
(2663, 'حسين الشروق', 'القاهره', '01112306185', '5059', 'ذكر', 3, '2021-09-11 22:33:33', '2021-09-11 22:33:49'),
(2664, 'مروان الشروق', 'القاهره', '01223702616', '5061', 'ذكر', 3, '2021-09-11 22:34:46', '2021-09-12 00:41:26'),
(2665, 'محمود ابو بكر', 'القاهره', '01272942469', '5062', 'ذكر', 3, '2021-09-12 00:43:08', '2021-09-12 01:24:41'),
(2666, 'احمد عبد الشافى', 'القاهره', '01016291061', '5063', 'ذكر', 3, '2021-09-12 00:44:16', '2021-09-12 00:44:33'),
(2667, 'على حسن', 'القاهره', '01009114127', '5064', 'ذكر', 3, '2021-09-12 00:45:29', '2021-09-12 01:27:16'),
(2668, 'عمرو هانى', 'القاهره', '0101627663.6', '5065', 'ذكر', 3, '2021-09-12 00:47:40', '2021-09-12 00:48:05'),
(2669, 'باسم محمد', 'القاهره', '011519306596', '6090', 'ذكر', 4, '2021-09-12 00:49:01', '2021-09-12 00:49:19'),
(2670, 'عبد الرحمن محمد', 'القاهره', '01128952661', '6091', 'ذكر', 4, '2021-09-12 00:50:30', '2021-09-12 00:52:06'),
(2671, 'احمد عبد المولى', 'القاهره', '01280511644', '6092', 'ذكر', 4, '2021-09-12 00:54:13', '2021-09-12 00:54:39'),
(2672, 'محمد كمال محمد على', 'سوهاج', '01110109583', '4005', 'ذكر', 3, '2021-09-17 00:03:19', '2021-10-03 01:32:48'),
(2673, 'اسماء شكرى', 'القاهرة', '0 115 089 1039', '4006', 'انثي', 3, '2021-09-17 02:47:27', '2021-09-17 02:47:52'),
(2674, 'كريم احمد', 'القاهرة', '01026782212', '4007', 'ذكر', 3, '2021-09-17 02:52:36', '2021-09-17 02:52:54'),
(2675, 'احمد محمد ابراهيم', 'القاهرة', '01129206118', '4008', 'ذكر', 3, '2021-09-17 03:40:13', '2021-09-17 03:43:09'),
(2676, 'محمد محمد عبدالله', 'الشرقية', '01097237055', '4009', 'ذكر', 3, '2021-09-20 02:56:44', '2021-09-27 21:03:03'),
(2677, 'نور ابراهيم احمد', 'المقطم', '01021375795', '4010', 'ذكر', 3, '2021-09-20 03:37:22', '2021-09-20 03:39:22'),
(2678, 'محمد بدوي', 'القاهرة فيوتشر', '0 109 407 8237', '4000', 'ذكر', 3, '2021-09-22 03:41:45', '2021-09-22 03:44:05'),
(2679, 'هاجر يحى', 'القاهره', '01065071924', '9000', 'انثي', 3, '2021-09-24 00:42:05', '2021-09-24 00:42:31'),
(2680, 'ايه رضا', 'القاهره', '01129619409', '6008', 'انثي', 5, '2021-09-24 01:42:12', '2021-09-24 01:42:31'),
(2681, 'ريهام وليد', 'القاهره', '01030083161', '6009', 'انثي', 5, '2021-09-24 01:43:42', '2021-09-24 01:44:04'),
(2682, 'شيرين اسامه', 'القاهره', '01069319993', '6010', 'انثي', 5, '2021-09-24 01:45:20', '2021-09-24 01:45:40'),
(2683, 'سميره ممدوح', 'القاهره', '01275153788', '6011', 'انثي', 5, '2021-09-24 01:46:59', '2021-09-24 01:47:15'),
(2684, 'رحمه محمد', 'القاهره', '01201643937', '6012', 'انثي', 5, '2021-09-24 01:50:24', '2021-09-24 01:50:39'),
(2685, 'اسماء محمد', 'القاهره', '01027637730', '6013', 'انثي', 5, '2021-09-24 01:52:00', '2021-09-24 01:52:18'),
(2686, 'شروق ناصر', 'القاهره', '01204758859', '6014', 'انثي', 5, '2021-09-24 01:53:09', '2021-09-24 01:53:28'),
(2687, 'ندى محمود', 'القاهره', '01140800541', '6015', 'انثي', 5, '2021-09-24 01:54:22', '2021-09-24 01:54:42'),
(2688, 'بسمله المرسى', 'القاهره', '01148452254', '6016', 'انثي', 5, '2021-09-24 01:56:09', '2021-09-24 01:56:27'),
(2689, 'يوسف طارق', 'القاهره', '01155635691', '6017', 'ذكر', 5, '2021-09-24 01:57:29', '2021-09-24 01:57:43'),
(2690, 'ملك ناصر', 'القاهره', '01016751294', '6018', 'انثي', 5, '2021-09-24 01:58:43', '2021-09-24 01:59:03'),
(2691, 'فاطمه محمد', 'القاهره', '01120229411', '6019', 'انثي', 5, '2021-09-24 02:00:05', '2021-09-24 02:00:32'),
(2692, 'رغد عصام', 'القاهره', '01017908467', '6020', 'انثي', 5, '2021-09-24 02:01:31', '2021-09-24 02:01:48'),
(2693, 'هدى السيد', 'القاهره', '01159846852', '6021', 'انثي', 5, '2021-09-24 02:38:49', '2021-09-24 02:39:06'),
(2694, 'اسراء مصطفى', 'القاهره', '010627110060', '6022', 'انثي', 5, '2021-09-24 02:40:07', '2021-09-24 02:40:27'),
(2695, 'دينا نجيب', 'القاهره', '01129379440', '6023', 'انثي', 5, '2021-09-24 02:41:23', '2021-09-24 02:41:42'),
(2696, 'زياد امير', 'القاهره', '01115134164', '6024', 'ذكر', 5, '2021-09-24 02:43:07', '2021-09-24 02:43:29'),
(2697, 'محمود وليد', 'القاهره', '01123649445', '6025', 'ذكر', 5, '2021-09-24 02:47:22', '2021-09-24 02:47:42'),
(2698, 'احمد شعبان', 'القاهره', '01099431484', '6026', 'ذكر', 5, '2021-09-24 02:48:42', '2021-09-24 02:49:05'),
(2699, 'احمد حسن رمضان', 'القاهره', '01144546518', '6027', 'ذكر', 5, '2021-09-24 02:51:33', '2021-09-24 02:51:50'),
(2700, 'اسلام محمود', 'القاهره', '01067181668', '6028', 'ذكر', 5, '2021-09-24 02:53:12', '2021-09-24 02:53:33'),
(2701, 'ندى كرم', 'القاهره', '01205566911', '6029', 'انثي', 5, '2021-09-24 02:54:24', '2021-09-24 02:54:41'),
(2702, 'ندى رمضان طه', 'القاهره', '01205566911', '6030', 'انثي', 5, '2021-09-24 02:55:58', '2021-09-24 02:56:18'),
(2703, 'يارا عادل', 'القاهره', '01024204080', '6031', 'انثي', 5, '2021-09-24 02:57:03', '2021-09-24 02:58:27'),
(2704, 'نرمين عمرو', 'القاهره', '01101517841', '6032', 'انثي', 5, '2021-09-24 03:01:20', '2021-09-29 00:40:03'),
(2705, 'بسمله جمال ابراهيم', 'القاهره', '01030063856', '5021', 'انثي', 4, '2021-09-24 03:09:12', '2021-09-24 03:09:42'),
(2706, 'نهى ممدوح', 'القاهره', '01029915383', '5022', 'انثي', 4, '2021-09-24 03:10:23', '2021-09-24 03:10:40'),
(2707, 'نور محمد', 'القاهره', '01029869545', '5023', 'انثي', 4, '2021-09-24 03:11:30', '2021-09-24 03:11:45'),
(2708, 'ساره احمد', 'القاهره', '01110117798', '5024', 'انثي', 4, '2021-09-24 03:12:40', '2021-09-24 03:12:56'),
(2709, 'هنا على', 'القاهره', '01159887507', '5025', 'انثي', 4, '2021-09-24 03:13:48', '2021-09-24 03:14:00'),
(2710, 'روان عادل', 'القاهره', '01113336277', '5026', 'انثي', 4, '2021-09-24 03:14:54', '2021-09-24 03:15:08'),
(2711, 'حبيبه منتصر', 'القاهره', '01112375040', '5027', 'انثي', 4, '2021-09-24 03:16:17', '2021-09-24 03:16:34'),
(2712, 'ياسمين ايمن', 'القاهره', '01015102557', '5028', 'انثي', 4, '2021-09-24 03:17:22', '2021-09-24 03:17:22'),
(2714, 'نعمه احمد', 'القاهره', '01113831486', '5030', 'انثي', 4, '2021-09-24 03:26:41', '2021-09-24 03:27:28'),
(2715, 'ايه السيد', 'القاهره', '01141380500', '5031', 'انثي', 4, '2021-09-24 03:28:29', '2021-09-24 03:28:42'),
(2716, 'فاطمه الامير', 'القاهره', '01020514550', '5032', 'انثي', 4, '2021-09-24 03:33:32', '2021-09-24 03:34:06'),
(2717, 'احلام السيد', 'القاهره', '01119981096', '5033', 'انثي', 4, '2021-09-24 03:34:53', '2021-09-24 03:41:17'),
(2718, 'شهد حسين', 'القاهره', '01117219334', '5034', 'انثي', 4, '2021-09-24 03:42:01', '2021-09-24 03:42:16'),
(2719, 'اميره سعيد', 'القاهره', '01030443093', '5035', 'انثي', 4, '2021-09-24 03:44:36', '2021-09-24 03:45:05'),
(2720, 'مريم احمد', 'القاهره', '01008806618', '5036', 'انثي', 4, '2021-09-24 03:46:50', '2021-09-24 03:47:07'),
(2721, 'سما حسين', 'القاهره', '01030098142', '5037', 'انثي', 4, '2021-09-24 03:49:42', '2021-09-24 03:49:54'),
(2722, 'سعاد احمد', 'القاهره', '01095172920', '5038', 'انثي', 4, '2021-09-24 03:59:37', '2021-09-29 00:16:13'),
(2723, 'نور الهدي ناصر', 'القاهرة', '01150199348', '4000', 'انثي', 3, '2021-09-24 05:19:22', '2021-09-24 05:29:04'),
(2725, 'سارة نادي', 'القاهرة', '01140098103', '5555', 'انثي', 3, '2021-09-27 01:58:03', '2021-09-27 02:12:19'),
(2726, 'شهد محمود', 'القاهرة', '01223011373', '5555', 'انثي', 3, '2021-09-27 02:10:56', '2021-09-27 02:35:53'),
(2727, 'اسراء طارق', 'القاهرة', '01142383915', '5555', 'انثي', 3, '2021-09-27 02:14:48', '2021-09-27 02:16:13'),
(2728, 'انجي محمد', 'القاهرة', '01226907741', '5555', 'ذكر', 3, '2021-09-27 02:17:09', '2021-09-27 02:17:45'),
(2729, 'روحيم منتصر', 'القاهرة', '01553868084', '5555', 'ذكر', 3, '2021-09-27 02:18:59', '2021-09-27 02:20:24'),
(2730, 'سيف الاسلام', 'القاهرة', '01210755578', '5555', 'ذكر', 3, '2021-09-27 02:22:28', '2021-09-27 02:23:17'),
(2731, 'احمد عصام', 'بني سويف', '0 102 691 2477', '4000', 'ذكر', 3, '2021-09-27 21:08:33', '2021-09-27 21:11:45'),
(2732, 'بسمله محمد', 'المقطم', '0 112 425 7268', '4000', 'انثي', 3, '2021-09-27 21:22:54', '2021-09-27 21:33:45'),
(2733, 'نبوية حسين', 'القاهرة', '0 115 393 7917', '4000', 'انثي', 3, '2021-09-27 23:33:57', '2021-09-28 04:30:24'),
(2734, 'حسناء  ابو الغيط', 'المقطم', '01149440363', '4000', 'انثي', 3, '2021-09-28 04:27:46', '2021-09-28 05:20:21'),
(2735, 'ادهم حماده', 'القاهره', '01029840873', '5039', 'ذكر', 4, '2021-09-29 00:17:00', '2021-09-29 00:17:21'),
(2736, 'عبد العظيم عادل', 'القاهره', '01558523293', '5040', 'ذكر', 4, '2021-09-29 00:18:47', '2021-09-29 00:19:01'),
(2737, 'عبدالرحمن محمد بيومى', 'القاهره', '01061783324', '5041', 'ذكر', 4, '2021-09-29 00:20:02', '2021-09-29 00:20:18'),
(2738, 'معاذ محمود', 'القاهره', '01013584685', '5042', 'ذكر', 4, '2021-09-29 00:21:15', '2021-09-29 00:21:32'),
(2739, 'عبيده محمود', 'القاهره', '01007039593', '5043', 'ذكر', 4, '2021-09-29 00:22:54', '2021-09-29 00:23:13'),
(2740, 'بلال وائل', 'القاهره', '0109838611', '5044', 'ذكر', 4, '2021-09-29 00:23:53', '2021-09-29 00:24:07'),
(2741, 'احمد السيد سباعى', 'القاهره', '01069386833', '5045', 'ذكر', 4, '2021-09-29 00:24:45', '2021-09-29 00:25:00'),
(2742, 'عبدالرحمن جمال', 'القاهره', '01021102206', '5046', 'ذكر', 4, '2021-09-29 00:25:39', '2021-09-29 00:25:57'),
(2743, 'عمار جمال', 'القاهره', '01021102206', '5047', 'ذكر', 4, '2021-09-29 00:26:37', '2021-09-29 00:26:54'),
(2744, 'احمد شوقى', 'القاهره', '01124726096', '5048', 'ذكر', 4, '2021-09-29 00:27:34', '2021-09-29 00:27:48'),
(2745, 'احمد على', 'القاهره', '01091411007', '5049', 'ذكر', 4, '2021-09-29 00:28:30', '2021-09-29 00:28:45'),
(2746, 'احمد عبد الهادى', 'القاهره', '01096242663', '5050', 'ذكر', 4, '2021-09-29 00:29:21', '2021-09-29 00:29:36'),
(2747, 'شهد اشرف', 'القاهره', '01143557652', '5051', 'انثي', 4, '2021-09-29 00:30:35', '2021-09-29 00:30:50'),
(2748, 'مريم جمال', 'القاهره', '01102448357', '5052', 'انثي', 4, '2021-09-29 00:32:12', '2021-09-29 00:32:27'),
(2749, 'ريم تامر', 'القاهره', '01553319721', '5053', 'انثي', 4, '2021-09-29 00:33:40', '2021-09-29 00:33:54'),
(2750, 'ريحانه عمر', 'القاهره', '01100909548', '5054', 'انثي', 4, '2021-09-29 00:34:38', '2021-09-29 00:34:54'),
(2751, 'ساره عادل', 'القاهره', '01007969395', '5055', 'انثي', 4, '2021-09-29 00:35:29', '2021-09-29 00:35:44'),
(2752, 'جنى احمد', 'القاهره', '01016158699', '6033', 'انثي', 5, '2021-09-29 00:40:46', '2021-09-29 00:41:06'),
(2753, 'عائشه محمد حافظ', 'القاهره', '01095902777', '6034', 'انثي', 5, '2021-09-29 00:41:56', '2021-09-29 00:42:14'),
(2754, 'ايمان صلاح', 'القاهره', '0103093.5886', '6035', 'انثي', 5, '2021-09-29 00:44:38', '2021-09-29 00:45:13'),
(2755, 'روان محمود', 'القاهره', '01121973256', '6036', 'انثي', 5, '2021-09-29 00:46:03', '2021-09-29 00:46:20'),
(2756, 'ريحانه محمد', 'القاهره', '01121973256', '6037', 'انثي', 5, '2021-09-29 00:47:28', '2021-09-29 00:47:51'),
(2757, 'نورهان قمر الدين', 'القاهره', '01145894716', '6038', 'انثي', 5, '2021-09-29 00:48:38', '2021-09-29 00:48:52'),
(2758, 'يارا وليد', 'القاهره', '01123439752', '6039', 'انثي', 5, '2021-09-29 00:49:33', '2021-09-29 00:49:59'),
(2759, 'نسرين محمد', 'القاهره', '01022475128', '6040', 'انثي', 5, '2021-09-29 00:51:03', '2021-09-29 00:56:43'),
(2760, 'سما احمد', 'القاهره', '01067047535', '6041', 'انثي', 5, '2021-09-29 00:57:25', '2021-09-29 00:57:40'),
(2761, 'شمس حسن', 'القاهره', '01098835662', '6042', 'انثي', 5, '2021-09-29 00:58:47', '2021-09-29 00:59:03'),
(2762, 'ملك وائل', 'القاهره', '01285400351', '6043', 'انثي', 5, '2021-09-29 01:00:24', '2021-09-29 01:00:39'),
(2763, 'شروق سعيد', 'القاهره', '01144901075', '6044', 'انثي', 5, '2021-09-29 01:02:23', '2021-09-29 01:02:39'),
(2764, 'ايه حسن', 'القاهره', '01124882122', '6054', 'انثي', 5, '2021-09-29 01:03:22', '2021-09-29 01:03:39'),
(2765, 'ابراهيم محمد', 'القاهره', '01144639738', '6046', 'ذكر', 5, '2021-09-29 01:04:36', '2021-09-29 01:04:51'),
(2766, 'حسام محمد', 'القاهره', '01102244562', '6047', 'ذكر', 5, '2021-09-29 01:05:39', '2021-09-29 01:07:41'),
(2767, 'احمد عمر', 'القاهره', '01095120995', '6045', 'ذكر', 5, '2021-09-29 01:06:48', '2021-09-29 01:07:23'),
(2768, 'احمد عمر', 'القاهره', '01095120995', '6048', 'ذكر', 5, '2021-09-29 01:14:59', '2021-09-29 01:15:21'),
(2769, 'عبدالله سيد', 'القاهره', '01156132760', '6049', 'ذكر', 5, '2021-09-29 01:16:49', '2021-09-29 01:17:06'),
(2770, 'يوسف محمد', 'القاهره', '01094388849', '6050', 'ذكر', 5, '2021-09-29 01:17:50', '2021-09-29 01:18:07'),
(2771, 'يوسف مصطفى', 'القاهره', '0114698685', '6051', 'ذكر', 5, '2021-09-29 01:18:57', '2021-09-29 01:19:11'),
(2772, 'حمزه جسن', 'القاهره', '01010673503', '6052', 'ذكر', 5, '2021-09-29 01:19:56', '2021-09-29 01:20:10'),
(2773, 'محمود طارق', 'القاهره', '01012904841', '6053', 'ذكر', 5, '2021-09-29 01:20:59', '2021-09-29 01:21:28'),
(2774, 'محمد عبد الكريم', 'القاهره', '01023088900', '6056', 'ذكر', 5, '2021-09-29 01:24:01', '2021-09-29 01:24:42'),
(2775, 'محمد حاتم', 'القاهره', '01283372970', '6057', 'ذكر', 5, '2021-09-29 01:25:29', '2021-09-29 01:25:47'),
(2776, 'عبدالرحمن خالد', 'القاهره', '01003265126', '6058', 'ذكر', 5, '2021-09-29 01:26:57', '2021-09-29 01:27:17'),
(2777, 'على عادل', 'القاهره', '0154792685', '6059', 'ذكر', 5, '2021-09-29 01:28:10', '2021-09-29 01:28:46'),
(2778, 'احمد سيد', 'القاهره', '01025411877', '6060', 'ذكر', 5, '2021-09-29 01:29:30', '2021-09-29 01:29:46'),
(2779, 'اسر ياسر', 'القاهره', '01011621629', '6061', 'ذكر', 5, '2021-09-29 01:31:38', '2021-09-29 01:32:02'),
(2780, 'زينب محمد', 'القاهره', '01032494326', '6062', 'انثي', 5, '2021-09-29 01:33:04', '2021-09-29 01:33:25'),
(2781, 'جويريه سيد', 'القاهره', '01156774450', '6063', 'انثي', 5, '2021-09-29 01:34:14', '2021-09-29 01:34:32'),
(2782, 'شهد يوسف', 'القاهره', '01159629153', '6064', 'انثي', 5, '2021-09-29 01:35:32', '2021-09-29 01:35:49'),
(2783, 'شهد محمد', 'القاهره', '01153540434', '6065', 'انثي', 5, '2021-09-29 01:36:31', '2021-09-29 01:36:55'),
(2784, 'منه الله فيصل', 'القاهره', '01012730305', '6066', 'انثي', 5, '2021-09-29 01:37:38', '2021-09-29 01:37:55'),
(2785, 'هدى السيد', 'القاهره', '01159846852', '6067', 'انثي', 5, '2021-09-29 01:39:58', '2021-09-29 01:40:22'),
(2786, 'اسراء مصطفى', 'القاهره', '01062710060', '6068', 'انثي', 5, '2021-09-29 01:41:14', '2021-09-29 01:41:32'),
(2787, 'يوسف احمد', 'القاهره', '01126132740', '5070', 'ذكر', 4, '2021-09-29 01:43:21', '2021-09-29 01:52:38'),
(2788, 'احمد طاهر', 'القاهره', '01126683450', '5071', 'ذكر', 4, '2021-09-29 01:44:49', '2021-09-29 01:51:48'),
(2789, 'محمد اسامه السيد', 'القاهره', '01145899066', '5072', 'ذكر', 4, '2021-09-29 01:46:43', '2021-09-29 01:51:05'),
(2790, 'عائشه رمضان', 'القاهره', '01156610315', '5073', 'انثي', 4, '2021-09-29 01:50:25', '2021-09-29 01:50:25'),
(2791, 'ريهام كيشار', 'القاهره', '01152091968', '5074', 'انثي', 4, '2021-09-29 01:53:30', '2021-09-29 01:53:49'),
(2792, 'رزان حاتم', 'القاهره', '01091114402', '5075', 'انثي', 4, '2021-09-29 01:54:48', '2021-09-29 01:55:06'),
(2793, 'لى لى تامر', 'القاهره', '01009422198', '5076', 'انثي', 4, '2021-09-29 01:56:46', '2021-09-29 01:57:03'),
(2794, 'هند عادل', 'القاهره', '0101668876', '5077', 'انثي', 4, '2021-09-29 01:58:18', '2021-09-29 01:58:42'),
(2795, 'ياسمين ماجد', 'القاهره', '01150153463', '7000', 'انثي', 3, '2021-09-29 01:59:49', '2021-09-29 02:01:47'),
(2796, 'ملك اشرف', 'القاهره', '01066753812', '7001', 'انثي', 3, '2021-09-29 02:01:12', '2021-09-29 02:01:31'),
(2798, 'فاطمه كمال', 'القاهره', '01121587176', '7003', 'انثي', 3, '2021-09-29 02:04:48', '2021-09-29 02:05:10'),
(2799, 'محمود نبيل', 'القاهره', '01099257555', '2004424', 'ذكر', 3, '2021-10-03 20:30:47', '2021-10-03 20:31:04'),
(2800, 'علياء شوقى', 'القاهره', '01022454534', '8000', 'انثي', 4, '2021-10-03 21:55:58', '2021-10-03 21:56:30'),
(2801, 'ريم علاء الدين', 'القاهره', '01099179304', '8001', 'انثي', 4, '2021-10-03 21:58:06', '2021-10-03 21:58:36'),
(2802, 'محمود محمد مبروك', 'القاهره', '01094156596', '8002', 'ذكر', 4, '2021-10-03 22:00:09', '2021-10-03 22:00:30'),
(2803, 'احمد حسين', 'القاهره', '01001023816', '8003', 'ذكر', 4, '2021-10-03 22:01:27', '2021-10-03 22:01:49'),
(2804, 'معاذ عيد', 'القاهره', '01030163100', '8004', 'ذكر', 4, '2021-10-03 22:02:49', '2021-10-03 22:04:07'),
(2805, 'عبد الرحمن مصطفى', 'القاهره', '01157784056', '8005', 'ذكر', 4, '2021-10-03 22:05:41', '2021-10-03 22:06:10'),
(2806, 'ندا عبد الرسول', 'القاهره', '010305753820', '8006', 'انثي', 4, '2021-10-03 22:07:43', '2021-10-03 22:08:04'),
(2807, 'اسراء اشرف', 'القاهره', '01126811281', '8007', 'انثي', 4, '2021-10-03 22:09:23', '2021-10-03 22:09:45'),
(2808, 'ندا محمد', 'القاهره', '01018773925', '8008', 'انثي', 4, '2021-10-03 22:11:16', '2021-10-03 22:11:39'),
(2809, 'سلمى محمود', 'القاهره', '01069538944', '8009', 'انثي', 4, '2021-10-03 22:12:38', '2021-10-03 22:13:00'),
(2810, 'رحمه ولاء محمد', 'القاهره', '01122600664', '8010', 'انثي', 4, '2021-10-03 22:13:59', '2021-10-03 22:14:18'),
(2811, 'مريم سمير', 'القاهره', '01140956168', '8011', 'انثي', 4, '2021-10-03 22:15:44', '2021-10-03 22:16:06'),
(2812, 'كريم احمد', 'القاهره', '01017656443', '8012', 'ذكر', 4, '2021-10-03 22:16:59', '2021-10-03 22:17:21'),
(2813, 'محمد طارق', 'القاهره', '01550161226', '8013', 'ذكر', 4, '2021-10-03 22:18:37', '2021-10-03 22:18:57'),
(2814, 'اريج اسماعيل', 'القاهره', '01128574743', '8014', 'انثي', 4, '2021-10-03 22:20:02', '2021-10-03 22:20:26'),
(2815, 'رحمه صبرى', 'القاهره', '01551920928', '8015', 'انثي', 4, '2021-10-03 22:21:40', '2021-10-03 22:21:58'),
(2816, 'نوره محمد', 'القاهره', '01003091160', '8016', 'انثي', 4, '2021-10-03 22:24:08', '2021-10-03 22:24:48'),
(2817, 'نور عصام', 'القاهره', '01033991458', '8017', 'ذكر', 4, '2021-10-03 22:25:55', '2021-10-03 22:26:29'),
(2818, 'عمر احمد', 'القاهره', '01032282235', '8018', 'ذكر', 4, '2021-10-03 22:27:12', '2021-10-03 22:27:32'),
(2819, 'محمد عادل', 'القاهره', '01033778078', '8019', 'ذكر', 4, '2021-10-03 22:28:23', '2021-10-03 22:28:44'),
(2820, 'تيمية اشرف', 'كفر الشيخ الحامول', '0 101 836 5539', '4000', 'ذكر', 3, '2021-10-04 02:07:03', '2021-10-04 02:47:03'),
(2821, 'احمد محمد عصر', 'القاهرة', '01011332042', '4000', 'ذكر', 3, '2021-10-04 06:52:51', '2021-10-04 06:55:28'),
(2822, 'دينا عبداللاه حسن محمد', 'أسيوط', '01202958752', '4000', 'انثي', 3, '2021-10-04 22:23:28', '2021-10-04 22:24:25'),
(2824, 'دينا مصطفي', 'المقطم', '0 127 538 4113', '4000', 'انثي', 3, '2021-10-06 04:47:14', '2021-10-06 04:52:52'),
(2826, 'super_admin@app.com', 'gfsgsfg', '8145', '123123123', 'انثي', 3, '2021-10-09 10:06:42', '2021-10-09 10:06:42'),
(2827, 'super_admin@app.com', 'gfsgsfg', '8145', '123123123', 'انثي', 3, '2021-10-09 10:07:19', '2021-10-09 10:07:19'),
(2828, 'super_admin@app.com', 'gfsgsfg', '8145', '123123123', 'انثي', 3, '2021-10-09 10:08:58', '2021-10-09 10:08:58'),
(2829, 'super_admin@app.com', 'gfsgsfg', '8145', '123123123', 'انثي', 3, '2021-10-09 10:11:20', '2021-10-09 10:11:20'),
(2830, 'adf@app.com', 'gsfg', '245425', '123123123', 'انثي', 4, '2021-10-09 10:12:18', '2021-10-09 10:12:18'),
(2831, 'super_admin@app.com', 'afg', '134', '123123123', 'انثي', 4, '2021-10-09 10:13:08', '2021-10-09 10:13:08'),
(2832, 'super_admin@app.com', 'afg', '134', '123123123', 'انثي', 4, '2021-10-09 10:13:22', '2021-10-09 10:13:22'),
(2833, 'super_admin@app.com', 'afg', '134', '123123123', 'انثي', 4, '2021-10-09 10:13:41', '2021-10-09 10:13:41'),
(2834, 'admin', 'sfg', '123123123', '123123123', 'ذكر', 4, '2021-10-10 18:56:50', '2021-10-10 18:56:50'),
(2835, 'علي', 'اكتبور', '123', '123123123', 'ذكر', 4, '2021-10-11 00:12:02', '2021-10-11 00:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `subject_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `level_id`, `subject_description`, `created_at`, `updated_at`) VALUES
(2, 'الكيمياء', 3, NULL, '2021-08-11 02:04:47', '2021-08-11 02:04:47'),
(4, 'الواجب', 3, NULL, '2021-08-23 00:16:23', '2021-08-23 00:16:23'),
(5, 'الكيمياء', 4, NULL, '2021-09-08 02:54:28', '2021-09-08 02:54:28'),
(6, 'الكيمياء', 5, NULL, '2021-09-08 03:34:08', '2021-09-08 03:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `subject_student`
--

CREATE TABLE `subject_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_student`
--

INSERT INTO `subject_student` (`id`, `student_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(18, 2502, 2, '2021-08-21 05:50:10', '2021-08-21 05:50:10'),
(25, 2510, 2, '2021-08-21 22:41:49', '2021-08-21 22:41:49'),
(33, 2512, 2, '2021-08-22 00:01:54', '2021-08-22 00:01:54'),
(34, 2509, 2, '2021-08-22 00:21:47', '2021-08-22 00:21:47'),
(35, 2501, 2, '2021-08-22 02:33:50', '2021-08-22 02:33:50'),
(36, 2505, 2, '2021-08-22 02:34:38', '2021-08-22 02:34:38'),
(38, 2513, 2, '2021-08-22 02:36:31', '2021-08-22 02:36:31'),
(42, 2515, 2, '2021-08-22 02:38:43', '2021-08-22 02:38:43'),
(63, 2518, 2, '2021-08-23 03:21:43', '2021-08-23 03:21:43'),
(65, 2519, 2, '2021-08-23 23:01:22', '2021-08-23 23:01:22'),
(67, 2520, 2, '2021-08-25 22:04:30', '2021-08-25 22:04:30'),
(107, 2537, 2, '2021-08-28 23:39:35', '2021-08-28 23:39:35'),
(191, 2524, 2, '2021-08-29 06:37:54', '2021-08-29 06:37:54'),
(238, 2596, 2, '2021-08-30 00:22:19', '2021-08-30 00:22:19'),
(266, 2609, 2, '2021-09-03 00:48:32', '2021-09-03 00:48:32'),
(267, 2527, 2, '2021-09-04 02:46:29', '2021-09-04 02:46:29'),
(268, 2528, 2, '2021-09-04 02:47:15', '2021-09-04 02:47:15'),
(270, 2529, 2, '2021-09-04 02:48:51', '2021-09-04 02:48:51'),
(271, 2530, 2, '2021-09-04 02:49:40', '2021-09-04 02:49:40'),
(272, 2531, 2, '2021-09-04 02:50:15', '2021-09-04 02:50:15'),
(274, 2533, 2, '2021-09-04 02:51:32', '2021-09-04 02:51:32'),
(275, 2534, 2, '2021-09-04 02:52:05', '2021-09-04 02:52:05'),
(276, 2535, 2, '2021-09-04 02:52:45', '2021-09-04 02:52:45'),
(277, 2536, 2, '2021-09-04 02:53:38', '2021-09-04 02:53:38'),
(278, 2538, 2, '2021-09-04 03:00:25', '2021-09-04 03:00:25'),
(279, 2539, 2, '2021-09-04 03:05:53', '2021-09-04 03:05:53'),
(280, 2540, 2, '2021-09-04 03:06:24', '2021-09-04 03:06:24'),
(282, 2542, 2, '2021-09-04 03:07:15', '2021-09-04 03:07:15'),
(283, 2543, 2, '2021-09-04 03:07:43', '2021-09-04 03:07:43'),
(284, 2544, 2, '2021-09-04 03:08:27', '2021-09-04 03:08:27'),
(285, 2545, 2, '2021-09-04 03:08:53', '2021-09-04 03:08:53'),
(286, 2546, 2, '2021-09-04 03:09:14', '2021-09-04 03:09:14'),
(287, 2547, 2, '2021-09-04 03:09:38', '2021-09-04 03:09:38'),
(288, 2548, 2, '2021-09-04 03:10:05', '2021-09-04 03:10:05'),
(289, 2549, 2, '2021-09-04 03:10:24', '2021-09-04 03:10:24'),
(290, 2550, 2, '2021-09-04 03:10:50', '2021-09-04 03:10:50'),
(291, 2551, 2, '2021-09-04 03:11:12', '2021-09-04 03:11:12'),
(292, 2552, 2, '2021-09-04 03:11:37', '2021-09-04 03:11:37'),
(293, 2553, 2, '2021-09-04 03:11:59', '2021-09-04 03:11:59'),
(294, 2554, 2, '2021-09-04 03:12:25', '2021-09-04 03:12:25'),
(295, 2555, 2, '2021-09-04 03:12:48', '2021-09-04 03:12:48'),
(296, 2556, 2, '2021-09-04 03:13:17', '2021-09-04 03:13:17'),
(297, 2557, 2, '2021-09-04 03:13:40', '2021-09-04 03:13:40'),
(298, 2558, 2, '2021-09-04 03:14:03', '2021-09-04 03:14:03'),
(299, 2559, 2, '2021-09-04 03:14:26', '2021-09-04 03:14:26'),
(300, 2560, 2, '2021-09-04 03:14:47', '2021-09-04 03:14:47'),
(301, 2561, 2, '2021-09-04 03:15:14', '2021-09-04 03:15:14'),
(302, 2562, 2, '2021-09-04 03:15:38', '2021-09-04 03:15:38'),
(303, 2563, 2, '2021-09-04 03:16:06', '2021-09-04 03:16:06'),
(304, 2564, 2, '2021-09-04 03:16:28', '2021-09-04 03:16:28'),
(305, 2565, 2, '2021-09-04 03:16:58', '2021-09-04 03:16:58'),
(307, 2567, 2, '2021-09-04 03:18:28', '2021-09-04 03:18:28'),
(308, 2568, 2, '2021-09-04 03:18:51', '2021-09-04 03:18:51'),
(309, 2569, 2, '2021-09-04 03:19:16', '2021-09-04 03:19:16'),
(310, 2570, 2, '2021-09-04 03:19:39', '2021-09-04 03:19:39'),
(311, 2571, 2, '2021-09-04 03:20:09', '2021-09-04 03:20:09'),
(312, 2572, 2, '2021-09-04 03:21:13', '2021-09-04 03:21:13'),
(313, 2573, 2, '2021-09-04 03:21:43', '2021-09-04 03:21:43'),
(314, 2574, 2, '2021-09-04 03:22:12', '2021-09-04 03:22:12'),
(315, 2575, 2, '2021-09-04 03:22:38', '2021-09-04 03:22:38'),
(316, 2576, 2, '2021-09-04 03:23:07', '2021-09-04 03:23:07'),
(317, 2577, 2, '2021-09-04 03:23:31', '2021-09-04 03:23:31'),
(319, 2579, 2, '2021-09-04 03:25:08', '2021-09-04 03:25:08'),
(320, 2580, 2, '2021-09-04 03:25:37', '2021-09-04 03:25:37'),
(321, 2581, 2, '2021-09-04 03:26:04', '2021-09-04 03:26:04'),
(322, 2582, 2, '2021-09-04 03:26:35', '2021-09-04 03:26:35'),
(323, 2583, 2, '2021-09-04 03:27:12', '2021-09-04 03:27:12'),
(324, 2584, 2, '2021-09-04 03:27:41', '2021-09-04 03:27:41'),
(325, 2585, 2, '2021-09-04 03:28:21', '2021-09-04 03:28:21'),
(327, 2586, 2, '2021-09-04 03:29:13', '2021-09-04 03:29:13'),
(328, 2587, 2, '2021-09-04 03:29:37', '2021-09-04 03:29:37'),
(329, 2588, 2, '2021-09-04 03:30:06', '2021-09-04 03:30:06'),
(330, 2589, 2, '2021-09-04 03:30:35', '2021-09-04 03:30:35'),
(331, 2590, 2, '2021-09-04 03:31:05', '2021-09-04 03:31:05'),
(332, 2591, 2, '2021-09-04 03:31:34', '2021-09-04 03:31:34'),
(333, 2592, 2, '2021-09-04 03:32:06', '2021-09-04 03:32:06'),
(334, 2593, 2, '2021-09-04 03:32:48', '2021-09-04 03:32:48'),
(335, 2594, 2, '2021-09-04 03:33:16', '2021-09-04 03:33:16'),
(336, 2595, 2, '2021-09-04 03:33:53', '2021-09-04 03:33:53'),
(337, 2597, 2, '2021-09-04 03:34:38', '2021-09-04 03:34:38'),
(338, 2598, 2, '2021-09-04 03:35:17', '2021-09-04 03:35:17'),
(339, 2599, 2, '2021-09-04 03:35:50', '2021-09-04 03:35:50'),
(340, 2600, 2, '2021-09-04 03:36:11', '2021-09-04 03:36:11'),
(341, 2601, 2, '2021-09-04 03:36:41', '2021-09-04 03:36:41'),
(345, 2605, 2, '2021-09-04 04:16:57', '2021-09-04 04:16:57'),
(346, 2606, 2, '2021-09-04 04:17:19', '2021-09-04 04:17:19'),
(350, 2610, 2, '2021-09-04 04:21:37', '2021-09-04 04:21:37'),
(369, 2618, 2, '2021-09-04 20:58:37', '2021-09-04 20:58:37'),
(370, 2617, 2, '2021-09-04 20:59:47', '2021-09-04 20:59:47'),
(371, 2612, 2, '2021-09-04 21:04:59', '2021-09-04 21:04:59'),
(372, 2611, 2, '2021-09-04 21:06:59', '2021-09-04 21:06:59'),
(373, 2615, 2, '2021-09-04 21:07:51', '2021-09-04 21:07:51'),
(374, 2616, 2, '2021-09-04 21:10:06', '2021-09-04 21:10:06'),
(375, 2614, 2, '2021-09-04 21:12:49', '2021-09-04 21:12:49'),
(377, 2619, 2, '2021-09-04 21:21:11', '2021-09-04 21:21:11'),
(379, 2620, 2, '2021-09-04 21:28:08', '2021-09-04 21:28:08'),
(385, 2622, 2, '2021-09-06 23:52:03', '2021-09-06 23:52:03'),
(386, 2613, 2, '2021-09-08 02:11:21', '2021-09-08 02:11:21'),
(387, 2621, 2, '2021-09-08 02:16:00', '2021-09-08 02:16:00'),
(393, 2625, 5, '2021-09-08 02:57:52', '2021-09-08 02:57:52'),
(395, 2626, 5, '2021-09-08 02:59:06', '2021-09-08 02:59:06'),
(401, 2628, 5, '2021-09-08 03:02:09', '2021-09-08 03:02:09'),
(402, 2627, 5, '2021-09-08 03:02:30', '2021-09-08 03:02:30'),
(404, 2629, 5, '2021-09-08 03:03:19', '2021-09-08 03:03:19'),
(406, 2630, 5, '2021-09-08 03:04:15', '2021-09-08 03:04:15'),
(407, 2578, 2, '2021-09-08 03:05:36', '2021-09-08 03:05:36'),
(408, 2566, 2, '2021-09-08 03:05:47', '2021-09-08 03:05:47'),
(410, 2631, 5, '2021-09-08 03:07:23', '2021-09-08 03:07:23'),
(412, 2632, 5, '2021-09-08 03:08:26', '2021-09-08 03:08:26'),
(416, 2633, 5, '2021-09-08 03:11:00', '2021-09-08 03:11:00'),
(417, 2634, 5, '2021-09-08 03:11:31', '2021-09-08 03:11:31'),
(419, 2635, 5, '2021-09-08 03:12:44', '2021-09-08 03:12:44'),
(423, 2637, 5, '2021-09-08 03:14:36', '2021-09-08 03:14:36'),
(424, 2636, 5, '2021-09-08 03:14:59', '2021-09-08 03:14:59'),
(426, 2638, 5, '2021-09-08 03:15:52', '2021-09-08 03:15:52'),
(428, 2639, 5, '2021-09-08 03:25:07', '2021-09-08 03:25:07'),
(430, 2640, 5, '2021-09-08 03:26:18', '2021-09-08 03:26:18'),
(432, 2641, 5, '2021-09-08 03:30:00', '2021-09-08 03:30:00'),
(434, 2642, 5, '2021-09-08 03:30:45', '2021-09-08 03:30:45'),
(437, 2643, 5, '2021-09-08 03:32:27', '2021-09-08 03:32:27'),
(440, 2645, 6, '2021-09-08 03:35:39', '2021-09-08 03:35:39'),
(442, 2646, 6, '2021-09-08 03:36:36', '2021-09-08 03:36:36'),
(444, 2647, 6, '2021-09-08 03:37:41', '2021-09-08 03:37:41'),
(446, 2648, 6, '2021-09-08 03:38:59', '2021-09-08 03:38:59'),
(448, 2649, 6, '2021-09-08 03:39:53', '2021-09-08 03:39:53'),
(450, 2650, 6, '2021-09-08 03:41:37', '2021-09-08 03:41:37'),
(452, 2651, 6, '2021-09-08 03:42:39', '2021-09-08 03:42:39'),
(456, 2653, 2, '2021-09-10 00:08:25', '2021-09-10 00:08:25'),
(457, 2623, 2, '2021-09-10 01:28:15', '2021-09-10 01:28:15'),
(458, 2624, 5, '2021-09-10 01:29:39', '2021-09-10 01:29:39'),
(459, 2607, 2, '2021-09-10 01:37:08', '2021-09-10 01:37:08'),
(460, 2608, 2, '2021-09-10 01:40:38', '2021-09-10 01:40:38'),
(463, 2654, 2, '2021-09-10 01:56:21', '2021-09-10 01:56:21'),
(465, 2655, 2, '2021-09-10 01:59:09', '2021-09-10 01:59:09'),
(468, 2656, 2, '2021-09-10 02:08:09', '2021-09-10 02:08:09'),
(470, 2657, 2, '2021-09-10 02:13:20', '2021-09-10 02:13:20'),
(472, 2658, 2, '2021-09-10 02:22:13', '2021-09-10 02:22:13'),
(475, 2604, 2, '2021-09-10 02:35:03', '2021-09-10 02:35:03'),
(476, 2603, 2, '2021-09-10 02:59:55', '2021-09-10 02:59:55'),
(478, 2660, 2, '2021-09-11 04:16:28', '2021-09-11 04:16:28'),
(480, 2661, 2, '2021-09-11 20:58:09', '2021-09-11 20:58:09'),
(481, 2659, 2, '2021-09-11 22:30:24', '2021-09-11 22:30:24'),
(483, 2662, 2, '2021-09-11 22:31:41', '2021-09-11 22:31:41'),
(485, 2663, 2, '2021-09-11 22:33:49', '2021-09-11 22:33:49'),
(488, 2541, 2, '2021-09-12 00:37:37', '2021-09-12 00:37:37'),
(489, 2664, 2, '2021-09-12 00:41:26', '2021-09-12 00:41:26'),
(493, 2666, 2, '2021-09-12 00:44:33', '2021-09-12 00:44:33'),
(497, 2668, 2, '2021-09-12 00:48:05', '2021-09-12 00:48:05'),
(499, 2669, 5, '2021-09-12 00:49:19', '2021-09-12 00:49:19'),
(501, 2670, 5, '2021-09-12 00:52:06', '2021-09-12 00:52:06'),
(503, 2671, 5, '2021-09-12 00:54:39', '2021-09-12 00:54:39'),
(504, 2665, 2, '2021-09-12 01:24:41', '2021-09-12 01:24:41'),
(505, 2667, 2, '2021-09-12 01:27:16', '2021-09-12 01:27:16'),
(507, 2500, 2, '2021-09-12 04:38:07', '2021-09-12 04:38:07'),
(511, 2673, 2, '2021-09-17 02:47:52', '2021-09-17 02:47:52'),
(513, 2674, 2, '2021-09-17 02:52:54', '2021-09-17 02:52:54'),
(515, 2675, 2, '2021-09-17 03:43:09', '2021-09-17 03:43:09'),
(519, 2677, 2, '2021-09-20 03:39:22', '2021-09-20 03:39:22'),
(522, 2678, 2, '2021-09-22 03:44:05', '2021-09-22 03:44:05'),
(524, 2679, 2, '2021-09-24 00:42:31', '2021-09-24 00:42:31'),
(525, 2652, 6, '2021-09-24 01:41:23', '2021-09-24 01:41:23'),
(527, 2680, 6, '2021-09-24 01:42:31', '2021-09-24 01:42:31'),
(529, 2681, 6, '2021-09-24 01:44:04', '2021-09-24 01:44:04'),
(531, 2682, 6, '2021-09-24 01:45:40', '2021-09-24 01:45:40'),
(533, 2683, 6, '2021-09-24 01:47:15', '2021-09-24 01:47:15'),
(534, 2511, 2, '2021-09-24 01:47:47', '2021-09-24 01:47:47'),
(536, 2684, 6, '2021-09-24 01:50:39', '2021-09-24 01:50:39'),
(538, 2685, 6, '2021-09-24 01:52:18', '2021-09-24 01:52:18'),
(540, 2686, 6, '2021-09-24 01:53:28', '2021-09-24 01:53:28'),
(542, 2687, 6, '2021-09-24 01:54:42', '2021-09-24 01:54:42'),
(544, 2688, 6, '2021-09-24 01:56:27', '2021-09-24 01:56:27'),
(546, 2689, 6, '2021-09-24 01:57:43', '2021-09-24 01:57:43'),
(548, 2690, 6, '2021-09-24 01:59:03', '2021-09-24 01:59:03'),
(550, 2691, 6, '2021-09-24 02:00:32', '2021-09-24 02:00:32'),
(552, 2692, 6, '2021-09-24 02:01:48', '2021-09-24 02:01:48'),
(554, 2693, 6, '2021-09-24 02:39:06', '2021-09-24 02:39:06'),
(556, 2694, 6, '2021-09-24 02:40:27', '2021-09-24 02:40:27'),
(559, 2695, 6, '2021-09-24 02:41:42', '2021-09-24 02:41:42'),
(561, 2696, 6, '2021-09-24 02:43:29', '2021-09-24 02:43:29'),
(563, 2697, 6, '2021-09-24 02:47:42', '2021-09-24 02:47:42'),
(565, 2698, 6, '2021-09-24 02:49:05', '2021-09-24 02:49:05'),
(567, 2699, 6, '2021-09-24 02:51:50', '2021-09-24 02:51:50'),
(569, 2700, 6, '2021-09-24 02:53:33', '2021-09-24 02:53:33'),
(571, 2701, 6, '2021-09-24 02:54:41', '2021-09-24 02:54:41'),
(573, 2702, 6, '2021-09-24 02:56:18', '2021-09-24 02:56:18'),
(575, 2703, 6, '2021-09-24 02:58:27', '2021-09-24 02:58:27'),
(578, 2644, 5, '2021-09-24 03:08:23', '2021-09-24 03:08:23'),
(580, 2705, 6, '2021-09-24 03:09:42', '2021-09-24 03:09:42'),
(582, 2706, 5, '2021-09-24 03:10:40', '2021-09-24 03:10:40'),
(584, 2707, 5, '2021-09-24 03:11:45', '2021-09-24 03:11:45'),
(586, 2708, 5, '2021-09-24 03:12:56', '2021-09-24 03:12:56'),
(588, 2709, 5, '2021-09-24 03:14:00', '2021-09-24 03:14:00'),
(590, 2710, 5, '2021-09-24 03:15:08', '2021-09-24 03:15:08'),
(592, 2711, 5, '2021-09-24 03:16:34', '2021-09-24 03:16:34'),
(593, 2712, 5, '2021-09-24 03:17:22', '2021-09-24 03:17:22'),
(594, 2712, 5, '2021-09-24 03:17:22', '2021-09-24 03:17:22'),
(596, 2714, 5, '2021-09-24 03:27:28', '2021-09-24 03:27:28'),
(598, 2715, 5, '2021-09-24 03:28:42', '2021-09-24 03:28:42'),
(600, 2716, 5, '2021-09-24 03:34:06', '2021-09-24 03:34:06'),
(602, 2717, 5, '2021-09-24 03:41:17', '2021-09-24 03:41:17'),
(604, 2718, 5, '2021-09-24 03:42:16', '2021-09-24 03:42:16'),
(606, 2719, 5, '2021-09-24 03:45:05', '2021-09-24 03:45:05'),
(608, 2720, 5, '2021-09-24 03:47:07', '2021-09-24 03:47:07'),
(610, 2721, 5, '2021-09-24 03:49:54', '2021-09-24 03:49:54'),
(613, 2526, 2, '2021-09-24 04:25:51', '2021-09-24 04:25:51'),
(614, 2525, 2, '2021-09-24 04:26:18', '2021-09-24 04:26:18'),
(615, 2514, 2, '2021-09-24 04:26:33', '2021-09-24 04:26:33'),
(616, 2516, 2, '2021-09-24 04:26:47', '2021-09-24 04:26:47'),
(618, 2723, 2, '2021-09-24 05:29:04', '2021-09-24 05:29:04'),
(622, 2725, 2, '2021-09-27 02:12:19', '2021-09-27 02:12:19'),
(625, 2727, 2, '2021-09-27 02:16:13', '2021-09-27 02:16:13'),
(627, 2728, 2, '2021-09-27 02:17:45', '2021-09-27 02:17:45'),
(629, 2729, 2, '2021-09-27 02:20:24', '2021-09-27 02:20:24'),
(631, 2730, 2, '2021-09-27 02:23:17', '2021-09-27 02:23:17'),
(632, 2726, 2, '2021-09-27 02:35:54', '2021-09-27 02:35:54'),
(633, 2676, 2, '2021-09-27 21:03:03', '2021-09-27 21:03:03'),
(635, 2731, 2, '2021-09-27 21:11:45', '2021-09-27 21:11:45'),
(636, 2532, 2, '2021-09-27 21:19:01', '2021-09-27 21:19:01'),
(638, 2732, 2, '2021-09-27 21:33:45', '2021-09-27 21:33:45'),
(641, 2733, 2, '2021-09-28 04:30:24', '2021-09-28 04:30:24'),
(642, 2734, 2, '2021-09-28 05:20:21', '2021-09-28 05:20:21'),
(643, 2722, 5, '2021-09-29 00:16:13', '2021-09-29 00:16:13'),
(645, 2735, 5, '2021-09-29 00:17:21', '2021-09-29 00:17:21'),
(647, 2736, 5, '2021-09-29 00:19:01', '2021-09-29 00:19:01'),
(649, 2737, 5, '2021-09-29 00:20:18', '2021-09-29 00:20:18'),
(651, 2738, 5, '2021-09-29 00:21:32', '2021-09-29 00:21:32'),
(653, 2739, 5, '2021-09-29 00:23:13', '2021-09-29 00:23:13'),
(655, 2740, 5, '2021-09-29 00:24:07', '2021-09-29 00:24:07'),
(657, 2741, 5, '2021-09-29 00:25:00', '2021-09-29 00:25:00'),
(659, 2742, 5, '2021-09-29 00:25:57', '2021-09-29 00:25:57'),
(661, 2743, 5, '2021-09-29 00:26:54', '2021-09-29 00:26:54'),
(663, 2744, 5, '2021-09-29 00:27:48', '2021-09-29 00:27:48'),
(665, 2745, 5, '2021-09-29 00:28:45', '2021-09-29 00:28:45'),
(667, 2746, 5, '2021-09-29 00:29:36', '2021-09-29 00:29:36'),
(669, 2747, 5, '2021-09-29 00:30:50', '2021-09-29 00:30:50'),
(671, 2748, 5, '2021-09-29 00:32:27', '2021-09-29 00:32:27'),
(673, 2749, 5, '2021-09-29 00:33:54', '2021-09-29 00:33:54'),
(675, 2750, 5, '2021-09-29 00:34:54', '2021-09-29 00:34:54'),
(677, 2751, 5, '2021-09-29 00:35:44', '2021-09-29 00:35:44'),
(678, 2704, 6, '2021-09-29 00:40:03', '2021-09-29 00:40:03'),
(680, 2752, 6, '2021-09-29 00:41:06', '2021-09-29 00:41:06'),
(682, 2753, 6, '2021-09-29 00:42:14', '2021-09-29 00:42:14'),
(685, 2754, 6, '2021-09-29 00:45:13', '2021-09-29 00:45:13'),
(687, 2755, 6, '2021-09-29 00:46:20', '2021-09-29 00:46:20'),
(688, 2756, 6, '2021-09-29 00:47:51', '2021-09-29 00:47:51'),
(690, 2757, 6, '2021-09-29 00:48:52', '2021-09-29 00:48:52'),
(692, 2758, 6, '2021-09-29 00:49:59', '2021-09-29 00:49:59'),
(695, 2759, 6, '2021-09-29 00:56:43', '2021-09-29 00:56:43'),
(697, 2760, 6, '2021-09-29 00:57:40', '2021-09-29 00:57:40'),
(699, 2761, 6, '2021-09-29 00:59:03', '2021-09-29 00:59:03'),
(701, 2762, 6, '2021-09-29 01:00:39', '2021-09-29 01:00:39'),
(703, 2763, 6, '2021-09-29 01:02:39', '2021-09-29 01:02:39'),
(705, 2764, 6, '2021-09-29 01:03:39', '2021-09-29 01:03:39'),
(707, 2765, 6, '2021-09-29 01:04:51', '2021-09-29 01:04:51'),
(711, 2767, 6, '2021-09-29 01:07:23', '2021-09-29 01:07:23'),
(712, 2766, 6, '2021-09-29 01:07:41', '2021-09-29 01:07:41'),
(714, 2768, 6, '2021-09-29 01:15:21', '2021-09-29 01:15:21'),
(716, 2769, 6, '2021-09-29 01:17:06', '2021-09-29 01:17:06'),
(718, 2770, 6, '2021-09-29 01:18:07', '2021-09-29 01:18:07'),
(720, 2771, 6, '2021-09-29 01:19:11', '2021-09-29 01:19:11'),
(722, 2772, 6, '2021-09-29 01:20:10', '2021-09-29 01:20:10'),
(724, 2773, 6, '2021-09-29 01:21:28', '2021-09-29 01:21:28'),
(727, 2774, 6, '2021-09-29 01:24:42', '2021-09-29 01:24:42'),
(729, 2775, 6, '2021-09-29 01:25:47', '2021-09-29 01:25:47'),
(731, 2776, 6, '2021-09-29 01:27:17', '2021-09-29 01:27:17'),
(733, 2777, 6, '2021-09-29 01:28:46', '2021-09-29 01:28:46'),
(735, 2778, 6, '2021-09-29 01:29:46', '2021-09-29 01:29:46'),
(737, 2779, 6, '2021-09-29 01:32:02', '2021-09-29 01:32:02'),
(739, 2780, 6, '2021-09-29 01:33:25', '2021-09-29 01:33:25'),
(741, 2781, 6, '2021-09-29 01:34:32', '2021-09-29 01:34:32'),
(743, 2782, 6, '2021-09-29 01:35:49', '2021-09-29 01:35:49'),
(745, 2783, 6, '2021-09-29 01:36:55', '2021-09-29 01:36:55'),
(747, 2784, 6, '2021-09-29 01:37:55', '2021-09-29 01:37:55'),
(749, 2785, 6, '2021-09-29 01:40:22', '2021-09-29 01:40:22'),
(751, 2786, 6, '2021-09-29 01:41:32', '2021-09-29 01:41:32'),
(758, 2790, 5, '2021-09-29 01:50:25', '2021-09-29 01:50:25'),
(759, 2789, 5, '2021-09-29 01:51:05', '2021-09-29 01:51:05'),
(760, 2788, 5, '2021-09-29 01:51:48', '2021-09-29 01:51:48'),
(761, 2787, 5, '2021-09-29 01:52:38', '2021-09-29 01:52:38'),
(763, 2791, 5, '2021-09-29 01:53:49', '2021-09-29 01:53:49'),
(765, 2792, 5, '2021-09-29 01:55:06', '2021-09-29 01:55:06'),
(767, 2793, 5, '2021-09-29 01:57:03', '2021-09-29 01:57:03'),
(769, 2794, 5, '2021-09-29 01:58:42', '2021-09-29 01:58:42'),
(772, 2796, 2, '2021-09-29 02:01:31', '2021-09-29 02:01:31'),
(773, 2795, 2, '2021-09-29 02:01:47', '2021-09-29 02:01:47'),
(777, 2798, 2, '2021-09-29 02:05:10', '2021-09-29 02:05:10'),
(778, 2517, 2, '2021-09-29 07:17:56', '2021-09-29 07:17:56'),
(779, 2672, 2, '2021-10-03 01:32:48', '2021-10-03 01:32:48'),
(782, 2799, 2, '2021-10-03 20:31:04', '2021-10-03 20:31:04'),
(784, 2800, 5, '2021-10-03 21:56:30', '2021-10-03 21:56:30'),
(787, 2801, 5, '2021-10-03 21:58:36', '2021-10-03 21:58:36'),
(789, 2802, 5, '2021-10-03 22:00:30', '2021-10-03 22:00:30'),
(791, 2803, 5, '2021-10-03 22:01:49', '2021-10-03 22:01:49'),
(794, 2804, 5, '2021-10-03 22:04:07', '2021-10-03 22:04:07'),
(796, 2805, 5, '2021-10-03 22:06:10', '2021-10-03 22:06:10'),
(798, 2806, 5, '2021-10-03 22:08:04', '2021-10-03 22:08:04'),
(800, 2807, 5, '2021-10-03 22:09:45', '2021-10-03 22:09:45'),
(802, 2808, 5, '2021-10-03 22:11:39', '2021-10-03 22:11:39'),
(804, 2809, 5, '2021-10-03 22:13:00', '2021-10-03 22:13:00'),
(806, 2810, 5, '2021-10-03 22:14:18', '2021-10-03 22:14:18'),
(808, 2811, 5, '2021-10-03 22:16:06', '2021-10-03 22:16:06'),
(810, 2812, 5, '2021-10-03 22:17:21', '2021-10-03 22:17:21'),
(812, 2813, 5, '2021-10-03 22:18:57', '2021-10-03 22:18:57'),
(814, 2814, 5, '2021-10-03 22:20:26', '2021-10-03 22:20:26'),
(816, 2815, 5, '2021-10-03 22:21:58', '2021-10-03 22:21:58'),
(818, 2816, 5, '2021-10-03 22:24:49', '2021-10-03 22:24:49'),
(820, 2817, 5, '2021-10-03 22:26:29', '2021-10-03 22:26:29'),
(822, 2818, 5, '2021-10-03 22:27:32', '2021-10-03 22:27:32'),
(824, 2819, 5, '2021-10-03 22:28:44', '2021-10-03 22:28:44'),
(829, 2820, 2, '2021-10-04 02:47:03', '2021-10-04 02:47:03'),
(834, 2821, 2, '2021-10-04 06:55:28', '2021-10-04 06:55:28'),
(836, 2822, 2, '2021-10-04 22:24:25', '2021-10-04 22:24:25'),
(842, 2824, 2, '2021-10-06 04:52:52', '2021-10-06 04:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `exam_id`, `quiz_id`, `created_at`, `updated_at`) VALUES
(106, 11, 13, '2021-09-04 04:54:50', '2021-09-04 04:54:50'),
(107, 11, 14, '2021-09-04 04:54:50', '2021-09-04 04:54:50'),
(108, 11, 15, '2021-09-04 04:54:50', '2021-09-04 04:54:50'),
(109, 11, 16, '2021-09-04 04:54:50', '2021-09-04 04:54:50'),
(110, 11, 17, '2021-09-04 04:54:50', '2021-09-04 04:54:50'),
(111, 11, 18, '2021-09-04 04:54:50', '2021-09-04 04:54:50'),
(112, 11, 19, '2021-09-04 04:54:50', '2021-09-04 04:54:50'),
(113, 11, 20, '2021-09-04 04:54:50', '2021-09-04 04:54:50'),
(114, 11, 22, '2021-09-04 04:54:50', '2021-09-04 04:54:50'),
(115, 11, 23, '2021-09-04 04:54:50', '2021-09-04 04:54:50'),
(117, 12, 25, '2021-09-06 19:47:15', '2021-09-06 19:47:15'),
(118, 12, 26, '2021-09-06 20:02:28', '2021-09-06 20:02:28'),
(119, 12, 27, '2021-09-06 20:02:28', '2021-09-06 20:02:28'),
(120, 12, 28, '2021-09-06 20:02:28', '2021-09-06 20:02:28'),
(121, 12, 29, '2021-09-06 20:02:28', '2021-09-06 20:02:28'),
(122, 12, 30, '2021-09-06 20:02:28', '2021-09-06 20:02:28'),
(123, 12, 31, '2021-09-06 20:11:42', '2021-09-06 20:11:42'),
(124, 12, 32, '2021-09-06 20:11:42', '2021-09-06 20:11:42'),
(125, 12, 33, '2021-09-06 20:11:42', '2021-09-06 20:11:42'),
(126, 12, 34, '2021-09-06 20:11:42', '2021-09-06 20:11:42'),
(127, 12, 35, '2021-09-06 20:22:53', '2021-09-06 20:22:53'),
(128, 12, 36, '2021-09-06 20:22:53', '2021-09-06 20:22:53'),
(129, 12, 37, '2021-09-06 20:22:53', '2021-09-06 20:22:53'),
(130, 12, 38, '2021-09-06 20:22:53', '2021-09-06 20:22:53'),
(131, 12, 39, '2021-09-06 20:22:53', '2021-09-06 20:22:53'),
(132, 12, 40, '2021-09-06 20:54:15', '2021-09-06 20:54:15'),
(133, 12, 41, '2021-09-06 20:54:15', '2021-09-06 20:54:15'),
(134, 12, 42, '2021-09-06 20:54:15', '2021-09-06 20:54:15'),
(135, 12, 43, '2021-09-06 20:54:15', '2021-09-06 20:54:15'),
(136, 12, 44, '2021-09-06 20:54:15', '2021-09-06 20:54:15'),
(137, 12, 45, '2021-09-06 21:32:56', '2021-09-06 21:32:56'),
(138, 12, 46, '2021-09-06 21:32:56', '2021-09-06 21:32:56'),
(139, 12, 47, '2021-09-06 21:32:56', '2021-09-06 21:32:56'),
(140, 12, 48, '2021-09-06 21:32:56', '2021-09-06 21:32:56'),
(141, 12, 49, '2021-09-06 21:32:56', '2021-09-06 21:32:56'),
(142, 12, 50, '2021-09-06 23:01:32', '2021-09-06 23:01:32'),
(143, 12, 51, '2021-09-06 23:01:32', '2021-09-06 23:01:32'),
(144, 12, 52, '2021-09-06 23:01:32', '2021-09-06 23:01:32'),
(145, 12, 53, '2021-09-06 23:01:32', '2021-09-06 23:01:32'),
(146, 12, 54, '2021-09-06 23:01:32', '2021-09-06 23:01:32'),
(147, 13, 55, '2021-10-03 02:41:40', '2021-10-03 02:41:40'),
(148, 13, 56, '2021-10-03 02:41:40', '2021-10-03 02:41:40'),
(149, 13, 57, '2021-10-03 02:41:40', '2021-10-03 02:41:40'),
(150, 13, 58, '2021-10-03 02:41:40', '2021-10-03 02:41:40'),
(151, 13, 59, '2021-10-03 02:41:40', '2021-10-03 02:41:40'),
(152, 13, 60, '2021-10-03 02:50:59', '2021-10-03 02:50:59'),
(153, 13, 61, '2021-10-03 02:50:59', '2021-10-03 02:50:59'),
(154, 13, 62, '2021-10-03 02:50:59', '2021-10-03 02:50:59'),
(155, 13, 63, '2021-10-03 02:50:59', '2021-10-03 02:50:59'),
(156, 13, 64, '2021-10-03 02:50:59', '2021-10-03 02:50:59'),
(157, 13, 65, '2021-10-03 02:59:35', '2021-10-03 02:59:35'),
(158, 13, 66, '2021-10-03 02:59:35', '2021-10-03 02:59:35'),
(159, 13, 67, '2021-10-03 02:59:35', '2021-10-03 02:59:35'),
(160, 13, 68, '2021-10-03 02:59:35', '2021-10-03 02:59:35'),
(161, 13, 69, '2021-10-03 02:59:35', '2021-10-03 02:59:35'),
(162, 13, 70, '2021-10-03 03:10:04', '2021-10-03 03:10:04'),
(163, 13, 71, '2021-10-03 03:10:04', '2021-10-03 03:10:04'),
(164, 13, 72, '2021-10-03 03:10:04', '2021-10-03 03:10:04'),
(165, 13, 73, '2021-10-03 03:10:04', '2021-10-03 03:10:04'),
(166, 13, 74, '2021-10-03 03:10:04', '2021-10-03 03:10:04'),
(167, 13, 75, '2021-10-03 03:21:48', '2021-10-03 03:21:48'),
(168, 13, 76, '2021-10-03 03:21:48', '2021-10-03 03:21:48'),
(169, 13, 77, '2021-10-03 03:21:48', '2021-10-03 03:21:48'),
(170, 13, 78, '2021-10-03 03:21:48', '2021-10-03 03:21:48'),
(171, 13, 79, '2021-10-03 03:21:48', '2021-10-03 03:21:48'),
(172, 13, 80, '2021-10-03 03:31:00', '2021-10-03 03:31:00'),
(173, 13, 81, '2021-10-03 03:31:00', '2021-10-03 03:31:00'),
(174, 13, 82, '2021-10-03 03:31:00', '2021-10-03 03:31:00'),
(175, 13, 83, '2021-10-03 03:31:00', '2021-10-03 03:31:00'),
(176, 13, 84, '2021-10-03 03:31:00', '2021-10-03 03:31:00'),
(177, 13, 85, '2021-10-03 03:37:18', '2021-10-03 03:37:18'),
(178, 13, 86, '2021-10-03 03:37:18', '2021-10-03 03:37:18'),
(179, 13, 87, '2021-10-03 03:37:18', '2021-10-03 03:37:18'),
(180, 13, 88, '2021-10-03 19:45:14', '2021-10-03 19:45:14'),
(181, 13, 89, '2021-10-03 19:45:14', '2021-10-03 19:45:14'),
(182, 13, 90, '2021-10-03 19:45:14', '2021-10-03 19:45:14'),
(183, 13, 91, '2021-10-03 19:45:14', '2021-10-03 19:45:14'),
(184, 13, 92, '2021-10-03 20:20:09', '2021-10-03 20:20:09'),
(185, 13, 93, '2021-10-03 20:20:09', '2021-10-03 20:20:09'),
(186, 13, 94, '2021-10-03 20:20:09', '2021-10-03 20:20:09'),
(187, 13, 95, '2021-10-03 20:44:22', '2021-10-03 20:44:22'),
(188, 13, 96, '2021-10-03 20:44:22', '2021-10-03 20:44:22'),
(189, 13, 97, '2021-10-03 20:44:22', '2021-10-03 20:44:22'),
(190, 13, 98, '2021-10-03 20:44:22', '2021-10-03 20:44:22'),
(191, 13, 99, '2021-10-03 21:04:52', '2021-10-03 21:04:52'),
(192, 13, 100, '2021-10-03 21:04:52', '2021-10-03 21:04:52'),
(193, 13, 101, '2021-10-03 21:04:52', '2021-10-03 21:04:52'),
(194, 13, 102, '2021-10-03 21:04:52', '2021-10-03 21:04:52'),
(195, 13, 103, '2021-10-03 21:04:52', '2021-10-03 21:04:52'),
(196, 13, 104, '2021-10-03 21:04:52', '2021-10-03 21:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_admin_id_foreign` (`admin_id`),
  ADD KEY `chats_studant_id_foreign` (`studant_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classes_level_id_foreign` (`level_id`),
  ADD KEY `classes_subject_id_foreign` (`subject_id`),
  ADD KEY `classes_group_id_foreign` (`group_id`);

--
-- Indexes for table `delivery_works`
--
ALTER TABLE `delivery_works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_works_home_work_id_foreign` (`home_work_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_level_id_foreign` (`level_id`),
  ADD KEY `exams_subject_id_foreign` (`subject_id`),
  ADD KEY `exams_group_id_foreign` (`group_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `final_exams`
--
ALTER TABLE `final_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `final_exams_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_level_id_foreign` (`level_id`),
  ADD KEY `groups_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `group_student`
--
ALTER TABLE `group_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_student_student_id_foreign` (`student_id`),
  ADD KEY `group_student_group_id_foreign` (`group_id`);

--
-- Indexes for table `home_works`
--
ALTER TABLE `home_works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_works_class_id_foreign` (`class_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_level_id_foreign` (`level_id`),
  ADD KEY `quizzes_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_student_id_foreign` (`student_id`),
  ADD KEY `results_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_level_id_foreign` (`level_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_level_id_foreign` (`level_id`);

--
-- Indexes for table `subject_student`
--
ALTER TABLE `subject_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_student_student_id_foreign` (`student_id`),
  ADD KEY `subject_student_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_exam_id_foreign` (`exam_id`),
  ADD KEY `tests_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `delivery_works`
--
ALTER TABLE `delivery_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `final_exams`
--
ALTER TABLE `final_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `group_student`
--
ALTER TABLE `group_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT for table `home_works`
--
ALTER TABLE `home_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2836;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subject_student`
--
ALTER TABLE `subject_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=843;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chats_studant_id_foreign` FOREIGN KEY (`studant_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classes_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classes_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delivery_works`
--
ALTER TABLE `delivery_works`
  ADD CONSTRAINT `delivery_works_home_work_id_foreign` FOREIGN KEY (`home_work_id`) REFERENCES `home_works` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exams_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `final_exams`
--
ALTER TABLE `final_exams`
  ADD CONSTRAINT `final_exams_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groups_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_student`
--
ALTER TABLE `group_student`
  ADD CONSTRAINT `group_student_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `home_works`
--
ALTER TABLE `home_works`
  ADD CONSTRAINT `home_works_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_student`
--
ALTER TABLE `subject_student`
  ADD CONSTRAINT `subject_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_student_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
