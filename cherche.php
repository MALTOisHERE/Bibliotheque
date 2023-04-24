<?php
$title = "Cherche";
include "content_header.php";

// Start session
session_start();

include "connectDB.php";
if (!empty($_POST['cherche'])) {
  $cherche = $_POST['cherche'];
  $livreStatement = $mysqlconnection->prepare('SELECT * FROM livres where titre = :titre OR auteur = :auteur OR ISBN = :isbn');
  $livreStatement->bindParam(':titre', $cherche);
  $livreStatement->bindParam(':auteur', $cherche);
  $livreStatement->bindParam(':isbn', $cherche);
  $livreStatement->execute();
  $livres = $livreStatement->fetchAll();
}
?>

<head>
  <link rel="stylesheet" href="cherche.css">
</head>

<div>
  <h1>Bonjour <strong><?php echo $_SESSION['user'] ?></strong>, chercher un livre.</h1>
  <form action="cherche.php" method="post">
    <div>
      <input type="text" name="cherche" placeholder="Chercher..." required style="width: 300px; ">
      <button type="submit" class="chercher-button" style="width: 100px;">Chercher</button>
    </div>
  </form>
</div>
<div class="container">
  <?php if (isset($livres)) { ?>
    <?php if (!empty($livres)) { ?>
      <table>
        <thead>
          <tr>
            <th>Titre</th>
            <th>Auteur</th>
            <th>ISBN</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($livres as $livre) { ?>
            <tr>
              <td><?php echo $livre['titre'] ?></td>
              <td><?php echo $livre['auteur'] ?></td>
              <td><?php echo $livre['ISBN'] ?></td>
              <td><a class="detail-button" href="<?php echo 'livre.php?livre=' . $livre['id'] ?>">Détail</a></td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    <?php } else { ?>
      <p style="text-align: center">Livre non disponible pour le moment.</p>
    <?php } ?>
  <?php } ?>

</div>


</body>

</html>