<?php
require "config.php";
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$errors = [];

if (isset($_POST['register'])) {

    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    if (empty($username) || empty($password)) {
        $errors[] = "All fields are required";
    }

    // Check if username already exists
    $check = mysqli_query($conn, "SELECT * FROM users WHERE username='$username'");
    if (mysqli_num_rows($check) > 0) {
        $errors[] = "Username already exists";
    }

    if (empty($errors)) {
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        $sql = "INSERT INTO users (username, password)
                VALUES ('$username', '$hashedPassword')";

        if (mysqli_query($conn, $sql)) {
            $_SESSION['success'] = "Registration successful!";
            header("Location: masterlist.php");
            exit();
        } else {
            $errors[] = "Registration failed";
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <link rel="icon" type="image/png" href="img/logo.png">
    <title>OCSHS | Project</title>
</head>
<body>

<div class="header">
    <div class="header-content">
        <img src="images/logo.png" alt="OCSHS Logo" class="logo">
        <span class="title"></span>
    </div>
</div>

<div class="login-container">
    <div class="login">
        <h2>Register</h2>

        <?php if (!empty($errors)): ?>
    <div class="error">
        <?php foreach ($errors as $error): ?>
            <p><?php echo $error; ?></p>
        <?php endforeach; ?>
    </div>
<?php endif; ?>


        <form method="POST">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" minlength="6" required>
            <button type="submit" name="register" class="btn">Register</button>
            <a href="masterlist.php">Back to Masterlist</a>
        </form>
    </div>
</div>

</body>
</html>
