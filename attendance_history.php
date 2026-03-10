<?php
session_start();
require 'config.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

// DEFAULT TO TODAY
$date = $_GET['date'] ?? date('Y-m-d');
$search = $_GET['search'] ?? '';

// BASE QUERY
$sql = "SELECT * FROM attendance WHERE date_logged = '$date'";

// SEARCH FILTER
if (!empty($search)) {
    $search = mysqli_real_escape_string($conn, $search);
    $sql .= " AND (fullname LIKE '%$search%' OR lrn LIKE '%$search%')";
}

$sql .= " ORDER BY time_logged DESC";

$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Previous Attendance</title>
<link rel="stylesheet" href="css/main.css">
<link rel="icon" type="image/png" href="images/ocshs3.png">
</head>

<body>

<!-- HEADER -->
<div class="header">
    <div class="header-left">
        <img src="images/logo.png" class="logo">
    </div>

    <div class="nav">
        <a href="dashboard.php">Dashboard</a>
        <a href="masterlist.php">Master List</a>
        <a href="attendance_scanner.php">Attendance</a>
        <a href="attendance_history.php" class="active">Previous Attendance</a>
        <a href="archive_masterlist.php">Archive Masterlist</a>
        <a href="logout.php" class="logout">Logout</a>
    </div>
</div>

<div class="page-container">

    <div class="page-header">
        <h1>Attendance History</h1>
    </div>

    <!-- FILTER FORM -->
    <div class="table-card">

        <form method="GET" class="filter-form">
            <input type="date" name="date" value="<?= $date ?>" required>
            <input type="text" name="search" placeholder="Search Name or LRN" value="<?= htmlspecialchars($search) ?>">
            <button class="btn">Search</button>
        </form>

        <input type="text" id="searchInput" class="table-search"
               placeholder="Search LRN, Name, Section...">

        <div class="table-responsive">
            <table class="styled-table blue-table" id="masterTable">
                <thead>
                    <tr>    
                        <th>#</th>
                        <th>LRN</th>
                        <th>Full Name</th>
                        <th>Section</th>
                        <th>Grade</th>
                        <th>Date</th>
                        <th>Time</th>
                    </tr>
                </thead>
                <tbody>

                <?php
                        $today = date('Y-m-d');
                        $query = "SELECT * FROM attendance WHERE date_logged = '$today' ORDER BY time_logged DESC";
                        $res = mysqli_query($conn, $query);
                        $total = mysqli_num_rows($res);
                        $i = $total;
                        while ($row = mysqli_fetch_assoc($res)):
                        ?>
                            <tr>
                                <td style="text-align: center;"><?= $i-- ?></td>
                                <td><?= htmlspecialchars($row['lrn']) ?></td>
                                <td><?= htmlspecialchars($row['fullname']) ?></td>
                                <td><?= htmlspecialchars($row['section']) ?></td>
                                <td><?= htmlspecialchars($row['gradelvl']) ?></td>
                                <td><?= htmlspecialchars($row['date_logged']) ?></td>
                                <td><?= date("h:i A", strtotime($row['time_logged'])) ?></td>
                            </tr>
                        <?php endwhile; ?>

                </tbody>
            </table>
        </div>

    </div>
</div>

<!-- SEARCH SCRIPT -->
<script>
$(document).ready(function() {
    $("#searchInput").on("keyup", function() {
        let value = $(this).val().toLowerCase();
        $("#masterTable tbody tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
});
</script>

</body>
</html>
