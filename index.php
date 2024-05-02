<?php

require 'vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

use Config\Database;
use Repositories\StudentRepository;
use Views\StudentView;

// Get the current page number from the query string, default to 1 if not set
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

// Define how many students to display per page
$studentsPerPage = 10;

$db = new Database($_ENV['DB_SERVER'], $_ENV['DB_USERNAME'], $_ENV['DB_PASSWORD'], $_ENV['DB_NAME']);
$studentRepo = new StudentRepository($db);
$studentView = new StudentView();

// Get the students for the current page
$result = $studentRepo->getStudents($page, $studentsPerPage);

// Calculate the total number of pages
$totalStudents = $studentRepo->getTotalStudents(); // You'll need to implement this method
$totalPages = ceil($totalStudents / $studentsPerPage);

// Render the students and the pagination
$studentView->render($result, $page, $totalPages);

$db->close();

?>
