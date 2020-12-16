<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supprimer un Article</title>
</head>
<body>
    <h1>Supprimer Votre  Article</h1>

    <form method="POST">

        <p>Votre Code Barre : <input type="long" name="codebarre"></p>

        <p> La Reference : <input type="text" name="reference"></p>

        <p> Le Libelle : <input type="text" name="libelle"></p>

        <p>Prix HT : <input type="number" name="prixht"></p>

        <p>Taux TVA :
        <select name="tauxtva"
            id="pet-select">
            <option value="">--Choisir une option--</option>
            <option value="1">5,50%</option>
            <option value="2">20,00%</option>
        </select>
        </p>

        <br>
        <button type="submit">Suppression de votre Article</button>
    </form>

</body>
</html>