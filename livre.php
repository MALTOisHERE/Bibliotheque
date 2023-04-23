<?php
$title = "Livre";

include "connectDB.php";
include "content_header.php";
session_start();

$livreID = $_GET['livre'];
$livreStatement = $mysqlconnection->prepare('SELECT * FROM livres where id = :id');
$livreStatement->bindParam(':id', $livreID);
$livreStatement->execute();
$livres = $livreStatement->fetchAll();

?>

<head>
    <link rel="stylesheet" href="livre.css">
</head>
<div class="container">
    <?php foreach ($livres as $livre) { ?>
        <h1><?php echo $livre['titre'] ?></h1>
        <h3>par <?php echo $livre['auteur'] ?></h3>
        <p>Année de publication : <?php echo $livre['annee_de_publication'] ?></p>
        <p>ISBN : <?php echo $livre['ISBN'] ?></p>
        <p>Description : <?php echo $livre['description'] ?></p>
    <?php } ?>
    <button onclick="window.location.href='<?php echo 'emprunt.php?livre=' . $livre['id'] . '&user=' . $_SESSION['id']; ?>';">Emprunter</button>
    
    <?php
    if (isset($_GET['error'])) {
        if ($_GET['error'] == 0) {
    ?>
            <div class="alert-success" id="alert-message">
                <?php echo "Le livre est bien emprunté."; ?>
            </div>
        <?php } elseif ($_GET['error'] == 1) { ?>
            <div class="alert-failed" id="alert-message">
                <?php echo "Le livre est déjà emprunté."; ?>
            </div>
    <?php }
    } ?>
</div>
<script>
    // Hide the alert with fade-out effect after 3 seconds
    $(document).ready(function() {
        setTimeout(function() {
            $("#alert-message").fadeOut(1000);
        }, 3000);
    });
</script>
</body>

</html>