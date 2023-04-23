<?php
include "connectDB.php";

if( !empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['pass'])){
$nom = $_POST['name'];
$email = $_POST['email'];
$pass = $_POST['pass'];
$userStatement = $mysqlconnection->prepare('INSERT INTO Utilisateurs (nom,email,mot_de_passe,date_de_creation) VALUES (:nom,:email,:mot_de_passe,NOW())');
$userStatement->bindParam(':nom', $nom);
$userStatement->bindParam(':email', $email);
$userStatement->bindParam(':mot_de_passe', $pass);
$userStatement->execute();
$users = $userStatement->fetchAll();
header("Location: connect.php?error=2");
}else{
    header("Location: inscription.php?error=1");
}
?>