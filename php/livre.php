<?php
$title = "Book";
include "content_header.php";

include "connectDB.php";
session_start();

if (!empty($_SESSION['id'])) {

    $livreID = $_GET['livre'];
    $livreStatement = $mysqlconnection->prepare('SELECT * FROM livres where id = :id');
    $livreStatement->bindParam(':id', $livreID);
    $livreStatement->execute();
    $livres = $livreStatement->fetchAll();

?>
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
    <head>
        <link rel="stylesheet" href="livre.css">
    </head>
    <div class="container" style="margin-top: 70px;">
        <?php
        if (isset($_GET['error'])) {
            if ($_GET['error'] == 0) {
        ?>
                <div style="margin-bottom: 20px;" class="alert-success" id="alert-message">
                    <?php echo "The book is well borrowed."; ?>
                </div>
            <?php } elseif ($_GET['error'] == 1) { ?>
                <div style="margin-bottom: 20px;" class="alert-failed" id="alert-message">
                    <?php echo "The book is already borrowed."; ?>
                </div>
        <?php }
        } ?>
        <?php foreach ($livres as $livre) { ?>
            <div style="margin-bottom: 20px;text-align:center;" class="image-section">
                <img style="width: auto;border-radius: 5px;border-color:#e9e9e9 ;border-style:solid;max-height:300px;border-width:1px" src="<?php echo $livre['image']; ?>" alt="<?php echo $livre['titre'] . " book picture." ?>">
            </div>
            <h1><strong><?php echo $livre['titre'] ?></strong></h1>
            <h3>by <strong><?php echo $livre['auteur'] ?></strong></h3>
            <p>Year of publication: <strong><?php echo $livre['annee_de_publication'] ?></strong></p>
            <p>ISBN : <strong><?php echo $livre['ISBN'] ?></strong></p>
            <p style="text-align: justify;">Description : <strong><?php echo $livre['description'] ?></strong></p>
        <?php } ?>
        <button style="font-size: 17px;" onclick="window.location.href='<?php echo 'emprunt.php?livre=' . $livre['id'] . '&user=' . $_SESSION['id']; ?>';">Borrow <i class="fas fa-cart-plus"></i></button>
    </div>
    <div>&nbsp;</div>
    <script src="index.js"></script>
    <script>
        document.title = "<?php echo $title." ("; foreach ($livres as $livre) { echo $livre['titre'].") - Malto Bookstore";} ?>";
    </script>
    </body>

    </html>

<?php } else { ?>
    <h1 style="text-align: center;margin-top : 100px">404</h1>
    <p style="text-align: center; color: grey"><a style="text-decoration: none;color: grey" href="connect.php">Log in <i class="fas fa-exclamation-triangle"></i></a></p>
<?php } ?>

<div id="loader">
  <div class="lds-dual-ring"></div>
</div>