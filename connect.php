<?php

$title = "Login";
include "header.php";

?>
<div style="display:flex;justify-content:center;margin-top: 90px" >
<div style="height: auto; width: auto;background-color:white;border-radius: 5px;border-color:#e9e9e9;border-style:solid; border-width: 2px;">
    <img style="height: 80px;padding:10px" src="images/logo/logo1.png" alt="">
    </div>
</div>
<div class="login-container" style="margin-top: 30px;">
    <h1>Log in</h1>
    <form action="connect_valide.php" method="post">
        <div class="form-group">
            <label for="email">Email</label>
            <input title="Insert your email" type="email" id="email" name="email" placeholder="Email..." required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input title="Insert your password" type="password" id="password" name="pass" placeholder="Password..." required>
        </div>
        <center>
            <div class="form-group">
                <input title="Sign in" type="submit" name="login" value="Sign in">
            </div>
            <a style="font-size: smaller;text-decoration:underline" href="inscription.php">You don't have an account? Sign up.</a>
        </center>
    </form>

    <?php
    if (isset($_GET['error'])) {
        if ($_GET['error'] == 0) {
    ?>
            <div class="alert-success" id="alert-message">
                <?php echo "You disconnected!"; ?>
            </div>
        <?php } elseif ($_GET['error'] == 1) { ?>
            <div class="alert-failed" id="alert-message">
                <?php echo "Incorrect password or email!"; ?>
            </div>
        <?php } elseif ($_GET['error'] == 2) { ?>
            <div class="alert-success" id="alert-message">
                <?php echo "Registration successful. Log in!"; ?>
            </div>
    <?php }
    } ?>
</div>

<script src="node.js" ></script>

</body>

</html>