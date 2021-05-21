<?php
$host = 'localhost';
$db = 'stardew';
$user = 'root';
$password = 'password';
$dbc = "mysql:host=$host;dbname=$db;port=3306";
$pdo = new PDO($dbc, $user, $password);
?>