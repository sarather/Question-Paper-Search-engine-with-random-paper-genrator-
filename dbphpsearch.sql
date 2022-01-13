-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2020 at 07:49 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbphpsearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `a_id` int(200) NOT NULL,
  `a_title` varchar(256) NOT NULL,
  `a_year` varchar(256) NOT NULL,
  `a_question1` text NOT NULL,
  `a_question2` text NOT NULL,
  `a_question3` text NOT NULL,
  `a_question4` text NOT NULL,
  `a_question5` text NOT NULL,
  `a_question6` text NOT NULL,
  `a_question7` text NOT NULL,
  `a_question8` text NOT NULL,
  `a_question9` text NOT NULL,
  `a_question10` text NOT NULL,
  `a_date` date NOT NULL,
  `a_department` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`a_id`, `a_title`, `a_year`, `a_question1`, `a_question2`, `a_question3`, `a_question4`, `a_question5`, `a_question6`, `a_question7`, `a_question8`, `a_question9`, `a_question10`, `a_date`, `a_department`) VALUES
(1, 'C language', '1st Year', '1. What is an Algorithm?', '2. What are the advantages of high level languages over machine language?', '3. Give any two differences between compilers & interpreters.', '4. Give any 2 differences between while statement and a Do- while statement in C?', '5. What is an array? Define an array to store marks of 30 students in 3 subjects', '6. Write C statement to find maximum of two numbers using ternary operator.', '7. What are preprocessor directives?', '8. Write a program using pointers to read an array of integers and print its elements in reverse order.', '9. Write a program to read data from keyboard, write it to a file called INPUT, and read the same data from the INPUT file and display it on the screen.', '10. Define a structure data type called TimeStruct containing 3 members called hour, minute and second. Develop a program that would assign values to the individual members and display the time in the form 16:40:30', '2019-10-05', 'Department of Computer Applications'),
(2, 'Operating System ', '2nd year ', '1. Define Operating System. List the objectives of an operating system. ', '2. What are the advantages and disadvantages of using the same system call\r\ninterface for manipulating both files and devices? ', '3. What is a Critical Section problem? Give the conditions that a solution to the\r\ncritical section problem must satisfy.', '4. What is a Virtual Memory? Discuss the benefits of virtual memory technique.', '5. What is Thrashing? What is the cause of Thrashing? How does the system ', '6. What is a deadlock? How deadlocks are detected? ', '7. Explain the Resource-Allocation-Graph algorithm for deadlock avoidance.', '8. Explain and compare the SCAN and C-SCAN disk scheduling algorithms. ', '9.Explain the Dual-Mode operation of an operating system', '10. What are the criteria for evaluating the CPU scheduling algorithms? Why do\r\nwe need it?', '2019-12-20', 'Department of Computer'),
(5, 'Foundation course', '3rd Year', 'What is meant by computer and computer system?', 'Discuss charactersicts of a computer?', 'Explain System Concepts?', 'Explain varios types of computer Systems?', 'What are the components of a computer system', 'Breifly Explain RAM, ROM, EPROM, PROM ?', 'What do you mean by Static and Dynamic RAM?', 'What do you mean by input deives?', 'What do you Understand by CMD?', 'Explain any 5 Command of CMD?', '2020-01-21', 'Department Of Computer Application.'),
(31, 'Core java', '3rd Year', '1) Write about data types in java?', '2) write about operators in java?', '3) Write about arrays in java?', '4) Write about creating constructor in java?', '5) What are string in java?', '6) What is multithreading ?', '7) Write about inheritance in java?', '8) How we can create objects in java?', '9) What is the use of new keyword in java?', '10) What are jumping statements in java?', '2020-01-30', 'Department Of Computer Application.'),
(33, 'Principle of Management', '3rd Year', '1. Define Organization', '2.What is the purpose of Organization?', '3. What is organizing?', '4. What is Job design?', '5. What is Organisation Structure?', '6. What is an Organizational chart?', '7. Uses of Organisation Chart', '8. Distinguish between authority and power', '8. Distinguish between authority and power', '10.            Functional Authority', '0000-00-00', 'Management Department'),
(35, 'Management Information System', '3rd Year', 'Q1. What is the purpose of an MIS?', '\r\nQ2. What are the different types of MIS?', 'Q3. What is the core principle of MIS?', 'Q4. What are the levels of information requirements in an MIS?', 'Q5. What are the levels of decision making in MIS?', 'Q6. What are the elements of decision making in MIS?', 'Q7. What is a Database Information System?', 'Q8. What are the different approaches used in designing and MIS?', 'Q9. What Are The Activities Of Management Information System?', 'Q10. What is the role of system analyst.', '0000-00-00', 'Computer department');

-- --------------------------------------------------------

--
-- Table structure for table `c`
--

CREATE TABLE `c` (
  `serial` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `teacher` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c`
--

INSERT INTO `c` (`serial`, `question`, `year`, `teacher`) VALUES
(1, '1) What are the key features in the C programming language?<br>\r\n2) What are the basic data types associated with C?<br>\r\n3) What is the description for syntax errors?<br>\r\n4) What is the process to create increment and decrement stament in C?<br>\r\n5) What are reserved words with a programming language?<br><br>\r\n', 2020, 'Computer Department'),
(2, '1) What is the explanation for the dangling pointer in C?<br>\r\n2) Describe static function with its usage?<br>\r\n3) What is the difference between abs() and fabs() functions?<br>\r\n4) Describe Wild Pointers in C?<br>\r\n5) What is the difference between ++a and a++?<br><br>\r\n\r\n', 2020, 'Computer department'),
(3, '\r\n1) Describe the difference between = and == symbols in C programming?<br>\r\n2) What is the explanation for prototype function in C?<br>\r\n3) What is the explanation for the cyclic nature of data types in C?<br>\r\n4) Describe the header file and its usage in C programming?<br>\r\n5) There is a practice in coding to keep some code blocks in comment symbols than delete it when debugging. How this affects when debugging?<br><br>\r\n', 2019, 'Computer department'),
(4, '\r\n\r\n1.Distinguish between malloc() & calloc() memory allocation.<br>\r\n\r\n\r\n2.What is keyword auto for?<br>\r\n\r\n\r\n\r\n3.What are the valid places for the keyword break to appear.<br>\r\n\r\n\r\n4.Explain the syntax for for loop.<br>\r\n\r\n5.What is a pointer on pointer?<br><br>', 2020, 'Computer Department'),
(5, '1.What is difference between including the header file with-in angular braces < > and double quotes “ “ <br>\r\n\r\n\r\n2.How a negative integer is stored.<br>\r\n\r\n\r\n\r\n\r\n3.What is a static variable?<br>\r\n\r\n\r\n\r\n4.What is a NULL pointer?<br>\r\n\r\n\r\n5.What is the purpose of extern storage specifier?<br><br>\r\n\r\n', 2020, 'Computer department'),
(6, '1)How is a Function declared in C Language?<br>\r\n2)What is Dynamic Memory allocation? Mention the syntax.<br>\r\n3)What do you mean by Dangling Pointer Variable in C Programming?<br>\r\n4)Where can we not use &(address operator in C)?<br>\r\n5)Write a simple example of a structure in C Language<br><br>\r\n\r\n', 2020, 'Computer department');

-- --------------------------------------------------------

--
-- Table structure for table `cplusplus`
--

CREATE TABLE `cplusplus` (
  `serial` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `teacher` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cplusplus`
--

INSERT INTO `cplusplus` (`serial`, `question`, `year`, `teacher`) VALUES
(1, '1.What is the full form of OOPS?\r\n<br>\r\n\r\n2.What is a class?<br>\r\n\r\n3.What is an object?<br>\r\n\r\n4.List the types of inheritance supported in C++.<br>\r\n\r\n5.What is the role of protected access specifier?<br><br>', 2019, 'Computer department'),
(2, '\r\n\r\n1) What is the basic structure of a C++ program?<br>\r\n2)What are the Comments in C++?<br> \r\n3)Comment on Local and Global scope of a variable.<br>\r\n4)Comment on Assignment Operator in C++.<br>\r\n5)What are the various Arithmetic Operators in C++?<br><br>', 2020, 'Computer department'),
(3, '1.What is encapsulation?\r\n<br>\r\n2.What is abstraction?\r\n<br>\r\n3.What is inheritance?\r\n<br>\r\n4.Explain the purpose of the keyword volatile.<br>\r\n5.What is an inline function?<br><br>', 2018, 'Computer deparment'),
(4, '1.What is a storage class?\r\n<br>\r\n2.Mention the storage classes names in C++.\r\n<br>\r\n3.What is the role of mutable storage class specifier?\r\n<br>\r\n4.Distinguish between shallow copy and deep copy.<br>\r\n5.what is a pure virtual function.<br><br>', 2020, 'Computer department');

-- --------------------------------------------------------

--
-- Table structure for table `java`
--

CREATE TABLE `java` (
  `serial` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `teacher` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `java`
--

INSERT INTO `java` (`serial`, `question`, `year`, `teacher`) VALUES
(1, '1) What is JAVA? <br>\r\n2) What are the features in JAVA? <br>\r\n3) How does Java enable high performance? <br>\r\n4) What are the Java IDE\'s? <br>\r\n5) What do you mean by Constructor? <br>', 2020, 'Computer department'),
(2, 'Q1. What is the difference between an Inner Class and a Sub-Class?<br>\r\nQ2. What are the various access specifiers for Java classes?<br>\r\nQ3. What\'s the purpose of Static methods and static variables?<br>\r\nQ4. What is data encapsulation and what\'s its significance?<br>\r\nQ5. What is a singleton class? Give a practical example of its usage.<br><br>', 2020, 'Computer department'),
(3, '1.Why the main method is static in java?<br>\r\n2.What happens if you remove static modifier from the main method?<br>\r\n3.What is the scope of variables in Java in following cases? <br>\r\n4.What is “this” keyword in java?<br>\r\n5.What is an abstract class? How abstract classes are similar or different in Java from C++?<br><br>', 2019, 'Computer department');

-- --------------------------------------------------------

--
-- Table structure for table `mis`
--

CREATE TABLE `mis` (
  `serial` int(10) NOT NULL,
  `question` text NOT NULL,
  `year` int(11) NOT NULL,
  `teacher` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mis`
--

INSERT INTO `mis` (`serial`, `question`, `year`, `teacher`) VALUES
(1, 'Q1. What is the purpose of an MIS? <br>\r\nQ2. What are the different types of MIS? <br>\r\nQ3. What is the core principle of MIS? <br>\r\nQ4. What are the levels of information requirements in an MIS?<br>\r\nQ5. What are the levels of decision making in MIS? <br><br>', 2006, 'Computer department');

-- --------------------------------------------------------

--
-- Table structure for table `python`
--

CREATE TABLE `python` (
  `serial` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `teacher` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `python`
--

INSERT INTO `python` (`serial`, `question`, `year`, `teacher`) VALUES
(2, '1.What is python?<br>\r\n2.Is python the right choice for Web based Programming?<br>\r\n3.What are uses of lambda?<br>\r\n4.When you need ordered container of things,which will be manipulated,use lists?<br>\r\n5.5.When do you use list vs.tuple vs.dictionary vs.set?<br><br>', 2010, 'Computer department'),
(3, '1.Do they know a tuple/list/dict when they see it?<br>\r\n2.What is used to represent Strings in Python?Is double quotes used for String representation or single quotes used for String representation in Python?<br>\r\n3.Who created the Python programming language?<br>\r\n4.Why cannot lambda forms in Python contain statements?<br>\r\n5.How is memory managed in Python?<br><br>', 2019, 'Computer department'),
(4, '1.What is the language from which Python has got its features or derived its features?<br>\r\n2.What is the Java implementation of Python popularly known as?<br>\r\n3.What is the method does join() in python belong?<br>\r\n4.Does python support switch or case statement in Python? If not what is the reason for the same?<br>\r\n5.How is the Implementation of Pythons dictionaries done?<br><br>', 2019, 'Computer department');

-- --------------------------------------------------------

--
-- Table structure for table `request1`
--

CREATE TABLE `request1` (
  `id` int(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request1`
--

INSERT INTO `request1` (`id`, `name`, `subject`, `department`, `message`) VALUES
(1, 'parag', 'Information Technology', 'Computer Department', 'Help me to improve from these papers'),
(5, 'Riya ', 'java', 'Computer Department', 'Please Upload paper related to java subject'),
(9, 'Nitesh', 'POM', 'Management Department', 'Please upload paper related to leadership quality unit -4');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `serial` int(11) NOT NULL,
  `subjects` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`serial`, `subjects`) VALUES
(1, 'C'),
(2, 'C++'),
(3, 'Java'),
(4, 'Python'),
(5, 'MIS');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `username`, `password`) VALUES
(0, 'test', '123'),
(102, '@computerdepartment', 'java@11'),
(104, '@managementdepartment', 'leader@11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `c`
--
ALTER TABLE `c`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `cplusplus`
--
ALTER TABLE `cplusplus`
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `java`
--
ALTER TABLE `java`
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `mis`
--
ALTER TABLE `mis`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `python`
--
ALTER TABLE `python`
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `request1`
--
ALTER TABLE `request1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `a_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `c`
--
ALTER TABLE `c`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cplusplus`
--
ALTER TABLE `cplusplus`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `java`
--
ALTER TABLE `java`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mis`
--
ALTER TABLE `mis`
  MODIFY `serial` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `python`
--
ALTER TABLE `python`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `request1`
--
ALTER TABLE `request1`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
