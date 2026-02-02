<?php
require "config.php";
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Import Students</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="icon" type="image/png" href="img/logo.png">
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

    <div class="form-card import-card">
        <h2>Import Students from Excel</h2>

        <p class="import-hint">
            Upload an <strong>.xlsx</strong> file to add students to the masterlist.
        </p>

        <form action="process_import.php" method="POST" enctype="multipart/form-data">
            <div class="file-upload">
                <input type="file" name="excel_file" accept=".xlsx" required>
            </div>

            <div class="form-actions">
                <button type="submit" class="btn">Import Excel</button>
                <a href="masterlist.php" class="btn secondary">Back</a>
            </div>
        </form>
    </div>

</div>

</body>
</html>
