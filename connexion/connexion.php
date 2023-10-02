<?php
$host = "localhost";
$port = "5432";
$dbname = "projetdb";
$user = "postgres";
$password = "root";

try {
    $pdo = new PDO("pgsql:host=$host;port=$port;dbname=$dbname",$user,$password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connexion réussie à PostgreSQL";
} catch (PDOException $e) {
    echo "Erreur de connexion : " . $e->getMessage();
}
?>
