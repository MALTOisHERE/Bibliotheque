<?php
$title = "Historique";
include "content_header.php";

// Start session
session_start();
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

    <div class="container">
        <h1>Historique du <strong><?php echo $_SESSION['user'] ?></strong>.</h1>
        <?php if (!empty($historiques)) { ?>
            <table>
                <thead>
                    <tr>
                        <th>Titre</th>
                        <th>Auteur</th>
                        <th>ISBN</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($historiques as $historique) { ?>
                        <tr>
                            <td><?php echo $historique['titre'] ?></td>
                            <td><?php echo $historique['auteur'] ?></td>
                            <td><?php echo $historique['ISBN'] ?></td>
                            <td><a href="<?php echo 'return.php?livre=' . $historique['id_livre'] . '&user=' . $_SESSION["id"] ?>">Retourner</a></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        <?php } else { ?>
            <p style="text-align: center;">Aucun historique trouvé.</p>
        <?php } ?>
    </div>

    </body>

    </html>
<?php } else { ?>
    <h1 style="text-align: center;margin-top : 50px">404</h1>
    <p style="text-align: center; color: grey">Connectez-vous!</p>
<?php } ?>