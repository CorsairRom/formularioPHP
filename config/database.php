<?php
//conexion a la base de datos
$server   = "localhost";
$username = "root";
$password = "";
$database = "formulariophp";


$mysqli = new mysqli($server, $username, $password, $database);


if ($mysqli->connect_error) {
    die('error'.$mysqli->connect_error);
}
?>