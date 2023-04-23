<?php

session_start();
header("Location: connect.php?error=0");
session_destroy();
?>