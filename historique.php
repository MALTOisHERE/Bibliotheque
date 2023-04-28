<?php
$title = "History";

// Start session
session_start();
include "content_header.php";

if (!empty($_SESSION['id'])) {

    include "connectDB.php";
    $user = $_SESSION['id'];
    $historiqueStatement = $mysqlconnection->prepare('SELECT * FROM livres,emprunts where id_utilisateur = :user AND emprunts.id_livre = livres.id');
    $historiqueStatement->bindParam(':user', $user);
    $historiqueStatement->execute();
    $historiques = $historiqueStatement->fetchAll();
?>

    <head>
        <link rel="stylesheet" href="historique.css">
    </head>
<style>
.container{background-color:#fff;margin-top:70px;border-radius:10px;padding:35px 30px 30px}table{border-radius:5px;overflow:hidden;border:1px solid gray}.return:hover{text-decoration:none}
</style>
    <div class="container">
        <h1>History of <strong><?php echo $_SESSION['user'] ?></strong>.</h1>
        <?php if (isset($_GET['error'])) {
        if ($_GET['error'] == 0) {
    ?>
            <div style="margin-bottom: 20px;" class="alert-success" id="alert-message">
                <?php echo "The book is well returned."; ?>
            </div>
        <?php } ?>
    <?php } ?>
        <?php if (!empty($historiques)) { ?>
            <table style="text-align: center;">
                <thead>
                    <tr>
                        <th style="text-align: center;">Title</th>
                        <th style="text-align: center;">Author</th>
                        <th style="text-align: center;">ISBN</th>
                        <th style="text-align: center;">Return the book</th>
                    </tr>
                </thead>
                <tbody style="background-color: #f5f5f5;" >
                    <?php foreach ($historiques as $historique) { ?>
                        <tr>
                            <td><?php echo $historique['titre'] ?></td>
                            <td><?php echo $historique['auteur'] ?></td>
                            <td><?php echo $historique['ISBN'] ?></td>
                            <td><a class="return" href="<?php echo 'return.php?livre=' . $historique['id_livre'] . '&user=' . $_SESSION["id"] ?>">Return <i class="fas fa-undo-alt"></i></a></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        <?php } else { ?>
            <p style="text-align: center;margin-top: 30px">No history found.</p>
        <?php } ?>
    </div>
<div>&nbsp;</div>
    </body>

    </html>
<?php } else { ?>
    <h1 style="text-align: center;margin-top : 100px">404</h1>
    <p style="text-align: center; color: grey"><a style="text-decoration: none;color: grey" href="connect.php">Log in <i class="fas fa-exclamation-triangle"></i></a></p>
<?php } ?>