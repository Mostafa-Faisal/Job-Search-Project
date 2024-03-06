-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 04:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_ii_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `job_search`
--

CREATE TABLE `job_search` (
  `JobType` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `JobTitle` varchar(255) DEFAULT NULL,
  `Company` varchar(255) DEFAULT NULL,
  `Vacancy` int(11) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `LastDateofApply` date DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_search`
--

INSERT INTO `job_search` (`JobType`, `Category`, `JobTitle`, `Company`, `Vacancy`, `Salary`, `LastDateofApply`, `Location`) VALUES
('Full Time', 'Technology', 'Web developer', 'Enosis Solution', 4, 15000, '2023-06-15', 'Uttara, Dhaka'),
('Full Time', 'Technology', 'Applications Developer', 'Data Soft', 8, 20000, '2023-06-15', 'Gulsan, Dhaka'),
('Contract', 'Technology', 'Applications Developer', 'Brain Station 23 Limited', 2, 22000, '2023-06-26', 'Dhanmodi, Dhaka'),
('Full Time', 'Technology', 'Game developer', 'Cefalo', 9, 25000, '2023-07-18', 'Bonani, Dhaka'),
('Contract', 'Technology', 'IT consultant', 'Apploye', 1, 45000, '2023-07-28', 'uttara, Dhaka'),
('Part time', 'Technology', 'Multimedia programmer', 'Selise', 2, 30000, '2023-07-20', 'Gulsan, Dhaka'),
('Full Time', 'Sales', 'Sales Representative', 'PRAN-RFL Group', 15, 14000, '2023-07-12', 'Gazipur'),
('Full Time', 'Sales', 'Sales Associate', 'Jamuna Group', 7, 18000, '2023-07-14', 'Gazipur'),
('Full Time', 'Finance', 'Human Resources', 'Snowtex Ltd', 1, 50000, '2023-07-10', 'Gazipur'),
('Full Time', 'Technology', 'Software Engineer', 'Tech Solutions Ltd', 5, 18000, '2023-06-20', 'Banani, Dhaka'),
('Part Time', 'Technology', 'Data Analyst', 'Insights Data', 3, 12000, '2023-06-25', 'Uttara, Dhaka'),
('Contract', 'Technology', 'Network Administrator', 'Connect IT Services', 2, 25000, '2023-06-30', 'Dhanmondi, Dhaka'),
('Full Time', 'Sales', 'Business Development Manager', 'Global Marketing Solutions', 3, 22000, '2023-07-05', 'Gulshan, Dhaka'),
('Part Time', 'Sales', 'Promoter', 'Brand Solutions', 10, 8000, '2023-07-10', 'Mirpur, Dhaka'),
('Full Time', 'Finance', 'Accountant', 'Mega Corp', 2, 35000, '2023-07-15', 'Banani, Dhaka'),
('Contract', 'Finance', 'Financial Analyst', 'Money Matters Ltd', 1, 45000, '2023-07-20', 'Gulshan, Dhaka'),
('Full Time', 'Technology', 'Database Administrator', 'DataTech Solutions', 4, 20000, '2023-07-25', 'Uttara, Dhaka'),
('Full Time', 'Sales', 'Sales Manager', 'Top Sales Inc', 2, 28000, '2023-07-30', 'Gazipur'),
('Part Time', 'Sales', 'Retail Associate', 'ShopSmart', 5, 10000, '2023-08-05', 'Mirpur, Dhaka'),
('Full Time', 'Finance', 'Financial Manager', 'Wealth Advisors', 1, 55000, '2023-08-10', 'Gulshan, Dhaka'),
('Contract', 'Finance', 'Auditor', 'Audit Solutions Ltd', 2, 40000, '2023-08-15', 'Banani, Dhaka'),
('Full Time', 'Technology', 'Front-End Developer', 'CodeCrafters', 3, 16000, '2023-08-20', 'Uttara, Dhaka'),
('Part Time', 'Technology', 'Quality Assurance Tester', 'TestMasters', 2, 13000, '2023-08-25', 'Dhanmondi, Dhaka'),
('Contract', 'Technology', 'Systems Analyst', 'TechWare Solutions', 1, 27000, '2023-08-30', 'Gulshan, Dhaka'),
('Full Time', 'Sales', 'Sales Executive', 'SalesPro', 4, 19000, '2023-09-04', 'Gazipur'),
('Part Time', 'Sales', 'Event Promoter', 'Event Solutions', 8, 9000, '2023-09-09', 'Mirpur, Dhaka'),
('Full Time', 'Finance', 'Financial Advisor', 'Money Makers', 2, 38000, '2023-09-14', 'Banani, Dhaka'),
('Contract', 'Finance', 'Tax Consultant', 'Tax Experts', 1, 48000, '2023-09-19', 'Gulshan, Dhaka'),
('Full Time', 'Technology', 'Software Tester', 'Testers Inc', 3, 17000, '2023-09-24', 'Uttara, Dhaka'),
('Full Time', 'Sales', 'Key Account Manager', 'SalesGenius', 2, 25000, '2023-09-29', 'Gazipur'),
('Part Time', 'Sales', 'Brand Ambassador', 'BrandPromo', 5, 11000, '2023-10-04', 'Mirpur, Dhaka'),
('Full Time', 'Finance', 'Investment Analyst', 'Investment Advisors', 1, 60000, '2023-10-09', 'Gulshan, Dhaka'),
('Contract', 'Finance', 'Financial Planner', 'Wealth Planners', 2, 42000, '2023-10-14', 'Banani, Dhaka'),
('Full Time', 'Technology', 'UI/UX Designer', 'DesignHub', 3, 19000, '2023-10-19', 'Uttara, Dhaka'),
('Part Time', 'Technology', 'Technical Writer', 'TechDocs', 2, 14000, '2023-10-24', 'Dhanmondi, Dhaka'),
('Contract', 'Technology', 'IT Project Manager', 'ProjectPro', 1, 30000, '2023-10-29', 'Gulshan, Dhaka'),
('Full Time', 'Sales', 'Sales Coordinator', 'SalesCo', 4, 20000, '2023-11-03', 'Gazipur'),
('Part Time', 'Sales', 'Customer Service Representative', 'ServiceMasters', 8, 9500, '2023-11-08', 'Mirpur, Dhaka'),
('Full Time', 'Finance', 'Financial Controller', 'FinanceExperts', 2, 42000, '2023-11-13', 'Banani, Dhaka'),
('Contract', 'Finance', 'Risk Analyst', 'Risk Solutions Ltd', 1, 55000, '2023-11-18', 'Gulshan, Dhaka'),
('Full Time', 'Technology', 'Back-End Developer', 'CodeBuilders', 3, 18000, '2023-11-23', 'Uttara, Dhaka'),
('Part Time', 'Technology', 'Data Entry Operator', 'DataEntry', 2, 12000, '2023-11-28', 'Dhanmondi, Dhaka'),
('Contract', 'Technology', 'IT Support Specialist', 'TechSupport', 1, 25000, '2023-12-03', 'Gulshan, Dhaka'),
('Full Time', 'Sales', 'Account Manager', 'AccountMasters', 2, 27000, '2023-12-08', 'Gazipur'),
('Part Time', 'Sales', 'Sales Promoter', 'PromoExperts', 5, 8500, '2023-12-13', 'Mirpur, Dhaka'),
('Full Time', 'Finance', 'Financial Analyst', 'MoneyGurus', 1, 38000, '2023-12-18', 'Banani, Dhaka'),
('Contract', 'Finance', 'Financial Adviser', 'FinancialAdvisory', 2, 50000, '2023-12-23', 'Gulshan, Dhaka'),
('Full Time', 'Technology', 'Software Architect', 'CodeArchitects', 3, 20000, '2023-12-28', 'Uttara, Dhaka'),
('Part Time', 'Technology', 'IT Trainer', 'TechTrainers', 2, 15000, '2024-01-02', 'Dhanmondi, Dhaka'),
('Contract', 'Technology', 'IT Auditor', 'AuditTech', 1, 28000, '2024-01-07', 'Gulshan, Dhaka'),
('Full Time', 'Sales', 'Sales Supervisor', 'SalesSupervisors', 4, 22000, '2024-01-12', 'Gazipur'),
('Part Time', 'Sales', 'Brand Promoter', 'BrandPromos', 8, 9000, '2024-01-17', 'Mirpur, Dhaka'),
('Full Time', 'Finance', 'Financial Coordinator', 'FinancialCoordinators', 2, 40000, '2024-01-22', 'Banani, Dhaka'),
('Contract', 'Finance', 'Financial Risk Manager', 'RiskManagers', 1, 52000, '2024-01-27', 'Gulshan, Dhaka'),
('Full Time', 'Technology', 'Mobile App Developer', 'AppBuilders', 3, 21000, '2024-02-01', 'Uttara, Dhaka'),
('Part Time', 'Technology', 'Software Support Engineer', 'SupportTech', 2, 16000, '2024-02-06', 'Dhanmondi, Dhaka'),
('Contract', 'Technology', 'IT Security Specialist', 'SecurityTech', 1, 30000, '2024-02-11', 'Gulshan, Dhaka'),
('Full Time', 'Sales', 'Sales Analyst', 'SalesAnalysts', 2, 25000, '2024-02-16', 'Gazipur'),
('Part Time', 'Sales', 'Sales Representative', 'SalesReps', 5, 9500, '2024-02-21', 'Mirpur, Dhaka'),
('Full Time', 'Finance', 'Financial Planner', 'WealthPlanners', 1, 42000, '2024-02-26', 'Banani, Dhaka'),
('Contract', 'Finance', 'Tax Analyst', 'TaxAnalysts', 2, 48000, '2024-03-02', 'Gulshan, Dhaka');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
