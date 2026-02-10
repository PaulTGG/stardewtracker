<?php
$host = 'localhost';
$db = 'stardew';
$user = 'stardew';
$password = 'stardew';
$dbc = "mysql:host=$host;dbname=$db";
$pdo = new PDO($dbc, $user, $password);
?>