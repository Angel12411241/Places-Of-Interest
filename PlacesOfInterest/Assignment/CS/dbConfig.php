<?php 
// Database configuration 
$dbHost     = "localhost"; 
$dbUsername = "root"; 
$dbPassword = ""; 
$dbName     = "dsadb"; 
 
// Create database connection 
$db = mysqli_connect($dbHost, $dbUsername, $dbPassword, $dbName); 
 
// Check connection 
if ($db->connect_error) { 
    echo "hello world";
    die("Connection failed: " . $db->connect_error); 

}



