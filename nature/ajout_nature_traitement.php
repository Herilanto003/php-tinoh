<?php

include "../connexion/connexion.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nature = $_POST["nature"];
    $abrev = $_POST["abrev"];

    $sql = "INSERT INTO Nature (Nature, Abrev) VALUES (:nature, :abrev)";

    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(":nature", $nature);
    $stmt->bindParam(":abrev", $abrev);

    if ($stmt->execute()) {
        header("Location: ajout_nature.php");
        exit();
    } else {
        echo "Erreur lors de l'ajout de la nature : " . $stmt->errorInfo()[2];
    }
}
?>
