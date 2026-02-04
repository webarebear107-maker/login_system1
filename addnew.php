<?php
require "config.php";
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$success = "";
$errors = [];

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $lrn      = trim($_POST['lrn'] ?? '');
    $fname    = trim($_POST['fname'] ?? '');
    $mi       = trim($_POST['mi'] ?? '');
    $lname    = trim($_POST['lname'] ?? '');
    $gender   = trim($_POST['gender'] ?? '');
    $bdate    = trim($_POST['bdate'] ?? '');
    $strand   = trim($_POST['strand'] ?? '');
    $section  = trim($_POST['section'] ?? '');
    $gradelvl = trim($_POST['gradelvl'] ?? '');
    $address  = trim($_POST['address'] ?? '');
    $contact  = trim($_POST['contact'] ?? '');

    if (
        empty($lrn) || empty($fname) || empty($lname) || empty($mi) ||
        empty($bdate) || empty($strand) || empty($section) ||
        empty($gradelvl) || empty($address) || empty($contact)
    ) {
        $errors[] = "All fields are required.";
    }

    if (!preg_match('/^\d{12}$/', $lrn)) {
        $errors[] = "LRN must be exactly 12 digits.";
    }

    if (!preg_match('/^[a-zA-Z]+$/', $lname)) {
        $errors[] = "Lastname must contain only letters.";
    }

    if (!preg_match('/^[a-zA-Z]$/', $mi)) {
        $errors[] = "Middle Initial must be a single letter.";
    }

    $check = mysqli_query($conn, "SELECT * FROM masterlist WHERE lrn='$lrn'");
    if (mysqli_num_rows($check) > 0) {
        $errors[] = "This LRN already exists!";
    }

    $generated_code = "STU-" . $lrn . "-" . strtoupper(substr(md5(uniqid()), 0, 6));

    if (empty($errors)) {
        $sql = "INSERT INTO masterlist
        (lrn, firstname, mi, lastname, gender, bdate, strand, section, gradelvl, address, contact, generated_code)
        VALUES
        ('$lrn', '$fname', '$mi', '$lname', '$gender', '$bdate', '$strand', '$section', '$gradelvl', '$address', '$contact', '$generated_code')";

        if (mysqli_query($conn, $sql)) {
            $success = "New student added successfully!";
        } else {
            $errors[] = "Error: " . mysqli_error($conn);
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add New Student</title>
<link rel="stylesheet" href="css/main.css">
<link rel="icon" type="image/png" href="images/ocshs3.png">
</head>
<body>

<!-- HEADER -->
<div class="header">
    <div class="header-left">
        <img src="images/logo.png" class="logo" alt="Logo">
    </div>

    <div class="nav">
        <a href="dashboard.php">Dashboard</a>
        <a href="masterlist.php" class="active">Master List</a>    
        <a href="attendance_scanner.php">Attendance</a>
        <a href="attendance_history.php">Previous Attendance</a>
        <a href="archive_masterlist.php">Archive Masterlist</a>
        <a href="logout.php" class="logout">Logout</a>
    </div>
</div>

<!-- CONTENT -->
<div class="page-container">

    <div class="form-card">
        <h2>Add New Student</h2>

        <!-- ERRORS -->
        <?php foreach ($errors as $err): ?>
            <div class="alert error"><?= htmlspecialchars($err) ?></div>
        <?php endforeach; ?>

        <?php if ($success): ?>
            <div class="alert success"><?= htmlspecialchars($success) ?></div>
        <?php endif; ?>

        <form method="post">

            <div class="form-grid">
                <input type="text" name="lrn" placeholder="LRN (12 digits)" required>
                <input type="text" name="fname" placeholder="First Name" required>
                <input type="text" name="mi" placeholder="MI" maxlength="1" required>
                <input type="text" name="lname" placeholder="Last Name" required>
                <input type="date" name="bdate" placeholder="Birthdate" required>
                <input type="text" name="gender" placeholder="Gender" required>
                <input type="text" name="strand" placeholder="Strand" required>
                <input type="text" name="section" placeholder="Section" required>
                <input type="text" name="gradelvl" placeholder="Grade Level" required>
                <input type="text" name="address" placeholder="Address" required>
                <input type="text" name="contact" placeholder="Contact Number" required>
            </div>

            <div class="form-actions">
                <button type="submit" class="btn">Save</button>
                <button type="reset" class="btn secondary">Clear</button>
                 <div class="page-actions">
                    <a href="import_excel.php" class="btn">Import Excel</a>
                </div>
            </div>

        </form>
    </div>

</div>

</body>
</html>
