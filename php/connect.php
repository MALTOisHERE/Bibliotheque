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
            <input title="Enter your email" type="email" id="email" name="email" placeholder="Email..." required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input title="Enter your password" type="password" id="password" name="pass" placeholder="Password..." required>
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

<script>
  window.addEventListener('load', function() {
    const loader = document.getElementById('loader');
    loader.style.display = 'none';
  });
  
  window.addEventListener('beforeunload', function() {
    const loader = document.getElementById('loader');
    loader.style.display = 'block';
  });
</script>
</body>
<style>
 .search-container{background-color:#fff;width:72%;border-radius:10px;padding:25px 20px 20px;margin-top:70px;border:1px solid #e9e9e9}table{border-radius:5px;overflow:hidden;border-width:1px;border-style:solid}
 #loader {
  display: none;
  position: fixed;
  z-index: 999;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
}

.lds-dual-ring {
  display: inline-block;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 64px;
  height: 64px;
}

.lds-dual-ring:after {
  content: " ";
  display: block;
  width: 46px;
  height: 46px;
  margin: 1px;
  border-radius: 50%;
  border: 5px solid #fff;
  border-color: #fff transparent #fff transparent;
  animation: lds-dual-ring 1.2s linear infinite;
}

@keyframes lds-dual-ring {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}

</style>
</html>
<div id="loader">
  <div class="lds-dual-ring"></div>
</div>