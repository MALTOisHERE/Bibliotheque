<?php
$title = "Search";
// Start session
session_start();
include "content_header.php";

if(!empty($_SESSION['id'])){

include "connectDB.php";
if (!empty($_POST['cherche'])) {
  $cherche = $_POST['cherche'];
  $livreStatement = $mysqlconnection->prepare('SELECT * FROM livres where titre = :titre OR auteur = :auteur OR ISBN = :isbn');
  $livreStatement->bindParam(':titre', $cherche);
  $livreStatement->bindParam(':auteur', $cherche);
  $livreStatement->bindParam(':isbn', $cherche);
  $livreStatement->execute();
  $livres = $livreStatement->fetchAll();
}

  $livreAllStatement = $mysqlconnection->prepare('SELECT * FROM livres');
  $livreAllStatement->execute();
  $livresAll = $livreAllStatement->fetchAll()

?>

<head>
  <link rel="stylesheet" href="cherche.css">
</head>

<style>
 .search-container{background-color:#fff;width:72%;border-radius:10px;padding:25px 20px 20px;margin-top:70px;border:1px solid #e9e9e9}table{border-radius:5px;overflow:hidden;border-width:1px;border-style:solid}
</style>
<center>
<div class="search-container" >
<div style="display:flex;justify-content:center;" >
    <img style="height: 80px;padding:10px" src="images/logo/logo1.png" alt="">
    </div>
  <h1>Hello <strong><?php echo $_SESSION['user'] ?></strong>, discover our books.</h1>
  <form action="cherche.php" method="post">
    <div>
      <input list="cherche" title="Type to search" type="text" name="cherche" placeholder="Look for a book..." required style="width: 300px;height: 50px;background-color:#e9e9e9;border-radius:60px ">
      <datalist id="cherche">
      <?php foreach ($livresAll as $livreAll) { ?>
        <option value="<?php echo $livreAll['titre'] ?>">
        <?php } ?>
      </datalist>
      <button title="Search" type="submit" class="chercher-button" style="width: 100px;height:50px;border-radius:60px">Search</button>
    </div>
    <div>
      <p style="font-size: 10px;color: gray; margin-right:145px;margin-top: -6px" >*You can search by title or author or ISBN.</p>
    </div>
  </form>
</div>
<div class="container">
  <?php if (isset($livres)) { ?>
    <?php if (!empty($livres)) { ?>
      <hr>
      <table border="0px" style="text-align: center;" >
        <thead>
          <tr>
            <th style="text-align: center;">Title</th>
            <th style="text-align: center;">Author</th>
            <th style="text-align: center;">ISBN</th>
            <th style="text-align: center;" >Details</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($livres as $livre) { ?>
            <tr>
              <td style="background-color: white;" ><?php echo $livre['titre'] ?></td>
              <td style="background-color: white;" ><?php echo $livre['auteur'] ?></td>
              <td style="background-color: white;" ><?php echo $livre['ISBN'] ?></td>
              <td style="background-color: white;padding-top:15px;padding-bottom:15px" ><center><a title="<?php echo $livre['titre'] ?> book details." class="detail-button" href="<?php echo 'livre.php?livre=' . $livre['id'] ?>">Detail <i class="fas fa-info-circle"></i></a></center></td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    <?php } else { ?>
      <div class="alert-failed" id="alert-message" style="width: 30%;margin-top:20px">
      <i class="fas fa-bell"></i><?php echo " Book not available at the moment!"; ?></div>    
            <?php } ?>
  <?php } ?>

</div>
<div>&nbsp;</div>
</center></body>

</html>

<?php }else{ ?>
 <h1 class="glitch" style="text-align: center;margin-top : 100px">404</h1>
 <p style="text-align: center; color: grey"><a style="text-decoration: none;color: grey" href="connect.php">Log in <i class="fas fa-exclamation-triangle"></i></a></p>
<?php } ?>