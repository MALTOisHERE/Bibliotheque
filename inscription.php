<?php

$title = "Inscription";
include "header.php";

?>

<div class="login-container">
    <h1>Inscription</h1>
    <form action="inscription_valide.php" method="post">
        <div class="form-group">
            <label for="name">Nom d'utilisateur</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="email">E-mail</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Mot de passe</label>
            <input type="password" id="password" name="pass" required>
        </div>
        <center>
        <div class="form-group">
            <input type="submit" name="login" value="S'inscrire">
        </div>
        </center>
    </form>
    <?php
    if (isset($_GET['error'])) {?>
        <?php if ($_GET['error'] == 1) { ?>
            <div class="alert-failed" id="alert-message">
                <?php echo "Erreur d'inscription."; ?>
            </div>
    <?php } } ?>
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