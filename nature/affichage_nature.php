<table class="table">
    <thead>
        <tr>
            <th>Nature</th>
            <th>Abréviation</th>
            <th>Actions</th> <!-- Colonne pour les actions -->
        </tr>
    </thead>
    <tbody>
        <?php
        // Requête pour sélectionner toutes les natures depuis la base de données
        $sql_select_natures = "SELECT * FROM Nature";
        $stmt_select_natures = $pdo->query($sql_select_natures);

        while ($row = $stmt_select_natures->fetch()) {
            echo "<tr>";
            echo "<td>" . $row['nature'] . "</td>";
            echo "<td>" . $row['abrev'] . "</td>";
            echo "<td>";
            echo '<a href="consulter.php?id=' . $row['id_nature'] . '" class="btn btn-success"><i class="fas fa-eye"></i></a>';
            echo ' <a href="modifier.php?id=' . $row['id_nature'] . '" class="btn btn-primary"><i class="fas fa-pencil-alt"></i></a>';
            echo ' <a href="supprimer.php?id=' . $row['id_nature'] . '" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>';
            echo "</td>";
            echo "</tr>";
        }
        ?>
    </tbody>
</table>
