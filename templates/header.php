<!DOCTYPE html>
<html>

<head>
    <title><?php echo $title ?> - Malto Bookstore</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/logo/favicon.png" type="image/png">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<style>
    .connect{transition:.3s;padding:3px 10px;background-color:#fff;border-radius:5px;border:1px solid #fff;color:#007bff;font-size:15px}.connect:hover{text-decoration:none;transition:.7s;background-color:#007bff}.image1{transition:.5s ease-in-out;filter:brightness(10000%)}.image1:hover{filter:brightness(100%)}nav{position:fixed;top:0;left:0;right:0}
    body {
        background-image: url(images/login-background.png);
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
<script src="index.js">
</script>
<body style="font-family: 'Poppins', sans-serif;" >
    <nav>
        <div>
            <a title="Malto Bookstore" class="image-container" href=""><img class="image1" style="height: 30px;" src="images/logo/logo1.png" alt=""></a>
        </div>
        <div>
            <a title="Log in" class="connect" href="connect.php" style="font-weight: 500;" >Log in <i class="fas fa-sign-in-alt"></i></a>
        </div>
    </nav>
