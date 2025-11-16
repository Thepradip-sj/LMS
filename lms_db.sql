-- phpMyAdmin SQL Dump
-- version 5.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `lms_db`;
USE `lms_db`;

-- --------------------------------------------------------
-- Table structure for table `admin`
-- --------------------------------------------------------

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admin` VALUES
(1, 'elias', '$2y$10$yMjnmAzIkNrRzg78cTps3euVLdrEjQ0jN23/RFDT3qlpVrDF/Ivbq', 'Elias', 'Abdurrahman'),
(2, 'test_admin', '$2y$10$yMjnmAzIkNrRzg78cTps3euVLdrEjQ0jN23/RFDT3qlpVrDF/Ivbq', 'Test', 'Admin');

-- --------------------------------------------------------
-- Table structure for `class`
-- --------------------------------------------------------

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `class` VALUES
(1, 7, 2),
(2, 1, 1),
(3, 3, 3),
(4, 2, 1);

-- --------------------------------------------------------
-- Table structure for `grades`
-- --------------------------------------------------------

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `grade` varchar(31) NOT NULL,
  `grade_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `grades` VALUES
(1, '1', 'G'),
(2, '2', 'G'),
(3, '1', 'KG'),
(4, '2', 'KG'),
(7, '3', 'G');

-- --------------------------------------------------------
-- Table structure for `message`
-- --------------------------------------------------------

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_full_name` varchar(100) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `message` VALUES
(1, 'John doe', 'es@gmail.com', 'Hello, world', '2023-02-17 23:39:15'),
(2, 'John doe', 'es@gmail.com', 'Hi', '2023-02-17 23:49:19'),
(3, 'John doe', 'es@gmail.com', 'Hey, ', '2023-02-17 23:49:36');

-- --------------------------------------------------------
-- Table structure for `registrar_office`
-- --------------------------------------------------------

CREATE TABLE `registrar_office` (
  `r_user_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(31) NOT NULL,
  `lname` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `registrar_office` VALUES
(1, 'james', '$2y$10$yMjnmAzIkNrRzg78cTps3euVLdrEjQ0jN23/RFDT3qlpVrDF/Ivbq', 'James', 'William', 'West Virginia', 843583, '2022-10-04', '+12328324092', 'diploma', 'Male', 'james@j.com', '2022-10-23 01:03:25'),
(2, 'oliver2', '$2y$10$7XhzOu.3OgHPFv7hKjvfUu3waU.8j6xTASj4yIWMfo...k/p8yvvS', 'Oliver2', 'Noah', 'California, Los angeles', 6546, '1999-06-11', '09457396789', 'BSc, BA', 'Male', 'ov@ab.com', '2022-11-12 23:06:18');

-- --------------------------------------------------------
-- Table structure for `section`
-- --------------------------------------------------------

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `section` VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(6, 'D');

-- --------------------------------------------------------
-- Table structure for `setting`
-- --------------------------------------------------------

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `current_year` int(11) NOT NULL,
  `current_semester` varchar(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `slogan` varchar(300) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `setting` VALUES
(1, 2023, 'II', 'Y School', 'Lux et Veritas Light and Truth', 'This is a wider card with supporting text below.');

-- --------------------------------------------------------
-- Table structure for `students`
-- --------------------------------------------------------

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `address` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` timestamp NULL DEFAULT current_timestamp(),
  `parent_fname` varchar(127) NOT NULL,
  `parent_lname` varchar(127) NOT NULL,
  `parent_phone_number` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `students` VALUES
(1, 'Som', '$2a$12$NXDNYHSVg8lml.gdQl4yGe9bJzXbq3xb2YPCPofGhmKDgNYLcwppy', 'John', 'Doe', 1, 1, 'California, Los angeles', 'Male', 'abas55@ab.com', '2012-09-12', '2019-12-11 14:16:44', 'Doe', 'Mark', '09393'),
(3, 'Pradip', '$2a$12$NXDNYHSVg8lml.gdQl4yGe9bJzXbq3xb2YPCPofGhmKDgNYLcwppy', 'Abas', 'A.', 2, 1, 'Berlin', 'Male', 'abas@ab.com', '2002-12-03', '2021-12-01 14:16:51', 'dsf', 'dfds', '7979'),
(4, 'jo', '$2a$12$NXDNYHSVg8lml.gdQl4yGe9bJzXbq3xb2YPCPofGhmKDgNYLcwppy', 'John3', 'Doe', 1, 1, 'California, Los angeles', 'Female', 'jo@jo.com', '2013-06-13', '2022-09-10 13:48:49', 'Doe', 'Mark', '074932040'),
(5, 'jo2', '$2a$12$NXDNYHSVg8lml.gdQl4yGe9bJzXbq3xb2YPCPofGhmKDgNYLcwppy', 'Jhon', 'Doe', 1, 1, 'UK', 'Male', 'jo@jo.com', '1990-02-15', '2023-02-12 18:11:26', 'Doe', 'Do', '0943568654');

-- --------------------------------------------------------
-- Table structure for `student_score`
-- --------------------------------------------------------

CREATE TABLE `student_score` (
  `id` int(11) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `results` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `student_score` VALUES
(1, 'II', 2021, 1, 1, 1, '10 15,15 20,10 10,10 20,30 35'),
(2, 'II', 2023, 1, 1, 4, '15 20,4 5'),
(3, 'I', 2022, 1, 1, 5, '10 20,50 50');

-- --------------------------------------------------------
-- Table structure for `subjects`
-- --------------------------------------------------------

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(31) NOT NULL,
  `subject_code` varchar(31) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `subjects` VALUES
(1, 'English', 'En', 1),
(2, 'Physics', 'Phy', 2),
(3, 'Biology', 'Bio-01', 1),
(4, 'Math', 'Math-01', 1),
(5, 'Chemistry', 'ch-01', 1),
(6, 'Programming', 'pro-01', 1),
(7, 'Java', 'java-01', 1);

-- --------------------------------------------------------
-- Table structure for `teachers`
-- --------------------------------------------------------

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `class` varchar(31) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL,
  `subjects` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(127) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `teachers` VALUES
(1, 'oliver', '$2y$10$yMjnmAzIkNrRzg78cTps3euVLdrEjQ0jN23/RFDT3qlpVrDF/Ivbq', '1234', 'Oliver', 'Noah', '1245', 'California, Los angeles', 6546, '2022-09-12', '0945739', 'BSc', 'Male', 'ol@ab.com', '2022-09-09 05:23:45'),
(5, 'abas', '$2y$10$yMjnmAzIkNrRzg78cTps3euVLdrEjQ0jN23/RFDT3qlpVrDF/Ivbq', '123', 'Abas', 'A.', '12', 'Berlin', 1929, '2003-09-16', '09457396789', 'BSc,', 'Male', 'abas55@ab.com', '2022-09-09 06:42:31'),
(6, 'test_teacher', '$2y$10$yMjnmAzIkNrRzg78cTps3euVLdrEjQ0jN23/RFDT3qlpVrDF/Ivbq', 'A', 'Test', 'Teacher', 'Math', 'Test', 11111, '2000-01-01', '0000000000', 'MSc', 'Male', 't@test.com', '2023-01-01 00:00:00');

-- --------------------------------------------------------
-- Indexes
-- --------------------------------------------------------

ALTER TABLE `admin` ADD PRIMARY KEY (`admin_id`);
ALTER TABLE `class` ADD PRIMARY KEY (`class_id`);
ALTER TABLE `grades` ADD PRIMARY KEY (`grade_id`);
ALTER TABLE `message` ADD PRIMARY KEY (`message_id`);
ALTER TABLE `registrar_office` ADD PRIMARY KEY (`r_user_id`);
ALTER TABLE `section` ADD PRIMARY KEY (`section_id`);
ALTER TABLE `setting` ADD PRIMARY KEY (`id`);
ALTER TABLE `students` ADD PRIMARY KEY (`student_id`), ADD UNIQUE KEY `username` (`username`);
ALTER TABLE `student_score` ADD PRIMARY KEY (`id`);
ALTER TABLE `subjects` ADD PRIMARY KEY (`subject_id`);
ALTER TABLE `teachers` ADD PRIMARY KEY (`teacher_id`), ADD UNIQUE KEY `username` (`username`);

-- Auto increment
ALTER TABLE `admin` MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `class` MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `grades` MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
ALTER TABLE `message` MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `registrar_office` MODIFY `r_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `section` MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
ALTER TABLE `setting` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `students` MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
ALTER TABLE `student_score` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `subjects` MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
ALTER TABLE `teachers` MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

COMMIT;