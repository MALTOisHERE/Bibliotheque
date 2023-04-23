<?php
// Start session

include "connectDB.php";

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the submitted username and password
    $utilisateur = $_POST["email"];
    $mot_de_passe = $_POST["pass"];

    // Perform authentication
    $userStatement = $mysqlconnection->prepare('SELECT * FROM utilisateurs');
    $userStatement->execute();
    $users = $userStatement->fetchAll();
    $authenticationFailed = false;

    foreach ($users as $user) {
        if ($user['email'] == $utilisateur && $user['mot_de_passe'] == $mot_de_passe) {
            session_start();
            // Set session variable
            $_SESSION['user'] = $user['nom'];
            $_SESSION['id'] = $user['id'];  

            // Redirect to content page
            header("Location: cherche.php");
            exit;
        } else {
            $authenticationFailed = true;
        }
    }

    if ($authenticationFailed) {
        // Display the error message
        header("Location: connect.php?error=1");
    }

}
?>