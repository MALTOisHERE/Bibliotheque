<?php
include "connectDB.php";
session_start();

if (isset($_GET['livre'], $_GET['user'])) {
  $livreID = $_GET['livre'];
  $user = $_SESSION['id'];

  if (!empty($livreID) && !empty($user)) {
    $livreStatement = $mysqlconnection->prepare('DELETE FROM emprunts where id_livre = :livreID AND id_utilisateur = :user');
    $livreStatement->bindParam(':livreID', $livreID);
    $livreStatement->bindParam(':user', $user);

    try {
      $livreStatement->execute();
      header("Location: historique.php?error=0");
    } catch (PDOException $e) {
      echo "Error: " . $e->getMessage();
    }
  }
}
