<?php

$title = "Se connecter";
include "header.php";

?>

<div class="login-container">
    <h1>Se connecter</h1>
    <form action="connect_valide.php" method="post">
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Email..." required>
        </div>
        <div class="form-group">
            <label for="password">Mot de passe</label>
            <input type="password" id="password" name="pass" placeholder="Mot de passe..." required>
        </div>
        <center>
            <div class="form-group">
                <input type="submit" name="login" value="Login">
            </div>
            <a href="inscription.php">Vous n'avez pas de compte? Inscrivez-vous.</a>
        </center>
    </form>

    <?php
    if (isset($_GET['error'])) {
        if ($_GET['error'] == 0) {
    ?>
            <div class="alert-success" id="alert-message">
                <?php echo "Vous avez déconnecter."; ?>
            </div>
        <?php } elseif ($_GET['error'] == 1) { ?>
            <div class="alert-failed" id="alert-message">
                <?php echo "Mot de passe ou email incorrect."; ?>
            </div>
        <?php } elseif ($_GET['error'] == 2) { ?>
            <div class="alert-success" id="alert-message">
                <?php echo "Inscription réussite. Connectez-vous!"; ?>
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