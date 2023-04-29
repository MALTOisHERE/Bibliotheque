<?php
$title = "History";

// Start session
session_start();
include "content_header.php";

if (!empty($_SESSION['id'])) {

    include "connectDB.php";
    $user = $_SESSION['id'];
    $historiqueStatement = $mysqlconnection->prepare('SELECT * FROM livres,emprunts where id_utilisateur = :user AND emprunts.id_livre = livres.id');
    $historiqueStatement->bindParam(':user', $user);
    $historiqueStatement->execute();
    $historiques = $historiqueStatement->fetchAll();
?>

    <head>
        <link rel="stylesheet" href="historique.css">
    </head>
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
<style>
.container{background-color:#fff;margin-top:70px;border-radius:10px;padding:35px 30px 30px}table{border-radius:5px;overflow:hidden;border:1px solid gray}.return:hover{text-decoration:none}
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
    <div class="container">
        <h1>History of <strong><?php echo $_SESSION['user'] ?></strong>.</h1>
        <?php if (isset($_GET['error'])) {
        if ($_GET['error'] == 0) {
    ?>
            <div style="margin-bottom: 20px;" class="alert-success" id="alert-message">
                <?php echo "The book is well returned."; ?>
            </div>
        <?php } ?>
    <?php } ?>
        <?php if (!empty($historiques)) { ?>
            <table style="text-align: center;">
                <thead>
                    <tr>
                        <th style="text-align: center;">Title</th>
                        <th style="text-align: center;">Author</th>
                        <th style="text-align: center;">ISBN</th>
                        <th style="text-align: center;">Return the book</th>
                    </tr>
                </thead>
                <tbody style="background-color: #f5f5f5;" >
                    <?php foreach ($historiques as $historique) { ?>
                        <tr>
                            <td><?php echo $historique['titre'] ?></td>
                            <td><?php echo $historique['auteur'] ?></td>
                            <td><?php echo $historique['ISBN'] ?></td>
                            <td><a title="Return <?php echo "'".$historique['titre']."'"; ?> book" class="return" href="<?php echo 'return.php?livre=' . $historique['id_livre'] . '&user=' . $_SESSION["id"] ?>">Return <i class="fas fa-undo-alt"></i></a></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        <?php } else { ?>
            <p style="text-align: center;margin-top: 30px">No history found.</p>
        <?php } ?>
    </div>
<div>&nbsp;</div>
    </body>

    </html>
<?php } else { ?>
    <h1 style="text-align: center;margin-top : 100px">404</h1>
    <p style="text-align: center; color: grey"><a style="text-decoration: none;color: grey" href="connect.php">Log in <i class="fas fa-exclamation-triangle"></i></a></p>
<?php } ?>
<div id="loader">
  <div class="lds-dual-ring"></div>
</div>