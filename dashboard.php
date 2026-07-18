<?php
session_start();
require "config.php";

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

/* ================= DASHBOARD DATA ================= */

// Total students
$studentsRow = mysqli_fetch_assoc(
    mysqli_query($conn, "SELECT COUNT(*) AS total FROM masterlist")
);
$totalStudents = $studentsRow['total'] ?? 0;

// Attendance today
$today = date('Y-m-d');
$attendanceRow = mysqli_fetch_assoc(
    mysqli_query($conn, "SELECT COUNT(*) AS total FROM attendance WHERE date_logged='$today'")
);
$todayAttendance = $attendanceRow['total'] ?? 0;

// Latest scan
$latestQuery = mysqli_query($conn,
    "SELECT fullname, time_logged 
     FROM attendance 
     ORDER BY id DESC 
     LIMIT 1"
);
$latestRow = mysqli_fetch_assoc($latestQuery);
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<link rel="icon" type="image/png" href="images/ocshs3.png">
<link rel="stylesheet" href="css/main.css">
</head>

<body>

<!-- HEADER -->
<div class="header">
    <div class="header-left">
        <img src="images/logo.png" class="logo" alt="Logo">
    </div>

    <div class="nav">
        <a href="dashboard.php" class="active">Dashboard</a>
        <a href="masterlist.php">Master List</a>
        <a href="attendance_scanner.php">Attendance</a>
        <a href="attendance_history.php">Previous Attendance</a>
        <a href="archive_masterlist.php">Archive Masterlist</a>
        <a href="logout.php" class="logout">Logout</a>
    </div>
</div>

<!-- CONTENT -->
<div class="container">

    <div class="card">
        <h2>Welcome, <?= htmlspecialchars($_SESSION['username']) ?>!</h2>
        <p>System overview for today.</p>
    </div>

    <!-- DASHBOARD SNAPSHOT -->
    <div class="dashboard-grid">

        <div class="dashboard-card">
            <h3>Total Students</h3>
            <p class="dashboard-number"><?= $totalStudents ?></p>
        </div>

        <div class="dashboard-card">
            <h3>Attendance Today</h3>
            <p class="dashboard-number"><?= $todayAttendance ?></p>
        </div>

        <div class="dashboard-card">
            <h3>Latest Scan</h3>
            <p>
                <?= $latestRow
                    ? htmlspecialchars($latestRow['fullname']) . "<big><br>" .
                      date("h:i A", strtotime($latestRow['time_logged'])) . "</small>"
                    : "No scans yet"
                ?>
            </p>
        </div>

        <div class="dashboard-card">
            <h3>Date</h3>
            <p><?= date("F d, Y") ?></p><br>
        </div>

    </div>

</div>

<!-- FOOTER -->
<div class="footer">
    <div class="footer-left">
        <p><strong>Produced by:</strong> Gian M. Lalap</p>
        <p><strong>Collaborator:</strong> Jusper James L. Villanueva & Roey C. Jaballa</p>
    </div>
    <div class="footer-right">
        <p>&copy; <?= date("Y") ?> OCSHS. All rights reserved.</p>
    </div>
</div>

</body>
</html>
