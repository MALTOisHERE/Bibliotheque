<!DOCTYPE html>
<html>

<head>
	<title id="titre" ><?php echo $title ?> - Malto Bookstore</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
	<link rel="stylesheet" href="style.css">
	<link rel="shortcut icon" href="images/logo/favicon.png" type="image/png">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<style>
	.connect:hover,.nav-item:hover{text-decoration:none}::-webkit-scrollbar{width:5px}::-webkit-scrollbar-track{background-color:#dcdcdc}::-webkit-scrollbar-thumb{background-color:#888}::-webkit-scrollbar-thumb:hover{background-color:#555}.connect{transition:.3s ease-in-out;padding:3px 10px;background-color:#fff;border-radius:5px;border:1px solid #fff;color:#007bff;font-size:15px}.connect:hover{background-color:#007bff}.nav-item{font-size:15px;position:relative}.nav-item::before{content:'';position:absolute;bottom:0;left:0;width:0;height:2px;background-color:#fff;transition:width .5s ease-in-out}.nav-item:hover::before{width:100%}.image1{transition:.5s ease-in-out;filter:brightness(10000%)}.image1:hover{filter:brightness(100%)}.nav-bar{position:fixed;top:0;left:0;right:0;box-shadow:0 0 transparent;transition:box-shadow .2s ease-in-out}.nav-bar.shadow{box-shadow:0 2px 4px rgba(0,0,0,.1)}
	body {
        background-image: url(images/main.png);
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
<script src="index.js">
</script>

<body style="font-family: 'Poppins', sans-serif;">
	<nav class="nav-bar">
		<div>
			<a title="Malto Bookstore" href=""><img class="image1" style="height: 30px;" src="images/logo/logo1.png" alt=""></a>
		</div>
		<div>
			<a title="Search for books" class="nav-item" href="cherche.php" style="font-weight: 500;">Search</a>
			<a title="Your books history" class="nav-item" href="historique.php" style="font-weight: 500;">History</a>
			<a title="Log out" class="connect" href="logout.php" style="font-weight: 500;">Logout <i class="fas fa-sign-out-alt"></i></a>
		</div>
	</nav>