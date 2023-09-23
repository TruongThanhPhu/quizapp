-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 23, 2023 lúc 04:23 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quizapp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_app`
--

CREATE TABLE `tbl_app` (
  `app_id` int(10) UNSIGNED NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_app`
--

INSERT INTO `tbl_app` (`app_id`, `app_name`, `email`, `username`, `password`, `contact`, `added_date`, `updated_date`, `image_name`) VALUES
(1, 'Vijay Thapa Online Exam System', 'hi@vijaythapa.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '9866296009', '2017-04-03', '2020-12-26', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_faculty`
--

CREATE TABLE `tbl_faculty` (
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `faculty_name` varchar(150) NOT NULL,
  `time_duration` int(11) NOT NULL,
  `qns_per_set` int(11) NOT NULL,
  `total_english` int(10) UNSIGNED NOT NULL,
  `total_math` int(10) UNSIGNED NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_faculty`
--

INSERT INTO `tbl_faculty` (`faculty_id`, `faculty_name`, `time_duration`, `qns_per_set`, `total_english`, `total_math`, `is_active`, `added_date`, `updated_date`) VALUES
(1, 'GMAT', 5, 8, 6, 2, 'yes', '2017-04-04', '2017-06-13'),
(2, 'GRE', 180, 5, 1, 4, 'yes', '2017-04-04', '2017-06-12'),
(3, 'toan', 15, 10, 0, 10, 'yes', '2023-09-23', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_question`
--

CREATE TABLE `tbl_question` (
  `question_id` int(10) UNSIGNED NOT NULL,
  `question` longtext NOT NULL,
  `first_answer` varchar(255) NOT NULL,
  `second_answer` varchar(255) NOT NULL,
  `third_answer` varchar(255) NOT NULL,
  `fourth_answer` varchar(255) NOT NULL,
  `fifth_answer` varchar(255) NOT NULL,
  `answer` int(11) NOT NULL,
  `reason` longtext NOT NULL,
  `marks` decimal(10,0) NOT NULL,
  `category` varchar(100) NOT NULL,
  `faculty` int(11) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_question`
--

INSERT INTO `tbl_question` (`question_id`, `question`, `first_answer`, `second_answer`, `third_answer`, `fourth_answer`, `fifth_answer`, `answer`, `reason`, `marks`, `category`, `faculty`, `is_active`, `added_date`, `updated_date`, `image_name`) VALUES
(104, '<p>1</p>\r\n', 'a', 'b', 'c', 'd', 'e', 1, '<p>english gmat</p>\r\n', 20, 'English', 1, 'yes', '2023-09-23', '0000-00-00', 'Exam_Question_Vijay_Thapa_674d3825287fa8d7dd9d98f1ef5e9d85.PNG'),
(105, '<p>2</p>\r\n', 'a', 'b', 'c', 'd', 'e', 1, '<p>english gre</p>\r\n', 20, 'English', 2, 'yes', '2023-09-23', '0000-00-00', 'Exam_Question_Vijay_Thapa_529d4f199828d4131cdf01f404bdb0e8.PNG'),
(106, '<p>3</p>\r\n', 'a', 'b', 'c', 'd', 'e', 1, '<p>e toan</p>\r\n', 20, 'English', 3, 'yes', '2023-09-23', '0000-00-00', 'Exam_Question_Vijay_Thapa_2047be9373c215131b4bb5e5328ce8df.PNG'),
(107, '<p>4</p>\r\n', 'a', 'b', 'c', 'd', 'e', 1, '<p>m gmat</p>\r\n', 2, 'English', 1, 'yes', '2023-09-23', '2023-09-23', 'Exam_Question_Vijay_Thapa_d6d45630a48edfc7c7d931a34b46225e.PNG'),
(108, '<p>5</p>\r\n', 'a', 'b', 'c', 'd', 'e', 1, '<p>math gre</p>\r\n', 2, 'Math', 2, 'yes', '2023-09-23', '0000-00-00', 'Exam_Question_Vijay_Thapa_5e0df65a883f05a76b1018aad7d1143a.PNG'),
(109, '<p>6</p>\r\n', 'a', 'b', 'c', 'd', 'e', 1, '<p>math toan</p>\r\n', 2, 'Math', 3, 'yes', '2023-09-23', '0000-00-00', 'Exam_Question_Vijay_Thapa_0ad048608091ba0035b2e118d4fc6ae6.PNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_result`
--

CREATE TABLE `tbl_result` (
  `result_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) UNSIGNED NOT NULL,
  `question_id` int(11) UNSIGNED NOT NULL,
  `user_answer` int(11) UNSIGNED NOT NULL,
  `right_answer` int(11) UNSIGNED NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_result`
--

INSERT INTO `tbl_result` (`result_id`, `student_id`, `question_id`, `user_answer`, `right_answer`, `added_date`) VALUES
(11, 1, 39, 1, 4, '2017-06-27'),
(12, 1, 94, 1, 2, '2017-06-27'),
(13, 1, 72, 1, 2, '2017-06-27'),
(14, 1, 92, 1, 3, '2017-06-27'),
(15, 1, 66, 1, 2, '2017-06-27'),
(16, 1, 69, 1, 5, '2017-06-27'),
(17, 1, 11, 1, 2, '2017-06-27'),
(18, 1, 26, 1, 4, '2017-06-27'),
(19, 1, 83, 2, 5, '2018-06-20'),
(20, 1, 84, 1, 3, '2018-06-20'),
(21, 1, 82, 1, 4, '2018-06-20'),
(22, 1, 64, 1, 1, '2018-06-20'),
(23, 1, 91, 1, 5, '2018-06-20'),
(24, 1, 70, 1, 4, '2018-06-20'),
(25, 1, 14, 1, 3, '2018-06-20'),
(26, 1, 29, 2, 1, '2018-06-20'),
(27, 1, 87, 2, 2, '2019-02-11'),
(28, 1, 66, 1, 2, '2019-02-11'),
(29, 1, 65, 2, 5, '2019-02-11'),
(30, 1, 89, 2, 1, '2019-02-11'),
(31, 1, 77, 2, 4, '2019-02-11'),
(32, 1, 86, 2, 3, '2019-02-11'),
(33, 1, 32, 2, 1, '2019-02-11'),
(34, 1, 16, 3, 3, '2019-02-11'),
(35, 1, 93, 5, 3, '2020-07-23'),
(36, 1, 64, 5, 1, '2020-07-23'),
(37, 1, 90, 4, 4, '2020-07-23'),
(38, 1, 81, 5, 3, '2020-07-23'),
(39, 1, 69, 5, 5, '2020-07-23'),
(40, 1, 79, 4, 3, '2020-07-23'),
(41, 1, 35, 4, 1, '2020-07-23'),
(42, 1, 21, 4, 4, '2020-07-23'),
(43, 1, 84, 1, 3, '2020-08-02'),
(44, 1, 75, 1, 2, '2020-08-02'),
(45, 1, 97, 1, 4, '2020-08-02'),
(46, 1, 96, 1, 5, '2020-08-02'),
(47, 1, 81, 1, 3, '2020-08-02'),
(48, 1, 68, 1, 4, '2020-08-02'),
(49, 1, 25, 1, 4, '2020-08-02'),
(50, 1, 34, 1, 1, '2020-08-02'),
(51, 3, 66, 3, 2, '2023-09-23'),
(52, 3, 70, 5, 4, '2023-09-23'),
(53, 3, 81, 5, 3, '2023-09-23'),
(54, 3, 39, 5, 4, '2023-09-23'),
(55, 3, 96, 1, 5, '2023-09-23'),
(56, 3, 83, 5, 5, '2023-09-23'),
(57, 3, 13, 5, 1, '2023-09-23'),
(58, 3, 14, 5, 3, '2023-09-23'),
(59, 3, 95, 5, 1, '2023-09-23'),
(60, 3, 96, 1, 5, '2023-09-23'),
(61, 3, 91, 1, 5, '2023-09-23'),
(62, 3, 77, 4, 4, '2023-09-23'),
(63, 3, 90, 1, 4, '2023-09-23'),
(64, 3, 100, 1, 1, '2023-09-23'),
(65, 3, 12, 3, 4, '2023-09-23'),
(66, 3, 7, 1, 4, '2023-09-23'),
(67, 3, 80, 4, 4, '2023-09-23'),
(68, 3, 39, 1, 4, '2023-09-23'),
(69, 3, 96, 1, 5, '2023-09-23'),
(70, 3, 91, 1, 5, '2023-09-23'),
(71, 3, 83, 1, 5, '2023-09-23'),
(72, 3, 90, 1, 4, '2023-09-23'),
(73, 3, 15, 1, 4, '2023-09-23'),
(74, 3, 24, 1, 1, '2023-09-23'),
(75, 3, 96, 3, 5, '2023-09-23'),
(76, 5, 96, 2, 5, '2023-09-23'),
(77, 5, 104, 1, 1, '2023-09-23'),
(78, 6, 105, 1, 1, '2023-09-23'),
(79, 6, 108, 3, 1, '2023-09-23'),
(80, 7, 106, 1, 1, '2023-09-23'),
(81, 7, 109, 1, 1, '2023-09-23'),
(82, 5, 96, 2, 5, '2023-09-23'),
(83, 5, 104, 3, 1, '2023-09-23'),
(84, 5, 104, 2, 1, '2023-09-23'),
(85, 5, 104, 1, 1, '2023-09-23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_result_summary`
--

CREATE TABLE `tbl_result_summary` (
  `summary_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) UNSIGNED NOT NULL,
  `marks` decimal(10,2) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_result_summary`
--

INSERT INTO `tbl_result_summary` (`summary_id`, `student_id`, `marks`, `added_date`) VALUES
(8, 1, 0.00, '2017-06-27'),
(9, 1, 1.00, '2018-06-20'),
(10, 1, 3.00, '2019-02-11'),
(11, 1, 7.00, '2020-07-23'),
(12, 1, 7.00, '2020-07-23'),
(13, 1, 4.00, '2020-08-02'),
(14, 1, 4.00, '2020-08-02'),
(15, 1, 4.00, '2020-08-02'),
(16, 1, 4.00, '2020-08-02'),
(17, 3, 4.00, '2023-09-23'),
(18, 3, 4.00, '2023-09-23'),
(19, 3, 0.00, '2023-09-23'),
(20, 3, 0.00, '2023-09-23'),
(21, 3, 0.00, '2023-09-23'),
(22, 3, 0.00, '2023-09-23'),
(23, 3, 0.00, '2023-09-23'),
(24, 3, 0.00, '2023-09-23'),
(25, 3, 4.00, '2023-09-23'),
(26, 4, 0.00, '2023-09-23'),
(27, 4, 0.00, '2023-09-23'),
(28, 4, 0.00, '2023-09-23'),
(29, 4, 0.00, '2023-09-23'),
(30, 4, 0.00, '2023-09-23'),
(31, 4, 0.00, '2023-09-23'),
(32, 3, 0.00, '2023-09-23'),
(33, 3, 0.00, '2023-09-23'),
(34, 5, 20.00, '2023-09-23'),
(35, 6, 20.00, '2023-09-23'),
(36, 7, 22.00, '2023-09-23'),
(37, 5, 0.00, '2023-09-23'),
(38, 5, 0.00, '2023-09-23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `first_name`, `last_name`, `email`, `username`, `password`, `contact`, `gender`, `faculty`, `is_active`, `added_date`, `updated_date`) VALUES
(1, 'Student', 'Thapa', 'student@gmail.com', 'student', 'student', '98367253', 'male', '1', 'no', '2017-06-27', '2020-08-02'),
(5, 'phu', 'phu', 'phu@gmai.com', 'phu', 'phu', '1234567890', 'male', '1', 'no', '2023-09-23', '0000-00-00'),
(6, 'phu1', 'phu1', 'phu1@gmail.com', 'phu1', 'phu1', '1234567890', 'male', '2', 'no', '2023-09-23', '0000-00-00'),
(7, 'phu2', 'phu2', 'phu2@gmail.com', 'phu2', 'phu2', '1234567890', 'male', '3', 'no', '2023-09-23', '0000-00-00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_app`
--
ALTER TABLE `tbl_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Chỉ mục cho bảng `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Chỉ mục cho bảng `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Chỉ mục cho bảng `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`result_id`);

--
-- Chỉ mục cho bảng `tbl_result_summary`
--
ALTER TABLE `tbl_result_summary`
  ADD PRIMARY KEY (`summary_id`);

--
-- Chỉ mục cho bảng `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_app`
--
ALTER TABLE `tbl_app`
  MODIFY `app_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  MODIFY `faculty_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_question`
--
ALTER TABLE `tbl_question`
  MODIFY `question_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `result_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `tbl_result_summary`
--
ALTER TABLE `tbl_result_summary`
  MODIFY `summary_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
