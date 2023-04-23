<?php
try {
    $mysqlconnection = new PDO(
        'mysql:host=localhost;dbname=bibliotheque;charset=utf8',
        'root',
        ''
    );
} catch (Exception $e) {
    die('Erreur :' . $e->getMessage());
}
?>
