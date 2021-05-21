<?php
$host = 'localhost';
$db = 'dbname';
$user = 'user_with_rights_to_the_db';
$password = 'password';
$dbc = "mysql:host=$host;dbname=$db";
$pdo = new PDO($dbc, $user, $password);
?>