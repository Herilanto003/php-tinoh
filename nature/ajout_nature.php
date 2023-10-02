<!DOCTYPE html>
<html lang="en">
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="../nature/style.css">
<head>
    <!-- Mettez ici vos balises meta, title, et liens CSS -->
</head>
<body>
    <?php 
    
    include "../connexion/connexion.php";

    ?>

    <div class="container">
        <div class="row">
            <div class="col-md-3 mt-4">
                <div class="card">
                    <div class="card-header">
                        <h2>Ajouter une Nature</h2>
                    </div>
                    <div class="card-body"> 
                        <form action="ajout_nature_traitement.php" method="POST">
                            <div class="mb-3">
                                <label for="nature">Nature :</label>
                                <input type="text" name="nature" class="form-control" placeholder="Nature" required>
                            </div>
                            <div class="mb-3">
                                <label for="abrev">Abréviation :</label>
                                <input type="text" name="abrev" class="form-control" placeholder="Abréviation" required>
                            </div>
                            <div class="mb-3">
                                <button type="submit" name="enregistrer" class="btn btn-success">Enregistrer</button>
                                <a href="../acceuil/index.php" class="btn btn-danger float-end">Retour</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-md-9 mt-4">
                <div class="card">
                    <div class="card-header">
                        <h2>Liste des Natures</h2>
                    </div>
                    <div class="card-body"> 
                       <?php include "affichage_nature.php"; ?> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
