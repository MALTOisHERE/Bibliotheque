<?php
// Start session
session_start();

include "connectDB.php";
        $utilisateur = $_GET["user"];
        $livre = $_GET["livre"];

        $checkStatement = $mysqlconnection->prepare('SELECT COUNT(*) FROM emprunts WHERE id_livre = :id_livre');
        $checkStatement->bindParam(':id_livre', $livre);
        $checkStatement->execute();
        $count = $checkStatement->fetchColumn();
        
        if ($count > 0) {
            // Le livre est déjà emprunté
            header("Location: livre.php?livre=".$_GET["livre"]."&error=1");
        } else {
            // Le livre est disponible pour l'emprunt
            // Insérer l'emprunt dans la table emprunts
            $empStatement = $mysqlconnection->prepare('INSERT INTO emprunts (id_utilisateur,id_livre,date_emprunt,  date_retour) VALUES (:id_utilisateur,:id_livre,NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY))');
            $empStatement->bindParam(':id_utilisateur', $utilisateur);
            $empStatement->bindParam(':id_livre', $livre);
            $empStatement->execute();
            header("Location: livre.php?livre=".$_GET["livre"]."&error=0");
        }
