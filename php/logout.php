<?php
session_start();
header("Location: connect.php?error=0");
session_unset();
session_destroy();
