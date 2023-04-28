<?php

$title = "Registration";
include "header.php";

?>

<script src="node.js"></script>
<div style="display:flex;justify-content:center;margin-top: 70px" >
<div style="height: auto; width: auto;background-color:white;border-radius: 5px;border-color:#e9e9e9;border-style:solid; border-width: 2px;">
    <img style="height: 80px;padding:10px" src="images/logo/logo1.png" alt="">
    </div>
</div>
<div class="login-container" style="margin-top: 30px;">
    <h1>Registration</h1>
    <form action="inscription_valide.php" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="name">Username</label>
            <input type="text" id="name" name="name" placeholder="Username..." required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Email..." required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="pass" placeholder="Password..." required>
        </div>
        <center>
            <div class="form-group">
                <input type="submit" name="login" value="Sign up">
            </div>
        </center>
    </form>
    <?php
    if (isset($_GET['error'])) { ?>
        <?php if ($_GET['error'] == 1) { ?>
            <div class="alert-failed" id="alert-message">
                <?php echo "Registration error!"; ?>
            </div>
    <?php }
    } ?>
</div>
<div>&nbsp;</div>
</body>

</html>