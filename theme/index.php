<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>NATURE</title>
</head>
<body>

<div class="container">
        <div class="row">
            <div class="col-md-3 mt-4" >
                <div class="card">
                    <div class="card-header" >
                        <h2>Nature</h2>
                    </div>
                        <div class="card-body" > 
                        
                                  

    <form method="post" action="">
        <div>
        <label for="">Titre du Thème: </label>
        <input type="text" name="titre_theme" class="form-control" required>
        </div>
        <div>
        <label for="">Thème Parent :</label> 
        <select name="parent_theme_id" class="form-control" >
            <option value=""  >Aucun</option>
                    <?php
                    // Créez une liste déroulante pour sélectionner le thème parent
                    //createThemeDropdown($themes);
                     ?>
        </select>
        </div>
        <div>
            <label for="">Nature associée:</label>
            <select name="nature_theme" class="form-control" >
                     <?php
                     // Sélectionnez toutes les natures existantes pour la liste déroulante
                     // createNatureDropdown();
                     ?>
            </select>
        </div> <br>
        <div class="mb-3">
                <button type="submit" name="enregistrer" class="btn btn-success" >Enregistrer</button>
                <a href="../acceuil/index.php" class="btn btn-danger float-end">Retour</a>
        </div>
    </form>
                
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</body>
</html>