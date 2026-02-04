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
                        <th>LRN</th>
                        <th>First</th>
                        <th>MI</th>
                        <th>Last</th>
                        <th>Gender</th>
                        <th>Birthdate</th>
                        <th>Strand</th>
                        <th>Section</th>
                        <th>Grade</th>
                        <th>Address</th>
                        <th>Contact</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>

                <?php
                $qry = "SELECT * FROM masterlist ORDER BY gender DESC, lastname ASC, section ASC";
                $result = mysqli_query($conn, $qry);

                while ($row = mysqli_fetch_assoc($result)) {
                    $fullname = $row['firstname'] . " " . $row['mi'] . ". " . $row['lastname'];
                ?>
                    <tr>
                        <td><?= htmlspecialchars($row['lrn']) ?></td>
                        <td><?= htmlspecialchars($row['firstname']) ?></td>
                        <td><?= htmlspecialchars($row['mi']) ?></td>
                        <td><?= htmlspecialchars($row['lastname']) ?></td>
                        <td><?= htmlspecialchars($row['gender']) ?></td>
                        <td><?= htmlspecialchars($row['bdate']) ?></td>
                        <td><?= htmlspecialchars($row['strand']) ?></td>
                        <td><?= htmlspecialchars($row['section']) ?></td>
                        <td><?= htmlspecialchars($row['gradelvl']) ?></td>
                        <td class="truncate"><?= htmlspecialchars($row['address']) ?></td>
                        <td><?= htmlspecialchars($row['contact']) ?></td>
                        <td class="actions">
                            <a href="addinfo.php?id=<?= $row['id'] ?>" class="btn-sm view">View</a>
                            <a href="editinfo.php?id=<?= $row['id'] ?>" class="btn-sm edit">Edit</a>
                            <a href="deleteinfo.php?id=<?= $row['id'] ?>"
                               class="btn-sm delete"
                               onclick="return confirm('Delete this record?');">
                               Delete
                            </a>
                        </td>
                    </tr>
                <?php } ?>

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
